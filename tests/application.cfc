component{
	this.name = 'statDNS_tests';
        
	this.mappings['/com'] = getDirectoryFromPath(getCurrentTemplatePath()) & "../";
	this.mappings['/tests'] = getDirectoryFromPath(getCurrentTemplatePath());
	this.mappings['/mxunit'] = getDirectoryFromPath(getCurrentTemplatePath()) & "../../mxunit";
}