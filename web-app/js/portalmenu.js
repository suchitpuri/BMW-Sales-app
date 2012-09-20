/*
	BMW WUI:CSS
	portalmenu.js: Definition von Meta- und Portalnavigationsmenue
	Letzte Aenderung: 27.04.2011 [Marc Musch, FZ-420] / Linkaenderungen
*/

var portalmenu_language = "de";

var metamenu = [
	{ text:"Mitarbeiterverzeichnis", url:"http://mvz.muc", target:"_blank" },
	{ text:"English", url:"http://intra.bmwgroup.net/en/", target:"_self" },
	{ text:"Kontakt", url:"http://intra.bmwgroup.net/de/02_Kontakt", target:"_top" },
	{ text:"Hilfe", url:"http://intra.bmwgroup.net/de/01_Hilfe", target:"_top" },
	{ text:"E-Mail", url:"http://bmwmail.muc", target:"_blank" }
];

var portalmenu = [
	{ text:"Startseite", url:"http://intra.bmwgroup.net/", target:"_top" },
	{ text:"BMW Group &amp; Ich", url:"https://portal.bmwgroup.net/pps/tibco/b2engi", target:"_top" },
	{ text:"News", url:"http://intra.bmwgroup.net/News/de", target:"_top" },
	{ text:"A bis Z", url:"http://a-z.muc/f/fz/network_a-z.nsf/netCatalogHTML/de_link_root._a.html", target:"_top" },
	{ text:"&Uuml;berblick", url:"#", id:"ressorts", submenu: [
        { subClass:"col7", hasDetails:false, position:"left", columns: [
            { name: "BMW Group &amp; Ich", elements: [
                    { text:"Ausweisstelle", url:"http://intra.bmwgroup.net/Personal/de/01_PA_allgemein_Dienste1026671/09_Sicherheit/Zutritt/index.htm#1120690_6", target:"_top" },
                    { text:"Arbeitssicherheit", url:"http://www5.muc/sicherheit_konzern/zhp/frame/framework3/group/index.htm", target:"_blank" },
                    { text:"Dienstreisen", url:"http://www7.muc/fr/dienstreisen/", target:"_blank" },
                    { text:"Gesundheitsmanagement", url:"http://intra.bmwgroup.net/Personal/de/20_PS/40_Gesundheitsmanagement/index.htm", target:"_top" },
                    { text:"Bildungsakademie", url:"https://bildungsakademie.bmwgroup.net", target:"_top" },
                    { text:"Meine Zukunftsvorsorge", url:"https://hrcontent.bmwgroup.net/dispatcher/dispatcher?pageID=2585", target:"wui_b2e_main" },
                    { text:"Personalwesen", url:"http://intra.bmwgroup.net/Personal/de/index.htm", target:"_top" },
                    { text:"Sozialleistungen", url:"http://intra.bmwgroup.net/Betriebsrat", target:"_top" },
                    { text:"Stellenmarkt (IBS)", url:"https://hrcontent.bmwgroup.net/b2e-redaktion/microsite/ims_einstieg_chancen/7113.html", target:"wui_b2e_main" },
                    { text:"Zeitwirtschaft", url:"https://hrcontent.bmwgroup.net/b2e-redaktion/microsite/ims_framesets/ZW_Frameset.html", target:"_blank" }
                ]
            },
            { name: "Dienste &amp; Angebote", elements: [
					{ text:"Bavaria Lloyd (Reiseb&uuml;ro)", url:"http://www.muc/u_dienste/lloyd/german/default.htm", target:"_blank" },
                    { text:"Betriebsgastronomie", url:"http://intra.bmwgroup.net/Personal/de/01_PA_allgemein_Dienste1026671/04_Gastronomie/index.htm", target:"_top" },
                    { text:"BMW BKK", url:"http://www.bmwbkk.de", target:"_blank" },
                    { text:"Fahrzeuge f&uuml;r Mitarbeiter", url:"http://intra.bmwgroup.net/mitarbeiterfahrzeuge", target:"_top" },
                    { text:"Finanzdienstleistungen", url:"http://bmwfs.muc/intranet_wa/servlet/content?id=0&amp;home=true", target:"_blank" },
                    { text:"Helpdesk/St&ouml;rungen", url:"http://intra.bmwgroup.net/Personal/de/01_PA_allgemein_Dienste1026671/06_Services_-_Gebaeude-_und_Energiebetrieb/Stoerungseingang/index.htm", target:"_top" },
                    { text:"Fuhrpark", url:"http://intra.bmwgroup.net/Personal/de/01_PA_allgemein_Dienste1026671/02_Fuhrpark/index.htm", target:"_top" },
                    { text:"Informationstechnologie", url:"http://it.muc", target:"_blank" },
                    { text:"IT Service Desks", url:"http://sd.bmwgroup.net", target:"_blank" },
					{ text:"Kreditorische Abrechnung", url:"http://intra.bmwgroup.net/FR-Intranet/FR-2/07_Kreditorische_Abrechnung/index.htm", target:"_top" },
                    { text:"Standortdienstleistungen", url:"http://intra.bmwgroup.net/Personal/de/01_PA_allgemein_Dienste1026671/03_Services/07_Medien_Druck_Post/index.htm", target:"_top" },
                    { text:"Versicherungen", url:"http://versicherungen.bmwgroup.net/", target:"_top" }
                ]
            },
            { name: "BMW Group", elements: [
                    { text:"BMWGroup.com", url:"http://www.bmwgroup.com/", target:"_blank" },
                    { text:"BMW Group Compliance", url:"http://compliance.muc", target:"_top" },
                    { text:"BMW Group Identity Net", url:"http://identity-net.muc/", target:"_blank" },
                    { text:"Network tv", url:"http://network-tv.muc/?lang=de", target:"_top" },
                    { text:"Organisationsentwicklung", url:"https://hrcontent.bmwgroup.net/b2e-redaktion/microsite/ims_framesets/fo/FO_Intranet.htm", target:"_blank" },
                    { text:"Richtlinien &amp; Vorgaben", url:"http://a-z.muc/f/fz/network_a-z.nsf/netCatalogHTML/de_link_030.020..html", target:"_top" }
                ]
            }
            ,
            { name: "Ressorts", elements: [
                    { text:"A-Ressort", url:"http://intra.bmwgroup.net/A-Ressort", target:"_top" },
                    { text:"Betriebsrat", url:"http://intra.bmwgroup.net/Betriebsrat", target:"_top" },
                    { text:"Einkauf &amp; Lieferantennetzwerk", url:"http://intra.bmwgroup.net/Einkauf/", target:"_top" },
                    { text:"Entwicklung", url:"http://intra.bmwgroup.net/Entwicklung/", target:"_top" },
                    { text:"Finanzen", url:"http://finanzen.muc/", target:"_top" },
					{ text:"Personal- &amp; Sozialwesen", url:"http://intra.bmwgroup.net/Personal", target:"_top" },
                    { text:"Produktion", url:"http://intra.bmwgroup.net/Produktion", target:"_top" },
                    { text:"Vertrieb &amp; Marketing", url:"http://v.muc/", target:"_blank" }
                ]
            },
            { name: "Werke &amp; Standorte", 
                columns: [
                    {elements: [
	                    { text:"Vertriebsregionen &amp; Niederlassungen", url:"http://v.muc", target:"_blank" },
	                    { text:"Werk Berlin", url:"http://bmw-motorrad.muc/", target:"_top" },
						{ text:"Werke CKD", url:"http://intra.bmwgroup.net/TP-Intranet/Startseite/01_SteuerungTP/35_CKD/05_Infoplattform/index.htm", target:"_top" },
	                    { text:"Werk Dingolfing", url:"http://intra.bmwgroup.net/Dingolfing/", target:"_top" },
	                    { text:"Werk Eisenach", url:"http://www.bmw-werk-eisenach.de/", target:"_blank" },
						{ text:"Werk Goodwood", url:"http://goodwood.muc", target:"_blank" },
	                    { text:"Werk Hamshall", url:"http://hamshall.w12/", target:"_blank" },						
	                    { text:"Werk Landshut", url:"http://www.landshut.w4/", target:"_top" },
	                    { text:"Werk Leipzig", url:"http://www5.muc/tl", target:"_blank" },
	                    { text:"Werk M&uuml;nchen", url:"http://intra.bmwgroup.net/Muenchen/", target:"_top" }	                    
		            ]},
	                {elements: [
	                    { text:"Werk Oxford", url:"http://oxford.muc", target:"_blank" },
						{ text:"Werk Regensburg", url:"http://intra.bmwgroup.net/Regensburg/", target:"_top" },
	                    { text:"Werk Rosslyn", url:"http://intra.bmwgroup.net/ZA/", target:"_top" },
						{ text:"Werk Shenyang", url:"http://intra.bmwgroup.net/Produktion/de/01_Produktionsnetzwerk/15_Shenyang/index.htm", target:"_top" },
	                    { text:"Werk Spartanburg", url:"http://intra.bmwgroup.net/Spartanburg/", target:"_top" },
	                    { text:"Werk Steyr", url:"http://steyr.muc/", target:"_top" },
	                    { text:"Werk Swindon", url:"http://swindon.muc/", target:"_blank" },
						{ text:"Werk Varese", url:"http://rc-content.muc/husqvarna/", target:"_blank" },
	                    { text:"Werk Wackersdorf", url:"http://intra.bmwgroup.net/Regensburg/01_Werk6_Home/07_Wackersdorf/index.htm", target:"_top" },
						{ text:"Zentralbereiche", url:"http://intra.bmwgroup.net/Personal/de/01_PA_allgemein_Dienste1026671/index.htm", target:"_top" }	                    
	                ]}
                ]
            },
            { name: "Projekte &amp; Prozesse", elements: [
					{ text:"ATLAS", url:"http://www7.muc/ptv2010/Home_de", target:"_blank" },
					{ text:"B2B-Portal", url:"https://b2b.bmwgroup.net", target:"_blank" },
					{ text:"Datenschutz", url:"http://intra.bmwgroup.net/Personal/de/45_PD/", target:"_top" },
                    { text:"imotion", url:"http://imotion.muc/", target:"_blank" },
                    { text:"Informationsschutz", url:"http://informationsschutz.muc", target:"_top" },
                    { text:"PEP PDM", url:"http://www7.muc/ppdm/Home_de/indexm.htm", target:"_blank" },
                    { text:"Programm E&sup3;", url:"http://e3.muc/", target:"_top" },
                    { text:"Pro-F-IT", url:"http://profit.muc/", target:"_top" },
                    { text:"PPQ", url:"http://intra.bmwgroup.net/PPQ", target:"_top" },
                    { text:"Prozesse", url:"http://rc-content.muc/F-Intranet/Prozesse.muc/", target:"_top" },
                    { text:"Quality News Network", url:"https://qnn.bmwgroup.net", target:"_blank" },
					{ text:"WIN", url:"http://www5.muc/v1/win/index.htm", target:"_top" },
                    { text:"WPS", url:"http://intra.bmwgroup.net/wps/de/", target:"_top" }
                ]
            }
        ] }
    ] }
];