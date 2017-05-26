callback
enteringWith: unused

	self clearAlerts.
	familyName text: 'Untitled Family'.
	biographyText text: (self topLevel user biography ifNil: ['']).
	
	((FRTFamily loadWhere: {#author -> self user} populate: #(fonts) from: self backend)
		then: [:families |
			families
				detect: [:family | family fonts isEmpty]
				ifFound: [:family |
					family uploadStatus = 'processing' ifTrue: [self continuePreviousUpload].
					family]
				ifNone: [
					((FRTSampleText new
						title: 'Standard Family Sample Text';
						author: self user;
						text: FRTRichText standardEmptyFamilyText asJsonString)
							 saveTo: self backend) then: [:sampleText |
								FRTFamily new
									author: self topLevel user;
									familyName: familyName text;
									previewGlyphs: '';
									standardSampleText: sampleText;
									saveTo: self backend]]])
		then: [:family |
			familyName text: family familyName.
			aboutFamilyText text: (family about ifNil: ['']).
			self family: family]