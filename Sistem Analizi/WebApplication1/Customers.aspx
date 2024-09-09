<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="WebApplication1.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1{
                        border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 30%;
            height: 49%;
            position: absolute;
            right: 15%;
            top: 25%;
            font-family: "Franklin Gothic Book";
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            width: 25%;
            height: 2%;
        }
        .auto-style5 {
            width: 25%;
            height: 2%;
            text-align: center;
        }
        .auto-style6 {
            font-family: "Franklin Gothic Book";
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style7 {
            font-family: "Franklin Gothic Book";
            font-weight: bold;
        }
        .auto-style8 {
            font-family: "Franklin Gothic Medium";
            font-weight: bold;
        }
        .auto-style9 {
            font-family: "Franklin Gothic Medium";
            font-weight: bold;
            color: #663300;
            border: 3px groove #FFFFFF;
        }
        .auto-style10 {
            font-family: "Franklin Gothic Book";
            font-weight: bold;
            color: #663300;
            border-style: groove;
            border-color: #FFFFFF;
        }
        .auto-style11 {
            border-style: solid;
            border-color: #663300;
            text-align: center;
            font-family: "Franklin Gothic Book";
            color: #663300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div>
            <h1 class="auto-style11">Müşteri Formu</h1>
            <table class="auto-style1"; style="background-image:url(Background/book-library-with-open-textbook.jpg); background-size:cover">
                <tr>
                    <td class="auto-style4"><p class="auto-style2">Müşteri Adı Soyadı:</p></td>
                     <td class="auto-style5"><asp:TextBox ID="customer_namee" runat="server" CssClass="auto-style7"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%"><p class="auto-style2">Müşteri TC:</p></td>
                     <td style="width:25%; height:2%" class="auto-style2"><asp:TextBox ID="TextBox1" runat="server" TextMode="Number" CssClass="auto-style7"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%"><p class="auto-style2">Müşterinin Aldığı Ürün:</p></td>
                     <td style="width:25%; height:2%" class="auto-style2">
                         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="book_Name" DataValueField="Id" CssClass="auto-style8">
                         </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%"><p class="auto-style2"> Müşteri Planlanan Teslim Tarihi:</p></td>
                     <td style="width:25%; height:2%" class="auto-style2"><asp:TextBox ID="TextBox3" runat="server" TextMode="Date" CssClass="auto-style7"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" Text="Kayıt" BackColor="White" CssClass="auto-style9" Height="30px" Width="100px" /></td>
                     <td class="auto-style5">
                         <strong>
                         <asp:Button ID="Button2" runat="server" Text="Kapat" OnClientClick="window.close()" PostBackUrl="~/Default.aspx" BackColor="White" CssClass="auto-style10" Height="30px" Width="100px"/></strong></td>
                </tr>
            </table>
        </div>
        <div style="position:absolute; width:40%; left:10%; height:50%; top:25%">
            <table>
                <tr>
                    <td style="width:25%; height:2%">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" AllowSorting="True" CssClass="auto-style6" style="background-image:url(Background/book-library-with-open-textbook.jpg); background-size:cover">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="customer_name" HeaderText="Müşteri Adı" SortExpression="customer_name" />
                                <asp:BoundField DataField="customer_TC" HeaderText="Müşteri TC" SortExpression="customer_TC" />
                                <asp:BoundField DataField="customer_date" HeaderText="Tarih" SortExpression="customer_date" />
                                <asp:BoundField DataField="customer_product" HeaderText="Seçilen Ürün" SortExpression="customer_product" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td style="width:25%; height:2%">

                    </td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%">

                    </td>
                    <td style="width:25%; height:2%">

                    </td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_Library %>" SelectCommand="SELECT [Id], [book_Name] FROM [tbl_Products]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_Library %>" SelectCommand="SELECT * FROM [tbl_Customers]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_Library %>" SelectCommand="SELECT tbl_Customers.* FROM tbl_Customers">
        </asp:SqlDataSource>
    </form>
</body>
</html>
