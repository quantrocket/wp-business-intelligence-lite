<script type="text/javascript">
jQuery(document).ready(function() {
        jQuery('#x_hide').hide();
        jQuery('#x_rows').hide();
        jQuery('#y_hide').hide();
        jQuery('#y_rows').hide();
       init_help();

	   //Input control
	   jQuery('#{P_CH_NAME}').alphanumeric({allow:" "});
	   jQuery('#{P_CH_TITLE}').alphanumeric({allow:".,-_;: "});
	   jQuery('#{P_CH_TITLE_SIZE}').numeric();
	   jQuery('#{P_CH_WIDTH}').numeric();
	   jQuery('#{P_CH_HEIGHT}').numeric();
	   jQuery('#{P_CH_X_AXIS_THICK}').numeric();
	   jQuery('#{P_CH_X_GRID_STEP}').numeric();
	   jQuery('#{P_CH_X_LABEL_SIZE}').numeric();
	   jQuery('#{P_CH_X_LABEL_ROTATION}').numeric();
	   jQuery('#{P_CH_X_LEGEND}').alphanumeric({allow:".,-_;: "});
	   jQuery('#{P_CH_X_LEGEND_SIZE}').numeric();
	   jQuery('#{P_CH_Y_AXIS_THICK}').numeric();
	   jQuery('#{P_CH_Y_GRID_STEP}').numeric();
	   jQuery('#{P_CH_Y_LABEL_SIZE}').numeric();
	   jQuery('#{P_CH_Y_LABEL_ROTATION}').numeric();
	   jQuery('#{P_CH_Y_LEGEND}').alphanumeric({allow:".,-_;: "});
	   jQuery('#{P_CH_Y_LEGEND_SIZE}').numeric();
       jQuery('#{P_CH_TX_PRECISION_TF}').numeric();
	   jQuery('#{P_CH_TX_COLUMN_TF}').alphanumeric({allow:" "});
	 });
