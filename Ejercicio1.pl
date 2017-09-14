unoSiOtroNo(violeta, azul).
unoSiOtroNo(rojo, amarillo).
unoSiOtroNo(azul, anaranjado).

unoSin(violeta, amarillo).
unoSin(rojo, anaranjado).
unoSin(verde, azul).

noVeneno(rojo).

veneno(X) :- (unoSiOtroNo(X, Y); unoSiOtroNo(Y, X)), noVeneno(Y).
veneno(X) :- (unoSin(X, Y); unoSin(Y, X)), noVeneno(Y).