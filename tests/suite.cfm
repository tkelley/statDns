<cfscript>
	testSuite = createObject("component","mxunit.framework.TestSuite").TestSuite();
	testSuite.addAll("tests.statDNSTest");
	results = testSuite.run();
	writeOutput(results.getResultsOutput('html'));
</cfscript>