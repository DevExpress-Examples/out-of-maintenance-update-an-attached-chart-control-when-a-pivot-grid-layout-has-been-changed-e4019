# Update an attached chart control when a pivot grid layout has been changed


<p>It is possible to update WebChartControl manually by calling the client-side <a href="http://documentation.devexpress.com/#XtraCharts/DevExpressXtraChartsWebScriptsASPxClientWebChartControl_PerformCallbacktopic"><u>ASPxClientWebChartControl.PerformCallback</u></a> method. You can call this method from the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridScriptsASPxClientPivotGrid_AfterCallbacktopic"><u>ASPxClientPivotGrid.AfterCallback</u></a> event handler. Note that if an end-user opens a field filter popup, a callback is also performed to get a list of available items. However, at this moment the pivot grid layout is not changed yet and it is not necessary to update an attached chart control in this case. To update the chart control only when it is necessary handle the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_GridLayouttopic"><u>ASPxPivotGrid.GridLayout</u></a> event and send information about the layout modification to a client pivot grid using the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPivotGridASPxPivotGrid_JSPropertiestopic"><u>ASPxPivotGrid.JSProperties</u></a> collection.</p><br />


<br/>


