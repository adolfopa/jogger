tests
testRunnerShouldAnnounceSuiteStarted	
	protocol describe
		once: suite recv: #tests; => #().
	
	runner announcer
		when: JGTestSuiteStarted send: #beAnnounced to: self.
	
	runner runSuite.
	
	self assertAnnounced