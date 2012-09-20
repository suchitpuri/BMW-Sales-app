import org.springframework.dao.DataIntegrityViolationException

class DealerMonthlyDataController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "create", params: params)
    }

  

    def create() {
    	Calendar c = new GregorianCalendar();
    	Integer years = c.get(Calendar.YEAR)
	Integer months = c.get(Calendar.MONTH)
	 List<DealerMonthlyData> dealerMonthInstanceLists= DealerMonthlyData.findAllByMonthAndYearAndUser(months,years,session.user?.username)
		    	DealerMonthlyData dealerMonthlyDataInst=new DealerMonthlyData(params)
		    	if(dealerMonthInstanceLists.size!=0)
		    	{
		    	/*dealerMonthlyDataInst.properties=dealerMonthInstanceLists[0].properties*/
		    	
		    	flash.message="Data has been submitted for the month"
		    	redirect(uri: '/')
	       		 return
    		}
    		println years+"   "+months+session.user?.dealer+"deepak"
    		
    	List<DealerTarget> dealerTargetInstanceLists= DealerTarget.findAllByMonthAndYearAndDealer(months,years,session.user?.dealer)
    	if (dealerTargetInstanceLists.size!=0)
    	{
    	dealerMonthlyDataInst.target3s =dealerTargetInstanceLists[0].target3
	    		dealerMonthlyDataInst.target5s=dealerTargetInstanceLists[0].target5
	    		dealerMonthlyDataInst.target6s =dealerTargetInstanceLists[0].target6
	    		dealerMonthlyDataInst.target7s =dealerTargetInstanceLists[0].target7
	    		dealerMonthlyDataInst.targetX1s =dealerTargetInstanceLists[0].targetX1
	    		dealerMonthlyDataInst.targetX3s =dealerTargetInstanceLists[0].targetX3
	    		dealerMonthlyDataInst.targetX5s =dealerTargetInstanceLists[0].targetX5
	    		dealerMonthlyDataInst.targetX6s =dealerTargetInstanceLists[0].targetX6
	    		dealerMonthlyDataInst.targetZ4s =dealerTargetInstanceLists[0].targetZ4
	    		dealerMonthlyDataInst.targetGTs =dealerTargetInstanceLists[0].targetGT
	    		dealerMonthlyDataInst.targetMs =dealerTargetInstanceLists[0].targetM
	    		dealerMonthlyDataInst.salesTarget =dealerTargetInstanceLists[0].corporateSalestarget
	    		dealerMonthlyDataInst.processQuality =dealerTargetInstanceLists[0].salesProcessQuality
	    		dealerMonthlyDataInst.csiSalesMonthly =dealerTargetInstanceLists[0].csiMonthly
	    		dealerMonthlyDataInst.csiSalesYTD =dealerTargetInstanceLists[0].csiYtd
    		dealerMonthlyDataInst.loyalty =dealerTargetInstanceLists[0].loyalty
    	}
        [dealerMonthlyDataInstance: dealerMonthlyDataInst]
    }

    def save() {
        def dealerMonthlyDataInstance = new DealerMonthlyData(params)
         dealerMonthlyDataInstance.user=session.user?.username
         
	        Calendar c = new GregorianCalendar();
		dealerMonthlyDataInstance.year = c.get(Calendar.YEAR)
		dealerMonthlyDataInstance.month = c.get(Calendar.MONTH)
	
        if (!dealerMonthlyDataInstance.save(flush: true)) {
            render(view: "create", model: [dealerMonthlyDataInstance: dealerMonthlyDataInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'dealerMonthlyData.label', default: 'DealerMonthlyData'), dealerMonthlyDataInstance.id])
          redirect(uri: '/')
    }

    
}
