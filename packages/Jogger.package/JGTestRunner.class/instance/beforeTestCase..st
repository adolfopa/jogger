test case events
beforeTestCase: aTestCase
	self announcer announce: (JGTestCaseStarted for: aTestCase)