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

	tree add: 50.
	tree add: 30.
	tree add: 70.
	self assert: tree size equals: 3
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testAddSingleElement [

	tree add: 42.
	self deny: tree isEmpty.
	self assert: tree size equals: 1
]

{ #category : 'tests' }
CTBinarySearchTreeTest >> testEmpty [

	self assert: tree isEmpty.
	self assert: tree size equals: 0
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
