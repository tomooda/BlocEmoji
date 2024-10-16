Extension { #name : 'BlRopedText' }

{ #category : '*BlocEmoji' }
BlRopedText >> initializeEmojiFontAttributes [

	| attributes index size |
	attributes := { (BlFontFamilyAttribute named:
		               AeFontManager globalInstance defaultEmojiFace
			               familyName) }.
	index := 1.
	size := self size.
	[ index <= size ] whileTrue: [
		(BlEmoji isEmoji: (rope at: index)) ifTrue: [
			| start |
			start := index.
			[
			(index := index + 1) <= size and: [
				BlEmoji isEmoji: (rope at: index) ] ] whileTrue.
			rope := rope attributes: attributes from: start - 1 to: index - 1 ].
		index := index + 1 ]
]

{ #category : '*BlocEmoji' }
BlRopedText >> initializeWith: aRope [

	rope := aRope.
	attributesFinder := nil.
	self initializeEmojiFontAttributes
]
