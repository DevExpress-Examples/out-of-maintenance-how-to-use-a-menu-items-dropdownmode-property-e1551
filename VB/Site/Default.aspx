<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.2" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v9.2" Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dxm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>Untitled Page</title>

	<script type="text/javascript">
		function OnItemClick(s, e) {
			if(item.name == "")
				return;
			CommandLog(e.item.name);
		}

		function CommandLog(name){
			if(name != "") {
				commandMonitor.SetText(commandMonitor.GetText() + "Command executed: " + name + "\n");
				commandMonitor.GetInputElement().scrollTop = 100000;
			}
		}
	</script>

</head>
<body>
	<form id="form1" runat="server">
		<dxm:ASPxMenu ID="ASPxMenu1" ShowPopOutImages="True" runat="server">
			<Items>
				<dxm:MenuItem DropDownMode="True" Text="New" Name="message">
					<Items>
						<dxm:MenuItem Text="Message" Name="message">
						</dxm:MenuItem>
						<dxm:MenuItem BeginGroup="True" Text="Task" Name="task">
						</dxm:MenuItem>
						<dxm:MenuItem Text="Report" Name="report">
						</dxm:MenuItem>

					</Items>
				</dxm:MenuItem>
				<dxm:MenuItem Text="Edit">
					<Items>
						<dxm:MenuItem Text="Undo" Name="undo">
						</dxm:MenuItem>
						<dxm:MenuItem Text="Redo" Name="redo">
						</dxm:MenuItem>
					</Items>
				</dxm:MenuItem>
				<dxm:MenuItem Text="About" Name="about">
				</dxm:MenuItem>
			</Items>
			<ClientSideEvents ItemClick="OnItemClick" />
		</dxm:ASPxMenu>
		<div style="height: 100px;"></div>
		<dxe:ASPxMemo ID="ASPxMemo1" ClientInstanceName="commandMonitor" runat="server" Height="137px" Width="254px" />
	</form>
</body>
</html>