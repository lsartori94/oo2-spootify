"
An UsuarioTest is a test class for testing the behavior of Usuario
"
Class {
	#name : #UsuarioTest,
	#superclass : #TestCase,
	#instVars : [
		'usuario'
	],
	#category : #'SpOOtify-Tests-Model'
}

{ #category : #running }
UsuarioTest >> setUp [
	super setUp.
	usuario:= Usuario new.
	usuario nombre: 'Usuario'.
]

{ #category : #running }
UsuarioTest >> tearDown [
	usuario:= nil.
	super tearDown.
]

{ #category : #test }
UsuarioTest >> testAgregar [
	|aSong aName|
	aSong:= Tema new.
	aName:= 'Un Tema'.
	aSong nombre: aName.
	self assert: usuario myMusic size equals: 0.
	usuario agregar: aSong.
	self assert: usuario myMusic size equals: 1.
	self assert: usuario myMusic first nombre equals: aName.
	
]

{ #category : #test }
UsuarioTest >> testRemover [
	|aSong anotherSong aTitle|
	aTitle:= 'Dos'.
	aSong:= Tema new. aSong nombre: 'Uno'.
	anotherSong:= Tema new. anotherSong nombre: aTitle.
	usuario agregar: aSong; agregar: anotherSong.
	self assert: usuario myMusic size equals: 2.
	usuario remover: aSong.
	self assert: usuario myMusic first nombre equals: aTitle.
]
