running
runCase: aTestCase
	self beforeTestCase: aTestCase.

	[ self runAndHandleCase: aTestCase ]
		ensure: [ self afterTestCase: aTestCase ]