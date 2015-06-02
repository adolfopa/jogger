test case events
handleFailure: aFailureAnnouncement
	self printFailure: (aFailureAnnouncement failure) of: (aFailureAnnouncement testCase).
	self shouldSerializeError 
		ifTrue: [
			self serializeError: (aFailureAnnouncement failure) of: (aFailureAnnouncement testCase) ]