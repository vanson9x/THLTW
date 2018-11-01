<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai20.aspx.cs" Inherits="THLTW.Bai20" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="search">
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ForeColor="Red"
                ControlToValidate="txtSearch"
                ErrorMessage="Không được để trống tìm kiếm"></asp:RequiredFieldValidator>
        </div>
        <div id="register">
            FirstName:
            <br />
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                ForeColor="Red"
                ControlToValidate="txtFirstName"
                ValidationExpression="^[a-zA-Z]+$"
                ErrorMessage="Không hợp lệ"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ForeColor="Red"
                ControlToValidate="txtFirstName"
                ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            <br />
            LastName:
            <br />
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ForeColor="Red"
                ControlToValidate="txtLastName"
                ErrorMessage="Không được để trống"></asp:RequiredFieldValidator>
            <br />
            Password:
            <br />
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox> <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                ForeColor="Red"
                ControlToValidate="txtPassword"
                ErrorMessage="Không được để trống"></asp:RequiredFieldValidator> <br />
            <%--<asp:CustomValidator ID="CustomValidator12" runat="server"
                ForeColor="Red"
                ControlToValidate="txtPassword"
                ValidateEmptyText="true"
                ErrorMessage="Mật khẩu tối thiểu 6 kí tự" 
                OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>--%>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                ForeColor="Red"
                ControlToValidate="txtPassword"
                ValidationExpression=".*(?:[0-9]+)(?:[A-Z]+)"
                ErrorMessage="Mật khẩu phải chứa ít nhất 1 chữ hoa và số"></asp:RegularExpressionValidator> <br />
            <asp:RegularExpressionValidator 
                ForeColor="Red"
                ValidationExpression="^.[0-9A-Za-z]{6,}$"
                ControlToValidate="txtPassword"
                ID="RegularExpressionValidator3" runat="server" 
                ErrorMessage="Mật khẩu tối thiểu 6 kí tự"></asp:RegularExpressionValidator>
            <br />
            Re-type Password:
            <br />
            <asp:TextBox ID="txtRePassword" TextMode="Password" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server"
                ForeColor="Red"
                ValidateEmptyText="true"
                ValueToCompare="txtPassword"
                ControlToValidate="txtRePassword"
                ErrorMessage="Mật khẩu không khớp"></asp:CompareValidator>
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
