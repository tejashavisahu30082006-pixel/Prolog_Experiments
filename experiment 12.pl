%Experiment-12 : Solve the N-Queens problem using backtracking to satisfy CSP constraints.




% N-Queens Problem using Backtracking

% Solve the N-Queens problem for N queens
queens(N, Solution) :-
    numlist(1, N, Rows),
    place_queens(Rows, Solution),
    safe(Solution).

% Place queens on the chessboard
place_queens([], []).
place_queens(Rows, [Q|Queens]) :-
    select(Q, Rows, RemainingRows),
    place_queens(RemainingRows, Queens).

% Check whether all queens are safe
safe([]).
safe([Q|Queens]) :-
    safe(Queens, Q, 1),
    safe(Queens).

% Check diagonal constraints
safe([], _, _).
safe([Q|Queens], Row, Distance) :-
    abs(Q - Row) =\= Distance,
    NextDistance is Distance + 1,
    safe(Queens, Row, NextDistance).

% Display the solution
solve_queens(N) :-
    queens(N, Solution),
    write('Solution: '),
    writeln(Solution).





