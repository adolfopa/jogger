running
run
	Author uniqueInstance
		ifUnknownAuthorUse: self defaultAuthorName
		during: [ [ 
			self setUp.
			suiteTime := [ self runAll ]
				timeToRun ]
					ensure: [ self tearDown ] ]