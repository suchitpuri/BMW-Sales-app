



<div class="fieldcontain ${hasErrors(bean: outletInstance, field: 'outletName', 'error')} required">
	<label for="outletName">
		<g:message code="outlet.outletName.label" default="Outlet Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="outletName" required="" value="${outletInstance?.outletName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: outletInstance, field: 'zone', 'error')} required">
	<label for="zone">
		<g:message code="outlet.zone.label" default="Zone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zone" required="" value="${outletInstance?.zone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: outletInstance, field: 'dealer', 'error')} required">
	<label for="dealer">
		<g:message code="outlet.dealer.label" default="Dealer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dealer" required="" value="${outletInstance?.dealer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: outletInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="outlet.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${outletInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: outletInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="outlet.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${Person.list()}" optionKey="id" required="" value="${outletInstance?.person?.id}" class="many-to-one"/>
</div>

