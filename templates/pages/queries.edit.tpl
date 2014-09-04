<script type="text/javascript">
jQuery(document).ready(function() {
	   //Input control
	   jQuery('#{P_QY_NAME}').alphanumeric({allow:" "});
	 });
</script>
<form method="post" id="edit_query" name="edi_query" action="{QY_EDIT_FORM_ACTION}">
	<table>
  		<tbody>
        	<tr>
    			<td align="left" valign="middle">
					<b>{QY_EDIT_CONNECTION} </b>
				</td>
				<td align="left" valign="middle">
					<select name="{P_QY_DB}">
						{QY_EDIT_DB_OPTIONS}
					</select>
				</td>
                <td></td>
  			</tr>
			<tr>
    			<td align="left" valign="middle"><b>{QY_EDIT_NAME}</b></td>
    			<td align="left" valign="middle"><input name="{P_QY_NAME}" type="text" id="{P_QY_NAME}" value="{V_QY_NAME}" maxlength="256"></td>
                <td></td>
  			</tr>
  			<tr>
    			<td align="left" valign="middle"><b>{QY_EDIT_STMT}</b></td>
    			<td align="left" valign="middle"><textarea cols="45" rows="5" name="{P_QY_STMT}">{V_QY_STMT}</textarea></td>
                <td rowspan="2">
                    <p style="font-weight: bold;">You can use these parameters to make your query dependent on runtime WP variables.</p>
                    <ul>
                        <li><span style="font-weight: bold;">&#123;&#123;&#123;user_ID&#125;&#125;&#125;:</span> the current user ID</li>
                        <li><span style="font-weight: bold;">&#123;&#123;&#123;user_login&#125;&#125;&#125;:</span> the current user login</li>
                        <li><span style="font-weight: bold;">&#123;&#123;&#123;user_email&#125;&#125;&#125;:</span> the current user email address</li>
                        <li><span style="font-weight: bold;">&#123;&#123;&#123;page_id&#125;&#125;&#125;:</span> the current page id</li>
                        <li><span style="font-weight: bold;">&#123;&#123;&#123;post_id&#125;&#125;&#125;:</span> the current post id</li>
                        <li><span style="font-weight: bold;">&#123;&#123;&#123;subsite_id&#125;&#125;&#125;:</span> the current site id (for multisite)</li>
                    </ul>

                </td>
  			</tr>
			</tbody>
	</table>
	<p class="submit">
		<input type="hidden" id="{P_QY_ACTION}" name="{P_QY_ACTION}" value="">
        <input type="hidden" id="{P_QY_ID}" name="{P_QY_ID}" value="{V_QY_ID}">
		<input type="submit" class="button-primary" value="{LBL_BTN_SAVE}" onmousedown="jQuery('input[name={P_QY_ACTION}]').attr('value', '{V_EDIT_ACTION}')">
		<input type="submit" class="button-primary" value="{LBL_BTN_TEST}" onmousedown="jQuery('input[name={P_QY_ACTION}]').attr('value', '{V_TEST_ACTION}')">
	</p>
</form>