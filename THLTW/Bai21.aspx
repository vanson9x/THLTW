<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai21.aspx.cs" Inherits="THLTW.Bai22_Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>DANH MỤC LOẠI SÁCH</h3>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="PK_iMaLoai">
            <Columns>
                <asp:BoundField DataField="PK_iMaLoai" HeaderText="MaLoai" InsertVisible="False" ReadOnly="True" SortExpression="PK_iMaLoai" />
                <asp:BoundField DataField="sLoaiSach" HeaderText="LoaiSach" SortExpression="sLoaiSach" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [tblLoaisach]"></asp:SqlDataSource>
        <asp:Button ID="btnNext" runat="server" Text="Tiếp tục" OnClick="btnNext_Click" />
         </form>
</body>
</html>
