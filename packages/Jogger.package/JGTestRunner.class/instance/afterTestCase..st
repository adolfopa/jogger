test case events
afterTestCase: aTestCase
	self announcer announce: (JGTestCaseFinished for: aTestCase)