mujer(clara).
mujer(luisa).
mujer(nelida).
mujer(maria).

ocupacion(jardinera).
ocupacion(florista).
ocupacion(disenadora).
ocupacion(directora).

alergica(clara, plantas). %el primer elemento implica el segundo

noEs(luisa, florista).
noEs(maria, directora).
noEs(luisa, directora).
noEs(clara, jardinera).
noEs(clara, florista).
noEs(mujer, ocupacion) :- alergica(mujer, X), relacion(ocupacion, X).
noEs(mujer, ocupacion) :- soloEscucha(mujer, X), incompatible(ocupacion, X).


relacion(jardinera, plantas).
relacion(florista, plantas).



soloEscucha(maria, rock).
soloEscucha(luisa, rock).

incompatible(directora, rock).



diferentes(A, B, C, D) :- not(A == B), not(A == C), not(A == D), not(B == C), not(D == B), not(C == D).









respuesta([[M1, O1], [M2, O2], [M3, O3], [M4, O4]]) :- mujer(M1), mujer(M2), mujer(M3), mujer(M4),
ocupacion(O1), ocupacion(O2), ocupacion(O3), ocupacion(O4),
diferentes(M1, M2, M3, M4),
diferentes(O1, O2, O3, O4).



