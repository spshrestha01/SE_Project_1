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
            width: '600',
            height: '400',
            dataFormat: 'json',
            dataSource: {
                "chart": {
                    "caption": "Job Posting Trends",
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
                    "seriesname": "2016/17 Job Posting",
                    "data": [{
                        "value": ${jobPostingHashMap[0].Feb}
                    }, {
                        "value": ${jobPostingHashMap[0].Mar}
                    }, {
                        "value": ${jobPostingHashMap[0].Apr}
                    }, {
                        "value": ${jobPostingHashMap[0].May}
                    }, {
                        "value": ${jobPostingHashMap[0].Jun}
                    }, {
                        "value": ${jobPostingHashMap[0].Jul}
                    }, {
                        "value": ${jobPostingHashMap[0].Aug}
                    }, {
                        "value": ${jobPostingHashMap[0].Sep}
                    }, {
                        "value": ${jobPostingHashMap[0].Oct}
                    }, {
                        "value": ${jobPostingHashMap[0].Nov}
                    }, {
                        "value": ${jobPostingHashMap[0].Dec}
                    }, {
                        "value": ${jobPostingHashMap[1].Jan}
                    }]
                }, {
                    "seriesname": "2017/18 Job Posting",
                    "data": [{
                        "value": ${jobPostingHashMap[1].Feb}
                    }, {
                        "value": ${jobPostingHashMap[1].Mar}
                    }, {
                        "value": ${jobPostingHashMap[1].Apr}
                    }, {
                        "value": ${jobPostingHashMap[1].May}
                    }, {
                        "value": ${jobPostingHashMap[1].Jun}
                    }, {
                        "value": ${jobPostingHashMap[1].Jul}
                    }, {
                        "value": ${jobPostingHashMap[1].Aug}
                    }, {
                        "value": ${jobPostingHashMap[1].Sep}
                    }, {
                        "value": ${jobPostingHashMap[1].Oct}
                    }, {
                        "value": ${jobPostingHashMap[1].Nov}
                    }, {
                        "value": ${jobPostingHashMap[1].Dec}
                    }, {
                        "value": ${jobPostingHashMap[2].Jan}
                    }]
                }]
            }
        })
            .render();
    });
</script>

<%@ include file="Footer.jsp"%>
