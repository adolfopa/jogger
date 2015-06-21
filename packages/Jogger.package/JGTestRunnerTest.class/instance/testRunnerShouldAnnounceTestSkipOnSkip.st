tests
testRunnerShouldAnnounceTestSkipOnSkip
	protocol describe
		once: testCase recv: #runCase; signals: TestSkip.
	
	runner announcer 
		when: JGTestCaseSkipped send: #beAnnounced to: self.
	
	runner runCase: testCase.
	
	self assertAnnounced 