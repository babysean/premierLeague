<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/radar.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
<title>Insert title here</title>
</head>
<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
  height: 500px;
}				
</style>
<!-- Chart code -->
<script>
var chart = AmCharts.makeChart( "chartdiv", {
	"type": "radar",
	"theme": "light",
	"dataProvider": [ {
			"ability": "leadership",
			"value": 46
		}, {
			"ability": "positionStat",
			"value": 70
		}, {
			"ability": "potential",
			"value": 80
		}, {
			"ability": "stamina",
			"value": 70
		}, {
			"ability": "physical",
			"value": 80
		}, {
			"ability": "composure",
			"value": 48
		}, {
			"ability": "longRangeShot",
			"value": 75
		}, {
			"ability": "shootingAccuracy",
			"value": 81 
		}, {
			"ability": "shootingPower",
			"value": 70
		}, {
			"ability": "freeKick",
			"value": 80
		}, {
			"ability": "pace",
			"value": 75
		}, {
			"ability": "acceleration",
			"value": 60
		}, {
			"ability": "dribble",
			"value": 90
		}, {
			"ability": "longPass",
			"value": 99
		}, {
			"ability": "cross",
			"value": 70
		}, {
			"ability": "pass",
			"value": 70
		}, {
			"ability": "reaction",
			"value": 75
		}, {
			"ability": "individualSkill",
			"value": 50
		}, {
			"ability": "tackle",
			"value": 60
		}, {
			"ability": "marking",
			"value": 78
		}, {
			"ability": "heading",
			"value": 71
		}, {
			"ability": "positiveness",
			"value": 61
		}, {
			"ability": "handling",
			"value": 90
		}, {
			"ability": "reflexes",
			"value": 87
		}, {
			"ability": "diving",
			"value": 99
		}, {
			"ability": "positioning",
			"value": 46
		}  ],
	"valueAxes": [ {
		"axisTitleOffset": 20,
		"minimum": 0,
		"axisAlpha": 0.15
	} ],
	"startDuration": 2,
	"graphs": [ {
			"balloonText": "[[value]] value of beer per year",
			"bullet": "round",
			"lineThickness": 2,
			"valueField": "value"
	} ],
	"categoryField": "ability"
} );
</script>
<body>
<!-- HTML -->
<div id="chartdiv"></div>
</body>
</html>