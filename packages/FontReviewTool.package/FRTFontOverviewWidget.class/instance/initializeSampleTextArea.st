as yet unclassified
initializeSampleTextArea

	sampleTextEditor := FRTFontOverviewEditor new.
	sampleTextEditor when: #saved send: #saveSampleText: to: self.

	^ BTPage column add: sampleTextEditor