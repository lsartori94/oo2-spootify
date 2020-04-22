"
Album comment: 'Album Class'
"
Class {
	#name : #Album,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'temas'
	],
	#category : #'SpOOtify-Model'
}

{ #category : #adding }
Album >> addTema: aTema [
	temas add: aTema.
]

{ #category : #accessing }
Album >> initialize [
	temas:= OrderedCollection new.
	nombre:= String new.
]

{ #category : #accessing }
Album >> nombre [
	^nombre.
]

{ #category : #accessing }
Album >> nombre: aString [
	nombre:= aString.
]

{ #category : #accessing }
Album >> temas [
	^temas.
]

{ #category : #accessing }
Album >> temas: someTemas [
	temas:= someTemas.
]
