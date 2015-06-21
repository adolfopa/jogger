tests
testRunnerShouldAnnounceTestFailureOnTestFailure
	protocol describe
		once: testCase recv: #runCase; signals: TestFailure.
	
	runner announcer 
		when: JGTestCaseFailed send: #beAnnounced to: self.
	
	runner runCase: testCase.
	
	self assertAnnounced 