test case events
onFailure: anError of: aTestCase
	first onFailure: anError of: aTestCase.
	second onFailure: anError of: aTestCase