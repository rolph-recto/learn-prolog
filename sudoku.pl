% sudoku.pl
% naive sudoku solver
% by Rolph Recto

% constraint: all cells must have exactly 1 value from 1-9
n(C) :- C=1; C=2; C=3; C=4; C=5; C=6; C=7; C=8; C=9.

% uniqueness constraint: used by the row, column, and grid constraints
unique(C1, C2, C3, C4, C5, C6, C7, C8, C9) :-
    C1\=C2, C1\=C3, C1\=C4, C1\=C5, C1\=C6, C1\=C7, C1\=C8, C1\=C9,
    C2\=C3, C2\=C4, C2\=C5, C2\=C6, C2\=C7, C2\=C8, C2\=C9,
    C3\=C4, C3\=C5, C3\=C6, C3\=C7, C3\=C8, C3\=C9,
    C4\=C5, C4\=C6, C4\=C7, C4\=C8, C4\=C9,
    C5\=C6, C5\=C7, C5\=C8, C5\=C9,
    C6\=C7, C6\=C8, C6\=C9,
    C7\=C8, C7\=C9,
    C8\=C9.

% constraint: each row must have all unique values
row(C1, C2, C3, C4, C5, C6, C7, C8, C9) :-
    unique(C1, C2, C3, C4, C5, C6, C7, C8, C9).

% constraint: each column must have all unique values
col(R1, R2, R3, R4, R5, R6, R7, R8, R9) :-
    unique(R1, R2, R3, R4, R5, R6, R7, R8, R9).

% constraint: each subgrid must have all unique values
grid(G1, G2, G3, G4, G5, G6, G7, G8, G9) :-
    unique(G1, G2, G3, G4, G5, G6, G7, G8, G9).

% input a configuration of a Sudoku grid and get a solution!
sudoku(
R1C1, R1C2, R1C3, R1C4, R1C5, R1C6, R1C7, R1C8, R1C9,
R2C1, R2C2, R2C3, R2C4, R2C5, R2C6, R2C7, R2C8, R2C9,
R3C1, R3C2, R3C3, R3C4, R3C5, R3C6, R3C7, R3C8, R3C9,
R4C1, R4C2, R4C3, R4C4, R4C5, R4C6, R4C7, R4C8, R4C9,
R5C1, R5C2, R5C3, R5C4, R5C5, R5C6, R5C7, R5C8, R5C9,
R6C1, R6C2, R6C3, R6C4, R6C5, R6C6, R6C7, R6C8, R6C9,
R7C1, R7C2, R7C3, R7C4, R7C5, R7C6, R7C7, R7C8, R7C9,
R8C1, R8C2, R8C3, R8C4, R8C5, R8C6, R8C7, R8C8, R8C9,
R9C1, R9C2, R9C3, R9C4, R9C5, R9C6, R9C7, R9C8, R9C9
) :-
    n(R1C1), n(R1C2), n(R1C3), n(R1C4), n(R1C5), n(R1C6), n(R1C7), n(R1C8), n(R1C9),
    n(R2C1), n(R2C2), n(R2C3), n(R2C4), n(R2C5), n(R2C6), n(R2C7), n(R2C8), n(R2C9),
    n(R3C1), n(R3C2), n(R3C3), n(R3C4), n(R3C5), n(R3C6), n(R3C7), n(R3C8), n(R3C9),
    n(R4C1), n(R4C2), n(R4C3), n(R4C4), n(R4C5), n(R4C6), n(R4C7), n(R4C8), n(R4C9),
    n(R5C1), n(R5C2), n(R5C3), n(R5C4), n(R5C5), n(R5C6), n(R5C7), n(R5C8), n(R5C9),
    n(R6C1), n(R6C2), n(R6C3), n(R6C4), n(R6C5), n(R6C6), n(R6C7), n(R6C8), n(R6C9),
    n(R7C1), n(R7C2), n(R7C3), n(R7C4), n(R7C5), n(R7C6), n(R7C7), n(R7C8), n(R7C9),
    n(R8C1), n(R8C2), n(R8C3), n(R8C4), n(R8C5), n(R8C6), n(R8C7), n(R8C8), n(R8C9),
    n(R9C1), n(R9C2), n(R9C3), n(R9C4), n(R9C5), n(R9C6), n(R9C7), n(R9C8), n(R9C9),
    row(R1C1, R1C2, R1C3, R1C4, R1C5, R1C6, R1C7, R1C8, R1C9),
    row(R2C1, R2C2, R2C3, R2C4, R2C5, R2C6, R2C7, R2C8, R2C9),
    row(R3C1, R3C2, R3C3, R3C4, R3C5, R3C6, R3C7, R3C8, R3C9),
    row(R4C1, R4C2, R4C3, R4C4, R4C5, R4C6, R4C7, R4C8, R4C9),
    row(R5C1, R5C2, R5C3, R5C4, R5C5, R5C6, R5C7, R5C8, R5C9),
    row(R6C1, R6C2, R6C3, R6C4, R6C5, R6C6, R6C7, R6C8, R6C9),
    row(R7C1, R7C2, R7C3, R7C4, R7C5, R7C6, R7C7, R7C8, R7C9),
    row(R8C1, R8C2, R8C3, R8C4, R8C5, R8C6, R8C7, R8C8, R8C9),
    row(R9C1, R9C2, R9C3, R9C4, R9C5, R9C6, R9C7, R9C8, R9C9),
    col(R1C1, R2C1, R3C1, R4C1, R5C1, R6C1, R7C1, R8C1, R9C1),
    col(R1C2, R2C2, R3C2, R4C2, R5C2, R6C2, R7C2, R8C2, R9C2),
    col(R1C3, R2C3, R3C3, R4C3, R5C3, R6C3, R7C3, R8C3, R9C3),
    col(R1C4, R2C4, R3C4, R4C4, R5C4, R6C4, R7C4, R8C4, R9C4),
    col(R1C5, R2C5, R3C5, R4C5, R5C5, R6C5, R7C5, R8C5, R9C5),
    col(R1C6, R2C6, R3C6, R4C6, R5C6, R6C6, R7C6, R8C6, R9C6),
    col(R1C7, R2C7, R3C7, R4C7, R5C7, R6C7, R7C7, R8C7, R9C7),
    col(R1C8, R2C8, R3C8, R4C8, R5C8, R6C8, R7C8, R8C8, R9C8),
    col(R1C9, R2C9, R3C9, R4C9, R5C9, R6C9, R7C9, R8C9, R9C9),
    grid(R1C1, R1C2, R1C3, R2C1, R2C2, R2C3, R3C1, R3C2, R3C3),
    grid(R4C1, R4C2, R4C3, R5C1, R5C2, R5C3, R6C1, R6C2, R6C3),
    grid(R7C1, R7C2, R7C3, R8C1, R8C2, R8C3, R9C1, R9C2, R9C3),
    grid(R1C4, R1C5, R1C6, R2C4, R2C5, R2C6, R3C4, R3C5, R3C6),
    grid(R4C4, R4C5, R4C6, R5C4, R5C5, R5C6, R6C4, R6C5, R6C6),
    grid(R7C4, R7C5, R7C6, R8C4, R8C5, R8C6, R9C4, R9C5, R9C6),
    grid(R1C7, R1C7, R1C7, R2C8, R2C8, R2C8, R3C9, R3C9, R3C9),
    grid(R4C7, R4C7, R4C7, R5C8, R5C8, R5C8, R6C9, R6C9, R6C9),
    grid(R7C7, R7C7, R7C7, R8C8, R8C8, R8C8, R9C9, R9C9, R9C9).







