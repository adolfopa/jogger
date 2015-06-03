suite events
afterRunningSuite
	self announcer announce: (JGTestSuiteFinished for: suite)