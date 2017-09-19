enCarro(newYork, hamilton).
enCarro(hamilton, francia).
enCarro(valmont, roma).
enCarro(valmont, metz).

enTren(metz, frankfurt).
enTren(roma, frankfurt).
enTren(metz, paris).
entren(roma, paris).

enAvion(frankfurt, bangkok).
enAvion(frankfurt, singapore).
enAvion(paris, losAngeles).
enAvion(bangkok, newYork).
enAvion(singapore, newYork).
enAvion(losAngeles, newYork).
 %viajes(valmont, francia) yes
 
 %viajes(X, Y) :- enCarro(X, Y); enTren(X, Y); enAvion(X, Y).
 %viajes(X, Y) :- enCarro(X, Z), enCarro(Z, Y), enTren(X, Z), enTren

 viaje(X, Z) :- enCarro(X, Z); enTren(X, Z); enAvion(X, Z).

 ir(X, Y) :- viaje(X, Y).
 ir(X, Y) :- viaje(Y, Z), ir(X, Y).

 tpte(X, Y, byCar) :- enCarro(X, Y).
 tpte(X, Y, enTren) :- enTren(X, Y).
 tpte(X, Y, enAvion) :- enAvion(X, Y).

 tpte2(X, Y, Z) :- enCarro(X, Y), Z = enCarro;
 enTren(X, Y), Z = enTren;
 enAvion (X, Y), Z = enAvion.
