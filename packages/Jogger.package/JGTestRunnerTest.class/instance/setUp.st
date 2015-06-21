running
setUp
	announced := false.
	suite := protocol mock: 'test suite'.
	testCase := protocol mock: 'test case'.
	runner := JGTestRunner new initializeOn: suite.