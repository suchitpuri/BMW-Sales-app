

<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'outlet.label', default: 'Outlet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-outlet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-outlet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list outlet">
			
				<g:if test="${outletInstance?.outletName}">
				<li class="fieldcontain">
					<span id="outletName-label" class="property-label"><g:message code="outlet.outletName.label" default="Outlet Name" /></span>
					
						<span class="property-value" aria-labelledby="outletName-label"><g:fieldValue bean="${outletInstance}" field="outletName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${outletInstance?.zone}">
				<li class="fieldcontain">
					<span id="zone-label" class="property-label"><g:message code="outlet.zone.label" default="Zone" /></span>
					
						<span class="property-value" aria-labelledby="zone-label"><g:fieldValue bean="${outletInstance}" field="zone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${outletInstance?.dealer}">
				<li class="fieldcontain">
					<span id="dealer-label" class="property-label"><g:message code="outlet.dealer.label" default="Dealer" /></span>
					
						<span class="property-value" aria-labelledby="dealer-label"><g:fieldValue bean="${outletInstance}" field="dealer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${outletInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="outlet.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${outletInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${outletInstance?.person}">
				<li class="fieldcontain">
					<span id="person-label" class="property-label"><g:message code="outlet.person.label" default="Person" /></span>
					
						<span class="property-value" aria-labelledby="person-label"><g:link controller="person" action="show" id="${outletInstance?.person?.id}">${outletInstance?.person?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${outletInstance?.id}" />
					<g:link class="edit" action="edit" id="${outletInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
