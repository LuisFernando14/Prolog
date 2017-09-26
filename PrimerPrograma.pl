padre(antonio, ana).
padre(antonio, peque).
padre(antonio, fer).
padre(eleno, gabriela).
padre(ramon, antonio).
madre(maria, gabriela).
madre(luisa, antonio).
madre(gabriela, ana).
madre(gabriela, peque).
madre(gabriela, fer).
madre(mireya, miguel).
madre(cuerpo, herik).
madre(marisol, mariana).
esposo(antonio, gabriela).
esposa(gabriela, antonio).
abuelo(X, Y, Z, I, J) :- padre(A, X), madre(B, X), padre(Y, A), padre(I, B), madre(Z, A), madre(J, B).
novio(fer, mariana).
novio(miguel, peque).
novio(herik, ana).
novia(mariana, fer).
novia(peque, miguel).
novia(ana, herik).
hermano(X, Y) :- padre(Z, X), padre(Z, Y), dif(X, Y).
suegra(X, Y) :- novio(X, Z), madre(Y, Z).
hijo(X, Y) :- padre(Y, X); madre(Y, X).
cls :- write('\e[2J').
abuelos(X, Y, A, B) :- padre(A, X), madre(B, X), padre(Y, A), padre(Y, B), madre(Y, A), madre(Y, B).

