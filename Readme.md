<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/134059631/14.1.6%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T151313)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# OBSOLETE - ASPxGridView - How to customize RowFilter in DataDateColumn and provide two ASPxDateEdit controls that allow setting a date range as a filter expression
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t151313)**
<!-- run online end -->


<p><strong>UPDATED:</strong><br><br>Starting with version v2015 vol 2 (v15.2), this functionality is available out of the box. Simply set the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebGridViewDataColumnHeaderFilterSettings_Modetopic">GridViewDataColumn.SettingsHeaderFilter.Mode</a> property to <strong>DateRangePicker</strong> to activate it. Please refer to the <a href="https://community.devexpress.com/blogs/aspnet/archive/2015/11/10/asp-net-grid-view-data-range-filter-adaptivity-and-more-coming-soon-in-v15-2.aspx">ASP.NET Grid View - Data Range Filter, Adaptivity and More (Coming soon in v15.2)</a> blog post and the <a href="http://demos.devexpress.com/ASPxGridViewDemos/Filtering/DateRangeHeaderFilter.aspx">Date Range Header Filter</a> demo for more information.<br>If you have version v15.2+ available, consider using the built-in functionality instead of the approach detailed below.</p>
<p><br><strong>For Older Versions:</strong></p>
<p>To achieve this goal, use <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewColumn_FilterTemplatetopic">GridViewColumn.FilterTemplate</a>. Place two <a href="https://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxEditorsASPxDateEdittopic">ASPxDateEdit</a> controls and the <strong>"Apply" </strong>button inside the template. In the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientButton_Clicktopic">ASPxClientButton.Click</a> event handler, create a filter expression and apply it to the grid via the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridView_ApplyFiltertopic">ASPxClientGridView.ApplyFilter</a> method. See the example for more details. </p>

<br/>


