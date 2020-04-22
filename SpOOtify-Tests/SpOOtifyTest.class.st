"
A SpOOtifyTest is a test class for testing the behavior of SpOOtify
"
Class {
	#name : #SpOOtifyTest,
	#superclass : #TestCase,
	#instVars : [
		'album',
		'autor',
		'app',
		'tema',
		'usuario'
	],
	#category : #'SpOOtify-Tests-Model'
}

{ #category : #running }
SpOOtifyTest >> setUp [
	super setUp.
	app:= SpOOtify new.
	album:= Album new.
	album nombre: 'Album'.
	autor:= Autor new.
	autor nombre: 'Autor'.
	tema:= Tema new.
	tema nombre: 'Tema'.
	usuario:= Usuario new.
	usuario nombre: 'usuario'.
	app addUsuario: usuario.
	album addTema: tema.
	autor addAlbum: album.
	app addAutor: autor.
]

{ #category : #running }
SpOOtifyTest >> tearDown [
	album:= nil.
	autor:= nil.
	tema:= nil.
	super tearDown.
]

{ #category : #test }
SpOOtifyTest >> testAddAutor [
	|aAutor aName|
	aName:= 'Test'.
	aAutor:= Usuario new. aAutor nombre: aName.
	self assert: app autores size equals: 1.
	app addAutor: aAutor.
	self assert: app autores size equals: 2.
	self assert: app autores last nombre equals: aName.
]

{ #category : #test }
SpOOtifyTest >> testAddUsuario [
	|aUser aName|
	aName:= 'Test'.
	aUser:= Usuario new. aUser nombre: aName.
	self assert: app usuarios size equals: 1.
	app addUsuario: aUser.
	self assert: app usuarios size equals: 2.
	self assert: app usuarios last nombre equals: aName.
	
]

{ #category : #test }
SpOOtifyTest >> testBuscarPorAlbum [
	|result|
	result:= app buscarPorAlbum: 'Album'.
	self assert: result size equals: 1.
	self assert: result first name equals: 'Tema'.
]

{ #category : #test }
SpOOtifyTest >> testBuscarPorAutor [
	|result|
	result:= app buscarPorAutor: 'Autor'.
	self assert: result size equals: 1.
	self assert: result first name equals: 'Tema'.
]

{ #category : #test }
SpOOtifyTest >> testBuscarPorTitulo [
	|result|
	result:= app buscarPorTitulo: 'Tema'.
	self assert: result size equals: 1.
	self assert: result first name equals: 'Tema'.
]
