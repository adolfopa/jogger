suite events
beforeRunningSuite
	self announcer announce: (JGTestSuiteStarted new).
	
	currentTest := 0.
	maxTest := suite tests size.