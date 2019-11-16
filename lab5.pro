DOMAINS
	Object = symbol
	Prop = travel(symbol);construction(symbol);size(symbol);equipment(symbol);shape(symbol);payload(symbol);propulsion(symbol)
	list_of_properties = Prop*
	name = name(Object)
	isa = isa(Object)
PREDICATES
	nondeterm frame(name,isa,list_of_properties,list_of_properties)
	nondeterm get(Prop,Object)
	nondeterm member(prop,list_of_properties)
CLAUSES
	member(X,[X|_]).
	member(X,[_|T]):-member(X,T).
	
	frame(name(ship),isa(vessel),[travel(sail)],[]).
	frame(name(tanker),isa(ship),[payload(cargo)],[]).
	frame(name(cargo_ship),isa(ship),[size(large)],[payload(cargo)]).
	frame(name(container_ship),isa(cargo_ship),[],[]).
	frame(name(naval_ship),isa(ship),[ construction(strengthened)],[ equipment(weapon_systems)]).
	frame(name(icebreaker),isa(ship),[construction(strengthened),shape(ice_clearing)],[]).
	frame(name(nuclear_powered_icebreaker),isa(icebreaker),[],[ propulsion(nuclear)]).
	
	get(Prop,Object):-frame(name(Object),_,List_of_properties,_),member(Prop,List_of_properties).
	get(Prop,Object):-frame(name(Object),_,_,List_of_properties),member(Prop,List_of_properties).
	get(Prop,Object):-frame(name(Object),isa(Parent),_,_),get(Prop,Parent).
GOAL
	get(X,icebreaker).
