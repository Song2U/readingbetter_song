google.charts.load("current", {
	packages : [ 'corechart' ]
});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
	var data = google.visualization.arrayToDataTable([ [ "ID", "점수", {
		role : "style"
	} ], [ "kg00003", 2330, "gold" ], [ "test01", 1215, "#CBCBCB" ],
			[ "test03", 996, "#CA9666" ] ]);

	var view = new google.visualization.DataView(data);
	view.setColumns([ 0, 1, {
		calc : "stringify",
		sourceColumn : 1,
		type : "string",
		role : "annotation"
	}, 2 ]);

	var options = {
		title : "",
		width : 750,
		height : 500,
		bar : {
			groupWidth : "75%"
		},
		legend : {
			position: 'bottom', textStyle: {color: 'white', fontSize: 1}	// 안 보이는 척 하기...
		},
		annotations : {
			textStyle : {
				fontName : 'Trebuchet MS',
				fontSize : 30,
				bold : true,
				// The transparency of the text.
				opacity : 1
			}
		}
	};
	var chart = new google.visualization.ColumnChart(document
			.getElementById("graph"));
	chart.draw(view, options);
}