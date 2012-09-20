

<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dealerDailyData.label', default: 'DealerDailyData')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-dealerDailyData" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-dealerDailyData" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="enquiry3" title="${message(code: 'dealerDailyData.enquiry3.label', default: 'Enquiry3')}" />
					
						<g:sortableColumn property="enquiry5" title="${message(code: 'dealerDailyData.enquiry5.label', default: 'Enquiry5')}" />
					
						<g:sortableColumn property="enquiry7" title="${message(code: 'dealerDailyData.enquiry7.label', default: 'Enquiry7')}" />
					
						<g:sortableColumn property="enquiryX1" title="${message(code: 'dealerDailyData.enquiryX1.label', default: 'Enquiry X1')}" />
					
						<g:sortableColumn property="enquiryX3" title="${message(code: 'dealerDailyData.enquiryX2.label', default: 'Enquiry X2')}" />
					
						<g:sortableColumn property="enquiryX5" title="${message(code: 'dealerDailyData.enquiryX5.label', default: 'Enquiry X5')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dealerDailyDataInstanceList}" status="i" var="dealerDailyDataInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${dealerDailyDataInstance.id}">${fieldValue(bean: dealerDailyDataInstance, field: "enquiry3")}</g:link></td>
					
						<td>${fieldValue(bean: dealerDailyDataInstance, field: "enquiry5")}</td>
					
						<td>${fieldValue(bean: dealerDailyDataInstance, field: "enquiry7")}</td>
					
						<td>${fieldValue(bean: dealerDailyDataInstance, field: "enquiryX1")}</td>
					
						<td>${fieldValue(bean: dealerDailyDataInstance, field: "enquiryX3")}</td>
					
						<td>${fieldValue(bean: dealerDailyDataInstance, field: "enquiryX5")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${dealerDailyDataInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
