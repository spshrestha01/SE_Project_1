<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<%@include file="Header.jsp" %>

<div class = "container">
    <div class="col-md-12 col-sm-12" style="margin:10px;">
        <div id="chart-container"></div>
    </div>
    <div class="col-md-12 col-sm-12" style="margin:10px;">
        <div id="jobs-17-18"></div>
    </div>
</div>



<script>
    FusionCharts.ready(function() {
        var salesChart = new FusionCharts({
            type: 'msline',
            renderAt: 'chart-container',
            width: '800',
            height: '400',
            dataFormat: 'json',
            dataSource: {
                "chart": {
                    "caption": "Top 10 Programming Jobs",
                    "subcaption": "2016/17",
                    "linethickness": "2",
                    "numberPrefix": "",
                    "showvalues": "0",
                    "formatnumberscale": "1",
                    "labeldisplay": "ROTATE",
                    "slantlabels": "1",
                    "divLineAlpha": "40",
                    "anchoralpha": "0",
                    "animation": "1",
                    "legendborderalpha": "20",
                    "drawCrossLine": "1",
                    "crossLineColor": "#0d0d0d",
                    "crossLineAlpha": "100",
                    "tooltipGrayOutColor": "#80bfff",
                    "theme": "fint"
                },
                "categories": [{
                    "category": [{
                        "label": "Feb"
                    }, {
                        "label": "Mar"
                    }, {
                        "label": "Apr"
                    }, {
                        "label": "May"
                    }, {
                        "label": "Jun"
                    }, {
                        "label": "Jul"
                    }, {
                        "label": "Aug"
                    }, {
                        "label": "Sep"
                    }, {
                        "label": "Oct"
                    }, {
                        "label": "Nov"
                    }, {
                        "label": "Dec"
                    }, {
                        "label": "Jan"
                    }]
                }],
                "dataset": [{
                    "seriesname": "Python",
                    "data": [{
                        "value": ${commonProgHashMap[0].Feb}
                    }, {
                        "value": ${commonProgHashMap[0].Mar}
                    }, {
                        "value": ${commonProgHashMap[0].Apr}
                    }, {
                        "value": ${commonProgHashMap[0].May}
                    }, {
                        "value": ${commonProgHashMap[0].Jun}
                    }, {
                        "value": ${commonProgHashMap[0].Jul}
                    }, {
                        "value": ${commonProgHashMap[0].Aug}
                    }, {
                        "value": ${commonProgHashMap[0].Sep}
                    }, {
                        "value": ${commonProgHashMap[0].Oct}
                    }, {
                        "value": ${commonProgHashMap[0].Nov}
                    }, {
                        "value": ${commonProgHashMap[0].Dec}
                    }, {
                        "value": ${commonProgHashMap[10].Jan}
                    }]
                }, {
                    "seriesname": "C ++",
                    "data": [{
                        "value": ${commonProgHashMap[1].Feb}
                    }, {
                        "value": ${commonProgHashMap[1].Mar}
                    }, {
                        "value": ${commonProgHashMap[1].Apr}
                    }, {
                        "value": ${commonProgHashMap[1].May}
                    }, {
                        "value": ${commonProgHashMap[1].Jun}
                    }, {
                        "value": ${commonProgHashMap[1].Jul}
                    }, {
                        "value": ${commonProgHashMap[1].Aug}
                    }, {
                        "value": ${commonProgHashMap[1].Sep}
                    }, {
                        "value": ${commonProgHashMap[1].Oct}
                    }, {
                        "value": ${commonProgHashMap[1].Nov}
                    }, {
                        "value": ${commonProgHashMap[1].Dec}
                    }, {
                        "value": ${commonProgHashMap[11].Jan}
                    }]
                }, {
                    "seriesname": "Java",
                    "data": [{
                        "value": ${commonProgHashMap[2].Feb}
                    }, {
                        "value": ${commonProgHashMap[2].Mar}
                    }, {
                        "value": ${commonProgHashMap[2].Apr}
                    }, {
                        "value": ${commonProgHashMap[2].May}
                    }, {
                        "value": ${commonProgHashMap[2].Jun}
                    }, {
                        "value": ${commonProgHashMap[2].Jul}
                    }, {
                        "value": ${commonProgHashMap[2].Aug}
                    }, {
                        "value": ${commonProgHashMap[2].Sep}
                    }, {
                        "value": ${commonProgHashMap[2].Oct}
                    }, {
                        "value": ${commonProgHashMap[2].Nov}
                    }, {
                        "value": ${commonProgHashMap[2].Dec}
                    }, {
                        "value": ${commonProgHashMap[12].Jan}
                    }]
                },{
                    "seriesname": "C#",
                    "data": [{
                        "value": ${commonProgHashMap[3].Feb}
                    }, {
                        "value": ${commonProgHashMap[3].Mar}
                    }, {
                        "value": ${commonProgHashMap[3].Apr}
                    }, {
                        "value": ${commonProgHashMap[3].May}
                    }, {
                        "value": ${commonProgHashMap[3].Jun}
                    }, {
                        "value": ${commonProgHashMap[3].Jul}
                    }, {
                        "value": ${commonProgHashMap[3].Aug}
                    }, {
                        "value": ${commonProgHashMap[3].Sep}
                    }, {
                        "value": ${commonProgHashMap[3].Oct}
                    }, {
                        "value": ${commonProgHashMap[3].Nov}
                    }, {
                        "value": ${commonProgHashMap[3].Dec}
                    }, {
                        "value": ${commonProgHashMap[13].Jan}
                    }]
                },{
                    "seriesname": "PHP",
                    "data": [{
                        "value": ${commonProgHashMap[4].Feb}
                    }, {
                        "value": ${commonProgHashMap[4].Mar}
                    }, {
                        "value": ${commonProgHashMap[4].Apr}
                    }, {
                        "value": ${commonProgHashMap[4].May}
                    }, {
                        "value": ${commonProgHashMap[4].Jun}
                    }, {
                        "value": ${commonProgHashMap[4].Jul}
                    }, {
                        "value": ${commonProgHashMap[4].Aug}
                    }, {
                        "value": ${commonProgHashMap[4].Sep}
                    }, {
                        "value": ${commonProgHashMap[4].Oct}
                    }, {
                        "value": ${commonProgHashMap[4].Nov}
                    }, {
                        "value": ${commonProgHashMap[4].Dec}
                    }, {
                        "value": ${commonProgHashMap[14].Jan}
                    }]
                },{
                    "seriesname": "JavaScript",
                    "data": [{
                        "value": ${commonProgHashMap[5].Feb}
                    }, {
                        "value": ${commonProgHashMap[5].Mar}
                    }, {
                        "value": ${commonProgHashMap[5].Apr}
                    }, {
                        "value": ${commonProgHashMap[5].May}
                    }, {
                        "value": ${commonProgHashMap[5].Jun}
                    }, {
                        "value": ${commonProgHashMap[5].Jul}
                    }, {
                        "value": ${commonProgHashMap[5].Aug}
                    }, {
                        "value": ${commonProgHashMap[5].Sep}
                    }, {
                        "value": ${commonProgHashMap[5].Oct}
                    }, {
                        "value": ${commonProgHashMap[5].Nov}
                    }, {
                        "value": ${commonProgHashMap[5].Dec}
                    }, {
                        "value": ${commonProgHashMap[15].Jan}
                    }]
                },{
                    "seriesname": "GO",
                    "data": [{
                        "value": ${commonProgHashMap[6].Feb}
                    }, {
                        "value": ${commonProgHashMap[6].Mar}
                    }, {
                        "value": ${commonProgHashMap[6].Apr}
                    }, {
                        "value": ${commonProgHashMap[6].May}
                    }, {
                        "value": ${commonProgHashMap[6].Jun}
                    }, {
                        "value": ${commonProgHashMap[6].Jul}
                    }, {
                        "value": ${commonProgHashMap[6].Aug}
                    }, {
                        "value": ${commonProgHashMap[6].Sep}
                    }, {
                        "value": ${commonProgHashMap[6].Oct}
                    }, {
                        "value": ${commonProgHashMap[6].Nov}
                    }, {
                        "value": ${commonProgHashMap[6].Dec}
                    }, {
                        "value": ${commonProgHashMap[16].Jan}
                    }]
                },{
                    "seriesname": "Swift",
                    "data": [{
                        "value": ${commonProgHashMap[7].Feb}
                    }, {
                        "value": ${commonProgHashMap[7].Mar}
                    }, {
                        "value": ${commonProgHashMap[7].Apr}
                    }, {
                        "value": ${commonProgHashMap[7].May}
                    }, {
                        "value": ${commonProgHashMap[7].Jun}
                    }, {
                        "value": ${commonProgHashMap[7].Jul}
                    }, {
                        "value": ${commonProgHashMap[7].Aug}
                    }, {
                        "value": ${commonProgHashMap[7].Sep}
                    }, {
                        "value": ${commonProgHashMap[7].Oct}
                    }, {
                        "value": ${commonProgHashMap[7].Nov}
                    }, {
                        "value": ${commonProgHashMap[7].Dec}
                    }, {
                        "value": ${commonProgHashMap[17].Jan}
                    }]
                },{
                    "seriesname": "Ruby",
                    "data": [{
                        "value": ${commonProgHashMap[8].Feb}
                    }, {
                        "value": ${commonProgHashMap[8].Mar}
                    }, {
                        "value": ${commonProgHashMap[8].Apr}
                    }, {
                        "value": ${commonProgHashMap[8].May}
                    }, {
                        "value": ${commonProgHashMap[8].Jun}
                    }, {
                        "value": ${commonProgHashMap[8].Jul}
                    }, {
                        "value": ${commonProgHashMap[8].Aug}
                    }, {
                        "value": ${commonProgHashMap[8].Sep}
                    }, {
                        "value": ${commonProgHashMap[8].Oct}
                    }, {
                        "value": ${commonProgHashMap[8].Nov}
                    }, {
                        "value": ${commonProgHashMap[8].Dec}
                    }, {
                        "value": ${commonProgHashMap[18].Jan}
                    }]
                },{
                    "seriesname": "Arduino",
                    "data": [{
                        "value": ${commonProgHashMap[9].Feb}
                    }, {
                        "value": ${commonProgHashMap[9].Mar}
                    }, {
                        "value": ${commonProgHashMap[9].Apr}
                    }, {
                        "value": ${commonProgHashMap[9].May}
                    }, {
                        "value": ${commonProgHashMap[9].Jun}
                    }, {
                        "value": ${commonProgHashMap[9].Jul}
                    }, {
                        "value": ${commonProgHashMap[9].Aug}
                    }, {
                        "value": ${commonProgHashMap[9].Sep}
                    }, {
                        "value": ${commonProgHashMap[9].Oct}
                    }, {
                        "value": ${commonProgHashMap[9].Nov}
                    }, {
                        "value": ${commonProgHashMap[9].Dec}
                    }, {
                        "value": ${commonProgHashMap[19].Jan}
                    }]
                }]
            }
        })
            .render();
    });
