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

{ #category : 'testing' }
CTBSTNillNode >> isEmpty [

	^ true
]

{ #category : 'accessing' }
CTBSTNillNode >> size [

	^ 0
]
