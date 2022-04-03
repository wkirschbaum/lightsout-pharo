"
I represent a lights out cell

"
Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #'PBE-LightsOut'
}

{ #category : #initialization }
LOCell >> initialize [
	super initialize.
	self label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 16 @ 16.
	offColor := Color paleYellow.
	onColor := Color paleBlue darker.
	self useSquareCorners.
	self turnOff
]

{ #category : #accessing }
LOCell >> mouseAction [
^ mouseAction 
]

{ #category : #accessing }
LOCell >> mouseAction: action [ 
	mouseAction := action.
]

{ #category : #'event handling' }
LOCell >> mouseUp: anEvent [
mouseAction value
]
