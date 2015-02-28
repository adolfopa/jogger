running
runPackage: aPackageName
	| package |
	
	package := RPackage organizer packageNamed: aPackageName.
	
	^ self runClasses: package definedClasses named: aPackageName