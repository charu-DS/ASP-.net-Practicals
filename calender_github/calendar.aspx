<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendar.aspx.cs" Inherits="calendar.calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Calendar ID="Calendar1" runat="server" Height="239px" OnSelectionChanged="Calendar1_SelectionChanged" Width="409px"></asp:Calendar>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            Your selected date is
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>
        Todays date is:
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        Ganpati vacation start:
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
       Days remaining for ganpati vacation:
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        Days remaining for new year:
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
