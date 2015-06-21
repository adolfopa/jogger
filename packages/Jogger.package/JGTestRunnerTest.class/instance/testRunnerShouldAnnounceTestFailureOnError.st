tests
testRunnerShouldAnnounceTestFailureOnError
	protocol describe
		once: testCase recv: #runCase; signals: Error.
	
	runner announcer 
		when: JGTestCaseFailed send: #beAnnounced to: self.
	
	runner runCase: testCase.
	
	self assertAnnounced 