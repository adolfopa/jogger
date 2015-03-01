private - running
runAndHandleCase: aTestCase
	^ [[ aTestCase runCase. self handleSuccessOf: aTestCase ]
			on: Halt , Error , TestFailure do: [ :err |
				self handleFailure: err of: aTestCase ]]
		on: TestSkip do: [ :skip |
			self handleSkip: skip of: aTestCase ]