</script>

<script>

    FusionCharts.ready(function() {
        var jobschart = new FusionCharts({
            type: 'msline',
            renderAt: 'jobs-17-18',
            width: '800',
            height: '400',
            dataFormat: 'json',
            dataSource: {
                "chart": {
                    "caption": "Top 10 Programming Jobs",
                    "subcaption": "2017/18",
                    "linethickness": "2",
                    "numberPrefix": "",
                    "showvalues": "0",
                    "formatnumberscale": "1",
                    "labeldisplay": "ROTATE",
                    "slantlabels": "1",
                    "divLineAlpha": "40",
                    "anchoralpha": "0",
                    "animation": "1",
                    "legendborderalpha": "20",
                    "drawCrossLine": "1",
                    "crossLineColor": "#0d0d0d",
                    "crossLineAlpha": "100",
                    "tooltipGrayOutColor": "#80bfff",
                    "theme": "fint"
                },
                "categories": [{
                    "category": [{
                        "label": "Feb"
                    }, {
                        "label": "Mar"
                    }, {
                        "label": "Apr"
                    }, {
                        "label": "May"
                    }, {
                        "label": "Jun"
                    }, {
                        "label": "Jul"
                    }, {
                        "label": "Aug"
                    }, {
                        "label": "Sep"
                    }, {
                        "label": "Oct"
                    }, {
                        "label": "Nov"
                    }, {
                        "label": "Dec"
                    }, {
                        "label": "Jan"
                    }]
                }],
                "dataset": [{
                    "seriesname": "Python",
                    "data": [{
                        "value": ${commonProgHashMap[10].Feb}
                    }, {
                        "value": ${commonProgHashMap[10].Mar}
                    }, {
                        "value": ${commonProgHashMap[10].Apr}
                    }, {
                        "value": ${commonProgHashMap[10].May}
                    }, {
                        "value": ${commonProgHashMap[10].Jun}
                    }, {
                        "value": ${commonProgHashMap[10].Jul}
                    }, {
                        "value": ${commonProgHashMap[10].Aug}
                    }, {
                        "value": ${commonProgHashMap[10].Sep}
                    }, {
                        "value": ${commonProgHashMap[10].Oct}
                    }, {
                        "value": ${commonProgHashMap[10].Nov}
                    }, {
                        "value": ${commonProgHashMap[10].Dec}
                    }, {
                        "value": ${commonProgHashMap[20].Jan}
                    }]
                }, {
                    "seriesname": "C ++",
                    "data": [{
                        "value": ${commonProgHashMap[11].Feb}
                    }, {
                        "value": ${commonProgHashMap[11].Mar}
                    }, {
                        "value": ${commonProgHashMap[11].Apr}
                    }, {
                        "value": ${commonProgHashMap[11].May}
                    }, {
                        "value": ${commonProgHashMap[11].Jun}
                    }, {
                        "value": ${commonProgHashMap[11].Jul}
                    }, {
                        "value": ${commonProgHashMap[11].Aug}
                    }, {
                        "value": ${commonProgHashMap[11].Sep}
                    }, {
                        "value": ${commonProgHashMap[11].Oct}
                    }, {
                        "value": ${commonProgHashMap[11].Nov}
                    }, {
                        "value": ${commonProgHashMap[11].Dec}
                    }, {
                        "value": ${commonProgHashMap[21].Jan}
                    }]
                }, {
                    "seriesname": "Java",
                    "data": [{
                        "value": ${commonProgHashMap[12].Feb}
                    }, {
                        "value": ${commonProgHashMap[12].Mar}
                    }, {
                        "value": ${commonProgHashMap[12].Apr}
                    }, {
                        "value": ${commonProgHashMap[12].May}
                    }, {
                        "value": ${commonProgHashMap[12].Jun}
                    }, {
                        "value": ${commonProgHashMap[12].Jul}
                    }, {
                        "value": ${commonProgHashMap[12].Aug}
                    }, {
                        "value": ${commonProgHashMap[12].Sep}
                    }, {
                        "value": ${commonProgHashMap[12].Oct}
                    }, {
                        "value": ${commonProgHashMap[12].Nov}
                    }, {
                        "value": ${commonProgHashMap[12].Dec}
                    }, {
                        "value": ${commonProgHashMap[22].Jan}
                    }]
                },{
                    "seriesname": "C#",
                    "data": [{
                        "value": ${commonProgHashMap[13].Feb}
                    }, {
                        "value": ${commonProgHashMap[13].Mar}
                    }, {
                        "value": ${commonProgHashMap[13].Apr}
                    }, {
                        "value": ${commonProgHashMap[13].May}
                    }, {
                        "value": ${commonProgHashMap[13].Jun}
                    }, {
                        "value": ${commonProgHashMap[13].Jul}
                    }, {
                        "value": ${commonProgHashMap[13].Aug}
                    }, {
                        "value": ${commonProgHashMap[13].Sep}
                    }, {
                        "value": ${commonProgHashMap[13].Oct}
                    }, {
                        "value": ${commonProgHashMap[13].Nov}
                    }, {
                        "value": ${commonProgHashMap[13].Dec}
                    }, {
                        "value": ${commonProgHashMap[23].Jan}
                    }]
                },{
                    "seriesname": "PHP",
                    "data": [{
                        "value": ${commonProgHashMap[14].Feb}
                    }, {
                        "value": ${commonProgHashMap[14].Mar}
                    }, {
                        "value": ${commonProgHashMap[14].Apr}
                    }, {
                        "value": ${commonProgHashMap[14].May}
                    }, {
                        "value": ${commonProgHashMap[14].Jun}
                    }, {
                        "value": ${commonProgHashMap[14].Jul}
                    }, {
                        "value": ${commonProgHashMap[14].Aug}
                    }, {
                        "value": ${commonProgHashMap[14].Sep}
                    }, {
                        "value": ${commonProgHashMap[14].Oct}
                    }, {
                        "value": ${commonProgHashMap[14].Nov}
                    }, {
                        "value": ${commonProgHashMap[14].Dec}
                    }, {
                        "value": ${commonProgHashMap[24].Jan}
                    }]
                },{
                    "seriesname": "JavaScript",
                    "data": [{
                        "value": ${commonProgHashMap[15].Feb}
                    }, {
                        "value": ${commonProgHashMap[15].Mar}
                    }, {
                        "value": ${commonProgHashMap[15].Apr}
                    }, {
                        "value": ${commonProgHashMap[15].May}
                    }, {
                        "value": ${commonProgHashMap[15].Jun}
                    }, {
                        "value": ${commonProgHashMap[15].Jul}
                    }, {
                        "value": ${commonProgHashMap[15].Aug}
                    }, {
                        "value": ${commonProgHashMap[15].Sep}
                    }, {
                        "value": ${commonProgHashMap[15].Oct}
                    }, {
                        "value": ${commonProgHashMap[15].Nov}
                    }, {
                        "value": ${commonProgHashMap[15].Dec}
                    }, {
                        "value": ${commonProgHashMap[25].Jan}
                    }]
                },{
                    "seriesname": "GO",
                    "data": [{
                        "value": ${commonProgHashMap[16].Feb}
                    }, {
                        "value": ${commonProgHashMap[16].Mar}
                    }, {
                        "value": ${commonProgHashMap[16].Apr}
                    }, {
                        "value": ${commonProgHashMap[16].May}
                    }, {
                        "value": ${commonProgHashMap[16].Jun}
                    }, {
                        "value": ${commonProgHashMap[16].Jul}
                    }, {
                        "value": ${commonProgHashMap[16].Aug}
                    }, {
                        "value": ${commonProgHashMap[16].Sep}
                    }, {
                        "value": ${commonProgHashMap[16].Oct}
                    }, {
                        "value": ${commonProgHashMap[16].Nov}
                    }, {
                        "value": ${commonProgHashMap[16].Dec}
                    }, {
                        "value": ${commonProgHashMap[26].Jan}
                    }]
                },{
                    "seriesname": "Swift",
                    "data": [{
                        "value": ${commonProgHashMap[17].Feb}
                    }, {
                        "value": ${commonProgHashMap[17].Mar}
                    }, {
                        "value": ${commonProgHashMap[17].Apr}
                    }, {
                        "value": ${commonProgHashMap[17].May}
                    }, {
                        "value": ${commonProgHashMap[17].Jun}
                    }, {
                        "value": ${commonProgHashMap[17].Jul}
                    }, {
                        "value": ${commonProgHashMap[17].Aug}
                    }, {
                        "value": ${commonProgHashMap[17].Sep}
                    }, {
                        "value": ${commonProgHashMap[17].Oct}
                    }, {
                        "value": ${commonProgHashMap[17].Nov}
                    }, {
                        "value": ${commonProgHashMap[17].Dec}
                    }, {
                        "value": ${commonProgHashMap[27].Jan}
                    }]
                },{
                    "seriesname": "Ruby",
                    "data": [{
                        "value": ${commonProgHashMap[18].Feb}
                    }, {
                        "value": ${commonProgHashMap[18].Mar}
                    }, {
                        "value": ${commonProgHashMap[18].Apr}
                    }, {
                        "value": ${commonProgHashMap[18].May}
                    }, {
                        "value": ${commonProgHashMap[18].Jun}
                    }, {
                        "value": ${commonProgHashMap[18].Jul}
                    }, {
                        "value": ${commonProgHashMap[18].Aug}
                    }, {
                        "value": ${commonProgHashMap[18].Sep}
                    }, {
                        "value": ${commonProgHashMap[18].Oct}
                    }, {
                        "value": ${commonProgHashMap[18].Nov}
                    }, {
                        "value": ${commonProgHashMap[18].Dec}
                    }, {
                        "value": ${commonProgHashMap[28].Jan}
                    }]
                },{
                    "seriesname": "Arduino",
                    "data": [{
                        "value": ${commonProgHashMap[19].Feb}
                    }, {
                        "value": ${commonProgHashMap[19].Mar}
                    }, {
                        "value": ${commonProgHashMap[19].Apr}
                    }, {
                        "value": ${commonProgHashMap[19].May}
                    }, {
                        "value": ${commonProgHashMap[19].Jun}
                    }, {
                        "value": ${commonProgHashMap[19].Jul}
                    }, {
                        "value": ${commonProgHashMap[19].Aug}
                    }, {
                        "value": ${commonProgHashMap[19].Sep}
                    }, {
                        "value": ${commonProgHashMap[19].Oct}
                    }, {
                        "value": ${commonProgHashMap[19].Nov}
                    }, {
                        "value": ${commonProgHashMap[19].Dec}
                    }, {
                        "value": ${commonProgHashMap[29].Jan}
                    }]
                }]
            }
        })
            .render();
    });
</script>

<%@ include file="Footer.jsp"%>
