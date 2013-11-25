component extends="mxunit.framework.TestCase" {

	function setUp(){
		variables.statDNSObj = createObject("component", "com.statDNSConsumer").init(
			domain	= "www.google.com",
			ipv4	= "74.125.225.242"
		);
	}

	function tearDown(){ }

	function test_getA(){
		var data = variables.statDNSObj.getA();
		
		assertTrue(isStruct(data));
		assertEquals("www.google.com.", data.inquiry.name);
		assertEquals("a", data.inquiry.type);
		assertTrue(arrayLen(data.results));
		assertTrue(reFind(data.results[1].data, "\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b"));
	}

}