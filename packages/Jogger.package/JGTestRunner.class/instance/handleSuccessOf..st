test case events
handleSuccessOf: aTestCase
	self announcer announce: (JGTestCaseSuccess for: aTestCase)