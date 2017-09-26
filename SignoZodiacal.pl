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

signoZodiaco(Mes, Dia, X):- ((signo(X,Mes,Y,_,_), Dia >= Y, mes(Mes, MaxDia), Dia=<MaxDia);(signo(X,_,_,Mes,Y2), Dia =< Y2, Dia>0)).
