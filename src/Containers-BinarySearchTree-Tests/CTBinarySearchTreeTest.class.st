"
A CTBinarySearchTreeTest is a test class for testing the behavior of CTBinarySearchTree
"
Class {
	#name : 'CTBinarySearchTreeTest',
	#superclass : 'TestCase',
	#instVars : [
		'tree'
	],
	#category : 'Containers-BinarySearchTree-Tests',
	#package : 'Containers-BinarySearchTree-Tests'
}

{ #category : 'running' }
CTBinarySearchTreeTest >> setUp [
	super setUp.
	tree := CTBinarySearchTree new
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testAddMultipleElements [

	tree addAll: #(50 30 70).
	
	self assert: tree size equals: 3
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testAddSingleElement [

	tree add: 42.
	self deny: tree isEmpty.
	self assert: tree size equals: 1
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testAsArray [
	
	
	| result |
		tree addAll: #(50 30 70 20 40).

	result := tree asArray.
	self assert: result equals: #(20 30 40 50 70)
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testClear [

	tree addAll: #(1 2 3 4 5).
	tree clear.
	
	self assert: tree isEmpty.
	self assert: tree size equals: 0
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testCollectionMethods [
	
		| doubled evens found |
	tree addAll: #(50 30 70 20 40).
	
	doubled := tree collect: [ :each | each * 2 ].
	self assert: doubled asArray equals: #(40 60 80 100 140).
	
	evens := tree select: [ :each | each even ].
	self assert: evens asArray equals: #(20 30 40 50 70).
	
	found := tree detect: [ :each | each > 45 ] ifNone: [ nil ].
	self assert: found equals: 50
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testDuplicateHandling [

	tree addAll: #( 42 42 50 ).

	self assert: tree size equals: 2.

	self assert: (tree includes: 42).
	self assert: (tree includes: 50)
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testEmpty [

	self assert: tree isEmpty.
	self assert: tree size equals: 0
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testFindMinMax [

	tree addAll: #(50 30 70 20 80).
	
	self assert: tree findMin equals: 20.
	self assert: tree findMax equals: 80
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testHeight [

	self assert: tree height equals: 0.
	
	tree add: 50.
	self assert: tree height equals: 1.
	
	tree addAll: #(30 70).
	self assert: tree height equals: 2
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testInOrderTraversal [

		| result |
	tree addAll: #(50 30 70 20 40).
	
	result := OrderedCollection new.
	tree inOrderDo: [ :each | result add: each ].
	
	self assert: result asArray equals: #(20 30 40 50 70)
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testIncludes [

	tree addAll: #(50 30 70 20 40).
	
	self assert: (tree includes: 50).
	self assert: (tree includes: 30).
	self deny: (tree includes: 99).
	self deny: (tree includes: 25)
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testIsLeaf [

	tree add: 50.
	self assert: tree root isLeaf.
	
	tree add: 30.
	self deny: tree root isLeaf.
	self assert: tree root left isLeaf
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testPostOrderTraversal [

	| result |
	tree addAll: #( 50 30 70 20 ).

	result := OrderedCollection new.
	tree postOrderDo: [ :each | result add: each ].

	self assert: result last equals: 50.
	self assert: result asArray equals: #( 20 30 70 50 )
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testPreOrderTraversal [

	| result |
	tree addAll: #( 50 30 70 20 ).

	result := OrderedCollection new.
	tree preOrderDo: [ :each | result add: each ].
	self assert: result first equals: 50.
	self assert: result asArray equals: #(50 30 20 70)
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testRangeQuery [

	| result |
	tree addAll: #( 50 30 70 20 40 60 80 ).

	result := tree elementsFrom: 35 to: 65.
		self assert: result size equals: 3.

	"Test edge cases"
	result := tree elementsFrom: 10 to: 15.
	self assert: result isEmpty.

	result := tree elementsFrom: 15 to: 5. "Invalid range"
	self assert: result isEmpty
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testRemoveLeafNode [

	tree addAll: #(50 30 70 20).
	
	tree remove: 20.
	self assert: tree size equals: 3.
	self deny: (tree includes: 20)
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testRemoveNodeWithOneChild [

	tree addAll: #( 50 30 20 ).

	tree remove: 30.
	self assert: tree size equals: 2.
	self deny: (tree includes: 30).
	self assert: (tree includes: 20)
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testRemoveNodeWithTwoChildren [

	tree addAll: #(50 30 70 20 40).
	
	tree remove: 30.
	self assert: tree size equals: 4.
	self deny: (tree includes: 30)
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testRemoveNonExistentElement [

		| result |
		
	tree addAll: #(50 30 70).
	result := tree remove: 99 ifAbsent: [ #notFound ].
	self assert: result equals: #notFound.
	self assert: tree size equals: 3.
	
	self should: [ tree remove: 99 ] raise: Error
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testRemoveRoot [
	"Root with no children"
	tree add: 50.
	tree remove: 50.
	self assert: tree isEmpty.
	
	"Root with two children"
	tree clear.
	tree addAll: #(50 30 70 20 40 60 80).
	tree remove: 50.
	self assert: tree size equals: 6.
	self deny: (tree includes: 50).
]
