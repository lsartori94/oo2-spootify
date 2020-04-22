"
Usuario comment: 'Usuario Class'
"
Class {
	#name : #Usuario,
	#superclass : #Object,
	#instVars : [
		'myMusic',
		'nombre'
	],
	#category : #'SpOOtify-Model'
}

{ #category : #accessing }
Usuario >> agregar: aSong [
	myMusic add: aSong.
]

{ #category : #accessing }
Usuario >> initialize [
	myMusic:= OrderedCollection new.
	nombre:= String new.
]

{ #category : #accessing }
Usuario >> myMusic [
	^myMusic.
]

{ #category : #accessing }
Usuario >> myMusic: someTemas [
	myMusic:= someTemas.
]

{ #category : #accessing }
Usuario >> nombre [
	^nombre.
]

{ #category : #accessing }
Usuario >> nombre: aString [
	nombre:= aString.
]

{ #category : #accessing }
Usuario >> remover: aSong [
	myMusic remove: aSong.
]
