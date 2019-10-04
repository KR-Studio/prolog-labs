DOMAINS
	name = symbol
	surname = symbol
	yearOfBirth = integer
	gender = symbol
	
PREDICATES %PART1
	nondeterm man(name, surname, yearOfBirth).
	nondeterm woman(name, surname, yearOfBirth).
	nondeterm parent(name, name).
	nondeterm spouse(name, name).
	
PREDICATES %PART2
	nondeterm mother(name,name).
	nondeterm father(name,name).
	nondeterm sister(name,name).
	nondeterm brother(name,name).
	nondeterm sb(name,name).
	nondeterm granddaughter(name,name).
	nondeterm nephew(name,name).
	
CLAUSES %PART1
	mother(X,Y) :- parent(X,Y),woman(X,_,_).
	father(X,Y) :- parent(X,Y),man(X,_,_).
	sister(X,Y) :- father(F,X),father(F,Y),mother(M,X),mother(M,Y),woman(X,_,_).
	brother(X,Y) :- father(F,X),father(F,Y),mother(M,X),mother(M,Y),man(X,_,_).
	sb(X,Y) :- sister(X,Y);brother(X,Y).
	granddaughter(X,Y) :- parent(Z,X),parent(Y,Z),woman(X,_,_).
	nephew(X,Y) :- parent(W,Y),sb(X,W).
	
CLAUSES %PART2
	
	man(john, apple, 1985).
	man(tim, apple, 1960).
	man(jack, doe, 1961).
	man(theodor, doe, 1938).
	man(karlmann, apple, 1929).
	man(otto, doe, 1992).
	man(till, doe, 1983).
	
	woman(eleonore, apple, 1987).
	woman(susan, apple, 1959).
	woman(katrin, doe, 1935).
	woman(camilla, apple, 1934).
	
	spouse(theodor, katrin).
	spouse(tim, susan).
	spouse(karlmann, camilla).
	
	parent(tim,john).
	parent(susan, john).
	parent(tim, eleonore).
	parent(susan, eleonore).
	parent(jack, till).
	parent(jack, otto).
	parent(theodor, jack).
	parent(katrin, jack).
	parent(theodor, susan).
	parent(katrin, susan).
	parent(karlmann, tim).
	parent(camilla, tim).
	
GOAL
	%father(tim, john).
	%nephew(susan, otto).
	granddaughter(eleonore, katrin).