suite events
beforeRunningSuite
	listener ifNotNil: [ listener beforeSuite: suite ].
	
	currentTest := 0.
	maxTest := suite tests size.