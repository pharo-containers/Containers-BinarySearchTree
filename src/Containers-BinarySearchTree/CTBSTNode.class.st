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
		ifFalse: [ 
			anObject > contents
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

{ #category : 'enumerating' }
CTBSTNode >> elementsFrom: min to: max into: aCollection [
	"If current node is greater than max, only check left subtree"
	contents > max ifTrue: [
			left elementsFrom: min to: max into: aCollection.
			^ self ].

	"If current node is less than min, only check right subtree"
	contents < min ifTrue: [
			right elementsFrom: min to: max into: aCollection.
			^ self ].

	"Current node is in range, check both subtrees and include current"
	left elementsFrom: min to: max into: aCollection.
	aCollection add: contents.
	right elementsFrom: min to: max into: aCollection
]

{ #category : 'enumerating' }
CTBSTNode >> elementsGreaterThan: anObject into: aCollection [

	"If current node is greater than target, check left subtree and include current"
	contents > anObject ifTrue: [
		left elementsGreaterThan: anObject into: aCollection.
		aCollection add: contents ].
	"Always check right subtree"
	right elementsGreaterThan: anObject into: aCollection
]

{ #category : 'enumerating' }
CTBSTNode >> elementsLessThan: anObject into: aCollection [

	left elementsLessThan: anObject into: aCollection.
	contents < anObject ifFalse: [ ^ self ].
	aCollection add: contents.
	right elementsLessThan: anObject into: aCollection
]

{ #category : 'searching' }
CTBSTNode >> findMax [

	^ right isEmpty
		ifTrue: [ contents ]
		ifFalse: [ right findMax ]
]

{ #category : 'searching' }
CTBSTNode >> findMin [

	^ left isEmpty
		ifTrue: [ contents ]
		ifFalse: [ left findMin ]
]

{ #category : 'accessing' }
CTBSTNode >> height [

	^ 1 + (left height max: right height)
]

{ #category : 'enumerating' }
CTBSTNode >> inOrderDo: aBlock [

	left inOrderDo: aBlock.
	aBlock value: contents.
	right inOrderDo: aBlock
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

{ #category : 'testing' }
CTBSTNode >> isLeaf [

	^ left isEmpty and: [ right isEmpty ]
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

{ #category : 'enumerating' }
CTBSTNode >> postOrderDo: aBlock [

	left postOrderDo: aBlock.
	right postOrderDo: aBlock.
	aBlock value: contents 
]

{ #category : 'enumerating' }
CTBSTNode >> preOrderDo: aBlock [

	aBlock value: contents.
	left preOrderDo: aBlock.
	right preOrderDo: aBlock
]

{ #category : 'searching' }
CTBSTNode >> predecessorOf: anObject [
	
		| rightResult |
	"Find the largest element smaller than anObject"
	
	anObject <= contents ifTrue: [
		^ left predecessorOf: anObject ].
	
	"Current node is potential predecessor, check right subtree for better one"
	rightResult := right predecessorOf: anObject.
	^ rightResult ifNil: [ contents ] ifNotNil: [ rightResult ]
]

{ #category : 'removing' }
CTBSTNode >> removeThisNode [

	"Remove this node and return replacement using standard BST algorithm"
		| successorValue |
	"Case 1: Leaf node (no children)"
	(left isEmpty and: [ right isEmpty ]) 
		ifTrue: [ ^ CTBSTNillNode new ].
	
	"Case 2: Only one child"
	left isEmpty ifTrue: [ ^ right ].
	right isEmpty ifTrue: [ ^ left ].
	
	"Case 3: Two children - replace with inorder successor"
	successorValue := right findMin.
	contents := successorValue.
	right := right removeValue: successorValue.
	^ self
]

{ #category : 'removing' }
CTBSTNode >> removeValue: anObject [

	"Remove node with anObject value and return the new subtree root"
	
	anObject < contents ifTrue: [
		left := left removeValue: anObject.
		^ self ].
	
	anObject > contents ifTrue: [
		right := right removeValue: anObject.
		^ self ].
	
	"Found the node to remove"
	^ self removeThisNode
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

{ #category : 'searching' }
CTBSTNode >> successorOf: anObject [

	| leftResult |
	"Find the smallest element larger than anObject"
	
	anObject >= contents ifTrue: [
		^ right successorOf: anObject ].
	
	"Current node is potential successor, check left subtree for better one"
	leftResult := left successorOf: anObject.
	^ leftResult ifNil: [ contents ] ifNotNil: [ leftResult ]
]

{ #category : 'testing' }
CTBSTNode >> validateBSTProperty [

	"Check if BST property holds: left < node < right"
	^ self validateBSTPropertyWithMin: nil max: nil
]

{ #category : 'private' }
CTBSTNode >> validateBSTPropertyWithMin: min max: max [

	(min notNil and: [ contents < min ]) ifTrue: [ ^ false ].
	(max notNil and: [ contents > max ]) ifTrue: [ ^ false ].
	
	^ (left isEmpty or: [ left validateBSTPropertyWithMin: min max: contents ])
		and: [ right isEmpty or: [ right validateBSTPropertyWithMin: contents max: max ] ]
]
