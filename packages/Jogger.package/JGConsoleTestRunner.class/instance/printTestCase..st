private - printing
printTestCase: aTestCaseAnnouncement
	self stderr 
		startOfLine; clearToEnd; green; 
		print: (aTestCaseAnnouncement testCase); clear.

	self printProgress.