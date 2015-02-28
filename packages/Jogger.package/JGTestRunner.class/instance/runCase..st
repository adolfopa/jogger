running
runCase: aTestCase
	self beforeTestCase: aTestCase.
	
	[[ aTestCase runCase ] 
		on: Halt , Error, TestFailure
		do: [ :err | self handleFailure: err of: aTestCase ]]
		on: TestSkip do: [ :skip| self handleSkip: skip of: aTestCase ]