</script>
<script type="text/javascript">
jQuery(function() {jQuery('#{P_CH_BGCOLOR}').colorPicker();});
jQuery(function() {jQuery('#{P_CH_TITLE_COLOR}').colorPicker();});
jQuery(function() {jQuery('#{P_CH_X_LEGEND_COLOR}').colorPicker();});
jQuery(function() {jQuery('#{P_CH_Y_LEGEND_COLOR}').colorPicker();});
jQuery(function() {jQuery('#{P_CH_X_LABEL_COLOR}').colorPicker();});
jQuery(function() {jQuery('#{P_CH_Y_LABEL_COLOR}').colorPicker();});
jQuery(function() {jQuery('#{P_CH_X_AXIS_COLOR}').colorPicker();});
jQuery(function() {jQuery('#{P_CH_X_GRID_COLOR}').colorPicker();});
jQuery(function() {jQuery('#{P_CH_Y_AXIS_COLOR}').colorPicker();});
jQuery(function() {jQuery('#{P_CH_Y_GRID_COLOR}').colorPicker();});
function init_help() {

    var listchart=document.getElementById("{P_CH_TYPE}_id");
    var selected_chart = listchart.options[listchart.selectedIndex].text;

    switch (selected_chart) {
        case '{CH_EDIT_TYPE_BAR}':
            jQuery("#help_linechart").hide();
            jQuery("#help_cumulinechart").hide();
            jQuery("#help_hbarchart").hide();
            jQuery("#help_multibarchart").hide();
            jQuery("#help_scatterchart").hide();
            jQuery("#help_piechart").hide();
            jQuery("#help_barchart").show();
            jQuery("#help_stackedareachart").hide();
            jQuery("#help_focuslinechart").hide();
            jQuery("#help_lineandbarchart").hide();
            jQuery('#{P_CH_X_PRECISION}').show();
            jQuery('#xPrecisionLabel').show();
            jQuery('#yPrecisionLabel').show();
            jQuery('#{P_CH_Y_PRECISION}').show();
            jQuery('#{P_CH_Y_RANGE}').show();
            jQuery('#{P_CH_Y_LABEL}').show();
            jQuery('#{P_CH_X_LABEL}').show();
            jQuery('#yRangeLabel').show();
            jQuery('#yLabelLabel').show();
            jQuery('#xLabelLabel').show();
            jQuery('#{P_CH_STACKED}').hide();
            jQuery('#stackedLabel').hide();
            jQuery('#{P_CH_Y_CURRENCY}').hide();
            jQuery('#yCurrencyLabel').hide();
            break;
        case '{CH_EDIT_TYPE_BAR_HORIZONTAL}':
            jQuery("#help_linechart").hide();
            jQuery("#help_cumulinechart").hide();
            jQuery("#help_hbarchart").show();
            jQuery("#help_multibarchart").hide();
            jQuery("#help_scatterchart").hide();
            jQuery("#help_piechart").hide();
            jQuery("#help_barchart").hide();
            jQuery("#help_stackedareachart").hide();
            jQuery("#help_focuslinechart").hide();
            jQuery("#help_lineandbarchart").hide();
            jQuery('#{P_CH_X_PRECISION}').show();
            jQuery('#{P_CH_Y_PRECISION}').show();
            jQuery('#{P_CH_Y_RANGE}').show();
            jQuery('#{P_CH_Y_LABEL}').show();
            jQuery('#{P_CH_X_LABEL}').show();
            jQuery('#yLabelLabel').show();
            jQuery('#xLabelLabel').show();
            jQuery('#yRangeLabel').show();
            jQuery('#xPrecisionLabel').show();
            jQuery('#yPrecisionLabel').show();
            jQuery('#{P_CH_STACKED}').show();
            jQuery('#stackedLabel').show();
            jQuery('#{P_CH_Y_CURRENCY}').hide();
            jQuery('#yCurrencyLabel').hide();
            break;
        case '{CH_EDIT_TYPE_BAR_STACKED}':
            jQuery("#help_linechart").hide();
            jQuery("#help_cumulinechart").hide();
            jQuery("#help_hbarchart").hide();
            jQuery("#help_multibarchart").show();
            jQuery("#help_scatterchart").hide();
            jQuery("#help_piechart").hide();
            jQuery("#help_barchart").hide();
            jQuery("#help_stackedareachart").hide();
            jQuery("#help_focuslinechart").hide();
            jQuery("#help_lineandbarchart").hide();
            jQuery('#{P_CH_X_PRECISION}').show();
            jQuery('#{P_CH_Y_PRECISION}').show();
            jQuery('#{P_CH_Y_RANGE}').show();
            jQuery('#{P_CH_Y_LABEL}').show();
            jQuery('#{P_CH_X_LABEL}').show();
            jQuery('#yLabelLabel').show();
            jQuery('#xLabelLabel').show();
            jQuery('#xPrecisionLabel').show();
            jQuery('#yPrecisionLabel').show();
            jQuery('#yRangeLabel').show();
            jQuery('#{P_CH_STACKED}').show();
            jQuery('#stackedLabel').show();
            jQuery('#{P_CH_Y_CURRENCY}').hide();
            jQuery('#yCurrencyLabel').hide();
            break;
        case '{CH_EDIT_TYPE_LINE}':
            jQuery("#help_linechart").show();
            jQuery("#help_cumulinechart").hide();
            jQuery("#help_hbarchart").hide();
            jQuery("#help_multibarchart").hide();
            jQuery("#help_scatterchart").hide();
            jQuery("#help_piechart").hide();
            jQuery("#help_barchart").hide();
            jQuery("#help_stackedareachart").hide();
            jQuery("#help_focuslinechart").hide();
            jQuery("#help_lineandbarchart").hide();
            jQuery('#{P_CH_X_PRECISION}').show();
            jQuery('#{P_CH_Y_PRECISION}').show();
            jQuery('#{P_CH_Y_RANGE}').show();
            jQuery('#yRangeLabel').show();
            jQuery('#{P_CH_Y_LABEL}').show();
            jQuery('#{P_CH_X_LABEL}').show();
            jQuery('#yLabelLabel').show();
            jQuery('#xLabelLabel').show();
            jQuery('#xPrecisionLabel').show();
            jQuery('#yPrecisionLabel').show();
            jQuery('#{P_CH_STACKED}').hide();
            jQuery('#stackedLabel').hide();
            jQuery('#{P_CH_Y_CURRENCY}').hide();
            jQuery('#yCurrencyLabel').hide();
            break;
        case '{CH_EDIT_TYPE_PIE}':
        case '{CH_EDIT_TYPE_DONUT}':
            jQuery("#help_linechart").hide();
            jQuery("#help_cumulinechart").hide();
            jQuery("#help_hbarchart").hide();
            jQuery("#help_multibarchart").hide();
            jQuery("#help_scatterchart").hide();
            jQuery("#help_piechart").show();
            jQuery("#help_barchart").hide();
            jQuery("#help_stackedareachart").hide();
            jQuery("#help_focuslinechart").hide();
            jQuery("#help_lineandbarchart").hide();
            jQuery('#{P_CH_X_PRECISION}').hide();
            jQuery('#{P_CH_Y_PRECISION}').hide();
            jQuery('#{P_CH_Y_RANGE}').hide();
            jQuery('#yRangeLabel').hide();
            jQuery('#{P_CH_Y_LABEL}').hide();
            jQuery('#{P_CH_X_LABEL}').hide();
            jQuery('#yLabelLabel').hide();
            jQuery('#xLabelLabel').hide();
            jQuery('#xPrecisionLabel').hide();
            jQuery('#yPrecisionLabel').hide();
            jQuery('#{P_CH_STACKED}').hide();
            jQuery('#stackedLabel').hide();
            jQuery('#{P_CH_Y_CURRENCY}').hide();
            jQuery('#yCurrencyLabel').hide();
            break;
        case '{CH_EDIT_TYPE_SCATTER}':
            jQuery("#help_linechart").hide();
            jQuery("#help_cumulinechart").hide();
            jQuery("#help_hbarchart").hide();
            jQuery("#help_multibarchart").hide();
            jQuery("#help_scatterchart").show();
            jQuery("#help_piechart").hide();
            jQuery("#help_barchart").hide();
            jQuery("#help_stackedareachart").hide();
            jQuery("#help_focuslinechart").hide();
            jQuery("#help_lineandbarchart").hide();
            jQuery('#{P_CH_X_PRECISION}').show();
            jQuery('#{P_CH_Y_PRECISION}').show();
            jQuery('#{P_CH_Y_RANGE}').hide();
            jQuery('#yRangeLabel').hide();
            jQuery('#{P_CH_Y_LABEL}').hide();
            jQuery('#{P_CH_X_LABEL}').hide();
            jQuery('#yLabelLabel').hide();
            jQuery('#xLabelLabel').hide();
            jQuery('#xPrecisionLabel').show();
            jQuery('#yPrecisionLabel').show();
            jQuery('#{P_CH_STACKED}').hide();
            jQuery('#stackedLabel').hide();
            jQuery('#{P_CH_Y_CURRENCY}').hide();
            jQuery('#yCurrencyLabel').hide();
            break;
        case '{CH_EDIT_TYPE_CUMULATIVE_LINE}':
            jQuery("#help_linechart").hide();
            jQuery("#help_cumulinechart").show();
            jQuery("#help_hbarchart").hide();
            jQuery("#help_multibarchart").hide();
            jQuery("#help_scatterchart").hide();
            jQuery("#help_piechart").hide();
            jQuery("#help_barchart").hide();
            jQuery("#help_stackedareachart").hide();
            jQuery("#help_focuslinechart").hide();
            jQuery("#help_lineandbarchart").hide();
            jQuery('#{P_CH_X_PRECISION}').show();
            jQuery('#{P_CH_Y_PRECISION}').show();
            jQuery('#{P_CH_Y_RANGE}').hide();
            jQuery('#yRangeLabel').hide();
            jQuery('#{P_CH_Y_LABEL}').show();
            jQuery('#{P_CH_X_LABEL}').show();
            jQuery('#yLabelLabel').show();
            jQuery('#xLabelLabel').show();
            jQuery('#xPrecisionLabel').show();
            jQuery('#yPrecisionLabel').show();
            jQuery('#{P_CH_STACKED}').hide();
            jQuery('#stackedLabel').hide();
            jQuery('#{P_CH_Y_CURRENCY}').hide();
            jQuery('#yCurrencyLabel').hide();
            break;
        case '{CH_EDIT_TYPE_STACKED_AREA}':
            jQuery("#help_linechart").hide();
            jQuery("#help_cumulinechart").hide();
            jQuery("#help_hbarchart").hide();
            jQuery("#help_multibarchart").hide();
            jQuery("#help_scatterchart").hide();
            jQuery("#help_piechart").hide();
            jQuery("#help_barchart").hide();
            jQuery("#help_stackedareachart").show();
            jQuery("#help_focuslinechart").hide();
            jQuery("#help_lineandbarchart").hide();
            jQuery('#{P_CH_X_PRECISION}').show();
            jQuery('#{P_CH_Y_PRECISION}').show();
            jQuery('#{P_CH_Y_RANGE}').show();
            jQuery('#yRangeLabel').show();
            jQuery('#{P_CH_Y_LABEL}').show();
            jQuery('#{P_CH_X_LABEL}').show();
            jQuery('#yLabelLabel').show();
            jQuery('#xLabelLabel').show();
            jQuery('#xPrecisionLabel').show();
            jQuery('#yPrecisionLabel').show();
            jQuery('#{P_CH_STACKED}').hide();
            jQuery('#stackedLabel').hide();
            jQuery('#{P_CH_Y_CURRENCY}').hide();
            jQuery('#yCurrencyLabel').hide();
            break;
        case '{CH_EDIT_TYPE_MULTI_LINE_FOCUS}':
            jQuery("#help_linechart").hide();
            jQuery("#help_cumulinechart").hide();
            jQuery("#help_hbarchart").hide();
            jQuery("#help_multibarchart").hide();
            jQuery("#help_scatterchart").hide();
            jQuery("#help_piechart").hide();
            jQuery("#help_barchart").hide();
            jQuery("#help_stackedareachart").hide();
            jQuery("#help_focuslinechart").show();
            jQuery("#help_lineandbarchart").hide();
            jQuery('#{P_CH_X_PRECISION}').show();
            jQuery('#{P_CH_Y_PRECISION}').show();
            jQuery('#{P_CH_Y_RANGE}').show();
            jQuery('#{P_CH_Y_LABEL}').show();
            jQuery('#{P_CH_X_LABEL}').show();
            jQuery('#yLabelLabel').show();
            jQuery('#xLabelLabel').show();
            jQuery('#yRangeLabel').show();
            jQuery('#xPrecisionLabel').show();
            jQuery('#yPrecisionLabel').show();
            jQuery('#{P_CH_STACKED}').hide();
            jQuery('#stackedLabel').hide();
            jQuery('#{P_CH_Y_CURRENCY}').hide();
            jQuery('#yCurrencyLabel').hide();
            break;
        case '{CH_EDIT_TYPE_LINE_AND_BAR}':
            jQuery("#help_linechart").hide();
            jQuery("#help_cumulinechart").hide();
            jQuery("#help_hbarchart").hide();
            jQuery("#help_multibarchart").hide();
            jQuery("#help_scatterchart").hide();
            jQuery("#help_piechart").hide();
            jQuery("#help_barchart").hide();
            jQuery("#help_stackedareachart").hide();
            jQuery("#help_focuslinechart").hide();
            jQuery("#help_lineandbarchart").show();
            jQuery('#{P_CH_X_PRECISION}').show();
            jQuery('#{P_CH_Y_PRECISION}').show();
            jQuery('#{P_CH_Y_RANGE}').hide();
            jQuery('#yRangeLabel').hide();
            jQuery('#{P_CH_Y_LABEL}').hide();
            jQuery('#{P_CH_X_LABEL}').hide();
            jQuery('#yLabelLabel').hide();
            jQuery('#xLabelLabel').hide();
            jQuery('#xPrecisionLabel').show();
            jQuery('#yPrecisionLabel').show();
            jQuery('#{P_CH_STACKED}').hide();
            jQuery('#stackedLabel').hide();
            jQuery('#{P_CH_Y_CURRENCY}').show();
            jQuery('#yCurrencyLabel').show();
            break;
        default:
            jQuery("#help_linechart").hide();
            jQuery("#help_cumulinechart").hide();
            jQuery("#help_hbarchart").hide();
            jQuery("#help_multibarchart").hide();
            jQuery("#help_scatterchart").hide();
            jQuery("#help_piechart").hide();
            jQuery("#help_barchart").show();
            jQuery("#help_lineandbarchart").hide();
            jQuery("#help_stackedareachart").hide();
            jQuery("#help_focuslinechart").hide();
            jQuery('#{P_CH_X_PRECISION}').show();
            jQuery('#{P_CH_Y_PRECISION}').show();
            jQuery('#{P_CH_Y_RANGE}').show();
            jQuery('#yRangeLabel').show();
            jQuery('#{P_CH_Y_LABEL}').show();
            jQuery('#{P_CH_X_LABEL}').show();
            jQuery('#yLabelLabel').show();
            jQuery('#xLabelLabel').show();
            jQuery('#xPrecisionLabel').show();
            jQuery('#yPrecisionLabel').show();
            jQuery('#{P_CH_STACKED}').hide();
            jQuery('#stackedLabel').hide();
            jQuery('#{P_CH_Y_CURRENCY}').hide();
            jQuery('#yCurrencyLabel').hide();
            break;
    }
};

