import org.codehaus.groovy.grails.plugins.springsecurity.RedirectUtils
import org.grails.plugins.springsecurity.service.AuthenticateService

import org.springframework.security.AuthenticationTrustResolverImpl
import org.springframework.security.DisabledException
import org.springframework.security.context.SecurityContextHolder as SCH
import org.springframework.security.providers.UsernamePasswordAuthenticationToken as AuthToken
import org.springframework.security.ui.AbstractProcessingFilter
import org.springframework.security.ui.webapp.AuthenticationProcessingFilter

/**
 * Login Controller (Example).
 */
class LoginController {

	/**
	 * Dependency injection for the authentication service.
	 */
	def authenticateService
	
	def daoAuthenticationProvider

	

	private final authenticationTrustResolver = new AuthenticationTrustResolverImpl()

	def index = {
		if (isLoggedIn()) {
			redirect uri: '/'
		}
		else {
			redirect action: auth, params: params
		}
	}

	/**
	 * Show the login page.
	 */
	def auth = {

		nocache response

		if (isLoggedIn()) {
			redirect uri: '/'
			return
		}

		String view
		String postUrl
		
			view = 'auth'
		/*	postUrl = "${request.contextPath}${config.filterProcessesUrl}"*/
		

		render view: view
	}

	def handleLogin = {
	def hashPassd = authenticateService.encodePassword(params.j_password)
	def user = Person.findByUsernameAndPasswd(params.j_username,hashPassd)
	if (!user) {
	flash.message = "User not found for userName: ${params.j_username}"
	redirect action: auth, params: params
	return
	
	}
	
	def auth = new AuthToken(user.username, params.j_password)
	def authtoken = daoAuthenticationProvider.authenticate(auth)
	SCH.context.authentication = authtoken
	session.user = user
	String roleName
	for (role in user.authorities) {
	roleName= role.authority
	}
	session.role=roleName
	
	redirect uri: '/'
	}

	/**
	 * login failed
	 */
	def authfail = {

		def username = session[AuthenticationProcessingFilter.SPRING_SECURITY_LAST_USERNAME_KEY]
		def msg = ''
		def exception = session[AbstractProcessingFilter.SPRING_SECURITY_LAST_EXCEPTION_KEY]
		if (exception) {
			if (exception instanceof DisabledException) {
				msg = "[$username] is disabled."
			}
			else {
				msg = "[$username] wrong username/password."
			}
		}

		
			flash.message = msg
			redirect action: auth, params: params
		
	}
	/**
		 * Show denied page.
		 */
		def denied = {
			if (isLoggedIn() && authenticationTrustResolver.isRememberMe(SCH.context?.authentication)) {
				
				flash.message = msg
				// have cookie but the page is guarded with IS_AUTHENTICATED_FULLY
				redirect action: auth, params: params
			}
		}

	/**
	 * Check if logged in.
	 */
	private boolean isLoggedIn() {
		return authenticateService.isLoggedIn()
	}

	

	/** cache controls */
	private void nocache(response) {
		response.setHeader('Cache-Control', 'no-cache') // HTTP 1.1
		response.addDateHeader('Expires', 0)
		response.setDateHeader('max-age', 0)
		response.setIntHeader ('Expires', -1) //prevents caching at the proxy server
		response.addHeader('cache-Control', 'private') //IE5.x only
	}
}
