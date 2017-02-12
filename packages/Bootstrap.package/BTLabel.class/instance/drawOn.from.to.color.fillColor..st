as yet unclassified
drawOn: aCanvas from: aNumber to: anotherNumber color: aColor fillColor: anotherColor
	| transform |
	transform := self angle ~= 0
		ifTrue: [
			(MatrixTransform2x3 withOffset: self extent / 2 + self layoutBounds origin + aCanvas origin)
			composedWithLocal: ((MatrixTransform2x3 withAngle: self angle)
			composedWithLocal: (MatrixTransform2x3 withOffset: self extent / -2)) ]
		ifFalse: [ MatrixTransform2x3 withOffset: self layoutBounds origin + aCanvas origin ].
	
	self layout
		drawOn: aCanvas form
		transform: transform
		color: aColor
		fillColor: anotherColor
		clip: (aCanvas clipRect translateBy: aCanvas origin)
		start: aNumber
		end: anotherNumber