<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@include file="Header.jsp" %>

<div class = "container">
    <div class="col-md-12 col-sm-12" style="margin:10px;">
        <div id="chart-container"></div>
    </div>
</div>

<script>
    FusionCharts.ready(function() {
        var salesChart = new FusionCharts({
            type: 'MSColumn2D',
            renderAt: 'chart-container',
            width: '800',
            height: '600',
            dataFormat: 'json',
            dataSource: {
                "chart": {
                    "caption": "Jobs that require Onsite and remote work",
                    "subcaption": "2016 - 2018",
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
                    "seriesname": "2016/17 Onsite",
                    "data": [{
                        "value": ${onsiteRemoteHashMap[0].Feb}
                    }, {
                        "value": ${onsiteRemoteHashMap[0].Mar}
                    }, {
                        "value": ${onsiteRemoteHashMap[0].Apr}
                    }, {
                        "value": ${onsiteRemoteHashMap[0].May}
                    }, {
                        "value": ${onsiteRemoteHashMap[0].Jun}
                    }, {
                        "value": ${onsiteRemoteHashMap[0].Jul}
                    }, {
                        "value": ${onsiteRemoteHashMap[0].Aug}
                    }, {
                        "value": ${onsiteRemoteHashMap[0].Sep}
                    }, {
                        "value": ${onsiteRemoteHashMap[0].Oct}
                    }, {
                        "value": ${onsiteRemoteHashMap[0].Nov}
                    }, {
                        "value": ${onsiteRemoteHashMap[0].Dec}
                    }, {
                        "value": ${onsiteRemoteHashMap[2].Jan}
                    }]
                }, {
                    "seriesname": "2017/18 Onsite",
                    "data": [{
                        "value": ${onsiteRemoteHashMap[2].Feb}
                    }, {
                        "value": ${onsiteRemoteHashMap[2].Mar}
                    }, {
                        "value": ${onsiteRemoteHashMap[2].Apr}
                    }, {
                        "value": ${onsiteRemoteHashMap[2].May}
                    }, {
                        "value": ${onsiteRemoteHashMap[2].Jun}
                    }, {
                        "value": ${onsiteRemoteHashMap[2].Jul}
                    }, {
                        "value": ${onsiteRemoteHashMap[2].Aug}
                    }, {
                        "value": ${onsiteRemoteHashMap[2].Sep}
                    }, {
                        "value": ${onsiteRemoteHashMap[2].Oct}
                    }, {
                        "value": ${onsiteRemoteHashMap[2].Nov}
                    }, {
                        "value": ${onsiteRemoteHashMap[2].Dec}
                    }, {
                        "value": ${onsiteRemoteHashMap[4].Jan}
                    }]
                }, {
                    "seriesname": "2016/17 Remote",
                    "data": [{
                        "value": ${onsiteRemoteHashMap[1].Feb}
                    }, {
                        "value": ${onsiteRemoteHashMap[1].Mar}
                    }, {
                        "value": ${onsiteRemoteHashMap[1].Apr}
                    }, {
                        "value": ${onsiteRemoteHashMap[1].May}
                    }, {
                        "value": ${onsiteRemoteHashMap[1].Jun}
                    }, {
                        "value": ${onsiteRemoteHashMap[1].Jul}
                    }, {
                        "value": ${onsiteRemoteHashMap[1].Aug}
                    }, {
                        "value": ${onsiteRemoteHashMap[1].Sep}
                    }, {
                        "value": ${onsiteRemoteHashMap[1].Oct}
                    }, {
                        "value": ${onsiteRemoteHashMap[1].Nov}
                    }, {
                        "value": ${onsiteRemoteHashMap[1].Dec}
                    }, {
                        "value": ${onsiteRemoteHashMap[3].Jan}
                    }]
                },{
                    "seriesname": "2017/18 Remote",
                    "data": [{
                        "value": ${onsiteRemoteHashMap[3].Feb}
                    }, {
                        "value": ${onsiteRemoteHashMap[3].Mar}
                    }, {
                        "value": ${onsiteRemoteHashMap[3].Apr}
                    }, {
                        "value": ${onsiteRemoteHashMap[3].May}
                    }, {
                        "value": ${onsiteRemoteHashMap[3].Jun}
                    }, {
                        "value": ${onsiteRemoteHashMap[3].Jul}
                    }, {
                        "value": ${onsiteRemoteHashMap[3].Aug}
                    }, {
                        "value": ${onsiteRemoteHashMap[3].Sep}
                    }, {
                        "value": ${onsiteRemoteHashMap[3].Oct}
                    }, {
                        "value": ${onsiteRemoteHashMap[3].Nov}
                    }, {
                        "value": ${onsiteRemoteHashMap[3].Dec}
                    }, {
                        "value": ${onsiteRemoteHashMap[5].Jan}
                    }]
                }]
            }
        })
            .render();
    });
</script>

<%@ include file="Footer.jsp"%>
