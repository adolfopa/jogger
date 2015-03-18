listener registration
register: aListener
	listener := listener ifNil: [ aListener ] ifNotNil: [ listener, aListener ]