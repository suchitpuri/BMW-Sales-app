<!doctype html>
<html>
<head>
 <title align="center">KPI Dashboard</title>
<meta name="layout" content="main"/>
<h1 id="header-logo"><img src="common/img/logo_bmw.jpg" width="43" height="43" alt="BMW"><!--BMW Specific--></h1>
        <div id="header">
            <h1 id="header-title">KPI Dashboard </h1>
			</div>
<div class="nav">

<g:if test="${flash.message}">
		<div class="message">${flash.message}</div>
</g:if>
<g:if test="${!session.role.equals('ROLE_ADMIN')}"> 
						<g:link controller="DealerDailyData" action="create">Dealer Page</g:link>
						<br/>
						<g:link controller="DealerMonthlyData" action="create">Dealer Monthly Page</g:link>
						
						
					 </g:if> 
					 <br/>
					 <g:if test="${!session.role.equals('ROLE_USER')}"> 
					    <g:link controller="Person" action="create">Sign Up for a new user</g:link>
					    <br/>
					    						
						<g:link controller="DealerTarget" action="create">BMW Page</g:link>
						<br/>
						<g:link controller="Report" action="list">Reports</g:link>
						 </g:if> 
						 <br/>
						 <g:link controller="logout" class="logout">Logout</g:link>
		</div>	    
</head>
	
	<body>
		
		

			
	</body>
</html>
