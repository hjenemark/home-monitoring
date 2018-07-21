$(function(){
    var y_values = [];
    var x_values = [];
    var switch1 = true;
$.get('has001/values.php', function(data) {
    var obj = JSON.parse(data);
    console.log(obj.length);
    for(var i = 0; i < obj.length; i++)
    {
        y_values.push(Number(obj[i].temperature)/10.0);
        x_values.push(obj[i].timestamp);
    }
    console.log(x_values);
    console.log(y_values);

    $('#chart').highcharts({
        chart: {
            type: 'spline'
        },
        title: {
            text: 'Temperature'
        },
        xAxis: {
            title: {
                text: 'Time'
            },
            labels: {
                rotation: 90
            },
            categories: x_values
        },
        yAxis: {
            title: {
                text: 'Sensor value'
            }
        },
        series: [{
            name: 'Sensor Value',
            data: y_values
        }]
    });
});
});
function timeConverter(UNIX_timestamp){
  var a = new Date(UNIX_timestamp * 1000);
    
  var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
  var year = a.getFullYear();
  var month = months[a.getMonth()];
  var date = a.getDate();
  var hour = a.getHours();
  var min = a.getMinutes() < 10 ? '0' + a.getMinutes() : a.getMinutes();
  var sec = a.getSeconds() < 10 ? '0' + a.getSeconds() : a.getSeconds();
  var time = date + ' ' + month + ' ' + year + ' ' + hour + ':' + min + ':' + sec ;
  return time;
}
