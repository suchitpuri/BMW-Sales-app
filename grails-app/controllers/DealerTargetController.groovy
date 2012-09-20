import org.springframework.dao.DataIntegrityViolationException

class DealerTargetController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def sessionFactory

    def index() {
        redirect(action: "create", params: params)
    }

  /*  def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [dealerTargetInstanceList: DealerTarget.list(params), dealerTargetInstanceTotal: DealerTarget.count()]
    }*/

    def create() {
     	Date now = new Date()
     	Integer years = now.year + 1900
	Integer months = now.month
    	List<DealerTarget> dealerTargetInstanceLists= new ArrayList<DealerTarget>()
    
    	
    	def session1 = sessionFactory.getCurrentSession() 
     	def dealerList=session1.createSQLQuery("SELECT distinct dealer FROM person, test.authority_people,test.authority where person_id=person.id and authority_id=authority.id and authority='ROLE_USER'").list()
     	
     	dealerList.each{
     	
     	dealerTargetInstanceLists.add( new DealerTarget(dealer:it))
     	
     	}
     	
        
        [dealerTargetInstanceList: dealerTargetInstanceLists]
      
    }

    def save() {
    	
       List dealerList=Person.executeQuery("select dealer from Person")
       
       Integer i=0
       Date now = new Date()
       Integer years = now.year + 1900
	Integer months = now.month
	
	
       dealerList.each{
            	
            	 DealerTarget d= new DealerTarget(params.get("dealerTargetInstance").get("dealerTargetList["+i+"]"))
            	d.year=years
            	d.month=months
            	d.loyalty=1
            	List<DealerTarget> dealerTargetInstanceLists=DealerTarget.findAllByMonthAndYearAndDealer(months,years,d.dealer)
            	
            	if(dealerTargetInstanceLists.size==0){
            	if (!d.save(flush: true)) {
            			d.errors.each {
				        println it
    					}
		       		render(view: "create", params:params)
		               	flash.message = "Please set target again: Insertion Error"
		                return
        		}
        		
        	}
        	else{
        		dealerTargetInstanceLists[0].properties=d.properties
        		if (!dealerTargetInstanceLists[0].save(flush: true)) {
				       		render(view: "create", params:params)
				               	flash.message = "Please set target again: Update Error"
				                return
        		}
        	
        	}
        	
            	i=i+1
            	 
            	
     	}
     	flash.message="Target has been successfully set"
       
   	redirect(uri: '/')
	//render(view: "create", params:params)
   	
      
    }
    
  

  
}