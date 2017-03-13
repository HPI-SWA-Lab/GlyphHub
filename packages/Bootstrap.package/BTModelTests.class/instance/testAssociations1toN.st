as yet unclassified
testAssociations1toN
	| penguin |
	penguin := (BTPenguinModel load: 1 from: backend) value.
	
	(self expect: penguin eggs) to beEmpty.
	
	penguin eggs
		add: BTEggModel new;
		add: BTEggModel new.
	
	(self expect: penguin eggs first parent) to be: penguin.
	
	penguin saveTo: backend.
	
	penguin := (BTPenguinModel load: 1 from: backend) value.
	(self expect: penguin eggs size) to be: 2.
	(self expect: penguin eggs first parent) to be: penguin