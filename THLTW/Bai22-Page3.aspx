<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai22-Page3.aspx.cs" Inherits="THLTW.Bai22_Page3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h3>THÔNG TIN CHI TIẾT VỀ DANH MỤC SÁCH</h3>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
            SelectCommand="SELECT s.PK_iMasach as 'MaSach', ls.sLoaisach as 'LoaiSach', s.sTensach as 'TenSach' FROM [tblSach] s join [tblLoaisach] ls on s.FK_iMaLoai = ls.PK_iMaLoai"></asp:SqlDataSource>
    </form>
</body>
</html>
