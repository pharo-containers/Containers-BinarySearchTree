"
I represent a Binary Search Tree data structure.
"
Class {
	#name : 'CTBinarySearchTree',
	#superclass : 'Object',
	#instVars : [
		'root'
	],
	#category : 'Containers-BinarySearchTree',
	#package : 'Containers-BinarySearchTree'
}

{ #category : 'adding' }
CTBinarySearchTree >> add: anObject [

	root := root addChild: anObject.
	^ anObject
]

{ #category : 'adding' }
CTBinarySearchTree >> addAll: aCollection [

	aCollection do: [ :each | self add: each ].
	^ aCollection
]

{ #category : 'converting' }
CTBinarySearchTree >> asArray [

	| result |
	result := OrderedCollection new.
	self inOrderDo: [ :each | result add: each ].
	^ result asArray
]

{ #category : 'removing' }
CTBinarySearchTree >> clear [

	root := CTBSTNillNode new
]

{ #category : 'enumerating' }
CTBinarySearchTree >> collect: aBlock [

	| result |
	result := OrderedCollection new.
	self inOrderDo: [ :each | result add: (aBlock value: each) ].
	^ result

]

{ #category : 'enumerating' }
CTBinarySearchTree >> detect: aBlock ifNone: absentBlock [

	self inOrderDo: [ :each |
		(aBlock value: each) ifTrue: [ ^ each ]
	].
	^ absentBlock value
]

{ #category : 'enumerating' }
CTBinarySearchTree >> do: aBlock [

	"Alias for inOrderDo: - visits elements in sorted order"
	self inOrderDo: aBlock
]

{ #category : 'searching' }
CTBinarySearchTree >> findMax [ 

	^ self isEmpty 
		ifTrue: [ nil ]
		ifFalse: [ root findMax ]
]

{ #category : 'searching' }
CTBinarySearchTree >> findMin [

	^ self isEmpty 
		ifTrue: [ nil ]
		ifFalse: [ root findMin ]
]

{ #category : 'accessing' }
CTBinarySearchTree >> height [ 

	^ root isEmpty ifTrue: [ 0 ] ifFalse: [ root height ]
]

{ #category : 'enumerating' }
CTBinarySearchTree >> inOrderDo: aBlock [

	root inOrderDo: aBlock
]

{ #category : 'testing' }
CTBinarySearchTree >> includes: anObject [

	^ (root search: anObject) notNil
]

{ #category : 'initialization' }
CTBinarySearchTree >> initialize [

	super initialize.
	root := CTBSTNillNode new
]

{ #category : 'testing' }
CTBinarySearchTree >> isEmpty [

	^ root isEmpty
]

{ #category : 'accessing' }
CTBinarySearchTree >> root [

	^ root isEmpty ifTrue: [ nil ] ifFalse: [ root ]
]

{ #category : 'enumerating' }
CTBinarySearchTree >> select: aBlock [

	| result |
	result := OrderedCollection new.
	self inOrderDo: [ :each | (aBlock value: each) ifTrue: [ result add: each ] ].
	^ result
]

{ #category : 'accessing' }
CTBinarySearchTree >> size [

	^ root size
]
