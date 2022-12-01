Class {
	#name : #AoCCalorieCountingTest,
	#superclass : #SUnitTest,
	#instVars : [
		'caloriesInput'
	],
	#category : #'AdventOfCode2022-Tests-Day1'
}

{ #category : #tests }
AoCCalorieCountingTest >> setUp [

	super setUp.
	caloriesInput := '1000
2000
3000

4000

5000
6000

7000
8000
9000

10000'
]

{ #category : #tests }
AoCCalorieCountingTest >> testExamplePart1 [

	self
		assert: (AoCCalorieCounting withElvesCalories: caloriesInput) maxElfCalories 
		equals: 24000
]

{ #category : #tests }
AoCCalorieCountingTest >> testExamplePart2 [

	| calorieCounting |
	calorieCounting := AoCCalorieCounting withElvesCalories: caloriesInput.
	self assert: (calorieCounting sumCaloriesTop: 3) equals: 45000
]
