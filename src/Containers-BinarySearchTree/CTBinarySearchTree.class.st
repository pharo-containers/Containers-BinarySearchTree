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

{ #category : 'enumerating' }
CTBinarySearchTree >> do: aBlock [

	"Alias for inOrderDo: - visits elements in sorted order"
	self inOrderDo: aBlock
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

{ #category : 'accessing' }
CTBinarySearchTree >> size [

	^ root size
]
