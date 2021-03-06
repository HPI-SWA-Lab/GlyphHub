mock-data
mockThread

	| thread glyph |
	thread := FRTThread new
		title: 'Hello world!';
		closed: false.
		
	glyph := self mockGlyph.
	thread threadGlyphAssociations add: (FRTThreadGlyphAssociation new glyph: glyph; stringIndex: 0).
	thread comments
		add: (FRTComment new
			text: 'comment text';
			author: glyph font author;
			createdAt: DateAndTime yesterday).
	
	^ thread