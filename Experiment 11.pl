 %Represent a Map-Coloring problem as a CSP and solve it using backtracking search.




color(red).
color(green).
color(blue).

diff(X,Y):-
    X\=Y.

map(A,B,C,D):-
    color(A),
    color(B),
    color(C),
    color(D),
	
	diff(A,B),
	diff(A,C),
	diff(C,D),
	diff(B,D),
	diff(B,C).


% map(A,B,C,D).