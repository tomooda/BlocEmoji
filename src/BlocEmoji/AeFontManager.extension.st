Extension { #name : 'AeFontManager' }

{ #category : '*BlocEmoji' }
AeFontManager >> defaultEmojiFace [

	faceEntriesByFamilyName keysAndValuesDo: [ :name :fonts |
		(name includesSubstring: 'emoji') ifTrue: [
			^ fonts anyOne newFaceWith: freetypeLibrary ] ].
	^ nil
]
