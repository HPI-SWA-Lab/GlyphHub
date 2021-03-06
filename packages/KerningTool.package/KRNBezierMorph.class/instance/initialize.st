initialize-release
initialize
	super initialize.
	
	startPoint := KRNBezierControlPointMorph new.
	controlPoint1 := KRNBezierControlPointMorph new.
	controlPoint2 := KRNBezierControlPointMorph new.
	endPoint := KRNBezierControlPointMorph new.
	
	self pointMorphs do: [ :p |
		p addDependent: self.
		self addMorph: p ].
	
	self
		color: Color black;
		startPoint: 0@100;
		controlPoint1: 0@0;
		controlPoint2: 100@0;
		endPoint: 100@100;
		updateExtent