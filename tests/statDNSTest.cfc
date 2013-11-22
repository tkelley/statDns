component extends="mxunit.framework.TestCase" {

	function setUp(){
		variables.statDNSObj = createObject("component", "com.statDNSConsumer").init(
			domain	= "www.google.com",
			ipv4	= "74.125.225.242"
		);
	}

	function tearDown(){ }

	function test_getA(){
		var result = variables.statDNSObj.getA();
		writeDump(result);
		assertEquals(1,1);
	}

}