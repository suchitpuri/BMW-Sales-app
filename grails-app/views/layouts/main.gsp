<!doctype html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="BMW"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}"/>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'screen.css')}"/>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'screen_ie6.css')}"/>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'screen.css_ie7')}"/>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'screen.css_ie8')}"/>
		   
					
		<g:javascript src="common.js" />.
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
	
<g:isLoggedIn> 


		</g:isLoggedIn> 
				<div class="col5-box">
						<div class="container">

						<div class="container-content">

		<br/>
		<br/>
		<br/>
		<g:layoutBody/>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		
		<r:layoutResources />
		</div>
		</div>
				</div>
			
			
	</body>
	
</html>