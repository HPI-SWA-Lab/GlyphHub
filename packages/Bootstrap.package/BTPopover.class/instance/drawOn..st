as yet unclassified
drawOn: aCanvas
	BTWidget drawBackgroundWithTipOn: aCanvas bounds: self bounds colors: ({
		#background -> BTWidget backgroundColor.
		#border -> (BTWidget grayLight)
	} as: Dictionary)