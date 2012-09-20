/**
 * Logout Controller (Example).
 */
 import org.springframework.security.context.SecurityContextHolder as SCH
class LogoutController {

	/**
	 * Index action. Redirects to the Spring security logout uri.
	 */
	def index = {
		session.invalidate()
		SCH.clearContext()
		redirect(uri: '/')
	}
}
