test case events
handleSkip: aTestSkipAnnouncement
	self
		print: (aTestSkipAnnouncement skip) printString 
		short: ' [SKIPPED]' 
		of: (aTestSkipAnnouncement testCase)