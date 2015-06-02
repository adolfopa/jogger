test case events
handleSkip: aTestSkip of: aTestCase
	self announcer announce: (JGTestCaseSkipped testCase: aTestCase with: aTestSkip)