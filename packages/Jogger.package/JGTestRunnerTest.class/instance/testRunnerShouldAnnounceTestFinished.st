tests
testRunnerShouldAnnounceTestFinished
	runner announcer
		when: JGTestCaseFinished send: #beAnnounced to: self.
		
	runner runCase: testCase.
	
	self assertAnnounced