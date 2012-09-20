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
	google.load('visualization', '1', {packages: ['annotatedtimeline']});
	google.load('visualization', '1', {packages: ['corechart']});


	function drawBarChart(){
		  // Create and populate the data table.
        var data = google.visualization.arrayToDataTable([
          ['Month','Target','Value'],
          ['Target Achievement ',  36,      133.3],
          ['Sales Growth over Last Year',35,   23.1  ],
          ['CSI (Sales)',    95,      80.4],
          ['Corporate Sales Penetration',         0, 0     ],
          ['Sales Person Productivity',           3,  3.4    ],
          ['Lead Follow Up Rate (NSC)',          100,    0 ],
		  ['Lead Follow Up Rate (Dealer)',          100,  0],
		  ['Conversion Rate (NSC)',          10,      311.1],
		  ['Conversion Rate (Dealer)',         10,    27.1],
		  ['Days Supply',          30,      23.3],
		  ['Test Drives to Leads Ratio',    50,6],
		  ['Sales to Test Drives Ratio',       18, 116 ],
		  ['Marketing Spending Per Car',         470,540],
		  ['Loyalty',          90,      78.7],
		  ['Sales Process Quality',      10,95]		  
        ]);
		 
      
        // Create and draw the visualization.
        var ac = new google.visualization.ComboChart(document.getElementById('barChart'));
        ac.draw(data, {
          title : 'Dealer Data for this Month',
          width: 1000,
          height: 400,
          vAxis: {title: "Value"},
          hAxis: {title: "Parameters"},
          seriesType: "bars",
          series: {1: {type: "line"}}
        });
	}
	function drawTimeline(){
      var data = new google.visualization.DataTable();
      data.addColumn('date', 'Date');
      data.addColumn('number', 'Target Acheivement');
      data.addColumn('string', 'title1');
     
      data.addRows([
      
        [new Date(2012, 0 ,1), 30000, null],
        [new Date(2012, 1 ,1), 60000, null],
        [new Date(2012, 2 ,1), 14045, null],
        [new Date(2012, 3 ,1), 55022, null],
        [new Date(2012, 4 ,1), 75284, null],
        [new Date(2012, 5 ,1), 41476, null],
        [new Date(2012, 6 ,1), 33322, null],
        [new Date(2012, 7 ,1), 80000, null],
        [new Date(2012, 8 ,1), 44045, null],
        [new Date(2012, 9 ,1), 45022, null],
        [new Date(2012, 10 ,1), 56777, null],
        [new Date(2012, 11 ,1), 234, null],
    
      ]);
    
      var annotatedtimeline = new google.visualization.AnnotatedTimeLine(document.getElementById('timeline'));
      annotatedtimeline.draw(data, {'displayAnnotations': true});

    }

	
	
    function drawVisualization() {
	
	drawTimeline();
	drawBarChart();

      // Create and populate the data table.
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Parameters');
      data.addColumn('number', 'Previous month');
      data.addColumn('number', 'Current month');
      data.addColumn('number', '% change');
      data.addRows([
	    ['Target Achievement',${sum3}, ${sum5} ,{v: ${(sum3 - sum5)/sum5} , f: '${(sum3 - sum5)/sum5}%'}],
        ['Sales growth over last year',130 , 100 , {v: -7.3, f: '-7.3%'}],
        ['CSI(Sales)',130 , 200 , {v: 30, f: '30.0%'}],
        ['Corporate Sales Penetration',250 , 125, {v: -50, f: '-50.0%'}],
        ['Sales Person Productivity',100 , 105 , {v: 5, f: '5.0%'}],
         ['Lead Follow up Rate (NSC)',230, 250 ,{v: 12, f: '12.0%'}],
        ['Conversion Rate (NSC)',130 , 100 , {v: -7.3, f: '-7.3%'}],
        ['Conversion Rate (Dealer)',130 , 200 , {v: 30, f: '30.0%'}],
        ['Days Supply',250 , 125, {v: -50, f: '-50.0%'}],
        ['Test Drives to Leads Ratio',100 , 105 , {v: 5, f: '5.0%'}],
        ['Sales to Test Drive Ratio',230, 250 ,{v: 12, f: '12.0%'}],
        ['Marketing Spending per car',130 , 100 , {v: -7.3, f: '-7.3%'}],
        ['Conversion Rate (Dealer)',130 , 200 , {v: 30, f: '30.0%'}],
        ['Loyalty',250 , 125, {v: -50, f: '-50.0%'}],
        ['Sales Process Quality',100 , 105 , {v: 5, f: '5.0%'}],
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
<div id="timeline" style="width: 800px; height: 400px;"></div>
<div id="barChart" style="width: 800px; height: 400px;"></div>

</body>
</html>
