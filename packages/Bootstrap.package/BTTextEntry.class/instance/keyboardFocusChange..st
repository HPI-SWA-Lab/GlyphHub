as yet unclassified
keyboardFocusChange: weHaveFocus
	super keyboardFocusChange: weHaveFocus.
	
	focused := weHaveFocus.
	self updateCursor