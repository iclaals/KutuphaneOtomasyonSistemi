<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="WebApplication1.Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            font-size: medium;
            color: #FFFFFF;
            font-family: "Franklin Gothic Book";
        }
        .auto-style6 {
            font-size: medium;
            color: #FFFFFF;
            font-family: "Franklin Gothic Book";
            font-weight: bold;
            border: 3px groove #FFFFFF;
        }
        .auto-style7 {
            font-family: "Franklin Gothic Book";
            font-weight: bold;
        }
        .auto-style8 {
            font-family: "Franklin Gothic Book";
            font-weight: bold;
            border-style: ridge;
        }
        .auto-style9 {
            font-size: medium;
            color: #FFFFFF;
            font-family: "Franklin Gothic Book";
            font-weight: bold;
            width: 25%;
            height: 2%;
            border: 3px groove #FFFFFF;
        }
        .auto-style10 {
            text-align: center;
            width: 25%;
            height: 2%;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style12 {
            border-style: groove;
            border-color: #663300;
            text-align: center;
            font-family: "Franklin Gothic Book";
            font-size: xx-large;
            color: #663300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style12">Kitap Veri Girişi Formu</h1>
        <div style="width:50%; height:80%; position:absolute; left:25%; top:10%;">
            <table style="width:100%; height:100%; background-image:url(Background/book-library-with-open-textbook.jpg); background-size:cover">
                <tr>
                      <td style="width:25%; height:2%" class="auto-style6">
                          <p style="text-align:center" aria-atomic="False" aria-autocomplete="none" class="auto-style5">
                              <strong>Kitap Adı:</strong></p>
                      </td>
                     <td style="width:25%; height:2%" class="auto-style3">
                         <asp:TextBox ID="book_name" runat="server" CssClass="auto-style7" Height="25px" Width="170px"></asp:TextBox>
                      </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%" class="auto-style6"><p style="text-align:center" class="auto-style5"><strong>Kitap Yazarı:</strong></p></td>
                    <td style="width:25%; height:2%" class="auto-style3">
                        <asp:TextBox ID="book_author" runat="server" CssClass="auto-style7" Height="25px" Width="170px"></asp:TextBox>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%" class="auto-style6"><p style="text-align:center" class="auto-style5"><strong>Kitap Yayınevi:</strong></p></td>
                    <td style="width:25%; height:2%" class="auto-style3">
                        <asp:TextBox ID="book_publisher" runat="server" CssClass="auto-style7" Height="25px" Width="170px"></asp:TextBox>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%" class="auto-style6"><p style="text-align:center" class="auto-style5"><strong>Kitap Yayın Yılı:</strong></p></td>
                    <td style="width:25%; height:2%" class="auto-style3">
                        <asp:TextBox ID="book_year" runat="server" TextMode="Number" CssClass="auto-style7" Height="25px" Width="170px"></asp:TextBox>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%" class="auto-style6"><p style="text-align:center" class="auto-style5"><strong>Kitap Türü:</strong></p></td>
                    <td style="width:25%; height:2%" class="auto-style3">
                        <asp:DropDownList ID="book_genre" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Genre" DataValueField="Genre" CssClass="auto-style7" Height="25px" Width="170px"></asp:DropDownList>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%" class="auto-style6"><p style="text-align:center" class="auto-style5"><strong>Kitap Konusu:</strong></p></td>
                    <td style="width:25%; height:2%" class="auto-style3">
                        <asp:DropDownList ID="book_topic" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Topic" DataValueField="Topic" CssClass="auto-style7" Height="25px" Width="170px"></asp:DropDownList>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%" class="auto-style6"><p style="text-align:center" class="auto-style5"><strong>Kitap ISBN:</strong></p></td>
                    <td style="width:25%; height:2%" class="auto-style3">
                        <asp:TextBox ID="book_isbn" runat="server" Height="25px" Width="170px"></asp:TextBox>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%" class="auto-style6"><p style="text-align:center" class="auto-style5"><strong>Kitap Barkod:</strong></p></td>
                    <td style="width:25%; height:2%" class="auto-style3">
                        <asp:TextBox ID="book_barkod" runat="server" Height="25px" Width="170px"></asp:TextBox>
                     </td>
                  </tr>
                <tr>
                     <td class="auto-style9"><p style="text-align:center" class="auto-style5"><strong>Kitap Sayfa Sayısı:</strong></p></td>
                    <td class="auto-style10">
                        <asp:TextBox ID="book_page" runat="server" TextMode="Number" Height="25px" Width="170px"></asp:TextBox>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%" class="auto-style6"><p style="text-align:center" class="auto-style5"><strong>Kitap Dili:</strong></p></td>
                    <td style="width:25%; height:2%" class="auto-style3">
                        <strong>
                        <asp:DropDownList ID="book_language" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Language" DataValueField="Language" CssClass="auto-style11" Height="25px" Width="170px"></asp:DropDownList>
                        </strong>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%" class="auto-style6"><p style="text-align:center" class="auto-style5"><strong>Kitap Stoğu:</strong></p></td>
                    <td style="width:25%; height:2%" class="auto-style3">
                        <asp:TextBox ID="book_stock" runat="server" TextMode="Number" Height="25px" Width="170px"></asp:TextBox>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%" class="auto-style3"><asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" BackColor="White" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style8" ForeColor="#663300" Height="25px" Width="100px" /></td>
                    <td style="width:25%; height:2%" class="auto-style3"><asp:Button ID="Button2" runat="server" Text="Kapat" OnClientClick="window.close()" PostBackUrl="~/Default.aspx" BackColor="White" BorderColor="Black" BorderStyle="Groove" CssClass="auto-style8" ForeColor="#663300" Height="25px" Width="100px" /></td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%" class="auto-style1">
                         <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" CssClass="auto-style7" ForeColor="White"></asp:Label>
                     </td>
                  </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_Library %>" ProviderName="<%$ ConnectionStrings:con_Library.ProviderName %>" SelectCommand="SELECT [Genre] FROM [tbl_BookGenres]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_Library %>" SelectCommand="SELECT [Language] FROM [tbl_Languages]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_Library %>" SelectCommand="SELECT [Topic] FROM [tbl_Topics]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sql_Book_Data_Entry" runat="server" ConnectionString="<%$ ConnectionStrings:con_Library %>" SelectCommand="SELECT book_Name, book_ISBN, book_Barkod, book_Author, book_Publisher, book_Year, book_Genre, book_Page, book_Language, book_Stock, book_Topic FROM tbl_Products" InsertCommand="INSERT INTO tbl_Products(book_Name, book_ISBN, book_Barkod, book_Author, book_Publisher, book_Year, book_Genre, book_Page, book_Language, book_Stock, book_Topic) VALUES (@book_Name, @book_ISBN, @book_Barkod, @book_Author, @book_Publisher, @book_Year, @book_Genre, @book_Page, @book_Language, @book_Stock, @book_Topic)">
            <InsertParameters>
                <asp:Parameter Name="book_Name" />
                <asp:Parameter Name="book_ISBN" />
                <asp:Parameter Name="book_Barkod" />
                <asp:Parameter Name="book_Author" />
                <asp:Parameter Name="book_Publisher" />
                <asp:Parameter Name="book_Year" />
                <asp:Parameter Name="book_Genre" />
                <asp:Parameter Name="book_Page" />
                <asp:Parameter Name="book_Language" />
                <asp:Parameter Name="book_Stock" />
                <asp:Parameter Name="book_Topic" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_Library %>" SelectCommand="SELECT * FROM [tbl_Publishers]"></asp:SqlDataSource>
    </form>
</body>
</html>
