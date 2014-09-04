function DownloadJSON2CSV(objArray)
{
    var array = typeof objArray != 'object' ? JSON.parse(objArray) : objArray;
    var str = '';

    for (var i = 0; i < array.length; i++) {
        var line = '';
        for (var index in array[i]) {
            if(line != '') line += ','

            line += array[i][index];
        }

        str += line + '\r\n';
    }

    if (navigator.appName != 'Microsoft Internet Explorer')
    {
        //CHrome
       //window.open('data:text/csv;charset=utf-8;base64,' + $.base64Encode(output));
        window.open('data:text/csv;charset=utf-8,' + escape(str));
    }
    else
    {
        var popup = window.open('','csv','');
        popup.document.body.innerHTML = '<pre>' + str + '</pre>';
    }
}

function chartPicture(chartname) {
    svgenie.save( document.getElementById('svg_' + chartname), { name: chartname + ".png" } );
}

function chartPdf(chartname) {

    var source = jQuery('#wpbi-chart-text').text();

    var margins = {
        top: 25,
        bottom: 20,
        left: 20
    };

    var specialElementHandlers = {
        // element with id of "bypass" - jQuery style selector
        '#bypassme': function(element, renderer){
            // true = "handled elsewhere, bypass text extraction"
            return true
        }
    }

    var svg = svgenie.toDataURL( document.getElementById('svg_' + chartname),
        { name: chartname + ".png" },
            function (data, canvas){
                if(canvas.height >= canvas.width){
                    var doc = new jsPDF();
                    var ratio = canvas.width / canvas.height;
                    var width, height;
                    if(canvas.height > 250)
                    {
                        height = 250;
                        width = 180 * ratio;
                        if(width > 180){
                            width = 180;
                            height = 180 / ratio;
                        }
                    }
                    else if(canvas.width > 180){
                        width = 180;
                        height = 180 / ratio;
                    }
                    else{
                        height = canvas.height;
                        width = canvas.width;
                    }

                    doc.addImage(data, 'png', 10, 10, width, height);

                    if(undefined !== source){

                        var lineCount = parseInt(height / 6.75);
                        var lines = doc.splitTextToSize(source, 180);
                        var totalLines = lines.length;
                        var totalPages = parseInt((totalLines + lineCount) / 37) + 1;
                        var offset = 37 - lineCount;
                        doc.text(margins.left, margins.top + height, lines.slice(0, offset));

                        var i = 1;
                        while (i < totalPages)
                        {
                            doc.addPage();
                            doc.text(margins.left, margins.top, lines.slice(offset, offset + 37));
                            offset += 37;
                            i++;
                        }

                        doc.save(chartname + '.pdf');
                    }
                    else
                    {
                        doc.save(chartname + '.pdf');
                    }
                }
                else
                {
                    var doc = new jsPDF("l");
                    var ratio = canvas.height / canvas.width;
                    var width, height;
                    if(canvas.width > 250)
                    {
                        width = 250;
                        height = 250 * ratio;
                        if(height > 180){
                            height = 180;
                            width = 180 / ratio;
                        }
                    }
                    else if(canvas.height > 180){
                        height = 180;
                        width = 180 / ratio;
                    }
                    else{
                        width = canvas.width;
                        height = canvas.height;
                    }

                    doc.addImage(data, 'png', 10, 10, width, height);

                    if(undefined !== source){

                        var lineCount = parseInt(height / 6.75);
                        var lines = doc.splitTextToSize(source, 250);
                        var totalLines = lines.length;
                        var totalPages = parseInt((totalLines + lineCount) / 27) + 1;
                        var offset = 27 - lineCount;
                        doc.text(margins.left, margins.top + height, lines.slice(0, offset));

                        var i = 1;
                        while (i < totalPages)
                        {
                            doc.addPage();
                            doc.text(margins.left, margins.top, lines.slice(offset, offset + 27));
                            offset += 27;
                            i++;
                        }

                        doc.save(chartname + '.pdf');
                    }
                    else
                    {
                        doc.save(chartname + '.pdf');
                    }
                }
            });
}

function exportTableToCSV($table, filename) {

    var columns = $table.dataTable().dataTableSettings[0].aoColumns;
    var headers = '';
    jQuery.each(columns, function(i, v) { headers += v.sTitle + ','; });
    headers = headers.substr(0, headers.length - 1) + '\n';

    var $rows = $table.find('tr:has(td)'),

    // Temporary delimiter characters unlikely to be typed by keyboard
    // This is to avoid accidentally splitting the actual contents
        tmpColDelim = String.fromCharCode(11), // vertical tab character
        tmpRowDelim = String.fromCharCode(0), // null character

    // actual delimiter characters for CSV format
        colDelim = '","',
        rowDelim = '"\r\n"',

    // Grab text from table into CSV formatted string
        csv = '"' + $rows.map(function (i, row) {
            var $row = jQuery(row),
                $cols = $row.find('td');

            return $cols.map(function (j, col) {
                var $col = jQuery(col),
                    text = $col.text();

                return text.replace('"', '""'); // escape double quotes

            }).get().join(tmpColDelim);

        }).get().join(tmpRowDelim)
            .split(tmpRowDelim).join(rowDelim)
            .split(tmpColDelim).join(colDelim) + '"',



        csv = headers + csv;
    // Data URI
        csvData = 'data:application/csv;charset=utf-8,' + encodeURIComponent(csv);

    jQuery(this)
        .attr({
            'download': filename,
            'href': csvData,
            'target': '_blank'
        });
}