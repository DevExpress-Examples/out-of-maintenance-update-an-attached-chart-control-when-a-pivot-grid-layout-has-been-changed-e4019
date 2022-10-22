<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dxwpg" %>
<%@ Register assembly="DevExpress.XtraCharts.v21.2.Web, Version=21.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts.Web" tagprefix="dxchartsui" %>
<%@ Register assembly="DevExpress.XtraCharts.v21.2, Version=21.2.11.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwpg:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" 
            ongridlayout="ASPxPivotGrid1_GridLayout" ClientIDMode="AutoID" IsMaterialDesign="False">
            <Fields>
                <dxwpg:PivotGridField ID="fieldName" SortOrder="Descending"   Area="RowArea" AreaIndex="0">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="Name" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldValue" Area="DataArea" AreaIndex="0">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="Value" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
                <dxwpg:PivotGridField ID="fieldDate" Area="ColumnArea" AreaIndex="0" 
                    FieldName="Date" UnboundFieldName="fieldDate">
                    <DataBindingSerializable>
                        <dxwpg:DataSourceColumnBinding ColumnName="Date" GroupInterval="Date" />
                    </DataBindingSerializable>
                </dxwpg:PivotGridField>
            </Fields>
            <ClientSideEvents AfterCallback="function(s, e) {
                if( s.cpLayout )
	                ChartControl.PerformCallback();
}" />
            <OptionsChartDataSource FieldValuesProvideMode="DisplayText" 
                ProvideRowGrandTotals="False" ProvideDataByColumns="false" 
                ProvideColumnGrandTotals="False"  />
            <OptionsPager RowsPerPage="8" ShowSeparators="True">
            </OptionsPager>
            <OptionsData DataProcessingEngine="Optimized" />
        </dxwpg:ASPxPivotGrid>
        <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" 
            DataSourceID="ASPxPivotGrid1" Height="300px" Width="600px" 
            SeriesDataMember="Series" ClientInstanceName="ChartControl" CrosshairEnabled="True">
            <diagramserializable>
                <cc1:XYDiagram3D RotationMatrixSerializable="0.766044443118978;-0.219846310392954;0.604022773555054;0;0;0.939692620785908;0.342020143325669;0;-0.642787609686539;-0.262002630229385;0.719846310392954;0;0;0;0;1">
                    <axisx>
                        <range sidemarginsenabled="True" />
                    </axisx>
                    <axisy>
                        <range sidemarginsenabled="True" />
                    </axisy>
                </cc1:XYDiagram3D>
            </diagramserializable>
<SeriesTemplate argumentdatamember="Arguments" valuedatamembersserializable="Values" ArgumentScaleType="Qualitative"   >
<ViewSerializable>

<cc1:SplineArea3DSeriesView Transparency="0"></cc1:SplineArea3DSeriesView></ViewSerializable>

<LabelSerializable>

<cc1:Area3DSeriesLabel LineVisible="True" ResolveOverlappingMode="Default" 
        Visible="True"><fillstyle><optionsserializable><cc1:SolidFillOptions /></optionsserializable></fillstyle><pointoptionsserializable><cc1:PointOptions></cc1:PointOptions></pointoptionsserializable></cc1:Area3DSeriesLabel></LabelSerializable>

<PointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized"></cc1:PointOptions>
</PointOptionsSerializable>

<LegendPointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized"></cc1:PointOptions>
</LegendPointOptionsSerializable>
</SeriesTemplate>

<Legend MaxHorizontalPercentage="30"></Legend>

<FillStyle >
<OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized"></cc1:SolidFillOptions>
</OptionsSerializable>
</FillStyle>
        </dxchartsui:WebChartControl>
    </div>
    </form>
</body>
</html>
