
//jQuery.noConflict();
//jQuery(document).ready(function(){
//        jQuery.jqplot.config.enablePlugins = true;
//        var s1 = [212, 316];
//        var ticks = ['8/2025','9/2025'];
//         
//        plot1 = jQuery.jqplot('chart10', [s1], {
//            // Only animate if we're not using excanvas (not in IE 7 or IE 8)..
//            animate: !jQuery.jqplot.use_excanvas,
//            seriesDefaults:{
//                renderer:jQuery.jqplot.BarRenderer,
//                pointLabels: { show: true }
//            },
//            axes: {
//                xaxis: {
//                    renderer: jQuery.jqplot.CategoryAxisRenderer,
//                    ticks: ticks
//                }
//            },
//            highlighter: { show: false }
//        });
//     
//        jQuery('#chart1').bind('jqplotDataClick', 
//            function (ev, seriesIndex, pointIndex, data) {
//                jQuery('#info1').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
//            }
//        );
//    });

//    function gotothis(url) {

//        alert(url);
//        return false;
//    }