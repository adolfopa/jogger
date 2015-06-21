tests
testRunnerShouldAnnounceTestFailureOnHalt
	protocol describe
		once: testCase recv: #runCase; signals: Halt.
	
	runner announcer 
		when: JGTestCaseFailed send: #beAnnounced to: self.
	
	runner runCase: testCase.
	
	self assertAnnounced 