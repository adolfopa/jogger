test case events
beforeTestCase: aTestCase
	super beforeTestCase: aTestCase.
	self printTestCase: aTestCase