DOMAINS
	Object = symbol
	Value = symbol
	type = type(Object)
	parent = parent(Object)
	Property = travel;sound;cover;color
	
PREDICATES
	nondeterm isa(symbol, symbol)
	nondeterm hasprop(symbol, symbol, symbol)
	nondeterm hasproperty(symbol, symbol, symbol)
	
CLAUSES
	isa(canary, bird). 
    isa(ostrich, bird). 
    isa(bird, animal). 
    isa(opus, penguin). 
    isa(robin, bird).
    isa(penguin, bird). 
    isa(fish, animal). 
    isa(tweety, canary).

	
	hasprop(tweety, color, white). 
    hasprop(canary, color, yellow). 
    hasprop(bird, travel, fly).
    hasprop(ostrich, travel, walk). 
    hasprop(robin, sound, sing). 
    hasprop(bird, cover, feathers). 
    hasprop(robin, color, red). 
    hasprop(penguin, color, brown).
    hasprop(fish, travel, swim).
    hasprop (penguin, travel, walk).
    hasprop(canary, sound, sing).
    hasprop(animal, cover, skin). 

	
	hasproperty(Object, Property, Value):- hasprop(Object, Property, Value). 
	hasproperty(Object, Property, Value):- isa(Object, Parent), hasproperty(Parent, Property, Value).
GOAL
	hasproperty(opus, X, Y).