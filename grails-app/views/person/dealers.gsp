<html>
<head>
 <title align="center">Users List</title>
<meta name="layout" content="main"/>
<h1 id="header-logo"><img src="common/img/logo_bmw.jpg" width="43" height="43" alt="BMW"><!--BMW Specific--></h1>
        <div id="header">
            <h1 id="header-title">Users List </h1>
			</div>
<div class="nav">
		<span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a>
		<g:link controller="logout" class="logout">Logout</g:link></span>
<span class="menuButton"><g:link class="create" action="create">New Person</g:link></span>
		
</div>	    
</head>

<body>

	<div class="body">
		
		<g:if test="${flash.message}">
		<div class="message">${flash.message}</div>
		</g:if>
		<div align="center">
			<table class="data zebra"> 
			<thead>
				<tr>
					<g:sortableColumn property="DealerName" title="Dealer Name" />
					<th>&nbsp;</th>
				</tr>
			</thead>
			<tbody>
			<g:each in="${dealers}" status="i" var="dealer">
				<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
					<td><a href="/sales/report/list?dealerName=${dealer}">${dealer}</a></td>
				</tr>
			</g:each>
			</tbody>
			</table>
		</div>
	</div>
</body>
