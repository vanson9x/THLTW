<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai22-Page2.aspx.cs" Inherits="THLTW.Bai22_Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h3>DANH MỤC SÁCH</h3>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="PK_iMasach">
            <Columns>
                <asp:BoundField DataField="PK_iMasach" HeaderText="MaSach" InsertVisible="False" ReadOnly="True" SortExpression="PK_iMasach" />
                <asp:BoundField DataField="FK_iMaLoai" HeaderText="MaLoai" SortExpression="FK_iMaLoai" />
                <asp:BoundField DataField="sTensach" HeaderText="TenSach" SortExpression="sTensach" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="SELECT * FROM [tblSach]"></asp:SqlDataSource>
        <asp:Button ID="btnNext" runat="server" Text="Xem chi tiết" OnClick="btnNext_Click" />
    </form>
</body>
</html>
