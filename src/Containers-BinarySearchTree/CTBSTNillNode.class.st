"
I represent a nil node for Binary Search Tree.
"
Class {
	#name : 'CTBSTNillNode',
	#superclass : 'CTBSTAbstractNode',
	#category : 'Containers-BinarySearchTree',
	#package : 'Containers-BinarySearchTree'
}

{ #category : 'adding' }
CTBSTNillNode >> addChild: anObject [

	^ CTBSTNode new
		contents: anObject;
		parent: self parent;
		yourself
]

{ #category : 'accessing' }
CTBSTNillNode >> contents [

	^ nil
]

{ #category : 'accessing' }
CTBSTNillNode >> contents: anObject [

	"Do nothing for nil node"
]

{ #category : 'accessing' }
CTBSTNillNode >> height [

	^ 0
]

{ #category : 'enumerating' }
CTBSTNillNode >> inOrderDo: aBlock [

	"Do nothing for nil node"
]

{ #category : 'testing' }
CTBSTNillNode >> isEmpty [

	^ true
]

{ #category : 'testing' }
CTBSTNillNode >> isLeaf [

	^ false
]

{ #category : 'accessing' }
CTBSTNillNode >> search: anObject [

	^ nil
]

{ #category : 'accessing' }
CTBSTNillNode >> size [

	^ 0
]
