running
run
	Author uniqueInstance
		ifUnknownAuthorUse: self defaultAuthorName
		during: [ [ 
			self beforeRunningSuite.
			suiteTime := [ self runAll ] timeToRun ]
					ensure: [ self afterRunningSuite ] ]