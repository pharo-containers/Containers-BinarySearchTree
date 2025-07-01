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

{ #category : 'enumerating' }
CTBSTNillNode >> elementsFrom: min to: max into: aCollection [

	"Do nothing for nill node"
]

{ #category : 'searching' }
CTBSTNillNode >> findMax [

	^ nil
]

{ #category : 'searching' }
CTBSTNillNode >> findMin [

	^ nil
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

{ #category : 'enumerating' }
CTBSTNillNode >> postOrderDo: aBlock [

	"Do nothing for nill node"
]

{ #category : 'enumerating' }
CTBSTNillNode >> preOrderDo: aBlock [

	"Do nothing for nill node"
]

{ #category : 'removing' }
CTBSTNillNode >> removeValue: anObject [

	"Element not found - return self unchanged"
	^ self
]

{ #category : 'accessing' }
CTBSTNillNode >> search: anObject [

	^ nil
]

{ #category : 'accessing' }
CTBSTNillNode >> size [

	^ 0
]
