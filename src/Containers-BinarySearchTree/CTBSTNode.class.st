"
I represent a node for Binary Search Tree.
"
Class {
	#name : 'CTBSTNode',
	#superclass : 'CTBSTAbstractNode',
	#instVars : [
		'contents',
		'left',
		'right'
	],
	#category : 'Containers-BinarySearchTree',
	#package : 'Containers-BinarySearchTree'
}

{ #category : 'adding' }
CTBSTNode >> addChild: anObject [

	anObject < contents
		ifTrue: [ left := left addChild: anObject ]
		ifFalse: [ anObject > contents
			ifTrue: [ right := right addChild: anObject ] ].
	^ self
]

{ #category : 'accessing' }
CTBSTNode >> contents [

	^ contents
]

{ #category : 'accessing' }
CTBSTNode >> contents: anObject [

	contents := anObject
]

{ #category : 'initialization' }
CTBSTNode >> initialize [

	super initialize.
	left := CTBSTNillNode new parent: self.
	right := CTBSTNillNode new parent: self
]

{ #category : 'testing' }
CTBSTNode >> isEmpty [

	^ false
]

{ #category : 'accessing' }
CTBSTNode >> left [

	^ left
]

{ #category : 'accessing' }
CTBSTNode >> left: aNode [

	left := aNode.
	aNode parent: self
]

{ #category : 'accessing' }
CTBSTNode >> right [

	^ right 
]

{ #category : 'accessing' }
CTBSTNode >> right: aNode [

	right := aNode.
	aNode parent: self
]

{ #category : 'accessing' }
CTBSTNode >> search: anObject [

	contents = anObject ifTrue: [ ^ contents ].
	^ anObject < contents
		ifTrue: [ left search: anObject ]
		ifFalse: [ right search: anObject ]
]

{ #category : 'accessing' }
CTBSTNode >> size [

	^ 1 + left size + right size
]
