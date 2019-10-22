CONSTANTS
	value = 5
	
PREDICATES
	nondeterm SUM1(integer, integer, integer).
	nondeterm SUM2(integer, integer).
	nondeterm SM(integer, integer, integer, integer, integer)
CLAUSES
	SUM1(1, 2, 2).
	SUM1(N, S, V) :- N1=N-1, SUM1(N1, S1, V1), V = V1 + 2, S = S1 + V, !.

	
	SM(N,S,N0,S0, V0):- 	N0 <= N, !,
				N1=N0 + 1,
				S1=V0 + S0,
				V1=V0 + 2,
				SM(N,S,N1,S1, V1).
	SM(_,S,_,S, _).

	SUM2(N, S) :- SM(N, S, 1, 0, 2).

GOAL

	SUM2(value, S).

	%write("DEV: Vlad Melnyk"), nl,
	%write("==============="), nl,
	%write("|    N    |   SUM   |"), nl,
	%write("==============="), nl,
	%SUM1(value, S, _), 
	%SUM2(value, S),
	%write("|    ", value, "     |   ", S, "   |"), nl,
	%write("------------------------------"), nl, fail.