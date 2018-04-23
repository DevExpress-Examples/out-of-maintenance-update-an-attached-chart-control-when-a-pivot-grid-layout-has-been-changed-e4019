Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxPivotGrid

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Private data As DataTable
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		ASPxPivotGrid1.DataSource = CreateTable()
		ASPxPivotGrid1.JSProperties.Add("cpLayout", False)

	End Sub
	Private Function CreateTable() As DataTable
		data = New DataTable()
		data.Columns.Add("Name", GetType(String))
		data.Columns.Add("Date", GetType(DateTime))
		data.Columns.Add("Value", GetType(Integer))

		data.Rows.Add(New Object() { "Aaa", DateTime.Today, 7 })
		data.Rows.Add(New Object() { "Aaa", DateTime.Today.AddDays(1), 4 })
		data.Rows.Add(New Object() { "Bbb", DateTime.Today, 12 })
		data.Rows.Add(New Object() { "Bbb", DateTime.Today.AddDays(1), 14 })
		data.Rows.Add(New Object() { "Ccc", DateTime.Today, 11 })
		data.Rows.Add(New Object() { "Ccc", DateTime.Today.AddDays(1), 10 })

		data.Rows.Add(New Object() { "Aaa", DateTime.Today.AddDays(2), 4 })
		data.Rows.Add(New Object() { "Aaa", DateTime.Today.AddDays(3), 2 })
		data.Rows.Add(New Object() { "Bbb", DateTime.Today.AddDays(2), 3 })
		data.Rows.Add(New Object() { "Bbb", DateTime.Today.AddDays(3), 1 })
		data.Rows.Add(New Object() { "Ccc", DateTime.Today.AddDays(2), 8 })
		data.Rows.Add(New Object() { "Ccc", DateTime.Today.AddDays(3), 22 })


		Return data
	End Function
	Protected Sub ASPxPivotGrid1_GridLayout(ByVal sender As Object, ByVal e As EventArgs)
		Dim pivot As ASPxPivotGrid = CType(sender, ASPxPivotGrid)
		pivot.JSProperties("cpLayout") = True
	End Sub
End Class
