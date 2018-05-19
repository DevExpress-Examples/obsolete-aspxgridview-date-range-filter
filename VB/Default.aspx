<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>ASPxGridView.GridViewDataDateColumn - FilterRow as DateTime range </title>
</head>
<body>
	<script type="text/javascript">
		function OnClickApply(s, e) {
			var value = DateEdit1.GetValue().toLocaleDateString() + ' - ' + DateEdit2.GetValue().toLocaleDateString();
			var filter = '([HireDate] >= #' + DateEdit1.GetText() + '#) AND ([HireDate] <= #' + DateEdit2.GetText() + '#)';
			DropDown.SetValue(value);
			DropDown.HideDropDown();
			Grid.ApplyFilter(filter);
		}
	</script>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxGridView ID="Grid" runat="server" AutoGenerateColumns="False" DataSourceID="Source" ClientInstanceName="Grid">
				<Columns>
					<dx:GridViewDataTextColumn FieldName="EmployeeID" VisibleIndex="0">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataDateColumn FieldName="HireDate" VisibleIndex="1">
						<FilterTemplate>
							<dx:ASPxDropDownEdit runat="server" ID="DropDown" ClientInstanceName="DropDown">
								<DropDownWindowTemplate>
									<dx:ASPxDateEdit ID="DateEdit1" ClientInstanceName="DateEdit1" runat="server">
									</dx:ASPxDateEdit>
									<dx:ASPxDateEdit ID="DateEdit2" ClientInstanceName="DateEdit2" runat="server">
									</dx:ASPxDateEdit>
									<dx:ASPxButton ID="ButtonApply" runat="server" Text="Apply" AutoPostBack="false">
										<ClientSideEvents Click="OnClickApply" />
									</dx:ASPxButton>
								</DropDownWindowTemplate>
							</dx:ASPxDropDownEdit>
						</FilterTemplate>
					</dx:GridViewDataDateColumn>
				</Columns>
				<Settings ShowFilterRow="True" ShowFilterBar="Visible" />
				<SettingsBehavior FilterRowMode="OnClick" />
			</dx:ASPxGridView>
			<asp:SqlDataSource ID="Source" runat="server"
				ConnectionString="<%$ ConnectionStrings:NwindConnectionString %>"
				SelectCommand="SELECT [EmployeeID], [HireDate] FROM [Employees]"></asp:SqlDataSource>
		</div>
	</form>
</body>
</html>