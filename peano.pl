% peano.pl
% Simple Peano arithmetic
% by Rolph Recto

% the base case is the additive identity (i.e., X + 0 = X)
add(X, 0, X).
add(X, succ(Y), succ(Z)) :- add(X, Y, Z).

% note that x - y = z is the same as x = y + z
sub(X, Y, Z) :- add(Y, Z, X).

% the base case is the multiplicative annihilator (i.e., X * 0 = 0)
mult(X, 0, 0).
% the recursive case is X * Y = (X * (Y-1)) + X
mult(X, succ(Y), Z) :- mult(X, Y, W), add(X, W, Z).

% note that X / Y = Z is the same as X = Y * Z
div(X, Y, Z) :- mult(Y, Z, X).