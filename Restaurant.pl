entrada(paella).
entrada(gazpacho).
entrada(consome).
carne(filete_de_cerdo).
carne(pollo_asado).
pescado(trucha).
pescado(bacalao).
postre(flan).
postre(nueces_con_miel).
postre(naranja).


calorias(paella, 200).
calorias(gazpacho, 150).
calorias(consome, 300).
calorias(filete_de_cerdo, 300).
calorias(pollo_asado, 280).
calorias(trucha, 160).
calorias(bacalao, 300).
calorias(flan, 200).
calorias(nueces_con_miel, 500).
calorias(naranja, 50).




plato_principal(X) :- carne(X); pescado(X).

comida_completa(X, Y, Z) :- entrada(X), plato_principal(Y), postre(Z).
valor_calorico(X, Y, Z, V) :-
    comida_completa(X, Y, Z), calorias(X, A), calorias(Y, B), calorias(Z, C), V is (A + B + C).

comida_saludable(X, Y, Z, V) :- valor_calorico(X, Y, Z, V), V < 801.




factorial(1, 1).
factorial(X, Y) :- X > 1, X1 is X-1, factorial(X1, Y1), Y is X * Y1.