

class DealerMonthlyData {
		static transients=['target3s','target5s','target6s','target7s','targetX1s','targetX3s','targetX5s','targetX6s','targetZ4s','targetGTs','targetMs','salesTarget','processQuality','csiSalesMonthly','csiSalesYTD','loyalty']
    		Integer	totalSalesPerson
    		Integer	mktSpending
    		Integer	olderStock
    		Integer	salesAchievement
    		Integer	vehDelLastYear
			
    		Integer	target3s
    		Integer	target5s
    		Integer	target6s
    		Integer	target7s
    		Integer	targetX1s
    		Integer	targetX3s
    		Integer	targetX5s
    		Integer	targetX6s
    		Integer	targetZ4s
    		Integer	targetGTs
    		Integer	targetMs
    		Integer	salesTarget
    		Integer	processQuality
    		Integer	csiSalesMonthly
    		Integer	csiSalesYTD
    		Integer	loyalty
    		Integer month
    		Integer year
		String user
		
       		static belongsTo = [Person]
        static constraints = {
               	totalSalesPerson (blank:false)
    		mktSpending (blank:false)
    		olderStock (blank:false)
    		salesAchievement (blank:false)
    		vehDelLastYear (blank:false)
			
    		/*target3s (blank:false)
    		target5s (blank:false)
    		target6s (blank:false)
    		target7s (blank:false)
    		targetX1s (blank:false)
    		targetX3s (blank:false)
    		targetX5s (blank:false)
    		targetX6s (blank:false)
    		targetZ4s (blank:false)
    		targetGTs (blank:false)
    		targetMs (blank:false)
    		salesTarget (blank:false)
    		processQuality (blank:false)
    		csiSalesMonthly (blank:false)
    		csiSalesYTD (blank:false)
    		loyalty (blank:false)  */      	       	
       }
}
