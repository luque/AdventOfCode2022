Class {
	#name : #BaselineOfAdventOfCode2022,
	#superclass : #BaselineOf,
	#category : #BaselineOfAdventOfCode2022
}

{ #category : #baselines }
BaselineOfAdventOfCode2022 >> baseline: spec [
  <baseline>

	self dependencies: spec.

	spec for: #common do: [ 
		spec
			package: #AdventOfCode2022;
			package: #'AdventOfCode2022-Tests'
			with: [ spec requires: #( 'AdventOfCode2022' ) ].
		spec
			group: 'Core' with: #( 'AdventOfCode2022' );
			group: 'CoreTests'
			with: #( 'AdventOfCode2022-Tests' );
			group: 'default' with: #( 'Core' 'CoreTests' ) ]
]
