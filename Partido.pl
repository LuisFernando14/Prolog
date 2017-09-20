jugador(juan, 9).
jugador(luis, 8).
jugador(hugo, 8).
jugador(paco, 9).
jugador(pedro, 9).
jugador(josue, 9).
jugador(abel, 8).






juego(X, Y) :- jugador(X, Z), jugador(Y, Z), X \= Y, X @< Y.


% signo zodiacal %

signo(acuario, enero, 20, febrero, 18).
signo(pisis, febrero, 19, marzo, 20).
signo(aries, marzo, 21, marzo, 29).
signo(tauro, abril, 20, mayo, 20).
signo(geminis, mayo, 21, junio, 20).
signo(cancer, junio, 21, julio, 22).
signo(leo, julio, 23, agosto, 22).
signo(virgo, agosto, 23, septiembre, 22).
signo(libra, septiembre, 23, octubre, 22).
signo(escorpion, octubre, 23, noviembre, 20).
signo(sagitario, noviembre, 22, diciembre, 21).
signo(capricornio, diciembre, 22, enero, 19).

mes(enero, 31).
mes(febrero, 28).
mes(febrero, 29).
mes(marzo, 31).
mes(abril, 30).
mes(mayo, 31).
mes(junio, 30).
mes(julio, 31).
mes(agosto, 31).
mes(septiembre, 30).
mes(octubre, 31).
mes(noviembre, 30).
mes(diciembre, 31).

%adivinarSigno(Mes, Dia) :- mes

