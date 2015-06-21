tests
testRunnerShouldAnnounceTestStart
	runner announcer
		when: JGTestCaseStarted send: #beAnnounced to: self.
	
	runner runCase: testCase.
	
	self assertAnnounced 