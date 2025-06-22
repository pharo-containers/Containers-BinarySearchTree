"
I represent an abstract node for Binary Search Tree.
"
Class {
	#name : 'CTBSTAbstractNode',
	#superclass : 'Object',
	#instVars : [
		'parent'
	],
	#category : 'Containers-BinarySearchTree',
	#package : 'Containers-BinarySearchTree'
}

{ #category : 'adding' }
CTBSTAbstractNode >> addChild: anObject [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
CTBSTAbstractNode >> contents [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
CTBSTAbstractNode >> contents: anObject [

	self subclassResponsibility
]

{ #category : 'accessing' }
CTBSTAbstractNode >> height [

	^ self subclassResponsibility
]

{ #category : 'enumerating' }
CTBSTAbstractNode >> inOrderDo: aBlock [

	^ self subclassResponsibility
]

{ #category : 'testing' }
CTBSTAbstractNode >> isEmpty [

	^ self subclassResponsibility
]

{ #category : 'testing' }
CTBSTAbstractNode >> isLeaf [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
CTBSTAbstractNode >> parent [

	^ parent
]

{ #category : 'accessing' }
CTBSTAbstractNode >> parent: aNode [

	parent := aNode
]

{ #category : 'accessing' }
CTBSTAbstractNode >> search: anObject [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
CTBSTAbstractNode >> size [
	
	^ self subclassResponsibility
]
