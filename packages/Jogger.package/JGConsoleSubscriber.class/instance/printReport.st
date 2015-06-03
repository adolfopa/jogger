private - printing
printReport
	self stderr lf; 
		nextPutAll: 'Finished running '; print: suiteState maxTest; 
		nextPutAll: ' Test';
		nextPutAll: (suiteState maxTest = 1 ifTrue: [''] ifFalse: ['s']);
		lf