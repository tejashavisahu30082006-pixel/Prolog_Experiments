%Implement Breadth-First Search (BFS) to find the shortest path in a graph



edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(c, g).
edge(d, h).
edge(e, h).
edge(f, g).
edge(g, h).

% Treat the graph as undirected

connected(X, Y):-
	edge(X, Y).

connected(X, Y):-
	edge(Y, X).



% bfs(Start, Goal, Path)
bfs(Start, Goal, Path):-
	bfs_queue([[Start]], Goal, RevPath),
	reverse(RevPath, Path).

% Goal found
bfs_queue([[Goal|Rest]|_], Goal, [Goal|Rest]).

% Continue searching
bfs_queue([[Current|Rest]|Queue], Goal,Path):-
	findall(
		[Next, Current|Rest],
		(
			connected(Current, Next),
            \+ member(Next, [Current|Rest])
		),
		NewPaths
	),
	append(Queue, NewPaths, UpdatedQueue),
	bfs_queue(UpdatedQueue, Goal, Path).