</script>
<script type="text/javascript">
{CH_EDIT_PICKER_JS}
</script>
<form method="post" id="edit_chart_2" name="edit_chart_2" action="{CH_EDIT_FORM_ACTION}">
	<table class="widefat">
      <tr>
        <td align="left" valign="top"><table class="widefat">
    	<thead>
        	<tr bgcolor="#CCCCCC" valign="top">
              <td colspan="2" align="left" scope="row"><strong>{CH_EDIT_BASIC_SETTINGS}</strong></td>
            </tr>
        </thead>
		<tbody>
        	<tr valign="top">
				<td width="199" align="right" scope="row"><div align="left">{CH_EDIT_NAME}</div></td>
			  <td width="286" align="left" valign="top"><input name="{P_CH_NAME}" type="text" id="{P_CH_NAME}" value="{V_CH_NAME}" maxlength="64"></td>
	        </tr>
            <tr valign="top">
                <td width="199" align="right" scope="row"><div align="left">{CH_EDIT_TITLE}</div></td>
                <td width="286" align="left" valign="top"><input name="{P_CH_TITLE}" type="text" id="{P_CH_TITLE}" value="{V_CH_TITLE}" maxlength="64"></td>
            </tr>
			<tr valign="top">
				<td width="199" align="right" scope="row"><div align="left">{CH_EDIT_TYPE}</div></td>
		  <td align="left" valign="top">
                	<select name="{P_CH_TYPE}" id="{P_CH_TYPE}_id" onchange="init_help()">
						<option value="1" {SELECTED_1}>{CH_EDIT_TYPE_BAR}</option>
                        <option value="14" {SELECTED_14}>{CH_EDIT_TYPE_LINE}</option>
						<option value="16" {SELECTED_16}>{CH_EDIT_TYPE_PIE}</option>
                        <option value="13" {SELECTED_13}>{CH_EDIT_TYPE_DONUT}</option>
					</select>                </td>
	        </tr>
            <tr valign="top">
				<td width="99" align="right" scope="row"><div align="left">{CH_EDIT_WIDTH}</div></td>
			  <td align="left" valign="top"><input name="{P_CH_WIDTH}" type="text" id="{P_CH_WIDTH}" value="{V_CH_WIDTH}" maxlength="11">
			  <input type="checkbox" name="{P_CH_WIDTH_PERCENT}" value="%" {V_CH_WIDTH_CHECKED}>%</td>
	        </tr>
            <tr valign="top">
				<td width="99" align="right" scope="row"><div align="left">{CH_EDIT_HEIGHT}</div></td>
			  <td align="left" valign="top"><input name="{P_CH_HEIGHT}" type="text" id="{P_CH_HEIGHT}" value="{V_CH_HEIGHT}" maxlength="11">
			  <input type="checkbox" name="{P_CH_HEIGHT_PERCENT}" value="%" {V_CH_HEIGHT_CHECKED}>%</td>
	        </tr>
            <tr valign="top">
                <td width="30" align="right" scope="row"><div id="xPrecisionLabel"  align="left">{CH_EDIT_X_PRECISION}</div></td>
                <td align="left" valign="top">
                    <input style="width:30px;" name="{P_CH_X_PRECISION}" type="text" id="{P_CH_X_PRECISION}" value="{V_CH_X_PRECISION}" maxlength="1">
                </td>
            </tr>
            <tr valign="top">
                <td width="30" align="right" scope="row"><div id="yPrecisionLabel"  align="left">{CH_EDIT_Y_PRECISION}</div></td>
                <td align="left" valign="top">
                    <input style="width:30px;" name="{P_CH_Y_PRECISION}" type="text" id="{P_CH_Y_PRECISION}" value="{V_CH_Y_PRECISION}" maxlength="1">

            </tr>
            <tr valign="top">
                <td width="120" align="right" scope="row"><div id="yRangeLabel"  align="left">{CH_EDIT_Y_RANGE}</div></td>
                <td align="left" valign="top">
                    <input style="width:120px;" name="{P_CH_Y_RANGE}" type="text" id="{P_CH_Y_RANGE}" value="{V_CH_Y_RANGE}" maxlength="32">

            </tr>
            <tr valign="top">
                <td width="120" align="right" scope="row"><div id="xLabelLabel"  align="left">{CH_EDIT_X_LABEL}</div></td>
                <td align="left" valign="top">
                    <input style="width:120px;" name="{P_CH_X_LABEL}" type="text" id="{P_CH_X_LABEL}" value="{V_CH_X_LABEL}" maxlength="32">
            </tr>
            <tr valign="top">
                <td width="120" align="right" scope="row"><div id="yLabelLabel"  align="left">{CH_EDIT_Y_LABEL}</div></td>
                <td align="left" valign="top">
                    <input style="width:120px;" name="{P_CH_Y_LABEL}" type="text" id="{P_CH_Y_LABEL}" value="{V_CH_Y_LABEL}" maxlength="32">
            </tr>

            <tr valign="top">
                <td width="199" align="right" scope="row"><div id="timeFormatLabel" align="left">{CH_EDIT_TIME_FORMAT}</div></td>
                <td align="left" valign="top">
                    <input style="width:180px;" name="{P_CH_TIME_FORMAT}" type="text" id="{P_CH_TIME_FORMAT}" value="{V_CH_TIME_FORMAT}" maxlength="32">

            </tr>
            <tr valign="top">
                <td width="30" align="right" scope="row"><div align="left">{CH_EDIT_SNAPSHOT}</div></td>
                <td align="left" valign="top">
                    <input type="checkbox" name="{P_CH_SNAPSHOT}" value="1" {V_CH_SNAPSHOT_CHECKED}></td>
            </tr>
            <tr valign="top">
                <td width="30" align="right" scope="row"><div id="stackedLabel" align="left">{CH_EDIT_STACKED}</div></td>
                <td align="left" valign="top">
                    <input type="checkbox" id="{P_CH_STACKED}" name="{P_CH_STACKED}" value="1" {V_CH_STACKED_CHECKED}></td>
            </tr>

            <tr valign="top">
                <td width="30" align="right" scope="row"><div id="yCurrencyLabel" align="left">{CH_EDIT_Y_CURRENCY}</div></td>
                <td align="left" valign="top">
                    <input style="width:40px;" name="{P_CH_Y_CURRENCY}" type="text" id="{P_CH_Y_CURRENCY}" value="{V_CH_Y_CURRENCY}" maxlength="3">
            </tr>
		</tbody>
	</table>

    </td>
        <td align="left" valign="top" width="550px"><table class="widefat">
          <thead>
            <tr bgcolor="#CCCCCC" valign="top">
              <td align="left" scope="row"><strong>{CH_EDIT_COLUMNS}</strong></td>
              <td align="left" valign="top"><strong>{CH_EDIT_COL_LABEL}</strong></td>
              <td align="left" valign="top"><strong>{CH_EDIT_COL_VALUE}</strong></td>
              <td align="left" valign="top"><strong>{CH_EDIT_COL_COLOR}</strong></td>
              <td align="left" valign="top"><strong>{CH_EDIT_COL_RENAME}</strong></td>
              <td align="left" valign="top"><strong>{CH_EDIT_COL_ISTIME}</strong></td>
            </tr>
          </thead>
          <tbody>
              {CH_EDIT_COLUMNS_OPTIONS}
          </tbody>
        </table></td>
      </tr>
    </table>
	
<p class="submit">
		<input type="hidden" id="{P_CH_ACTION}" name="{P_CH_ACTION}" value="">
        <input type="hidden" id="{P_CH_QY}" name="{P_CH_QY}" value="{V_CH_QY}">
        <input type="hidden" id="{P_CH_ID}" name="{P_CH_ID}" value="{V_CH_ID}">
        <div>
        <div id="savebutton" style="float: left;"><input type="submit" class="button-primary" value="{LBL_BTN_EDIT}" onmousedown="jQuery('input[name={P_CH_ACTION}]').attr('value', '{V_EDIT_ACTION}')"></div>
		<div id="testbutton" style="margin-left: 60px;"><input type="submit" class="button-primary" value="{LBL_BTN_TEST}" onmousedown="jQuery('input[name={P_CH_ACTION}]').attr('value', '{V_TEST_ACTION}')"></div>
        </div>
    {CH_TEST_RESULT}
  </p>
</form>

{CH_EDIT_CHART_TEST}
    