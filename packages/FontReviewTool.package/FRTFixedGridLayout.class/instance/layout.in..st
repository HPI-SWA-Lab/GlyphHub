as yet unclassified
layout: aWidget in: aBox
	
	| x y |
	x := 0.
	y := 0.
	
	aWidget submorphs do: [ :widget |
		widget bounds: (aBox origin + (x @ y) extent: cellSize).
		x := x + cellSize x.
		x + cellSize x >= aBox width ifTrue: [
			y := y + cellSize y.
			x := 0]]