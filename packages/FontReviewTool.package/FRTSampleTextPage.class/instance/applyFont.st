ui
applyFont

	self flag: #bug. "maybe find a way to get fonts by ID, not by name, enabling us to avoid that pesky anyOne call"
	(self topLevel backend loadWhere: #fontName equals: fontSelectCompletion text into: FRTFont populate: #('family'))
		then: [:fonts | | font |
			font := fonts anyOne.
			self selectedFont: font.
			self topLevel sidebar selectedFont: self selectedFont.
			self applyFontToSampleTextWidget]