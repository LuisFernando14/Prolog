padre(pam, bob).
padre(tom, bob).
padre(bob, ann).
padre(bob, pat).
padre(pat, jim).
padre(tom, liz).
hijo(X, Y) :- padre(Y, X).
hermano(X, Y) :- padre(Z, Y), padre(Z, X), dif(X, Y).
primo(X, Y) :- tio(Z, X), padre(Z, Y).
%1.- ?- hijo(bob, X). Bob de quien es hijo?
prima(X, Y) :- tio(Z, X), padre(Z, Y), mujer(X).
mujer(pam).
mujer(liz).
mujer(ann).
hombre(tom).
hombre(bob).
hombre(pat).
hombre(job).
hombre(jim).

KJLJLljljlLJLJLjljljlJLJ0