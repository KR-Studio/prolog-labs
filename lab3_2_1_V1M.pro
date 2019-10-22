CONSTANTS
	value = 5
	d = 2
	a1 = 2
PREDICATES
	nondeterm SUM(integer, integer).
	
CLAUSES
	sum(N, S) :- An = 2 + 2*(N-1), S = (N * (a1 + An))/d.

GOAL
	write("|  Value  |   Number   |"), nl,
	SUM(value, N), 
	write("|     ", value, "      |     ", N, "   |"), nl, fail.