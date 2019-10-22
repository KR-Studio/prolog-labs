DOMAINS
list = integer*

PREDICATES
nondeterm separate_even_odd(list, list, list).

CLAUSES
separate_even_odd([], [], []).

separate_even_odd([X|Xs], [X|Even], Odd):-
	0 = X mod 2,
	separate_even_odd(Xs, Even, Odd).

separate_even_odd([X|Xs], Even, [X|Odd]):-
	1 = X mod 2,
	separate_even_odd(Xs, Even, Odd).

GOAL
separate_even_odd([1,4,5,3,6,7], X, Y).