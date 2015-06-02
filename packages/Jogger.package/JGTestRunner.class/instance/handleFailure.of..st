test case events
handleFailure: anError of: aTestCase 
	self announcer announce: (JGTestCaseFailed testCase: aTestCase with: anError)