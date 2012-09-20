

<!doctype html>
<html>
<head>
 <title align="center">BMW Form</title>
<meta name="layout" content="main"/>
<h1 id="header-logo"><img src="common/img/logo_bmw.jpg" width="43" height="43" alt="BMW"><!--BMW Specific--></h1>
        <div id="header">
            <h1 id="header-title">BMW Form </h1>
			</div>
<div class="nav">
		<span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a>
		<g:link controller="logout" class="logout">Logout</g:link></span>		
</div>	    

		<g:set var="entityName" value="${message(code: 'dealerTarget.label', default: 'DealerTarget')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-dealerTarget" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	
		<div id="list-dealerTarget" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:form action="save" >
			<table class="data zebra">
				<tr>
						<th>Dealer</th>
					
						<th>Target 3</th>
					
						<th>Target 5</th>
					
						<th>Target 6</th>
					
						<th>Target 7</th>
					
						<th>Target X1</th>
						
						<th>Target X3</th>
												
						<th>Target X5</th>
												
						<th>Target X6</th>
						
						<th>Target Z4</th>
												
						<th>Target GT</th>
						<th>Target M</th>
						<th>Corporate Sales Target</th>
												
						<th>Sales Process Quality</th>
						
						<th>CSI Monthly</th>
												
						<th>CSI YTD</th>
						<th>Loyalty</th>
					</tr>
				
				
				<g:each in="${dealerTargetInstanceList}" status="i" var="dealerTargetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>
						<g:hiddenField  name="dealerTargetInstance.dealerTargetList[${i}].dealer" type="number" value="${dealerTargetInstance.dealer?.encodeAsHTML()}"/>${dealerTargetInstance.dealer?.encodeAsHTML()}</td>
					
						<td><g:field  name="dealerTargetInstance.dealerTargetList[${i}].target3" type="number" value="${dealerTargetInstance.target3}" required="" size="1"/>
						</td>
					
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].target5" type="number" value="${dealerTargetInstance.target5}" required="" size="1"/>
						</td>
					
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].target6" type="number" value="${dealerTargetInstance.target6}" required="" size="1"/></td>
					
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].target7" type="number" value="${dealerTargetInstance.target7}" required="" size="1"/></td>
					
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].targetX1" type="number" value="${dealerTargetInstance.targetX1}" required="" size="1"/></td>
					
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].targetX3" type="number" value="${dealerTargetInstance.targetX3}" required="" size="1"/></td>
						
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].targetX5" type="number" value="${dealerTargetInstance.targetX5}" required="" size="1"/></td>
						
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].targetX6" type="number" value="${dealerTargetInstance.targetX6}" required="" size="1"/></td>
						
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].targetZ4" type="number" value="${dealerTargetInstance.targetZ4}" required="" size="1"/></td>
						
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].targetGT" type="number" value="${dealerTargetInstance.targetGT}" required="" size="1"/></td>
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].targetM" type="number" value="${dealerTargetInstance.targetM}" required="" size="1"/></td>
						
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].corporateSalestarget" type="number" value="${dealerTargetInstance.corporateSalestarget}" required="" size="1"/></td>
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].salesProcessQuality" type="number" value="${dealerTargetInstance.salesProcessQuality}" required="" size="1"/></td>
						
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].csiMonthly" type="number" value="${dealerTargetInstance.csiMonthly}" required="" size="1"/></td>
						
						<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].csiYtd" type="number" value="${dealerTargetInstance.csiYtd}" required="" size="1"/></td>
					<td><g:field name="dealerTargetInstance.dealerTargetList[${i}].loyalty" type="number" value="${dealerTargetInstance.loyalty}" required="" size="1"/></td>
					
					</tr>
					
				</g:each>
				<tr ><td colspan="17" align="center"><g:submitButton name="create" class="save" value="Submit" /></td>
				</tr>
			</table>
				</g:form>
		</div>
	</body>
</html>
