Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
"Crea una nueva instancia de la clase counter y asigna un valor recibido a la varible counter"
^ self new count: anInteger 

"CUANDO USAR MENSAJES DEL LADO DE LA CLASE O DEL LADO DE LA INSTANCIA"
]

{ #category : #accessing }
Counter >> count [

^ count "getter"
]

{ #category : #accessing }
Counter >> count:anInteger [

count := anInteger 
]

{ #category : #API }
Counter >> decrement [

count := count -1
]

{ #category : #accessing }
Counter >> increment [

count := count +1
]

{ #category : #initialization }
Counter >> initialize [ 

super initialize .
count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [

super printOn: aStream. "a counter - aStream es el aCounter" 

aStream nextPutAll: ' con valor de ' , count printString .
aStream cr
]
