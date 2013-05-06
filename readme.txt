=== WP Business Intelligence Lite ===
Contributors: calberti
Donate link: http://www.wpbusinessintelligence.com/contact-us/
Tags: charts, tables, d3, analytics, business intelligence, bi, reporting
Requires at least: 3.0.1
Tested up to: 3.5.1
Stable tag: 1.0
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Embed dynamic web charts and tables in your site! Connect to your live WordPress instance DB to retrieve data in real-time!

== Description ==
Adding charts and tables to your web site has never been that easy. WP Business Intelligence Lite is a WordPress plugin that transforms your WordPress platform in a reporting tool with charts and tables. Charts are powered by [D3](http://d3js.org), a powerful JavaScript library for manipulating documents based on data.
The admin interface lets you create SQL queries to retrieve data from the DB. Once you have created at least one query that correctly retrieves data from your DB, you can define the type of chart (bar, (multi)line, pie) or table to be used to display them. A simple shortcode embeds the chart or table in any post or page. Each page refresh retrieves the data from the DB so that the information in the chart or table is always up-to-date.

WARNING: this plugin is the WP Business Intelligence core. In order to get full advantages from WP Business Intelligence, you can get WP Business Intelligence Pro or Enterprise together with the TinyMCE editor's extensions from the [WP Business Intelligence web site](http://www.wpbusinessintelligence.com)

Useful information can be found on the [WP Business Intelligence Support Portal](http://www.wpbusinessintelligence.com/support)

[WP Business Intelligence Showcase](http://www.wpbusinessintelligence.com/showcase)

WP Business Intelligence uses NVD3 charts; in order to know more about NVD3 please visit [the project's page](http://nvd3.org/)

Please take one minute to [send us a feedback](http://www.wpbusinessintelligence.com/contact-us/)

== Installation ==

1. Upload the uncompressed folder `wp-business-intelligence-lite` to the `/wp-content/plugins/` directory
2. Activate the plugin through the 'Plugins' menu in WordPress

OR

1. Upload the wp-business-intelligence-lite.zip file via the 'Plugins->Add New' page of your WordPress dashboard
2. Activate the plugin through the 'Plugins' menu in WordPress

A detailed installation guide is available on the [WP Business Intelligence Support Portal](http://www.wpbusinessintelligence.com/support/wp-business-intelligence-faq/)

== Changelog ==

= 1.0 =
* First beta release

== Frequently Asked Questions == 

In order to get a full overview about WP Business Intelligence, please visit [the official documentation page](http://www.wpbusinessintelligence.com/support/wp-business-intelligence-faq/)

### How do I create a new chart? ###
The steps required to create a new chart are:
1. create the SQL query that retrieves the data in the desired format as a table
2. select the chart type that better fits your data
3. define chart parameters such as: axis precision, labels names, chart name, colors and save it
4. insert the chart in your post/page with the following shortcode:

` [wpbusinessintelligence id="11" type="chart" iframe="n" ]Any text (chart name?)[/wpbusinessintelligence] `

### How does the chart retrieves data? ###
Data are retrieved at each page refresh with a SQL query on your live DB. So they are always up-to-date!

### How do they work? ###
The charts are powered by [D3](http://d3js.org), a powerful JavaScript library for manipulating documents based on data.
We are trying to wrap as many D3 charts as possible in WP Business intelligence. [Have a look here for more info!](http://www.wpbusinessintelligence.com)


== Upgrade Notice == 

-

== Screenshots ==
1. [Create and test a query (click to enlarge)](http://www.wpbusinessintelligence.com/wp-content/uploads/assets/screenshot-1.png)
2. [Create and test a table view (click to enlarge)](http://www.wpbusinessintelligence.com/wp-content/uploads/assets/screenshot-2.png)
3. [Create and test a chart view (click to enlarge)](http://www.wpbusinessintelligence.com/wp-content/uploads/assets/screenshot-3.png)
4. [A sample dashboard (click to enlarge)](http://www.wpbusinessintelligence.com/wp-content/uploads/assets/screenshot-4.png)
5. [Insert a chart or table in a page/post (click to enlarge)](http://www.wpbusinessintelligence.com/wp-content/uploads/assets/screenshot-5.png)

