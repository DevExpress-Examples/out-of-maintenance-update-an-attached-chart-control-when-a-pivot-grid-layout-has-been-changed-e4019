<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128577958/21.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4019)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# Update an attached chart control when a pivot grid layout has been changed
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4019/)**
<!-- run online end -->


<p>It is possible to update WebChartControl manually by calling the client-side <a href="http://documentation.devexpress.com/#XtraCharts/DevExpressXtraChartsWebScriptsASPxClientWebChartControl_PerformCallbacktopic"><u>ASPxClientWebChartControl.PerformCallback</u></a> method. You can call this method from the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridScriptsASPxClientPivotGrid_AfterCallbacktopic"><u>ASPxClientPivotGrid.AfterCallback</u></a> event handler. Note that if an end-user opens a field filter popup, a callback is also performed to get a list of available items. However, at this moment the pivot grid layout is not changed yet and it is not necessary to update an attached chart control in this case. To update the chart control only when it is necessary handle the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_GridLayouttopic"><u>ASPxPivotGrid.GridLayout</u></a> event and send information about the layout modification to a client pivot grid using the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_JSPropertiestopic"><u>ASPxPivotGrid.JSProperties</u></a> collection.</p><br />


<br/>


