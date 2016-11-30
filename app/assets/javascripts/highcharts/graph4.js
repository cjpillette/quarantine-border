$(function () {
    Highcharts.chart('container4', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'Inspection regime at Airports'
        },
        tooltip: {
            pointFormat: ''
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Inspection',
            colorByPoint: true,
            data: [{
                name: 'DDT + QO',
                y: 56.33
            }, {
                name: 'DDT',
                y: 24.03,
                sliced: true,
                selected: true
            }, {
                name: '1 QO',
                y: 10.38
            }, {
                name: '1 QO + 1 BSO',
                y: 4.77
            }, {
                name: '2 QOs',
                y: 0.91
            }, {
                name: 'Flight missed',
                y: 0.2
            }]
        }]
    });
});