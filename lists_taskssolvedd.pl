deleteElement(_, [], []).
deleteElement(X, [X|T], R) :- !, deleteElement(X, T, R).
deleteElement(X, [H|T], [H|R]) :- deleteElement(X, T, R).

add_at_the_end(X, [], [X]).
add_at_the_end(X, [H|T], [H|R]) :- add_at_the_end(X, T, R).
