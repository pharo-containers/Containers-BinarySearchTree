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

{ #category : 'enumerating' }
CTBSTAbstractNode >> elementsFrom: min to: max into: aCollection [
	
	^ self subclassResponsibility 
]

{ #category : 'searching' }
CTBSTAbstractNode >> findMax [

	^ self subclassResponsibility
]

{ #category : 'searching' }
CTBSTAbstractNode >> findMin [

	^ self subclassResponsibility
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

{ #category : 'enumerating' }
CTBSTAbstractNode >> postOrderDo: aBlock [

	^ self subclassResponsibility 
]

{ #category : 'enumerating' }
CTBSTAbstractNode >> preOrderDo: aBlock [

	^ self subclassResponsibility 
]

{ #category : 'searching' }
CTBSTAbstractNode >> predecessorOf: anObject [

	^ self subclassResponsibility 
]

{ #category : 'removing' }
CTBSTAbstractNode >> removeValue: anObject [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
CTBSTAbstractNode >> search: anObject [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
CTBSTAbstractNode >> size [
	
	^ self subclassResponsibility
]

{ #category : 'searching' }
CTBSTAbstractNode >> successorOf: anObject [

	^ self subclassResponsibility 
]

{ #category : 'testing' }
CTBSTAbstractNode >> validateBSTProperty [

	^ self subclassResponsibility 
]

{ #category : 'private' }
CTBSTAbstractNode >> validateBSTPropertyWithMin: min max: max [

	^ self subclassResponsibility 
]
