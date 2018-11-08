<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Menu_S32139" %>

<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dxm" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>

    <script type="text/javascript">
        function OnItemClick(s, e) {
            if(e.item.name == "")
                return;
            var command = (e.item.name == "DropDownItem") ? e.item.GetItem(0).name : e.item.name
            CommandLog(command);
        }

        function CommandLog(name){
           commandMonitor.SetText(commandMonitor.GetText() + "Command executed: " + name + "\n");
           commandMonitor.GetInputElement().scrollTop = 100000;
        }
    </script>
    <style type="text/css">
        .info {
            height: 50px;
            width: 250px;
            color: Gray;
            font-family: Arial;
            font-size: 9pt;
            vertical-align: middle; 
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table><tr><td><dxm:ASPxMenu DataSourceID="XmlDataSource1" ID="ASPxMenu1" ShowPopOutImages="True" runat="server">
            <ClientSideEvents ItemClick="OnItemClick" />
        </dxm:ASPxMenu></td>
        <td style="padding-left: 10px">
            <dxe:ASPxButton ID="ASPxButton1" Text="Show popup menu" runat="server" AutoPostBack="False">
                <ClientSideEvents Click="function(s, e){ popupMenu.Show(); }"/>
            </dxe:ASPxButton>
            <dxm:ASPxPopupMenu ID="ASPxPopupMenu1" DataSourceID="XmlDataSource1" PopupAction="None" PopupElementID="ASPxButton1" 
                ClientInstanceName="popupMenu"  runat="server" PopupHorizontalAlign="OutsideRight">
                <ClientSideEvents ItemClick="OnItemClick" />
            </dxm:ASPxPopupMenu>
        </td></tr></table>
        <div style="height: 100px;"></div>
        <dxe:ASPxMemo ID="ASPxMemo1" ClientInstanceName="commandMonitor" runat="server" Height="137px" Width="254px" />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/S32139.xml"
            XPath="items/*"></asp:XmlDataSource>
    </form>
</body>
</html>
