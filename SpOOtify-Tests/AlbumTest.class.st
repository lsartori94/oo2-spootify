"
An AlbumTest is a test class for testing the behavior of Album
"
Class {
	#name : #AlbumTest,
	#superclass : #TestCase,
	#instVars : [
		'album'
	],
	#category : #'SpOOtify-Tests-Model'
}

{ #category : #running }
AlbumTest >> setUp [
	super setUp.
	album:= Album new.
	album nombre: 'Album'.
]

{ #category : #running }
AlbumTest >> tearDown [
	album:= nil.
	super tearDown.
]

{ #category : #test }
AlbumTest >> testAddTema [
	|aSong aName|
	aSong:= Tema new.
	aName:= 'Un Tema'.
	aSong nombre: aName.
	self assert: album temas size equals: 0.
	album addTema: aSong.
	self assert: album temas size equals: 1.
	self assert: album temas first nombre equals: aName.
]
