factorial(1, 1).
factorial(X, Y) :- X > 1, X1 is X-1, factorial(X1, Y1), Y is X * Y1.

multiplicar(X, 1, X).
multiplicar(1, Y, Y).


multiplicar(X, Y, Z) :-  X > 0, X1 is X-1, multiplicar(X1, Y, Z1), Z is Y+Z1.
