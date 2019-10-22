PREDICATES
   nondeterm fib(integer, integer)
   nondeterm fib2(integer, integer, integer, integer, integer)
    
CLAUSES

fib(0, 1) :- !.
fib(1, 1) :- !.
fib(N, F) :-
        fib2(1,1,1,N,F).

fib2(_F, F1, N, N, F1) :- !.
fib2(F0, F1, I, N, F) :-
        F2 = F0+F1,
        I2 = I + 1,
        fib2(F1, F2, I2, N, F).
GOAL
fib(6,X).