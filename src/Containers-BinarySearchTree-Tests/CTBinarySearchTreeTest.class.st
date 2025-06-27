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

	tree add: 50.
	tree add: 30.
	tree add: 70.
	
	self assert: (tree includes: 50).
	self assert: (tree includes: 30).
	self assert: (tree includes: 70).
	self deny: (tree includes: 99)
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testIsLeaf [

	tree add: 50.
	self assert: tree root isLeaf.
	
	tree add: 30.
	self deny: tree root isLeaf.
	self assert: tree root left isLeaf
]
