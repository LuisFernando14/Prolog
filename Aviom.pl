enCarro(newYork, hamilton).
enCarro(hamilton, francia).
enCarro(valmont, roma).
enCarro(valmont, metz).

enTren(metz, frankfurt).
enTren(roma, frankfurt).
enTren(metz, paris).
enTren(roma, paris).

enAvion(frankfurt, bangkok).
enAvion(frankfurt, singapore).
enAvion(paris, losAngeles).
enAvion(bangkok, newYork).
enAvion(singapore, newYork).
enAvion(losAngeles, newYork).
 %viajes(valmont, francia) yes

viajes(X, Y) :- enCarro(X, Y), enTren(X, Y), enAvion(X, Y).
viajes(X, Y) :- enCarro(X, Z),
    enCarro(Z, Y);
    enTren(X, Z), enTren(Z, Y); enAvion(X, Z), enAvion(Z, Y).
