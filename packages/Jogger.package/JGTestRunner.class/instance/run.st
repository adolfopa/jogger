running
run
	Author uniqueInstance
		ifUnknownAuthorUse: self defaultAuthorName
			during: [ self runSuite ]