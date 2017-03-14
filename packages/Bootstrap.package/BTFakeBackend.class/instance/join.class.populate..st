as yet unclassified
join: aModelsList class: aClass populate: aCollection
	| associations populate |
	associations := aClass associations.
	populate := aCollection == #all
		ifTrue: [ associations keys ]
		ifFalse: [ aCollection ].
	
	aModelsList do: [ :model |
		populate do: [ :field | | current association children |
			current := model instVarNamed: field.
			association := associations at: field.
			
			children := self
				loadBy: ((association first associations at: association second ifAbsent: [#single]) third == #many ifTrue: ['id'] ifFalse: [association second])
				value: (association third == #single ifTrue: [current] ifFalse: [model id])
				from: association first modelName
				class: association first
				populate: #().
			
			children value do: [ :childModel | childModel instVarNamed: association second put: model ].
			
			model
				instVarNamed: field
				put: (association third == #single
					ifTrue: [ children value ifEmpty: [nil] ifNotEmptyDo: #first ]
					ifFalse: [
						children value
							field: field;
							owner: model;
							yourself ]) ]]