<script type="text/javascript" charset="utf-8">
    var oTable_{TABLE_ID};
    jQuery(document).ready(function() {
        oTable_{TABLE_ID} = jQuery('#{TABLE_ID}').dataTable( {
            "bPaginate": true,
            "bLengthChange": true,
            "bFilter": true,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": true
        }).css('width', '100%');

        jQuery("#download_{TABLE_ID}").on('click', function (event) {
            // CSV
            exportTableToCSV.apply(this, [jQuery('#{TABLE_ID}'), '{TABLE_ID}.csv']);

            // IF CSV, don't do event.preventDefault() or return false
            // We actually need this to be a typical hyperlink
        });

    } );
</script>
<table class="#" id="#" border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse; border-color:transparent; background-color:transparent; height:0%; border:0px;">
    <tr>
		<td>
			{TABLE_TITLE}
		</td>
	</tr>
	<tr>
		<td>
			{TABLE_PAGINATION}
		</td>
	</tr>
	<tr>
		<td>
			<table class="{TABLE_CLASS}" id="{TABLE_ID}">
				<colgroup>
		    		<col >
					<col class="emphasis">
				</colgroup>
				<thead>
					<tr>
						{TABLE_HEADER}			
			        </tr>
				</thead>
				<tfoot>
					<tr>
						{TABLE_FOOTER}			
			        </tr>
				</tfoot>
				<tbody>
			      	{TABLE_BODY}
				</tbody>
			</table>
		</td>
	</tr>
    <!-- Pagination on footer -->
    <tr>
		<td>
			{TABLE_PAGINATION}
		</td>
	</tr> 
</table>
<div>{TABLE_DOWNLOAD}</div>