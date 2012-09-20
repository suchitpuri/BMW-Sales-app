/*
	BMW WUI:CSS
	portalmenu.js: Definition von Meta- und Portalnavigationsmenue
	Letzte Aenderung: 27.04.2011 [Marc Musch, FZ-420] / Linkaenderungen
*/

var portalmenu_language = "en";

var metamenu = [
	{ text:"Associate Directory", url:"http://mvz.muc", target:"_blank" },
	{ text:"Deutsch", url:"http://intra.bmwgroup.net/de/", target:"_self" },
	{ text:"Contact", url:"http://intra.bmwgroup.net/en/02_Contact", target:"_top" },
	{ text:"Help", url:"http://intra.bmwgroup.net/en/01_Help", target:"_top" },
	{ text:"E-Mail", url:"http://bmwmail.muc", target:"_blank" }
];

var portalmenu = [
    { text:"Start Page", url:"http://intra.bmwgroup.net/en/", target:"_top" },
	{ text:"BMW Group &amp; Me", url:"https://portal.bmwgroup.net/pps/tibco/b2engi", target:"_top" },
	{ text:"News", url:"http://intra.bmwgroup.net/News/en", target:"_top" },
	{ text:"A to Z", url:"http://a-z.muc/f/fz/network_a-z.nsf/netCatalogHTML/en_link_root._a.html", target:"_top" },
	{ text:"Overview", url:"#", id:"ressorts", submenu: [
        { subClass:"col7", hasDetails:false, position:"left", columns: [
            { name: "BMW Group &amp; Me", elements: [
                    { text:"Health Services", url:"http://www5.muc/gesundheitsdienst/gd/index.htm", target:"_blank" },
                    { text:"Human Resources", url:"http://intra.bmwgroup.net/Personal/en/index.htm", target:"_top" },
                    { text:"Identification Card", url:"http://intra.bmwgroup.net/Personal/en/01_General_services/14_Security/Secure_Access/index.htm", target:"_top" },
                    { text:"Job Market (IBS)", url:"https://hrcontent.bmwgroup.net/b2e-redaktion/microsite/ims_einstieg_chancen/7113.html", target:"_blank" },
                    { text:"My Financial Security", url:"https://hrcontent.bmwgroup.net/dispatcher/dispatcher?pageID=2585", target:"_blank" },
                    { text:"Social Services", url:"http://intra.bmwgroup.net/Betriebsrat", target:"_top" },
                    { text:"Time Management", url:"https://hrcontent.bmwgroup.net/b2e-redaktion/microsite/ims_framesets/ZW_Frameset.html", target:"_blank" },
                    { text:"Training Academy", url:"https://bildungsakademie.bmwgroup.net", target:"_top" },
                    { text:"Travel Expenditures", url:"http://www7.muc/fr/dienstreisen/eng/index_eng.htm", target:"_blank" },
                    { text:"Work Security", url:"http://www5.muc/sicherheit_konzern/zhp/frame/framework3/group/index.htm", target:"_blank" }
                ]
            },
            { name: "Services &amp; Offers", elements: [                    
                    { text:"Accounts Payable", url:"http://intra.bmwgroup.net/FR-Intranet/FR-2_en/07_Kreditorische_Abrechnung/index.htm", target:"_top" },	
					{ text:"BMW Health Insurance", url:"http://www.bmwbkk.de/", target:"_blank" },					
                    { text:"Corporate Catering", url:"http://intra.bmwgroup.net/Personal/en/01_General_services/06_Canteen_Services/index.htm", target:"_top" },
                    { text:"Financial Services", url:"http://bmwfs.muc/intranet_wa/servlet/content?id=0&amp;home=true", target:"_blank" },
                    { text:"Helpdesk/Issues", url:"http://intra.bmwgroup.net/Personal/en/01_General_services/10_Maintenance/Help_Desk_Main/index.htm", target:"_top" },
                    { text:"Information Technology", url:"http://it.muc", target:"_blank" },
                    { text:"Insurances", url:"http://versicherungen.bmwgroup.net/", target:"_top" },
                    { text:"IT Service Desks", url:"http://sd-en.bmwgroup.net", target:"_blank" },
                    { text:"Location Services", url:"http://intra.bmwgroup.net/Personal/de/01_PA_allgemein_Dienste1026671/03_Services/07_Medien_Druck_Post/index.htm", target:"_top" },					
                    { text:"Travel Agency", url:"http://www.muc/u_dienste/lloyd/german/default.htm", target:"_blank" },
                    { text:"Vehicle Fleet", url:"http://intra.bmwgroup.net/Personal/en/01_General_services/15_Vehicle_Fleet/index.htm", target:"_top" },
					{ text:"Vehicles for Employees", url:"http://intra.bmwgroup.net/mitarbeiterfahrzeuge", target:"_top" }
                ]
            },
            { name: "BMW Group", elements: [
                    { text:"BMWGroup.com", url:"http://www.bmwgroup.com/", target:"_blank" },
                    { text:"BMW Group Compliance", url:"http://compliance-en.muc", target:"_top" },
                    { text:"BMW Group Identity Net", url:"http://identity-net.muc/", target:"_blank" },
                    { text:"Guidelines", url:"http://a-z.muc/f/fz/network_a-z.nsf/netCatalogHTML/en_link_030.020..html", target:"_top" },
                    { text:"Network tv", url:"http://network-tv.muc/?lang=en", target:"_top" },
                    { text:"Organisational Development", url:"https://hrcontent.bmwgroup.net/b2e-redaktion/microsite/ims_framesets/fo/FO_Intranet_en.htm", target:"_blank" },
                    { text:"Rolls-Royce", url:"http://www.rolls-roycemotorcars.com/", target:"_blank" }
                ]
            },
            { name: "Divisions", elements: [
                    { text:"A-Division", url:"http://intra.bmwgroup.net/A-Ressort/en/", target:"_top" },
                    { text:"Development", url:"http://intra.bmwgroup.net/Entwicklung/", target:"_top" },
                    { text:"Finance", url:"http://rc-content.muc/F-Intranet/en/", target:"_top" },
                    { text:"Human Resources", url:"http://intra.bmwgroup.net/Personal/en", target:"_top" },
                    { text:"Production", url:"http://intra.bmwgroup.net/Produktion/en/index.htm", target:"_top" },
                    { text:"Purchasing &amp; Supplier Network", url:"http://intra.bmwgroup.net/Einkauf/", target:"_top" },
                    { text:"Sales &amp; Marketing", url:"http://v.muc/servlet/UMFramesetServlet?region=V&amp;brand=BMWGroup&amp;location=public&amp;language=en_GB&amp;showNavigation=false&amp;cssaved=done", target:"_blank" },
                    { text:"Works Council", url:"http://intra.bmwgroup.net/Betriebsrat", target:"_top" }
                ]
            },
            { name: "Plants &amp; Locations", 
                columns: [
                    {elements: [
	                    { text:"Central Locations", url:"http://intra.bmwgroup.net/Personal/en/01_General_services/index.htm", target:"_top" },
	                    { text:"Plant Berlin", url:"http://bmw-motorrad.muc/", target:"_top" },
						{ text:"Plants CKD", url:"http://intra.bmwgroup.net/TP-Intranet/Startseite/01_SteuerungTP/35_CKD/05_Infoplattform/index.htm", target:"_top" },
	                    { text:"Plant Dingolfing", url:"http://intra.bmwgroup.net/Dingolfing/", target:"_top" },
	                    { text:"Plant Eisenach", url:"http://www.bmw-werk-eisenach.de/", target:"_blank" },						
						{ text:"Plant Goodwood", url:"http://goodwood.muc", target:"_blank" },
	                    { text:"Plant Hamshall", url:"http://hamshall.w12/", target:"_blank" },
	                    { text:"Plant Landshut", url:"http://www.landshut.w4/", target:"_top" },
	                    { text:"Plant Leipzig", url:"http://www5.muc/tl", target:"_blank" },
						{ text:"Plant Munich", url:"http://intra.bmwgroup.net/Muenchen/", target:"_top" },
	                    { text:"Plant Oxford", url:"http://oxford.muc", target:"_blank" }
		            ]},
	                {elements: [
	                    { text:"Plant Regensburg", url:"http://intra.bmwgroup.net/Regensburg", target:"_top" },
	                    { text:"Plant Rosslyn", url:"http://intra.bmwgroup.net/ZA/", target:"_top" },
						{ text:"Plant Shenyang", url:"http://intra.bmwgroup.net/Produktion/de/01_Produktionsnetzwerk/15_Shenyang/index.htm", target:"_top" },
	                    { text:"Plant Spartanburg", url:"http://intra.bmwgroup.net/Spartanburg/", target:"_top" },
	                    { text:"Plant Steyr", url:"http://steyr.muc/", target:"_top" },
	                    { text:"Plant Swindon", url:"http://swindon.muc/", target:"_blank" },
	                    { text:"Plant Varese", url:"http://rc-content.muc/husqvarna/01_Home_EN/", target:"_blank" },
						{ text:"Plant Wackersdorf", url:"http://intra.bmwgroup.net/Regensburg/01_Werk6_Home/07_Wackersdorf/index.htm", target:"_top" },
	                    { text:"Real Estate", url:"http://intra.bmwgroup.net/Personal/en/01_General_services/index.htm", target:"_top" },
						{ text:"Sales Regions & Subsidiaries", url:"http://v.muc/servlet/UMFramesetServlet?region=V&amp;brand=BMWGroup&amp;location=public&amp;language=en_GB", target:"_blank" }
	                ]}
                ]
            },
            { name: "Projects &amp; Processes", elements: [
			        { text:"ATLAS", url:"http://www7.muc/ptv2010/Home_de", target:"_blank" },
                    { text:"B2B-Portal", url:"https://b2b.bmwgroup.net/", target:"_blank" },
                    { text:"imotion", url:"http://imotion.muc/", target:"_blank" },
					{ text:"Information Protection", url:"http://informationprotection.muc", target:"_top" },
					{ text:"Quality News Network", url:"https://qnn.bmwgroup.net", target:"_blank" },
                    { text:"PEP PDM", url:"http://www7.muc/ppdm/Home_en/indexm.htm?http://www7.muc/ppdm/Home_en/main.htm", target:"_blank" },
                    { text:"PPQ", url:"http://intra.bmwgroup.net/PPQ", target:"_top" },
                    { text:"Pro-F-IT", url:"http://profit.muc/", target:"_top" },
                    { text:"Program E&sup3;", url:"http://e3.muc/", target:"_top" },
                    { text:"Quality News Network", url:"https://qnn.bmwgroup.net", target:"_blank" },
                    { text:"VPS", url:"http://intra.bmwgroup.net/wps/en/", target:"_top" }
                ]
            }
        ] }
    ] }
];