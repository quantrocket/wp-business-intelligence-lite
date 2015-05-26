<?php

/******************************************************************************
	WP Business Intelligence Lite
	Author: WP Business Intelligence
	Website: www.wpbusinessintelligence.com
	Contact: http://www.wpbusinessintelligence.com/contactus/

	This file is part of WP Business Intelligence Lite.

    WP Business Intelligence Lite is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    WP Business Intelligence Lite is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with WP Business Intelligence Lite; if not, write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
	
	You can find a copy of the GPL licence here:
	http://www.gnu.org/licenses/gpl-3.0.html
******************************************************************************/


class nvd3_discreteBarChart
{

    var $dataSeries = NULL;
    var $staggerLabels = "true";
    var $tooltips = "true";
    var $showLabels = "true";
    var $transitionDuration = "500";
    var $x_axis_istime = false;
    var $height = "400px";
    var $width = "500px";
    var $placeholder = NULL;
    var $nvd3Settings = NULL;
    var $xAxisFormat = '.1f';
    var $yAxisFormat = '.1f';
    var $xAxisLabel = '';
    var $yAxisLabel = '';
    var $yAxisRange = '';
    var $timeFormat = "%d/%m/%Y";

    public function __construct($chart)
    {
        $this->nvd3Settings = new nvd3_settings();
        $this->placeholder = new nvd3_placeholder($chart);
        $this->x_axis_istime = $chart->x_axis_istime;
        $this->xAxisFormat = '.'.$chart->x_axis_precision.'f';
        $this->yAxisFormat = '.'.$chart->y_axis_precision.'f';
        $this->timeFormat = $chart->time_format;
        $this->yAxisRange = $chart->y_axis_range;
        $this->xAxisLabel = $chart->x_axis_label;
        $this->yAxisLabel = $chart->y_axis_label;

        wp_enqueue_script('nvd3-tooltip', $this->nvd3Settings->wpbi_url['nvd3']['tooltip'] );
        wp_enqueue_script('nvd3-utils', $this->nvd3Settings->wpbi_url['nvd3']['utils'] );
        wp_enqueue_script('nvd3-legend', $this->nvd3Settings->wpbi_url['nvd3']['legend'] );
        wp_enqueue_script('nvd3-axis', $this->nvd3Settings->wpbi_url['nvd3']['axis'] );
        wp_enqueue_script('nvd3-discretebar', $this->nvd3Settings->wpbi_url['nvd3']['discretebar'] );
        wp_enqueue_script('nvd3-discretebarchart', $this->nvd3Settings->wpbi_url['nvd3']['discretebarchart'] );
    }

    public function create_dataseries($chart)
    {
        $this->dataSeries = array();

        // For now we support a single series, but this shall become a foreach loop
        // on the number of series (queries?)

        $count = 0;
        foreach ($chart->elements as $key => $value){
            $this->dataSeries[$key] = new nvd3_dataseries($chart, $value, $count);
            $count++;
        }
    }

    public function getCode()
    {
        $forceY = '';

        if($this->yAxisRange != '')
        {
            $range = explode(',', $this->yAxisRange);
            $min = $range[0];
            $max = $range[1];
            $forceY = '.forceY([' . $min . ', ' . $max . ']);';
        }

        if($this->x_axis_istime)
        {
            return "nv.addGraph(function() {
                    var chart = nv.models.discreteBarChart()
                                  .x(function(d) { return d.label })
                                  .y(function(d) { return d.value })
                                  .margin({top: 30, right:20, bottom:85, left:75})
                                  .tooltips( $this->tooltips )
                                  .showValues( $this->showLabels )
                                  .valueFormat(d3.format('$this->yAxisFormat'))" . $forceY . ";

                    chart.yAxis
                        .tickFormat(d3.format('$this->yAxisFormat'));

                    chart.yAxis.axisLabel('" . $this->yAxisLabel . "');

                    chart.xAxis
                          .tickFormat(function(d) {
                            return d3.time.format('" . $this->timeFormat . "')(new Date(parseInt(d)))
                          });

                chart.showXAxis(true);

                    chart.xAxis.rotateLabels(-45);

                    chart.xAxis.axisLabel('" . $this->xAxisLabel . "');

                    d3.select('#".$this->placeholder->name." svg')
                        .datum(nvd3Data_".$this->placeholder->name.")
                        .transition().duration(".$this->transitionDuration.")
                        .call(chart);

                      //nv.utils.windowResize(chart.update);

                    d3.selectAll('.nv-bar').attr('class', '".$this->placeholder->name."Class');

                    return chart;
                });";
        }
        else
        {
            return "nv.addGraph(function() {
                    var chart = nv.models.discreteBarChart()
                                  .x(function(d) { return d.label })
                                  .y(function(d) { return d.value })
                                  .margin({top: 30, right: 20, bottom: 85, left: 75})
                                  .tooltips( $this->tooltips )
                                  .showValues( $this->showLabels )
                                  .valueFormat(d3.format('$this->yAxisFormat'))" . $forceY . ";

                    chart.yAxis
                        .tickFormat(d3.format('$this->yAxisFormat'));

                    chart.xAxis.rotateLabels(-45);

                    chart.showXAxis(true);

                    chart.xAxis.axisLabel('" . $this->xAxisLabel . "');
                    chart.yAxis.axisLabel('" . $this->yAxisLabel . "');


                    d3.select('#".$this->placeholder->name." svg')
                        .datum(nvd3Data_".$this->placeholder->name.")
                        .transition().duration(".$this->transitionDuration.")
                        .call(chart);

                      //nv.utils.windowResize(chart.update);

                    d3.selectAll('.nv-bar').attr('class', '".$this->placeholder->name."Class');

                    return chart;
                });";
        }
    }

    // create the CSS style for the placeholder
    public function setPlaceholderStyle($chart)
    {
        $this->width = $chart->width;
        $this->height = $chart->height;
        $phStyle = array('width : '.$chart->width, 'height : '.$chart->height);

        $this->placeholder->addStyleElement('#'.$this->placeholder->name.' svg', $phStyle);
    }

    // get the HTML for the chart placeholder
    public function getPlaceholder()
    {
        return $this->placeholder->render();
    }

    public function getHtml()
    {
        global $wpbi_url;
        return '<link rel="stylesheet" href="'. $wpbi_url['styles']['url'] . 'style_barchart.css" />';
    }
}
