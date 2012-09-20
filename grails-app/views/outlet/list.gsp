

<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'outlet.label', default: 'Outlet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-outlet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-outlet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="outletName" title="${message(code: 'outlet.outletName.label', default: 'Outlet Name')}" />
					
						<g:sortableColumn property="zone" title="${message(code: 'outlet.zone.label', default: 'Zone')}" />
					
						<g:sortableColumn property="dealer" title="${message(code: 'outlet.dealer.label', default: 'Dealer')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'outlet.city.label', default: 'City')}" />
					
						<th><g:message code="outlet.person.label" default="Person" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${outletInstanceList}" status="i" var="outletInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${outletInstance.id}">${fieldValue(bean: outletInstance, field: "outletName")}</g:link></td>
					
						<td>${fieldValue(bean: outletInstance, field: "zone")}</td>
					
						<td>${fieldValue(bean: outletInstance, field: "dealer")}</td>
					
						<td>${fieldValue(bean: outletInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: outletInstance, field: "person")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${outletInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
