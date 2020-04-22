"
Autor comment: 'Autor Class'
"
Class {
	#name : #Autor,
	#superclass : #Object,
	#instVars : [
		'albumes',
		'nombre'
	],
	#category : #'SpOOtify-Model'
}

{ #category : #adding }
Autor >> addAlbum: aAlbum [
	albumes add: aAlbum.
]

{ #category : #accessing }
Autor >> albumes [
	^albumes.
]

{ #category : #accessing }
Autor >> albumes: someAlbums [
	albumes:= someAlbums.
]

{ #category : #accessing }
Autor >> initialize [
	albumes:= OrderedCollection new.
]

{ #category : #accessing }
Autor >> nombre [
	^nombre.
]

{ #category : #accessing }
Autor >> nombre: aString [
	nombre:= aString.
]
