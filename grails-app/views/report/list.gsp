<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>



 <title align="center">Reports</title>

<meta name="layout" content="main"/>

<h1 id="header-logo"><img src="common/img/logo_bmw.jpg" width="43" height="43" alt="BMW"><!--BMW Specific--></h1>

        <div id="header">

            <h1 id="header-title">Reports </h1>

			</div>

<div class="nav">

		<span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a>

		<g:link controller="logout" class="logout">Logout</g:link></span>		

</div>	 

  <meta http-equiv="content-type" content="text/html; charset=utf-8" />

  <title>Google Visualization API Sample</title>

  <script type="text/javascript" src="http://www.google.com/jsapi"></script>

  <script type="text/javascript">

    google.load('visualization', '1', {packages: ['table']});

	google.load('visualization', '1', {packages: ['corechart']});


	function drawBarChart(){
		   // Create and populate the data table.
        var data = google.visualization.arrayToDataTable([
          ['Month','Value', 'Good','Acceptable','Target'],
          ['Target Achievement ', ${sum3},      100,95, 133.3],
          ['Sales Growth over Last Year',35,   35,30,23.1  ],
          ['CSI (Sales)',    95,      95,76, 80.4],
          ['Corporate Sales Penetration',         0, 0 ,0,0    ],
          ['Sales Person Productivity',           3, 3,2.4, 3.4    ]	  
        ]);
      
        // Create and draw the visualization.
        var ac = new google.visualization.ComboChart(document.getElementById('barChart'));
        ac.draw(data, {
          title : 'Dealer Data for this Month',
          width: 1000,
          height: 700,
          vAxis: {title: "Value"},
          hAxis: {title: "Parameters"},
          seriesType: "bars",
          series: {1: {type: "line"},2:{type:"line"},3:{type:"line"}}
        });
	}
	

	
	
    function drawVisualization() {
		
	drawBarChart();

      // Create and populate the data table.
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Parameters');
      data.addColumn('number', 'Previous month');
      data.addColumn('number', 'Current month');
      data.addColumn('number', '% change');
      data.addRows([
	    ['Target Achievement',0, ${e3} ,{v: ${(e1 - e3)} , f: '${(e3 - e1)}%'}],
        ['Sales growth over last year',0, 100 , {v: -7.3, f: '-7.3%'}],
        ['CSI(Sales)',0 , 200 , {v: 30, f: '30.0%'}],
        ['Corporate Sales Penetration',0 , 0,{v: ${0}, f: '${(0)}%'} ],
        ['Sales Person Productivity',0 , 105 , {v: 5, f: '5.0%'}],
        ['Lead Follow up Rate (NSC)', 0 , ${lrnsc} ,{v: ${(lrnsc - 0)} , f: '${( lrnsc - 0)}%'} ],
        ['Lead Follow up Rate (Dealer)',0 , ${lrd} , {v: ${(lrd - 0)} , f: '${( lrd - 0)}%'}],
	    ['Conversion Rate (NSC)',0 , ${crnsc} , {v: ${(crnsc - 0)} , f: '${( crnsc - 0)}%'}],
        ['Conversion Rate (Dealer)',0 , ${crd} , {v: ${(crd - 0)} , f: '${( crd - 0)}%'}],
        ['Days Supply',0 , 125, {v: -50, f: '-50.0%'}],
        ['Test Drives to Leads Ratio',0 , ${tdl} , {v: ${(tdl - 0)} , f: '${( tdl - 0)}%'}],
        ['Sales to Test Drive Ratio',0, ${stdr} ,{v: ${(stdr - 0)} , f: '${( stdr - 0)}%'}],
        ['Marketing Spending per car',0 , 0, {v: ${0}, f: '${(0)}%'}],
        ['Loyalty',0 , 125, {v: -50, f: '-50.0%'}],
        ['Sales Process Quality',0 , 105 , {v: 5, f: '5.0%'}],
      ]);
    
      // Create and draw the visualization.
      var table = new google.visualization.Table(document.getElementById('visualization'));
    
      var formatter = new google.visualization.TableArrowFormat();
      formatter.format(data, 3); // Apply formatter to second column
    
      table.draw(data, {allowHtml: true, showRowNumber: true});
	      }
	    google.setOnLoadCallback(drawVisualization);
  </script>
</head>

<body style="font-family: Arial;border: 0 none;">

<div id="visualization" style="width: 800px; height: 400px;"></div>

<div id="barChart" style="width: 800px; height: 400px;"></div>



</body>

</html>

