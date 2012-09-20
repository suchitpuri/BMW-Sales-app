
import org.springframework.dao.DataIntegrityViolationException

class DealerDailyDataController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "create", params: params)
        
    }

   

    def create() {
    	Calendar c = new GregorianCalendar();
	
    	/*Date now = new Date()
		 Integer years = now.year + 1900
		Integer months = now.month + 1
		Integer day = now.day*/
		Integer years = c.get(Calendar.YEAR)
		Integer months = c.get(Calendar.MONTH)
		Integer day = c.get(Calendar.DAY_OF_MONTH)
	    	List<DealerDailyData> dealerTargetInstanceLists= DealerDailyData.findAllByMonthAndYearAndDayAndUser(months,years,day,session.user?.username)
	    	DealerDailyData dealerDailyDataInst=new DealerDailyData(params)
	    	if(dealerTargetInstanceLists.size!=0)
	    	{
	    	/*dealerDailyDataInst.properties=dealerTargetInstanceLists[0].properties*/
	    	
	    	flash.message="Data has been submitted for the day"
	    	redirect(uri: '/')
       		 return
    		}
        	 [dealerDailyDataInstance: dealerDailyDataInst]
      
    }

    def save() {
        def dealerDailyDataInstance = new DealerDailyData(params)
        dealerDailyDataInstance.enquiryTotal=dealerDailyDataInstance.enquiry3+dealerDailyDataInstance.enquiry5+dealerDailyDataInstance.enquiry6+dealerDailyDataInstance.enquiry7+dealerDailyDataInstance.enquiryX1+dealerDailyDataInstance.enquiryX3+dealerDailyDataInstance.enquiryX5+dealerDailyDataInstance.enquiryX6+dealerDailyDataInstance.enquiryZ4+dealerDailyDataInstance.enquiryGT+dealerDailyDataInstance.enquiryM;
        dealerDailyDataInstance.enquiryFollowTotal=dealerDailyDataInstance.enquiryFollow3+dealerDailyDataInstance.enquiryFollow5+dealerDailyDataInstance.enquiryFollow6+dealerDailyDataInstance.enquiryFollow7+dealerDailyDataInstance.enquiryFollowX1+dealerDailyDataInstance.enquiryFollowX3+dealerDailyDataInstance.enquiryFollowX5+dealerDailyDataInstance.enquiryFollowX6+dealerDailyDataInstance.enquiryFollowZ4+dealerDailyDataInstance.enquiryFollowGT+dealerDailyDataInstance.enquiryFollowM;
        dealerDailyDataInstance.bookingsTotal=dealerDailyDataInstance.bookings3+dealerDailyDataInstance.bookings5+dealerDailyDataInstance.bookings6+dealerDailyDataInstance.bookings7+dealerDailyDataInstance.bookingsX1+dealerDailyDataInstance.bookingsX3+dealerDailyDataInstance.bookingsX5+dealerDailyDataInstance.bookingsX6+dealerDailyDataInstance.bookingsZ4+dealerDailyDataInstance.bookingsGT+dealerDailyDataInstance.bookingsM;
        dealerDailyDataInstance.vehiclesTotal=dealerDailyDataInstance.vehicles3+dealerDailyDataInstance.vehicles5+dealerDailyDataInstance.vehicles6+dealerDailyDataInstance.vehicles7+dealerDailyDataInstance.vehiclesX1+dealerDailyDataInstance.vehiclesX3+dealerDailyDataInstance.vehiclesX5+dealerDailyDataInstance.vehiclesX6+dealerDailyDataInstance.vehiclesZ4+dealerDailyDataInstance.vehiclesGT+dealerDailyDataInstance.vehiclesM;
        dealerDailyDataInstance.enquiryNSCTotal=dealerDailyDataInstance.enquiryNSC3+dealerDailyDataInstance.enquiryNSC5+dealerDailyDataInstance.enquiryNSC6+dealerDailyDataInstance.enquiryNSC7+dealerDailyDataInstance.enquiryNSCX1+dealerDailyDataInstance.enquiryNSCX3+dealerDailyDataInstance.enquiryNSCX5+dealerDailyDataInstance.enquiryNSCX6+dealerDailyDataInstance.enquiryNSCZ4+dealerDailyDataInstance.enquiryNSCGT+dealerDailyDataInstance.enquiryNSCM;
        dealerDailyDataInstance.enquiryFollowNSCTotal=dealerDailyDataInstance.enquiryFollowNSC3+dealerDailyDataInstance.enquiryFollowNSC5+dealerDailyDataInstance.enquiryFollowNSC6+dealerDailyDataInstance.enquiryFollowNSC7+dealerDailyDataInstance.enquiryFollowNSCX1+dealerDailyDataInstance.enquiryFollowNSCX3+dealerDailyDataInstance.enquiryFollowNSCX5+dealerDailyDataInstance.enquiryFollowNSCX6+dealerDailyDataInstance.enquiryFollowNSCZ4+dealerDailyDataInstance.enquiryFollowNSCGT+dealerDailyDataInstance.enquiryFollowNSCM;
        dealerDailyDataInstance.bookingsNSCTotal=dealerDailyDataInstance.bookingsNSC3+dealerDailyDataInstance.bookingsNSC5+dealerDailyDataInstance.bookingsNSC6+dealerDailyDataInstance.bookingsNSC7+dealerDailyDataInstance.bookingsNSCX1+dealerDailyDataInstance.bookingsNSCX3+dealerDailyDataInstance.bookingsNSCX5+dealerDailyDataInstance.bookingsNSCX6+dealerDailyDataInstance.bookingsNSCZ4+dealerDailyDataInstance.bookingsNSCGT+dealerDailyDataInstance.bookingsNSCM;
        dealerDailyDataInstance.vehiclesNSCTotal=dealerDailyDataInstance.vehiclesNSC3+dealerDailyDataInstance.vehiclesNSC5+dealerDailyDataInstance.vehiclesNSC6+dealerDailyDataInstance.vehiclesNSC7+dealerDailyDataInstance.vehiclesNSCX1+dealerDailyDataInstance.vehiclesNSCX3+dealerDailyDataInstance.vehiclesNSCX5+dealerDailyDataInstance.vehiclesNSCX6+dealerDailyDataInstance.vehiclesNSCZ4+dealerDailyDataInstance.vehiclesNSCGT+dealerDailyDataInstance.vehiclesNSCM;
        dealerDailyDataInstance.closingStockTotal=dealerDailyDataInstance.closingStock3+dealerDailyDataInstance.closingStock5+dealerDailyDataInstance.closingStock6+dealerDailyDataInstance.closingStock7+dealerDailyDataInstance.closingStockX1+dealerDailyDataInstance.closingStockX3+dealerDailyDataInstance.closingStockX5+dealerDailyDataInstance.closingStockX6+dealerDailyDataInstance.closingStockZ4+dealerDailyDataInstance.closingStockGT+dealerDailyDataInstance.closingStockM;
        dealerDailyDataInstance.testDrivesTotal=dealerDailyDataInstance.testDrives3+dealerDailyDataInstance.testDrives5+dealerDailyDataInstance.testDrives6+dealerDailyDataInstance.testDrives7+dealerDailyDataInstance.testDrivesX1+dealerDailyDataInstance.testDrivesX3+dealerDailyDataInstance.testDrivesX5+dealerDailyDataInstance.testDrivesX6+dealerDailyDataInstance.testDrivesZ4+dealerDailyDataInstance.testDrivesGT+dealerDailyDataInstance.testDrivesM;
        dealerDailyDataInstance.user=session.user?.username
        
        Calendar c = new GregorianCalendar();
	dealerDailyDataInstance.year = c.get(Calendar.YEAR)
	dealerDailyDataInstance.month = c.get(Calendar.MONTH)
	dealerDailyDataInstance.day = c.get(Calendar.DAY_OF_MONTH)
      //  List<DealerDailyData> dealerTargetInstanceLists= DealerDailyData.findAllByMonthAndYearAndDayAndUser(dealerDailyDataInstance.month,dealerDailyDataInstance.year,dealerDailyDataInstance.day,session.user?.username)
		    	
		    	
		    	
		    	if (!dealerDailyDataInstance.save(flush: true)) {
			            render(view: "create", model: [dealerDailyDataInstance: dealerDailyDataInstance])
			            return
	        		}
	    		
    		

        flash.message = message(code: 'default.created.message', args: [message(code: 'dealerDailyData.label', default: 'DealerDailyData'), dealerDailyDataInstance.id])
        redirect(uri: '/')
        return
    }

   
	 def save_bmw() {
	        def dealerDailyDataInstance = new DealerDailyData(params)
	        dealerDailyDataInstance.enquiryTotal=dealerDailyDataInstance.enquiry3+dealerDailyDataInstance.enquiry5+dealerDailyDataInstance.enquiry6+dealerDailyDataInstance.enquiry7+dealerDailyDataInstance.enquiryX1+dealerDailyDataInstance.enquiryX3+dealerDailyDataInstance.enquiryX5+dealerDailyDataInstance.enquiryX6+dealerDailyDataInstance.enquiryZ4+dealerDailyDataInstance.enquiryGT+dealerDailyDataInstance.enquiryM;
	        dealerDailyDataInstance.enquiryFollowTotal=dealerDailyDataInstance.enquiryFollow3+dealerDailyDataInstance.enquiryFollow5+dealerDailyDataInstance.enquiryFollow6+dealerDailyDataInstance.enquiryFollow7+dealerDailyDataInstance.enquiryFollowX1+dealerDailyDataInstance.enquiryFollowX3+dealerDailyDataInstance.enquiryFollowX5+dealerDailyDataInstance.enquiryFollowX6+dealerDailyDataInstance.enquiryFollowZ4+dealerDailyDataInstance.enquiryFollowGT+dealerDailyDataInstance.enquiryFollowM;
	        dealerDailyDataInstance.bookingsTotal=dealerDailyDataInstance.bookings3+dealerDailyDataInstance.bookings5+dealerDailyDataInstance.bookings6+dealerDailyDataInstance.bookings7+dealerDailyDataInstance.bookingsX1+dealerDailyDataInstance.bookingsX3+dealerDailyDataInstance.bookingsX5+dealerDailyDataInstance.bookingsX6+dealerDailyDataInstance.bookingsZ4+dealerDailyDataInstance.bookingsGT+dealerDailyDataInstance.bookingsM;
	        dealerDailyDataInstance.vehiclesTotal=dealerDailyDataInstance.vehicles3+dealerDailyDataInstance.vehicles5+dealerDailyDataInstance.vehicles6+dealerDailyDataInstance.vehicles7+dealerDailyDataInstance.vehiclesX1+dealerDailyDataInstance.vehiclesX3+dealerDailyDataInstance.vehiclesX5+dealerDailyDataInstance.vehiclesX6+dealerDailyDataInstance.vehiclesZ4+dealerDailyDataInstance.vehiclesGT+dealerDailyDataInstance.vehiclesM;
	        dealerDailyDataInstance.enquiryNSCTotal=dealerDailyDataInstance.enquiryNSC3+dealerDailyDataInstance.enquiryNSC5+dealerDailyDataInstance.enquiryNSC6+dealerDailyDataInstance.enquiryNSC7+dealerDailyDataInstance.enquiryNSCX1+dealerDailyDataInstance.enquiryNSCX3+dealerDailyDataInstance.enquiryNSCX5+dealerDailyDataInstance.enquiryNSCX6+dealerDailyDataInstance.enquiryNSCZ4+dealerDailyDataInstance.enquiryNSCGT+dealerDailyDataInstance.enquiryNSCM;
	        dealerDailyDataInstance.enquiryFollowNSCTotal=dealerDailyDataInstance.enquiryFollowNSC3+dealerDailyDataInstance.enquiryFollowNSC5+dealerDailyDataInstance.enquiryFollowNSC6+dealerDailyDataInstance.enquiryFollowNSC7+dealerDailyDataInstance.enquiryFollowNSCX1+dealerDailyDataInstance.enquiryFollowNSCX3+dealerDailyDataInstance.enquiryFollowNSCX5+dealerDailyDataInstance.enquiryFollowNSCX6+dealerDailyDataInstance.enquiryFollowNSCZ4+dealerDailyDataInstance.enquiryFollowNSCGT+dealerDailyDataInstance.enquiryFollowNSCM;
	        dealerDailyDataInstance.bookingsNSCTotal=dealerDailyDataInstance.bookingsNSC3+dealerDailyDataInstance.bookingsNSC5+dealerDailyDataInstance.bookingsNSC6+dealerDailyDataInstance.bookingsNSC7+dealerDailyDataInstance.bookingsNSCX1+dealerDailyDataInstance.bookingsNSCX3+dealerDailyDataInstance.bookingsNSCX5+dealerDailyDataInstance.bookingsNSCX6+dealerDailyDataInstance.bookingsNSCZ4+dealerDailyDataInstance.bookingsNSCGT+dealerDailyDataInstance.bookingsNSCM;
	        dealerDailyDataInstance.vehiclesNSCTotal=dealerDailyDataInstance.vehiclesNSC3+dealerDailyDataInstance.vehiclesNSC5+dealerDailyDataInstance.vehiclesNSC6+dealerDailyDataInstance.vehiclesNSC7+dealerDailyDataInstance.vehiclesNSCX1+dealerDailyDataInstance.vehiclesNSCX3+dealerDailyDataInstance.vehiclesNSCX5+dealerDailyDataInstance.vehiclesNSCX6+dealerDailyDataInstance.vehiclesNSCZ4+dealerDailyDataInstance.vehiclesNSCGT+dealerDailyDataInstance.vehiclesNSCM;
	        dealerDailyDataInstance.closingStockTotal=dealerDailyDataInstance.closingStock3+dealerDailyDataInstance.closingStock5+dealerDailyDataInstance.closingStock6+dealerDailyDataInstance.closingStock7+dealerDailyDataInstance.closingStockX1+dealerDailyDataInstance.closingStockX3+dealerDailyDataInstance.closingStockX5+dealerDailyDataInstance.closingStockX6+dealerDailyDataInstance.closingStockZ4+dealerDailyDataInstance.closingStockGT+dealerDailyDataInstance.closingStockM;
	        dealerDailyDataInstance.testDrivesTotal=dealerDailyDataInstance.testDrives3+dealerDailyDataInstance.testDrives5+dealerDailyDataInstance.testDrives6+dealerDailyDataInstance.testDrives7+dealerDailyDataInstance.testDrivesX1+dealerDailyDataInstance.testDrivesX3+dealerDailyDataInstance.testDrivesX5+dealerDailyDataInstance.testDrivesX6+dealerDailyDataInstance.testDrivesZ4+dealerDailyDataInstance.testDrivesGT+dealerDailyDataInstance.testDrivesM;
	        dealerDailyDataInstance.user=session.user?.username
	        Calendar c = new GregorianCalendar();
		dealerDailyDataInstance.year = c.get(Calendar.YEAR)
		dealerDailyDataInstance.month = c.get(Calendar.MONTH)
		dealerDailyDataInstance.day = c.get(Calendar.DAY_OF_MONTH)
		
	        List<DealerDailyData> dealerTargetInstanceLists= DealerDailyData.findAllByMonthAndYearAndDayAndUser(dealerDailyDataInstance.month,dealerDailyDataInstance.year,dealerDailyDataInstance.day,session.user?.username)
			    	
			    	if(dealerTargetInstanceLists.size!=0)
			    	{
			    	dealerTargetInstanceLists[0].properties=dealerDailyDataInstance.properties
			    		if (!dealerTargetInstanceLists[0].save(flush: true)) {
						render(view: "create", model: [dealerDailyDataInstance: dealerTargetInstanceLists[0]])
						return
		        		}
			    	}
			    	else
			    	{
			    	if (!dealerDailyDataInstance.save(flush: true)) {
				            render(view: "create", model: [dealerDailyDataInstance: dealerDailyDataInstance])
				            return
		        		}
		    		}
	    		
	
	        flash.message = message(code: 'default.created.message', args: [message(code: 'dealerDailyData.label', default: 'DealerDailyData'), dealerDailyDataInstance.id])
	        redirect(uri: '/')
	        return
	    }

    

   

 
}
