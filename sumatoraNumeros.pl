suma(0, 0).
suma(1, 1).
suma(X, Y) :- X > 1, X1 is X-1, suma(X1, Y1), Y is X + Y1.


