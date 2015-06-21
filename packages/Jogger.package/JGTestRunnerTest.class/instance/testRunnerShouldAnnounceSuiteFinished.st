tests
testRunnerShouldAnnounceSuiteFinished
	protocol describe
		once: suite recv: #tests; => #().
		
	runner announcer
		when: JGTestSuiteFinished send: #beAnnounced to: self.
	
	runner runSuite.
	
	self assertAnnounced