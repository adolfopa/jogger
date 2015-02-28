running
runCase: aTestCase
	self increaseTestCount.
	self beforeTestCase: aTestCase.
	
	[[ aTestCase runCase ] 
		on: Halt , Error, TestFailure
		do: [ :err | self handleFailure: err of: aTestCase ]]
		on: TestSkip do: [ :skip| self handleSkip: skip of: aTestCase ]