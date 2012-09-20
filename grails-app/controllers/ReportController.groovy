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
      def e1 = DealerDailyData.executeQuery('select sum(data.enquiryTotal) from DealerDailyData data where data.month= '+ m +' and data.year= '+y).first()
	  def f1 = DealerDailyData.executeQuery('select sum(data.enquiryFollowTotal) from DealerDailyData data where data.month= '+ m +' and data.year= '+y).first()
	  def b1 = DealerDailyData.executeQuery('select sum(data.bookingsTotal) from DealerDailyData data where data.month= '+ m +' and data.year= '+y).first()
	  def v1 = DealerDailyData.executeQuery('select sum(data.vehiclesTotal) from DealerDailyData data where data.month= '+ m +' and data.year= '+y).first()
	  def e2 = DealerDailyData.executeQuery('select sum(data.enquiryNSCTotal) from DealerDailyData data where data.month= '+ m +' and data.year= '+y).first()
	  def f2 = DealerDailyData.executeQuery('select sum(data.enquiryFollowNSCTotal) from DealerDailyData data where data.month= '+ m +' and data.year= '+y).first()
	  def b2 = DealerDailyData.executeQuery('select sum(data.bookingsNSCTotal) from DealerDailyData data where data.month= '+ m +' and data.year= '+y).first()
	  def v2 = DealerDailyData.executeQuery('select sum(data.vehiclesNSCTotal) from DealerDailyData data where data.month= '+ m +' and data.year= '+y).first()
	  def cs = DealerDailyData.executeQuery('select sum(data.closingStockTotal) from DealerDailyData data where data.month= '+ m +' and data.year= '+y).first()
	  def td = DealerDailyData.executeQuery('select sum(data.testDrivesTotal) from DealerDailyData data where data.month= '+ m +' and data.year= '+y).first()
	  /*
	  def ms = DealerMonthlyData.executeQuery('select(data.marketingSpending) from DealerMonthlyData data ')
	  def csa = DealerMonthlyData.executeQuery('select (data.corporateSalesAchievement) from DealerMonthlyData data ')
	  */
        
		withFormat {
          
          html {
             [ e1: e1 , f1: f1, b1:b1, v1:v1, e2:e2, f2:f2, b2:b2, v2:v2, cs:cs, td: td,  e3: e1+e2, crd: e2 / v1, crnsc: cs / f2, lrd: v1 / f1, lrnsc: v2 / f2, tdl: td / ( e1 + e2) , stdr: ( v1 + v2) / td  ]
          }              
                json {
                      render(contentType: "text/json") {
                       [ 
                         e1,
                         f1,
						 b1,
						 v1,
						 e2,
						 f2,
						 b2,
						 v2,
						 cs,
						 td
					
                         
                       ]
                      }
                    
                    }
                 }              
    }
	

}

/*
[enquiry3_sum: DealerDailyData.executeQuery('select sum(data.enquiry3) from DealerDailyData data where month = ' + new Date().month() + 'group by month').first(),

*/