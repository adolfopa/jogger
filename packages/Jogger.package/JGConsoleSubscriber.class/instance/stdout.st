accessing
stdout
	(stdout isNil or: [ stdout closed ])
		ifTrue: [ stdout := VTermOutputDriver stdout ].
		
	^ stdout