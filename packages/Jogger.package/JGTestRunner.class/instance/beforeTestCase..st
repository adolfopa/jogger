test case events
beforeTestCase: aTestCase
	listener ifNotNil: [ listener beforeTestCase: aTestCase ].
	
	self increaseTestCount.