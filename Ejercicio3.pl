profesor(elisa).
profesor(fernando).
profesor(carlos).

materia(logica).
materia(programacion).
materia(matematicas).

dias(lunes).
dias(miercoles).
dias(viernes).

imparte(elisa, programacion).
imparte(Maestro, Materia) :- profesor(Maestro), materia(Materia), Maestro not elisa, Materia not programacion.
mateXdia(programacion, Dia) :- dias(Dia), Dia not lunes.
mateXdia(logica, Dia) :- dias(Dia), Dia not lunes.

mateXdia(Materia, Dia) :- materia(Materia), dias(Dia), ((Materia == programacion; Materia==logica), Dia not lunes).

trabaja(carlos, Dia) :- dias(Dia), Dia not lunes.