<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kiemduyet.aspx.cs" Inherits="THLTW.Bai24" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Kiểm Duyệt</h1>
    <form runat="server">
        <asp:Repeater ID="rptrChuyenmuc" runat="server">
            <ItemTemplate>
                <h3><%# Eval("sCategoryName") %></h3>
                <asp:GridView ID="grvBaiviet" runat="server">
                    <Columns>
                        <asp:TemplateField AccessibleHeaderText="Tiều Đề"></asp:TemplateField>
                        <asp:HyperLinkField DataTextField="sTitle" />
                    </Columns>
                    <Columns>
                        <asp:TemplateField AccessibleHeaderText="Duyệt"></asp:TemplateField>
                        <asp:ButtonField CommandName="Duyệt" Text="Duyệt" />
                    </Columns>
                </asp:GridView>
            </ItemTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
