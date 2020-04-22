"
An AutorTest is a test class for testing the behavior of Autor
"
Class {
	#name : #AutorTest,
	#superclass : #TestCase,
	#instVars : [
		'autor'
	],
	#category : #'SpOOtify-Tests-Model'
}

{ #category : #running }
AutorTest >> setUp [
	super setUp.
	autor:= Autor new.
	autor nombre: 'Nombre'.
]

{ #category : #running }
AutorTest >> tearDown [
	autor:= nil.
	super tearDown.
]

{ #category : #test }
AutorTest >> testAddAlbum [
	|aAlbum aName|
	aAlbum:= Tema new.
	aName:= 'Un Album'.
	aAlbum nombre: aName.
	self assert: autor albumes size equals: 0.
	autor addAlbum: aAlbum.
	self assert: autor albumes size equals: 1.
	self assert: autor albumes first nombre equals: aName.
]
