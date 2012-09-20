import org.springframework.dao.DataIntegrityViolationException

class ReportController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	def Calendar c = new GregorianCalendar()
    
   def m = c.get(Calendar.MONTH)
   def y= c.get(Calendar.YEAR)
   def dealer = 'bird'
	
    def list(Integer max) {
      
    def usernameList =  Person.executeQuery("select username from Person where dealer= " + "'" + params["dealerName"]+ " ' ").asList();
    def names = ""
    usernameList.each {
    names = names +  "'" + it + "'," 
    }

    names = names.substring(0,names.size()-1)

    
    def e1 = DealerDailyData.executeQuery('select sum(data.enquiryTotal) from DealerDailyData data , Person person WHERE data.user = person.username AND data.month= '+ m +' and data.year= '+y + ' and data.user in ' + " ( " + names + " ) " ).first()
    
	  def f1 = DealerDailyData.executeQuery('select sum(data.enquiryFollowTotal) from DealerDailyData data , Person person WHERE data.user = person.username AND data.month= '+ m +' and data.year= '+y + ' and data.user in ' + " ( " + names + " ) ").first()
	  def b1 = DealerDailyData.executeQuery('select sum(data.bookingsTotal) from DealerDailyData data , Person person WHERE data.user = person.username AND data.month= '+ m +' and data.year= '+y + ' and data.user in ' + " ( " + names + " ) " ).first()
	  def v1 = DealerDailyData.executeQuery('select sum(data.vehiclesTotal) from DealerDailyData data , Person person WHERE data.user = person.username AND data.month= '+ m +' and data.year= '+y + ' and data.user in ' + " ( " + names + " ) " ).first()
	  def e2 = DealerDailyData.executeQuery('select sum(data.enquiryNSCTotal) from DealerDailyData data , Person person WHERE data.user = person.username AND data.month= '+ m +' and data.year= '+y + ' and data.user in ' + " ( " + names + " ) ").first()
	  def f2 = DealerDailyData.executeQuery('select sum(data.enquiryFollowNSCTotal) from DealerDailyData data , Person person WHERE data.user = person.username AND data.month= '+ m +' and data.year= '+y + ' and data.user in ' + " ( " + names + " ) ").first()
	  def b2 = DealerDailyData.executeQuery('select sum(data.bookingsNSCTotal) from DealerDailyData data , Person person WHERE data.user = person.username AND data.month= '+ m +' and data.year= '+y + ' and data.user in ' + " ( " + names + " ) ").first()
	  def v2 = DealerDailyData.executeQuery('select sum(data.vehiclesNSCTotal) from DealerDailyData data , Person person WHERE data.user = person.username AND data.month= '+ m +' and data.year= '+y + ' and data.user in ' + " ( " + names + " ) ").first()
	  def cs = DealerDailyData.executeQuery('select sum(data.closingStockTotal)from DealerDailyData data , Person person WHERE data.user = person.username AND data.month= '+ m +' and data.year= '+y + ' and data.user in ' + " ( " + names + " ) ").first()
	  def td = DealerDailyData.executeQuery('select sum(data.testDrivesTotal) from DealerDailyData data , Person person WHERE data.user = person.username AND data.month= '+ m +' and data.year= '+y + ' and data.user in ' + " ( " + names + " ) ").first()
  
	
    [ e1: e1 , f1: f1, b1:b1, v1:v1, e2:e2, f2:f2, b2:b2, v2:v2, cs:cs, td: td,  e3: e1+e2, crd: e2 / v1, crnsc: cs / f2, lrd: v1 / f1, lrnsc: v2 / f2, tdl: td / ( e1 + e2) , stdr: ( v1 + v2) / td  ]
              
    }
  }