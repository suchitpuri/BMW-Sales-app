<html>
<head>
 <title>Sign Up</title>
<meta name="layout" content="main"/>
<h1 id="header-logo"><img src="common/img/logo_bmw.jpg" width="43" height="43" alt="BMW"><!--BMW Specific--></h1>
        <div id="header">
            <h1 id="header-title">Sign Up </h1>
			</div>
<div class="nav">
		<span class="menuButton">
		<a class="home" href="${createLinkTo(dir:'')}">Home</a> 
		<g:link class="list" action="list">Users List</g:link>	
		<g:link controller="logout" class="logout">Logout</g:link>
		</span>		
</div>	    
</head>

<body>
		
		<g:if test="${flash.message}">
		<div class="message">${flash.message}</div>
		</g:if>
		<g:hasErrors bean="${person}">
		<div class="errors">
			<g:renderErrors bean="${person}" as="list" />
		</div>
		</g:hasErrors>
		<g:form action="save">
		<div align="center">
				<table class="data zebra" align="center">
				<tbody>

					<tr>
						<td ><label for="username">Login Name:</label></td>
						<td valign="top" class="value ${hasErrors(bean:person,field:'username','errors')}">
							<input type="text" id="username" name="username" value="${person.username?.encodeAsHTML()}"/>
						</td>
					</tr>

					<tr>
						<td ><label for="userRealName">Full Name:</label></td>
						<td valign="top" class="value ${hasErrors(bean:person,field:'userRealName','errors')}">
							<input type="text" id="userRealName" name="userRealName" value="${person.userRealName?.encodeAsHTML()}"/>
						</td>
					</tr>

					<tr>
						<td><label for="passwd">Password:</label></td>
						<td valign="top" class="value ${hasErrors(bean:person,field:'passwd','errors')}">
							<input type="password" id="passwd" name="passwd" value="${person.passwd?.encodeAsHTML()}"/>
						</td>
					</tr>

					<tr>
						<td><label for="enabled">Enabled:</label></td>
						<td valign="top" class="value ${hasErrors(bean:person,field:'enabled','errors')}">
							<g:checkBox name="enabled" value="${person.enabled}" ></g:checkBox>
						</td>
					</tr>

					<tr>
						<td><label for="description">Description:</label></td>
						<td valign="top" class="value ${hasErrors(bean:person,field:'description','errors')}">
							<input type="text" id="description" name="description" value="${person.description?.encodeAsHTML()}"/>
						</td>
					</tr>
					<tr>
						<td><label for="zone">Zone:</label></td>
						<td valign="top" class="value ${hasErrors(bean:person,field:'zone','errors')}">
							<input type="text" id="zone" name="zone" value="${person.zone?.encodeAsHTML()}"/>
						</td>
					</tr>
					<tr>
						<td><label for="city">City:</label></td>
						<td valign="top" class="value ${hasErrors(bean:person,field:'city','errors')}">
							<input type="text" id="city" name="city" value="${person.city?.encodeAsHTML()}"/>
						</td>
					</tr>
					<tr>
						<td><label for="dealer">Dealer:</label></td>
						<td valign="top" class="value ${hasErrors(bean:person,field:'dealer','errors')}">
							<input type="text" id="dealer" name="dealer" value="${person.dealer?.encodeAsHTML()}"/>
						</td>
					</tr>
					

					<tr>
						<td><label for="email">Email:</label></td>
						<td valign="top" class="value ${hasErrors(bean:person,field:'email','errors')}">
							<input type="text" id="email" name="email" value="${person.email?.encodeAsHTML()}"/>
						</td>
					</tr>

					<tr>
						<td><label for="emailShow">Show Email:</label></td>
						<td valign="top" class="value ${hasErrors(bean:person,field:'emailShow','errors')}">
							<g:checkBox name="emailShow" value="${person.emailShow}"/>
						</td>
					</tr>

					<tr>
						<td align="left">Assign Roles:</td>
					</tr>

					<g:each in="${authorityList}">
					<tr>
						<td align="left">${it.authority.encodeAsHTML()}</td>
						<td align="left"><g:checkBox name="${it.authority}"/></td>
					</tr>
					</g:each>
					<tr><td colspan="2" align="center"><span class="button"><input class="save" type="submit" value="Create" /></span>
					</td></tr>
				</tbody>
				</table>
			</div>
		</g:form>

	
</body>
