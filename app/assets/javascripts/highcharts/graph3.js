$(function () {
    Highcharts.chart('container3', {
        chart: {
            type: 'column'
        },
        title: {
            text: 'Flights associated with highest seizures'
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            type: 'category',
            labels: {
                rotation: -45,
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Seizures (number)'
            }
        },
        legend: {
            enabled: false
        },
        tooltip: {
            pointFormat: 'Seizures: <b>{point.y:.1f}</b>'
        },
        series: [{
            name: 'Seizure',
            data: [
                ['VA1324', 23.7],
                ['JQ574', 16.1],
                ['JD876', 14.2],
                ['VA289', 14.0],
                ['QF109', 12.5],
                ['VA908', 12.1],
                ['QF435', 11.8],
                ['QF723', 11.7],
                ['VA1314', 11.1],
                ['VA765', 11.1],
                ['QF1011', 10.5],
                ['QF450', 10.4],
                ['VA990', 10.0],
                ['JQ762', 9.3],
                ['JQ222', 9.3],
                ['VA123', 9.0],
                ['JQ899', 8.9],
                ['JQ666', 8.9],
                ['QF999', 8.9],
                ['JQ777', 8.9]
            ],
            dataLabels: {
                enabled: true,
                rotation: -90,
                color: '#FFFFFF',
                align: 'right',
                format: '{point.y:.1f}', // one decimal
                y: 10, // 10 pixels down from the top
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        }]
    });
});