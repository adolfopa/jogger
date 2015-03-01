private - running
runSuite
	^ [
		self beforeRunningSuite.
		suiteTime := [ self runAll ] timeToRun ]
			ensure: [ self afterRunningSuite ]