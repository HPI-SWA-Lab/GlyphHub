drawing
canDrawImmediately: aGlyphNameStringOrCollection
	" return whether we still can immediately draw the given string with our currently cached data "

	| list |
	self flag: #todo. " also need to check all necessary components "
	list := aGlyphNameStringOrCollection isCollection
		ifTrue: [aGlyphNameStringOrCollection]
		ifFalse: [{aGlyphNameStringOrCollection}].
	^ fontinfo notNil and: [list allSatisfy: [:glyphName | glifs includesKey: glyphName]]