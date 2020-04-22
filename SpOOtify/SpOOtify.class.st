"
SpOOtify comment: 'App Class'
"
Class {
	#name : #SpOOtify,
	#superclass : #Object,
	#instVars : [
		'autores',
		'usuarios'
	],
	#category : #'SpOOtify-Model'
}

{ #category : #adding }
SpOOtify >> addAutor: autor [
	autores add: autor.
]

{ #category : #adding }
SpOOtify >> addUsuario: usuario [
	usuarios add: usuario.
]

{ #category : #accessing }
SpOOtify >> autores [
	^autores.
]

{ #category : #accessing }
SpOOtify >> autores: someAutores [
	autores:= someAutores.
]

{ #category : #accessing }
SpOOtify >> buscarPorAlbum: aString [
	|autor temas|
	autor:= autores select: [ :each | each nombre == aString ].
	temas:= autor albumes map: [ :each | each temas ].
	^ temas.
	
]

{ #category : #accessing }
SpOOtify >> buscarPorAutor: aString [
]

{ #category : #accessing }
SpOOtify >> buscarPorTitulo: aString [
]

{ #category : #initialization }
SpOOtify >> initialize [
	autores:= OrderedCollection new.
	usuarios:= OrderedCollection new.
]

{ #category : #accessing }
SpOOtify >> usuarios [
	^usuarios.
]

{ #category : #accessing }
SpOOtify >> usuarios: someUsers [
	usuarios:= someUsers.
]
