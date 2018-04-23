using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxPivotGrid;

public partial class _Default : System.Web.UI.Page 
{
    DataTable data;
    protected void Page_Load(object sender, EventArgs e)
    {
        ASPxPivotGrid1.DataSource = CreateTable();
        ASPxPivotGrid1.JSProperties.Add("cpLayout", false);

    }
    private DataTable CreateTable()
    {
        data = new DataTable();
        data.Columns.Add("Name", typeof(string));
        data.Columns.Add("Date", typeof(DateTime));
        data.Columns.Add("Value", typeof(int));

        data.Rows.Add(new object[] { "Aaa", DateTime.Today, 7 });
        data.Rows.Add(new object[] { "Aaa", DateTime.Today.AddDays(1), 4 });
        data.Rows.Add(new object[] { "Bbb", DateTime.Today, 12 });
        data.Rows.Add(new object[] { "Bbb", DateTime.Today.AddDays(1), 14 });
        data.Rows.Add(new object[] { "Ccc", DateTime.Today, 11 });
        data.Rows.Add(new object[] { "Ccc", DateTime.Today.AddDays(1), 10 });

        data.Rows.Add(new object[] { "Aaa", DateTime.Today.AddDays(2), 4 });
        data.Rows.Add(new object[] { "Aaa", DateTime.Today.AddDays(3), 2 });
        data.Rows.Add(new object[] { "Bbb", DateTime.Today.AddDays(2), 3 });
        data.Rows.Add(new object[] { "Bbb", DateTime.Today.AddDays(3), 1 });
        data.Rows.Add(new object[] { "Ccc", DateTime.Today.AddDays(2), 8 });
        data.Rows.Add(new object[] { "Ccc", DateTime.Today.AddDays(3), 22 });


        return data;
    }
    protected void ASPxPivotGrid1_GridLayout(object sender, EventArgs e)
    {
        ASPxPivotGrid pivot = (ASPxPivotGrid)sender;
        pivot.JSProperties["cpLayout"] = true;
    }
}
