"
I represent an empty node in a Binary Search Tree using the Null Object pattern.

I provide default 'do nothing' behavior for all tree operations, eliminating the need for nil checks throughout the tree algorithms. This makes the code cleaner and prevents null pointer errors.

When elements are added to me, I create and return a new CTBSTNode containing the element, effectively growing the tree.
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

{ #category : 'enumerating' }
CTBSTNillNode >> elementsGreaterThan: anObject into: aCollection [

	"Do nothing for nill node"
]

{ #category : 'enumerating' }
CTBSTNillNode >> elementsLessThan: anObject into: aCollection [

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

{ #category : 'searching' }
CTBSTNillNode >> predecessorOf: anObject [

	^ nil
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

{ #category : 'searching' }
CTBSTNillNode >> successorOf: anObject [

	^ nil
]

{ #category : 'testing' }
CTBSTNillNode >> validateBSTProperty [

	^ true
]

{ #category : 'private' }
CTBSTNillNode >> validateBSTPropertyWithMin: min max: max [

	^ true
]
