suite events
beforeRunningSuite
	self announcer announce: (JGTestSuiteStarted for: suite).
	
	currentTest := 0.
	maxTest := suite tests size.