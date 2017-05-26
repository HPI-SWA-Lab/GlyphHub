examples
openNewThreadOn: aString features: aCollection font: aFont in: aTopLevel

	| thread glyphNamesAndIndices |
	thread := FRTThread new.
	
	((((aTopLevel backend convertUnicodeToGlyphNames: aString features: aCollection of: aFont)
		then: [:glyphNames |
			glyphNamesAndIndices := glyphNames.
			FRTGlyph ensureExists: (glyphNamesAndIndices collect: #first) font: aFont in: aTopLevel backend.])
		then: [:glyphs | | glyphsDictionary indexedGlyphs |
			glyphsDictionary := Dictionary new.
			glyphs do: [:glyphModel | glyphsDictionary at: glyphModel glyphName put: glyphModel].
			indexedGlyphs := glyphNamesAndIndices collect: [:glyphNameAndIndex |
				{glyphsDictionary at: glyphNameAndIndex first. glyphNameAndIndex second}].
			indexedGlyphs do: [:indexedGlyph |
				FRTThreadGlyphAssociation new thread: thread; glyph: indexedGlyph first; stringIndex: indexedGlyph second].
			aTopLevel openPage: FRTThreadCommentCreationPage new with: {thread. nil}])
		catch: [aTopLevel displayNotification: 'Creating Thread failed.' type: #danger])