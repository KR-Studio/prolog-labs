PREDICATES
   nondeterm fib(integer, integer, integer)
    
CLAUSES
fib(0,0,0).
fib(1,1,1).
fib(2,1,2).
fib(3,2,4).

fib(N,R,S):- N > 1,
           N1 = N-1,
           N2 = N-2,
           fib(N1,R1, S1),
           fib(N2,R2, _),
           R = R1+R2,
           S = R+S1,!.
        
GOAL
    %fib(7,X, Y).
    
   write("DEV: Yaroslav Rezaiev"), nl,
	write("==============="), nl,
	write("|    Num    |   Sum   |"), nl,
	write("==============="), nl,
	fib(7,X, Y),
	write("|    ", X, "     |   ", Y, "   |"), nl,
	write("------------------------------"), nl, fail.