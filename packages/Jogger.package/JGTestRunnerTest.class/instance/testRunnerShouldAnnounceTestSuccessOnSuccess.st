tests
testRunnerShouldAnnounceTestSuccessOnSuccess
	protocol describe
		once: testCase recv: #runCase; => nil.
	
	runner announcer 
		when: JGTestCaseSuccess send: #beAnnounced to: self.
	
	runner runCase: testCase.
	
	self assertAnnounced 