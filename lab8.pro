DOMAINS
	Object = symbol
	Value = symbol
	type = type(Object)
	parent = parent(Object)
	Property = travel;construction;size;equipment;shape;payload;propulsion
	
PREDICATES
	nondeterm isa(symbol, symbol)
	nondeterm hasprop(symbol, symbol, symbol)
	nondeterm hasproperty(symbol, symbol, symbol)
	
CLAUSES
	isa(ship, vessel).
	isa(tanker, ship).
	isa(cargo_ship, ship).
	isa(icebreaker, ship).
	isa(naval_ship, ship).
	isa(nuclear_powered_icebreaker, icebreaker).
	isa(container_ship, cargo_ship).
	
	hasprop(device, travel, sail).
	hasprop(tanker, payload, cargo).
	hasprop(cargo_ship, payload, cargo).
	hasprop(cargo_ship, size, large).
	hasprop(icebreaker, shape, ice_clearing).
	hasprop(icebreaker, construction, strengthened).
	hasprop(naval_ship, equipment, weapons_system).
	hasprop(nuclear_powered_icebreaker, propulsion, nuclear).
	
	hasproperty(Object, Property, Value):- hasprop(Object, Property, Value). 
	hasproperty(Object, Property, Value):- isa(Object, Parent), hasproperty(Parent, Property, Value).
GOAL
	hasproperty(nuclear_powered_icebreaker, X, Y).