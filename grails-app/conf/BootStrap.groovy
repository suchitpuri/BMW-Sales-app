import org.jsecurity.crypto.hash.Sha1Hash

class BootStrap {

	def authenticateService
    def init = { servletContext ->
    
	    def person = new Person(username: "bmw", userRealName: "BMW",dealer: "BMW",
	    email: "a@gmail.com", zone: " ", city: " " ,description: "BMW's Account",
		passwd: authenticateService.encodePassword('password'), enabled: true).save()
		def person1 = new Person(username: "user", userRealName: "user",dealer: "dealer 1",
			    email: "a@gmail.com", zone: " ", city: " ",description: "BMW's Account",
		passwd: authenticateService.encodePassword('password'), enabled: true).save()
	
	if (person.hasErrors()) { println person.errors }
	 def userAuth = new Authority(authority:"ROLE_USER", description: "Authenticated User").save()
	 def su =new Authority(authority:"ROLE_ADMIN", description: "Administrator Role").save()
	
	su.addToPeople(person)
	userAuth.addToPeople(person1)
	new Requestmap(url:"/",configAttribute:"ROLE_ADMIN,ROLE_USER").save()
	//new Requestmap(url:"/",configAttribute:"ROLE_USER").save()
	new Requestmap(url:"/dealerDailyData/**",configAttribute:"ROLE_USER").save()
	new Requestmap(url:"/dealerMonthlyData/**",configAttribute:"ROLE_USER").save()
	new Requestmap(url:"/dealerTarget/**",configAttribute:"ROLE_ADMIN").save()
	new Requestmap(url:"/person/**",configAttribute:"ROLE_ADMIN").save()
	
		
    }
    def destroy = {
    }
}
