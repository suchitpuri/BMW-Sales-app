
import java.util.ArrayList;
class DealerTarget {

		static transients = [ "dealerTargetList" ]
		Integer	target3
		Integer	target5
		Integer	target6
		Integer	target7
		Integer	targetX1
		Integer	targetX3
		Integer	targetX5
		Integer	targetX6
		Integer	targetZ4
		Integer	targetGT
		Integer	targetM
		Integer	corporateSalestarget
		Float	salesProcessQuality
		Integer csiMonthly
		Integer csiYtd
		Integer loyalty
		String dealer
		List<DealerTarget> dealerTargetList= new ArrayList<DealerTarget>(50)
		
		Integer year
		Integer month	
		
    static constraints = {
     	target3 (blank:false)
     	target5 (blank:false)
     	target6 (blank:false)
     	target7 (blank:false) 
     	targetX1 (blank:false)
     	targetX3 (blank:false)
     	targetX5 (blank:false)
     	targetX6 (blank:false)
     	targetZ4 (blank:false)
     	targetGT (blank:false)
		targetM (blank:false)
     	corporateSalestarget (blank:false)
     	salesProcessQuality (blank:false)
     	csiMonthly (blank:false)
     	csiYtd (blank:false)
		loyalty (blank:false)
     	
     	
     	
    }
}
