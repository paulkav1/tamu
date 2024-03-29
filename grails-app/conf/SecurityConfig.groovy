security {
	active = false
	cacheUsers=false
	
	loginUserDomainClass = "org.colloquy.User"
	authorityDomainClass = "org.colloquy.Role"
	requestMapClass = "org.colloquy.Requestmap"
	useRequestMapDomainClass=false
	requestMapString = """\
CONVERT_URL_TO_LOWERCASE_BEFORE_COMPARISON
PATTERN_TYPE_APACHE_ANT
/=IS_AUTHENTICATED_REMEMBERED
/login/auth=IS_AUTHENTICATED_ANONYMOUSLY
/js/**=IS_AUTHENTICATED_ANONYMOUSLY
/css/**=IS_AUTHENTICATED_ANONYMOUSLY
/images/**=IS_AUTHENTICATED_ANONYMOUSLY
/plugins/**=IS_AUTHENTICATED_ANONYMOUSLY
/**=IS_AUTHENTICATED_REMEMBERED
	"""
}
