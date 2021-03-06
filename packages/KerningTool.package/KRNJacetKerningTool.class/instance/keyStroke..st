event handling
keyStroke: evt
	| key |
	key := evt keyString.
	'<left>' = key ifTrue: [ self cursorMove: 1 ].
	'<right>' = key ifTrue: [ self cursorMove: -1 ].
	'<up>' = key ifTrue: [ self cursorMoveUp].
	'<down>' = key ifTrue: [ self cursorMoveDown].
	'<Ctrl-left>' = key ifTrue: [ self cursorMove: 10 ].
	'<Ctrl-right>' = key ifTrue: [ self cursorMove: -10 ].
	'<Cmd-left>' = key ifTrue: [ self addKerning: -1 ].
	'<Cmd-right>' = key ifTrue: [ self addKerning: 1 ].
	'<Cmd-Shift-left>' = key ifTrue: [ self addKerning: -20 ].
	'<Cmd-Shift-right>' = key ifTrue: [ self addKerning: 20 ]