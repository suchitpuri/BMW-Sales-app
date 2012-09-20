
<html>
<head>
 <title align="center">Daily Page</title>
<meta name="layout" content="main"/>
<h1 id="header-logo"><img src="common/img/logo_bmw.jpg" width="43" height="43" alt="BMW"><!--BMW Specific--></h1>
        <div id="header">
            <h1 id="header-title">Dealer Page </h1>
			</div>
<div class="nav">
		<span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a> 
		<g:link controller="logout" class="logout">Logout</g:link></span>		
</div>	    
</head>
<body>


<div class="body">
 <g:if test="${flash.message}">
 <div class="message">
 ${flash.message}
</div>
 </g:if>
<g:hasErrors bean="${dealerDailyDataInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${dealerDailyDataInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
		</g:hasErrors>   

       <g:form action="save" >
	  
    <table class="data zebra"> 
	            <th>  Fields</th>
            <th>
                3 Series</td>
            <th>
                5 Series</th>
 		<th>
                6 Series</th>
            <th>
                7 Series</th>
            <th>
                X1</th>
            <th>
                X3</th>
            <th>
                X5</th>
	<th>
                X6</th>
<th>
                Z4</th>
<th>
                GT</th>
            <th>
                M Series</th>
            
        </tr>
    
        <tr>
            <td >
                Enquiries (Dealer Leads)</td>
            <td>
        <div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiry3', 'error')} required">

			<g:field name="enquiry3" type="number" value="${dealerDailyDataInstance.enquiry3}" required="" size="3" />
		</div>
	     </td>
	     <td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiry5', 'error')} required">

				<g:field name="enquiry5" type="number" value="${dealerDailyDataInstance.enquiry5}" required="" size="3"/>
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiry6', 'error')} required">

			<g:field name="enquiry6" type="number" value="${dealerDailyDataInstance.enquiry6}" required="" size="3"/>
			</div>
	</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiry7', 'error')} required">

			<g:field name="enquiry7" type="number" value="${dealerDailyDataInstance.enquiry7}" required="" size="3"/>
			</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryX1', 'error')} required">

			<g:field name="enquiryX1" type="number" value="${dealerDailyDataInstance.enquiryX1}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryX3', 'error')} required">

			<g:field name="enquiryX3" type="number" value="${dealerDailyDataInstance.enquiryX3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryX5', 'error')} required">

			<g:field name="enquiryX5" type="number" value="${dealerDailyDataInstance.enquiryX5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryX6', 'error')} required">

			<g:field name="enquiryX6" type="number" value="${dealerDailyDataInstance.enquiryX6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryZ4', 'error')} required">

			<g:field name="enquiryZ4" type="number" value="${dealerDailyDataInstance.enquiryZ4}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryGT', 'error')} required">

			<g:field name="enquiryGT" type="number" value="${dealerDailyDataInstance.enquiryGT}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryM', 'error')} required">

			<g:field name="enquiryM" type="number" value="${dealerDailyDataInstance.enquiryM}" required="" size="3"/>
		</div>
	</td>
	</tr>
	<tr>
	<td >
		Enquiries followed up (Dealer Leads)
	</td>
	<td >
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollow3', 'error')} required">

				<g:field name="enquiryFollow3" type="number" value="${dealerDailyDataInstance.enquiryFollow3}" required="" size="3"/>
			</div>
	</td>
	<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollow5', 'error')} required">

				<g:field name="enquiryFollow5" type="number" value="${dealerDailyDataInstance.enquiryFollow5}" required="" size="3"/>
			</div>
	</td>
	<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollow6', 'error')} required">

				<g:field name="enquiryFollow6" type="number" value="${dealerDailyDataInstance.enquiryFollow6}" required="" size="3"/>
			</div>
	</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollow7', 'error')} required">

				<g:field name="enquiryFollow7" type="number" value="${dealerDailyDataInstance.enquiryFollow7}" required="" size="3"/>
			</div>
	</td>
	<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowX1', 'error')} required">

				<g:field name="enquiryFollowX1" type="number" value="${dealerDailyDataInstance.enquiryFollowX1}" required="" size="3"/>
			</div>
	</td>
	<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowX3', 'error')} required">

				<g:field name="enquiryFollowX3" type="number" value="${dealerDailyDataInstance.enquiryFollowX3}" required="" size="3"/>
			</div>
	</td>
	<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowX5', 'error')} required">

				<g:field name="enquiryFollowX5" type="number" value="${dealerDailyDataInstance.enquiryFollowX5}" required="" size="3"/>
			</div>
	</td>
	<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowX6', 'error')} required">

				<g:field name="enquiryFollowX6" type="number" value="${dealerDailyDataInstance.enquiryFollowX6}" required="" size="3"/>
			</div>
	</td>
	<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowZ4', 'error')} required">

				<g:field name="enquiryFollowZ4" type="number" value="${dealerDailyDataInstance.enquiryFollowZ4}" required="" size="3"/>
			</div>
	</td>
	<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowGT', 'error')} required">

				<g:field name="enquiryFollowGT" type="number" value="${dealerDailyDataInstance.enquiryFollowGT}" required="" size="3"/>
			</div>
	</td>
	<td>
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowM', 'error')} required">
				<g:field name="enquiryFollowM" type="number" value="${dealerDailyDataInstance.enquiryFollowM}" required="" size="3"/>
			</div>
			
	</td>
	</tr>
	<tr>
	<td>		
			
			Bookings (Dealer Leads)
	
	</td>
	<td >
			<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookings3', 'error')} required">

				<g:field name="bookings3" type="number" value="${dealerDailyDataInstance.bookings3}" required="" size="3"/>
			</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookings5', 'error')} required">

			<g:field name="bookings5" type="number" value="${dealerDailyDataInstance.bookings5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookings6', 'error')} required">

			<g:field name="bookings6" type="number" value="${dealerDailyDataInstance.bookings6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookings7', 'error')} required">

			<g:field name="bookings7" type="number" value="${dealerDailyDataInstance.bookings7}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsX1', 'error')} required">

			<g:field name="bookingsX1" type="number" value="${dealerDailyDataInstance.bookingsX1}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsX3', 'error')} required">

			<g:field name="bookingsX3" type="number" value="${dealerDailyDataInstance.bookingsX3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsX5', 'error')} required">

			<g:field name="bookingsX5" type="number" value="${dealerDailyDataInstance.bookingsX5}" required="" size="3"/>
		</div>
	</td><td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsX6', 'error')} required">

			<g:field name="bookingsX6" type="number" value="${dealerDailyDataInstance.bookingsX6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsZ4', 'error')} required">

			<g:field name="bookingsZ4" type="number" value="${dealerDailyDataInstance.bookingsZ4}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsGT', 'error')} required">

			<g:field name="bookingsGT" type="number" value="${dealerDailyDataInstance.bookingsGT}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsM', 'error')} required">

			<g:field name="bookingsM" type="number" value="${dealerDailyDataInstance.bookingsM}" required="" size="3"/>
		</div>
	</td>	
	</tr>
	<tr>
	<td >
		Vehicles delivered (Dealer Leads)
	</td>
	<td >
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehicles3', 'error')} required">

			<g:field name="vehicles3" type="number" value="${dealerDailyDataInstance.vehicles3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehicles5', 'error')} required">

			<g:field name="vehicles5" type="number" value="${dealerDailyDataInstance.vehicles5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehicles6', 'error')} required">

			<g:field name="vehicles6" type="number" value="${dealerDailyDataInstance.vehicles6}" required="" size="3"/>
		</div>
	</td>	
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehicles7', 'error')} required">

			<g:field name="vehicles7" type="number" value="${dealerDailyDataInstance.vehicles7}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesX1', 'error')} required">

			<g:field name="vehiclesX1" type="number" value="${dealerDailyDataInstance.vehiclesX1}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesX3', 'error')} required">

			<g:field name="vehiclesX3" type="number" value="${dealerDailyDataInstance.vehiclesX3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesX5', 'error')} required">

			<g:field name="vehiclesX5" type="number" value="${dealerDailyDataInstance.vehiclesX5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesX6', 'error')} required">

			<g:field name="vehiclesX6" type="number" value="${dealerDailyDataInstance.vehiclesX6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesZ4', 'error')} required">

			<g:field name="vehiclesZ4" type="number" value="${dealerDailyDataInstance.vehiclesZ4}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesGT', 'error')} required">

			<g:field name="vehiclesGT" type="number" value="${dealerDailyDataInstance.vehiclesGT}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesM', 'error')} required">

			<g:field name="vehiclesM" type="number" value="${dealerDailyDataInstance.vehiclesM}" required="" size="3"/>
		</div>
	</td>
	</tr>
	<tr>
	<td >
		Enquiries (NSC Leads)
	</td>
	<td >
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryNSC3', 'error')} required">

			<g:field name="enquiryNSC3" type="number" value="${dealerDailyDataInstance.enquiryNSC3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryNSC5', 'error')} required">

			<g:field name="enquiryNSC5" type="number" value="${dealerDailyDataInstance.enquiryNSC5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryNSC6', 'error')} required">

			<g:field name="enquiryNSC6" type="number" value="${dealerDailyDataInstance.enquiryNSC6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryNSC7', 'error')} required">

			<g:field name="enquiryNSC7" type="number" value="${dealerDailyDataInstance.enquiryNSC7}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryNSCX1', 'error')} required">

			<g:field name="enquiryNSCX1" type="number" value="${dealerDailyDataInstance.enquiryNSCX1}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryNSCX3', 'error')} required">

			<g:field name="enquiryNSCX3" type="number" value="${dealerDailyDataInstance.enquiryNSCX3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryNSCX5', 'error')} required">

			<g:field name="enquiryNSCX5" type="number" value="${dealerDailyDataInstance.enquiryNSCX5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryNSCX6', 'error')} required">

			<g:field name="enquiryNSCX6" type="number" value="${dealerDailyDataInstance.enquiryNSCX6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryNSCZ4', 'error')} required">

			<g:field name="enquiryNSCZ4" type="number" value="${dealerDailyDataInstance.enquiryNSCZ4}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryNSCGT', 'error')} required">

			<g:field name="enquiryNSCGT" type="number" value="${dealerDailyDataInstance.enquiryNSCGT}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryNSCM', 'error')} required">

			<g:field name="enquiryNSCM" type="number" value="${dealerDailyDataInstance.enquiryNSCM}" required="" size="3"/>
		</div>
	
	</td>
	</tr>
	<tr>
	<td >
		Enquiries Follwed up (NSC Leads)
	</td>
	<td >
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowNSC3', 'error')} required">

			<g:field name="enquiryFollowNSC3" type="number" value="${dealerDailyDataInstance.enquiryFollowNSC3}" required="" size="3"/>
		</div>
	
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowNSC5', 'error')} required">

			<g:field name="enquiryFollowNSC5" type="number" value="${dealerDailyDataInstance.enquiryFollowNSC5}" required="" size="3"/>
		</div>
	</td><td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowNSC6', 'error')} required">

			<g:field name="enquiryFollowNSC6" type="number" value="${dealerDailyDataInstance.enquiryFollowNSC6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowNSC7', 'error')} required">

			<g:field name="enquiryFollowNSC7" type="number" value="${dealerDailyDataInstance.enquiryFollowNSC7}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowNSCX1', 'error')} required">

			<g:field name="enquiryFollowNSCX1" type="number" value="${dealerDailyDataInstance.enquiryFollowNSCX1}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowNSCX3', 'error')} required">

			<g:field name="enquiryFollowNSCX3" type="number" value="${dealerDailyDataInstance.enquiryFollowNSCX3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowNSCX5', 'error')} required">

			<g:field name="enquiryFollowNSCX5" type="number" value="${dealerDailyDataInstance.enquiryFollowNSCX5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowNSCX6', 'error')} required">

			<g:field name="enquiryFollowNSCX6" type="number" value="${dealerDailyDataInstance.enquiryFollowNSCX6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowNSCZ4', 'error')} required">

			<g:field name="enquiryFollowNSCZ4" type="number" value="${dealerDailyDataInstance.enquiryFollowNSCZ4}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowNSCGT', 'error')} required">

			<g:field name="enquiryFollowNSCGT" type="number" value="${dealerDailyDataInstance.enquiryFollowNSCGT}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'enquiryFollowNSCM', 'error')} required">

			<g:field name="enquiryFollowNSCM" type="number" value="${dealerDailyDataInstance.enquiryFollowNSCM}" required="" size="3"/>
		</div>
	</td>
	</tr>
	<tr>
	<td >
		Bookings (NSC Leads)
	</td>
	<td >
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsNSC3', 'error')} required">

			<g:field name="bookingsNSC3" type="number" value="${dealerDailyDataInstance.bookingsNSC3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsNSC5', 'error')} required">

			<g:field name="bookingsNSC5" type="number" value="${dealerDailyDataInstance.bookingsNSC5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsNSC6', 'error')} required">

			<g:field name="bookingsNSC6" type="number" value="${dealerDailyDataInstance.bookingsNSC6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsNSC7', 'error')} required">

			<g:field name="bookingsNSC7" type="number" value="${dealerDailyDataInstance.bookingsNSC7}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsNSCX1', 'error')} required">

			<g:field name="bookingsNSCX1" type="number" value="${dealerDailyDataInstance.bookingsNSCX1}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsNSCX3', 'error')} required">

			<g:field name="bookingsNSCX3" type="number" value="${dealerDailyDataInstance.bookingsNSCX3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsNSCX5', 'error')} required">

			<g:field name="bookingsNSCX5" type="number" value="${dealerDailyDataInstance.bookingsNSCX5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsNSCX6', 'error')} required">

			<g:field name="bookingsNSCX6" type="number" value="${dealerDailyDataInstance.bookingsNSCX6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsNSCZ4', 'error')} required">

			<g:field name="bookingsNSCZ4" type="number" value="${dealerDailyDataInstance.bookingsNSCZ4}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsNSCGT', 'error')} required">

			<g:field name="bookingsNSCGT" type="number" value="${dealerDailyDataInstance.bookingsNSCGT}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'bookingsNSCM', 'error')} required">

			<g:field name="bookingsNSCM" type="number" value="${dealerDailyDataInstance.bookingsNSCM}" required="" size="3"/>
		</div>
	</td>
	</tr>
	<tr>
	<td >
		Vehicles delivered (NSC Leads)
	</td>
	<td >
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesNSC3', 'error')} required">

			<g:field name="vehiclesNSC3" type="number" value="${dealerDailyDataInstance.vehiclesNSC3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesNSC5', 'error')} required">

			<g:field name="vehiclesNSC5" type="number" value="${dealerDailyDataInstance.vehiclesNSC5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesNSC6', 'error')} required">

			<g:field name="vehiclesNSC6" type="number" value="${dealerDailyDataInstance.vehiclesNSC6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesNSC7', 'error')} required">

			<g:field name="vehiclesNSC7" type="number" value="${dealerDailyDataInstance.vehiclesNSC7}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesNSCX1', 'error')} required">

			<g:field name="vehiclesNSCX1" type="number" value="${dealerDailyDataInstance.vehiclesNSCX1}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesNSCX3', 'error')} required">

			<g:field name="vehiclesNSCX3" type="number" value="${dealerDailyDataInstance.vehiclesNSCX3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesNSCX5', 'error')} required">

			<g:field name="vehiclesNSCX5" type="number" value="${dealerDailyDataInstance.vehiclesNSCX5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesNSCX6', 'error')} required">

			<g:field name="vehiclesNSCX6" type="number" value="${dealerDailyDataInstance.vehiclesNSCX6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesNSCZ4', 'error')} required">

			<g:field name="vehiclesNSCZ4" type="number" value="${dealerDailyDataInstance.vehiclesNSCZ4}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesNSCGT', 'error')} required">

			<g:field name="vehiclesNSCGT" type="number" value="${dealerDailyDataInstance.vehiclesNSCGT}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'vehiclesNSCM', 'error')} required">

			<g:field name="vehiclesNSCM" type="number" value="${dealerDailyDataInstance.vehiclesNSCM}" required="" size="3"/>
		</div>
	</td>
	</tr>
	<tr>
	<td >
		Closing Stock
	</td>
	<td >
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'closingStock3', 'error')} required">

			<g:field name="closingStock3" type="number" value="${dealerDailyDataInstance.closingStock3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'closingStock5', 'error')} required">

			<g:field name="closingStock5" type="number" value="${dealerDailyDataInstance.closingStock5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'closingStock6', 'error')} required">

			<g:field name="closingStock6" type="number" value="${dealerDailyDataInstance.closingStock6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'closingStock7', 'error')} required">

			<g:field name="closingStock7" type="number" value="${dealerDailyDataInstance.closingStock7}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'closingStockX1', 'error')} required">

			<g:field name="closingStockX1" type="number" value="${dealerDailyDataInstance.closingStockX1}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'closingStockX3', 'error')} required">

			<g:field name="closingStockX3" type="number" value="${dealerDailyDataInstance.closingStockX3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'closingStockX5', 'error')} required">

			<g:field name="closingStockX5" type="number" value="${dealerDailyDataInstance.closingStockX5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'closingStockX6', 'error')} required">

			<g:field name="closingStockX6" type="number" value="${dealerDailyDataInstance.closingStockX6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'closingStockZ4', 'error')} required">

			<g:field name="closingStockZ4" type="number" value="${dealerDailyDataInstance.closingStockZ4}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'closingStockGT', 'error')} required">

			<g:field name="closingStockGT" type="number" value="${dealerDailyDataInstance.closingStockGT}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'closingStockM', 'error')} required">

			<g:field name="closingStockM" type="number" value="${dealerDailyDataInstance.closingStockM}" required="" size="3"/>
		</div>
	</td>
	</tr>
	<tr>
	<td >
		Test Drives given
	</td>
	<td >
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'testDrives3', 'error')} required">

			<g:field name="testDrives3" type="number" value="${dealerDailyDataInstance.testDrives3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'testDrives5', 'error')} required">

			<g:field name="testDrives5" type="number" value="${dealerDailyDataInstance.testDrives5}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'testDrives6', 'error')} required">

			<g:field name="testDrives6" type="number" value="${dealerDailyDataInstance.testDrives6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'testDrives7', 'error')} required">

			<g:field name="testDrives7" type="number" value="${dealerDailyDataInstance.testDrives7}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'testDrivesX1', 'error')} required">

			<g:field name="testDrivesX1" type="number" value="${dealerDailyDataInstance.testDrivesX1}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'testDrivesX3', 'error')} required">

			<g:field name="testDrivesX3" type="number" value="${dealerDailyDataInstance.testDrivesX3}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'testDrivesX5', 'error')} required">

			<g:field name="testDrivesX5" type="number" value="${dealerDailyDataInstance.testDrivesX5}" required="" size="3"/>
		</div>
	</td>
	
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'testDrivesX6', 'error')} required">

			<g:field name="testDrivesX6" type="number" value="${dealerDailyDataInstance.testDrivesX6}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'testDrivesZ4', 'error')} required">

			<g:field name="testDrivesZ4" type="number" value="${dealerDailyDataInstance.testDrivesZ4}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'testDrivesGT', 'error')} required">

			<g:field name="testDrivesGT" type="number" value="${dealerDailyDataInstance.testDrivesGT}" required="" size="3"/>
		</div>
	</td>
	<td>
		<div class="fieldcontain ${hasErrors(bean: dealerDailyDataInstance, field: 'testDrivesM', 'error')} required">

			<g:field name="testDrivesM" type="number" value="${dealerDailyDataInstance.testDrivesM}" required="" size="3"/>
		</div>

	</td>
	</tr>

   <tr > <td colspan="12" align="center">  <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Submit')}" /></td><td align="center" colspan="4">
 
</td></tr>
</table>

</g:form>
</body>
</html>