Class {
	#name : 'BaselineOfBlocEmoji',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfBlocEmoji',
	#package : 'BaselineOfBlocEmoji'
}

{ #category : 'baselines' }
BaselineOfBlocEmoji >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			baseline: 'Bloc'
			with: [ spec repository: 'github://pharo-graphics/Bloc:v2.1.0/src' ].
		spec package: #BlocEmoji with: [ spec requires: #( 'Bloc' ) ].
		spec postLoadDoIt: #postload ]
]

{ #category : 'scripts' }
BaselineOfBlocEmoji >> postload [

	AeFontManager globalInstance
		scanEmbeddedFonts;
		scanDefaultDirectories
]
