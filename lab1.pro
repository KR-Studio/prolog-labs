DOMAINS
	name = symbol.
	surname = symbol.
	yearOfBirth = int.
	gender = symbol.
PREDICATES
	nondeterm man(name, surname, yearOfBirth).
	nondeterm woman(name, surname, yearOfBirth).
	nondeterm parent(name, name).
	nondeterm spouse(man, woman).
CLAUSES
	mother(X,Y):–parent(X,Y),woman(X,_,_).
	father(X,Y):-parent(X,Y),man(X,_,_).
	sister(X,Y):-father(F,X),father(F,Y),mother(M,X),mother(M,Y),woman(X,_,_).
	brother(X,Y):-father(F,X),father(F,Y),mother(M,X),mother(M,Y),man(X,_,_).
	sb(X,Y):-sister(X,Y);brother(X,Y).
	granddaughter(X,Y):-parent(Z,X),parent(Y,Z),woman(X,_,_).
	nephew(X,Y):-parent(Z,X),parent(W,Y),bs(Z,W).