as yet unclassified
selectionBoundRectangles
	^self cursor < self selectionBound
		ifTrue: [{cursorRect. selectionBoundRect}]
		ifFalse: [{selectionBoundRect. cursorRect}]