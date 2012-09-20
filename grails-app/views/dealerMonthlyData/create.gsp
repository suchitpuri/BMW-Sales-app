
<!doctype html>
<html>
<head>
 <title align="center">Monthly Form</title>
<meta name="layout" content="main"/>
<h1 id="header-logo"><img src="common/img/logo_bmw.jpg" width="43" height="43" alt="BMW"><!--BMW Specific--></h1>
        <div id="header">
            <h1 id="header-title">Monthly Form</h1>
			</div>
<div class="nav">
		<span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a>
		<g:link controller="logout" class="logout">Logout</g:link></span>		
</div>	 
		<g:set var="entityName" value="${message(code: 'dealerMonthlyData.label', default: 'DealerMonthlyData')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="body">
 <g:if test="${flash.message}">
 <div class="message">
 ${flash.message}
</div>
 </g:if>
<g:hasErrors bean="${dealerMonthlyDataInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${dealerMonthlyDataInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
		</g:hasErrors>   

       <g:form action="save" >
       <div id="content">
       				<div class="col5-box">
       					<div class="col5">
       						<div class="container">
       
						<div class="container-content">
	<table class="data zebra">
        <tr>
									<th >Fields</th>
									<th >Values</th>
								</tr>
        <tr>
           
              
           <div class="fieldcontain ${hasErrors(bean: dealerMonthlyDataInstance, field: 'totalSalesPerson', 'error')} required">
			 <td>Total Sales Persons Available   </td>
			 <td>
			<g:field name="totalSalesPerson" type="number" value="${dealerMonthlyDataInstance.totalSalesPerson}" required="" size="3" />
			</td>
		</div>
		</tr>
        <tr>
     
            <div class="fieldcontain ${hasErrors(bean: dealerMonthlyDataInstance, field: 'mktSpending', 'error')} required">
       <td  >
                Marketing Spending (EUROS)</td>
                <td>
			<g:field name="mktSpending" type="number" value="${dealerMonthlyDataInstance.mktSpending}" required="" size="3" />
		</td></div>     </tr>
        <tr>
          
            <div class="fieldcontain ${hasErrors(bean: dealerMonthlyDataInstance, field: 'olderStock', 'error')} required">
  <td  >
                Stock Older than 90 days</td>
                <td>
			<g:field name="olderStock" type="number" value="${dealerMonthlyDataInstance.olderStock}" required="" size="3" />
		</td></div>  </tr>
        <tr>
           
            <div class="fieldcontain ${hasErrors(bean: dealerMonthlyDataInstance, field: 'salesAchievement', 'error')} required">
 <td  >
                Corporate Sales Achievement</td><td>
			<g:field name="salesAchievement" type="number" value="${dealerMonthlyDataInstance.salesAchievement}" required="" size="3" />
		</td></div>  </tr>
       <tr>
            
            <div class="fieldcontain ${hasErrors(bean: dealerMonthlyDataInstance, field: 'vehDelLastYear', 'error')} required">
		<td  >
                Vehicles Delivered last year (same month)</td>
                <td>
			<g:field name="vehDelLastYear" type="number" value="${dealerMonthlyDataInstance.vehDelLastYear}" required="" size="3" />
		</td></div>  </tr>
   
<tr ><td colspan="2" align="center"><g:submitButton name="create" class="save" value="Submit" /></td>
				</tr>
 </table>
 
 <div id="content">
 
 				<div class="col5-box">
 					<div class="col5">
 						<div class="container">
 						<h3>Data from BMW</h3>
 						<div class="container-content">
 				
     <table class="data zebra">
         <tr>
 									<th>Fields</th>
 									<th>Values</th>
 								</tr>
        
         <tr>
             <td  >
                 Target - 3 series</td>
             <td >
                 ${dealerMonthlyDataInstance.target3s?.encodeAsHTML()}</td> 
         </tr>
   <tr>
             <td  >
                 Target - 5 series</td>
             <td >
                 ${dealerMonthlyDataInstance.target5s?.encodeAsHTML()}</td>  
         </tr>
   <tr>
             <td  >
                 Target - 6 series</td>
             <td >
                 ${dealerMonthlyDataInstance.target6s?.encodeAsHTML()}</td>  
         </tr>
   <tr>
             <td  >
                 Target - 7 series</td>
             <td >
                  ${dealerMonthlyDataInstance.target7s?.encodeAsHTML()}</td> 
         </tr>
   <tr>
             <td  >
                 Target - X1</td>
             <td >
                 ${dealerMonthlyDataInstance.targetX1s?.encodeAsHTML()}</td>  
         </tr>
   <tr>
             <td  >
                 Target - X3</td>
             <td >
                 ${dealerMonthlyDataInstance.targetX3s?.encodeAsHTML()}</td> 
         </tr>
   <tr>
             <td  >
                 Target - X5</td>
             <td >
                 ${dealerMonthlyDataInstance.targetX5s?.encodeAsHTML()}</td>  
         </tr>
   <tr>
             <td  >
                 Target - X6</td>
             <td >
                 ${dealerMonthlyDataInstance.targetX6s?.encodeAsHTML()}</td> 
         </tr>
 
   <tr>
             <td  >
                 Target - Z4</td>
             <td >
                 ${dealerMonthlyDataInstance.targetZ4s?.encodeAsHTML()}</td>  
         </tr>
   <tr>
             <td  >
                 Target - GT</td>
             <td >
                 ${dealerMonthlyDataInstance.targetGTs?.encodeAsHTML()}</td> 
         </tr>
   <tr>
             <td  >
                 Target - M series</td>
             <td >
                 ${dealerMonthlyDataInstance.targetMs?.encodeAsHTML()}</td>  
         </tr>
         <tr>
             <td >
                 Corporate Sales Target</td>
             <td >
                 ${dealerMonthlyDataInstance.salesTarget?.encodeAsHTML()}</td>
  
         </tr>
         <tr>
             <td  >
                 Sales Process Quality</td>
             <td >
                 ${dealerMonthlyDataInstance.processQuality?.encodeAsHTML()}</td>
         </tr>
         <tr>
             <td >
                 CSI (Sales) Monthly</td>
             <td >
                 ${dealerMonthlyDataInstance.csiSalesMonthly?.encodeAsHTML()}</td>
         </tr>
  <tr>
             <td >
                 CSI (Sales)</td>
             <td >
                 ${dealerMonthlyDataInstance.csiSalesYTD?.encodeAsHTML()}</td>
         </tr>
   <tr>
             <td >
                 Loyalty</td>
             <td >
                 ${dealerMonthlyDataInstance.loyalty?.encodeAsHTML()}</td>
             </tr>
     
 </table>
 </div>
 						</div>
 					</div>
 				</div>
 			</div>

</g:form>
</body>
</html>