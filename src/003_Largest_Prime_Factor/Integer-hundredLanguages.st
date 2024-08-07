'From Pharo13.0.0SNAPSHOT of 2 July 2024 [Build information: Pharo-13.0.0+SNAPSHOT.build.119.sha.9e6014ff9601667f872e254d00af8e97217598f1 (64 Bit)] on 18 July 2024 at 1:24:29.975 pm'!


!Integer methodsFor: 'hundredLanguages' stamp: '7/18/2024 13:17'!
largestPrimeFactor
	"Finds the largest prime factor of self"

	self sqrtFloor to: 1 by: -1 do: [ :n |
		self % n = 0 & n hasFactors not
			ifTrue: [^ n].
		 ].! !

!Integer methodsFor: 'hundredLanguages' stamp: '7/18/2024 13:14'!
hasFactors
	"Returns true if self has integer factors"

	2 to: self sqrtFloor do: [ :n |
		self % n = 0 ifTrue: [^ true].
	].
   ^ false.! !
