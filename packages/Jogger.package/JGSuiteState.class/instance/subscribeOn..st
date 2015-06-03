announcement subscription
subscribeOn: anAnnouncer
	anAnnouncer
		when: JGTestSuiteStarted send: #initializeState: to: self;
		when: JGTestCaseStarted send: #incrementTestCount to: self