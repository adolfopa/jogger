private - printing
printProgress
	| string currentTest maxTest|

	currentTest := suiteState currentTest.
	maxTest := suiteState maxTest.
	
	string := '[',currentTest asString, '/', maxTest asString,']'.

	self stderr 
		startOfLine;
		right: (80 - string size);
		nextPutAll: string.