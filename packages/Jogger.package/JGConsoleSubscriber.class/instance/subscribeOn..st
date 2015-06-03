private - announcement subscription
subscribeOn: anAnnouncer
	suiteState := JGSuiteStateSubscriber registerOn: anAnnouncer.
	
	anAnnouncer
		when: JGTestSuiteFinished send: #printReport to: self;
		when: JGTestCaseStarted send: #printTestCase: to: self;
		when: JGTestCaseFailed send: #handleFailure: to: self;
		when: JGTestCaseSkipped send: #handleSkip: to: self