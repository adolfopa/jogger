test case events
handleSkip: aTestSkip of: aTestCase 
	self
		print: aTestSkip printString 
		short: ' [SKIPPED]' 
		of: aTestCase