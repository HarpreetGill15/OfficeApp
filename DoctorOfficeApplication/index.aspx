<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DoctorOfficeApplication.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="login" runat="server">
        <div>
            <div>
                <asp:Label runat="server">Username</asp:Label>
                <asp:TextBox runat="server" ID="admin_username"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">Password</asp:Label>
                <asp:TextBox runat="server" ID="admin_password"></asp:TextBox>
            </div>
            <div>
                <asp:Button runat="server" ID="btn_submit" Text="Login"/>
            </div>
        </div>
    </form>
</body>
</html>
