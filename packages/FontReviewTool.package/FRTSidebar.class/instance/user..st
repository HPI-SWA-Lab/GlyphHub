accessing
user: aUser
	userNameLabel text: aUser userName, ' ', (BTIcon icon: #caret_down).
	userAvatarImage path: FileDirectory default / 'BP2016H1' / 'assets' / 'penguin.png'.
	self changed