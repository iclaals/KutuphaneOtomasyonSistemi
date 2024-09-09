<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_products.aspx.cs" Inherits="WebApplication1.rpt_products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 25%;
            height: 2%;
        }
        .auto-style2 {
            position: absolute;
            width: 30%;
            height: 100%;
            left: 70%;
            font-family: "Franklin Gothic Book";
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 2%;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style11 {
            font-family:'Franklin Gothic Book'
        }
        .auto-style19 {
            text-align: center;
            background-color: #FFFFFF;
            color: saddlebrown;
            font-family:'Franklin Gothic Book';
            font-weight:bold
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style19">Kitap Listesi</h1>
        <div style="background-image:url(Background/book-library-with-open-textbook.jpg); background-size:cover; " class="auto-style2">

            <table class="auto-style3">
                <tr>
                    <td class="auto-style4" colspan="3"><h1 class="auto-style5">Parametreler</h1></td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%"><p class="auto-style5">Kitap İsmi:</p></td>
                    <td style="width:25%; height:2%">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td style="width:25%; height:2%"><asp:Button ID="Button1" runat="server" Text="Ara" BackColor="Transparent" BorderColor="White" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White" /></td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%"><p class="auto-style5">Yazarı:</p></td>
                    <td style="width:25%; height:2%">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="book_Author" DataValueField="Id"></asp:DropDownList></td>
                    <td style="width:25%; height:2%">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%"><p class="auto-style5">Yayınevi:</p></td>
                    <td style="width:25%; height:2%">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="book_Publisher" DataValueField="book_Publisher">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%"><p class="auto-style5">ISBN:</p></td>
                    <td style="width:25%; height:2%">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td style="width:25%; height:2%"><asp:Button ID="Button2" runat="server" Text="Ara" BackColor="Transparent" BorderColor="White" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White" /></td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%"><p class="auto-style5">Barkod:</p></td>
                    <td style="width:25%; height:2%">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    <td style="width:25%; height:2%"><asp:Button ID="Button3" runat="server" Text="Ara" BackColor="Transparent" BorderColor="White" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White" /></td>
                </tr>
                                <tr>
                    <td style="width:25%; height:2%"><p class="auto-style5">Yayın Yılı:</p></td>
                    <td style="width:25%; height:2%">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                                    <td style="width:25%; height:2%"><asp:Button ID="Button4" runat="server" Text="Ara" BackColor="Transparent" BorderColor="White" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White" /></td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%"><p class="auto-style5">Tür:</p></td>
                    <td style="width:25%; height:2%">
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="book_Genre" DataValueField="Id"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%"><p class="auto-style5">Dil:</p></td>
                    <td style="width:25%; height:2%">
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="book_Language" DataValueField="Id"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%" class="auto-style6">
                        &nbsp;</td>
                    <td style="width:25%; height:2%" class="auto-style5">
                        <asp:Button ID="Button5" runat="server" Text="Kapat" Height="40px" OnClientClick="window.close()" Width="110px" BackColor="Transparent" BorderColor="White" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White" PostBackUrl="~/Default.aspx" /> </td>
                </tr>
            </table>

        </div>



        <div style="width:70%; height:100%; position:absolute; right: 30%">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_Library %>" SelectCommand="SELECT Id, book_Name, book_ISBN, book_Barkod, book_Author, book_Publisher, book_Year, book_Genre, book_Topic, book_Page, book_Language, book_Stock FROM tbl_Products" DeleteCommand="DELETE FROM tbl_Products WHERE (Id = @Id)" UpdateCommand="UPDATE tbl_Products SET book_Name = @book_Name, book_ISBN = @book_ISBN, book_Barkod = @book_Barkod, book_Author = @book_Author, book_Publisher = @book_Publisher, book_Year = @book_Year, book_Genre = @book_Genre, book_Topic = @book_Topic, book_Page = @book_Page, book_Language = @book_Language, book_Stock = @book_Stock WHERE (book_Name = @Id) AND (book_ISBN = @Id) AND (book_Barkod = @Id) AND (book_Author = @Id) AND (book_Publisher = @Id) AND (book_Year = @Id) AND (book_Genre = @Id) AND (book_Topic = @Id) AND (book_Page = @Id) AND (book_Language = @Id) AND (book_Stock = @Id)">
                <DeleteParameters>
                    <asp:Parameter Name="Id" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="book_Name" />
                    <asp:Parameter Name="book_ISBN" />
                    <asp:Parameter Name="book_Barkod" />
                    <asp:Parameter Name="book_Author" />
                    <asp:Parameter Name="book_Publisher" />
                    <asp:Parameter Name="book_Year" />
                    <asp:Parameter Name="book_Genre" />
                    <asp:Parameter Name="book_Topic" />
                    <asp:Parameter Name="book_Page" />
                    <asp:Parameter Name="book_Language" />
                    <asp:Parameter Name="book_Stock" />
                    <asp:Parameter Name="Id" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <table style="background-color:azure; width:100%; height:100%">
                <tr>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%">
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                            <AlternatingItemTemplate>
                                <tr style="background-color: transparent;color: white;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Sil" BackColor="Transparent" BorderColor="White" ForeColor="White" BorderStyle="Ridge" Font-Bold="True" Font-Overline="False" Class="auto-style11" Height="30" Width="100" Font-Italic="False" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Düzenle" Height="30" Width="100" BorderStyle="Ridge" Font-Bold="True" BackColor="Transparent" BorderColor="White" Class="auto-style11" ForeColor="White" />
                                    </td>
                                    <td>
                                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_NameLabel" runat="server" Text='<%# Eval("book_Name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_ISBNLabel" runat="server" Text='<%# Eval("book_ISBN") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_BarkodLabel" runat="server" Text='<%# Eval("book_Barkod") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_AuthorLabel" runat="server" Text='<%# Eval("book_Author") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_PublisherLabel" runat="server" Text='<%# Eval("book_Publisher") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_YearLabel" runat="server" Text='<%# Eval("book_Year") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_GenreLabel" runat="server" Text='<%# Eval("book_Genre") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_TopicLabel" runat="server" Text='<%# Eval("book_Topic") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_PageLabel" runat="server" Text='<%# Eval("book_Page") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_LanguageLabel" runat="server" Text='<%# Eval("book_Language") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_StockLabel" runat="server" Text='<%# Eval("book_Stock") %>' />
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <tr style="background-image:url(Background/book-library-with-open-textbook.jpg); background-size:cover; color:white">
                                    <td>
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Güncelleştir" BackColor="Transparent" BorderColor="White" ForeColor="White" BorderStyle="Ridge" Font-Bold="True" Font-Overline="False" Class="auto-style11" Height="30" Width="100" Font-Italic="False" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="İptal" Height="30" Width="100" BorderStyle="Ridge" Font-Bold="True" BackColor="Transparent" BorderColor="White" Class="auto-style11" ForeColor="White" />
                                    </td>
                                    <td>
                                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="book_NameTextBox" runat="server" Text='<%# Bind("book_Name") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="book_ISBNTextBox" runat="server" Text='<%# Bind("book_ISBN") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="book_BarkodTextBox" runat="server" Text='<%# Bind("book_Barkod") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="book_AuthorTextBox" runat="server" Text='<%# Bind("book_Author") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="book_PublisherTextBox" runat="server" Text='<%# Bind("book_Publisher") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="book_YearTextBox" runat="server" Text='<%# Bind("book_Year") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="book_GenreTextBox" runat="server" Text='<%# Bind("book_Genre") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="book_TopicTextBox" runat="server" Text='<%# Bind("book_Topic") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="book_PageTextBox" runat="server" Text='<%# Bind("book_Page") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="book_LanguageTextBox" runat="server" Text='<%# Bind("book_Language") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="book_StockTextBox" runat="server" Text='<%# Bind("book_Stock") %>' />
                                    </td>
                                </tr>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                    <tr>
                                        <td>Hiçbir veri döndürülmedi.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
     
                            <ItemTemplate>
                                <tr style="background-image:url(Background/book-library-with-open-textbook.jpg); background-size:cover; color: white;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Sil" CssClass="auto-style11" BackColor="Transparent" BorderColor="White" ForeColor="White" BorderStyle="Ridge" Font-Bold="True" Font-Overline="False" Height="30" Width="100"/>
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Düzenle" CssClass="auto-style11" Height="30" Width="100" BorderStyle="Ridge" Font-Bold="True" BackColor="Transparent" BorderColor="White" ForeColor="White"/>
                                    </td>
                                    <td>
                                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_NameLabel" runat="server" Text='<%# Eval("book_Name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_ISBNLabel" runat="server" Text='<%# Eval("book_ISBN") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_BarkodLabel" runat="server" Text='<%# Eval("book_Barkod") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_AuthorLabel" runat="server" Text='<%# Eval("book_Author") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_PublisherLabel" runat="server" Text='<%# Eval("book_Publisher") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_YearLabel" runat="server" Text='<%# Eval("book_Year") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_GenreLabel" runat="server" Text='<%# Eval("book_Genre") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_TopicLabel" runat="server" Text='<%# Eval("book_Topic") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_PageLabel" runat="server" Text='<%# Eval("book_Page") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_LanguageLabel" runat="server" Text='<%# Eval("book_Language") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_StockLabel" runat="server" Text='<%# Eval("book_Stock") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="1" style="border-collapse: collapse;border-color: white;border-style:none;border-width:1px;font-family: 'Franklin Gothic Book'; font-weight:bold">
                                                <tr runat="server" style="background-image:url(Background/book-library-with-open-textbook.jpg); background-size:cover;color: white;">
                                                    <th runat="server"></th>
                                                    <th runat="server">ID</th>
                                                    <th runat="server">Kitap Adı</th>
                                                    <th runat="server">ISBN</th>
                                                    <th runat="server">Barkod</th>
                                                    <th runat="server">Yazar</th>
                                                    <th runat="server">Yayınevi</th>
                                                    <th runat="server">Yayın Yılı</th>
                                                    <th runat="server">Türü</th>
                                                    <th runat="server">Konusu</th>
                                                    <th runat="server">Sayfa Sayısı</th>
                                                    <th runat="server">Dili</th>
                                                    <th runat="server">Stok</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center;background-image:url(Background/book-library-with-open-textbook.jpg);font-family: 'Franklin Gothic Book';color: white">
                                            <asp:DataPager ID="DataPager1" runat="server">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                    <asp:NumericPagerField />
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <tr style="background-color: transparent;font-weight: bold;color: white; background-image:url(Background/book-library-with-open-textbook.jpg); background-size:cover">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Sil" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Düzenle" />
                                    </td>
                                    <td>
                                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_NameLabel" runat="server" Text='<%# Eval("book_Name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_ISBNLabel" runat="server" Text='<%# Eval("book_ISBN") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_BarkodLabel" runat="server" Text='<%# Eval("book_Barkod") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_AuthorLabel" runat="server" Text='<%# Eval("book_Author") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_PublisherLabel" runat="server" Text='<%# Eval("book_Publisher") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_YearLabel" runat="server" Text='<%# Eval("book_Year") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_GenreLabel" runat="server" Text='<%# Eval("book_Genre") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_TopicLabel" runat="server" Text='<%# Eval("book_Topic") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_PageLabel" runat="server" Text='<%# Eval("book_Page") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_LanguageLabel" runat="server" Text='<%# Eval("book_Language") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="book_StockLabel" runat="server" Text='<%# Eval("book_Stock") %>' />
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
                        </asp:ListView>
                    </td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%"></td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td style="width:25%; height:2%">&nbsp;</td>
                </tr>
            </table>
        </div>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_Library %>" SelectCommand="SELECT * FROM [tbl_Products]"></asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_Library %>" SelectCommand="SELECT [book_Publisher], [Id], [book_Name], [book_ISBN], [book_Barkod], [book_Author], [book_Year], [book_Genre], [book_Topic], [book_Page], [book_Language], [book_Stock] FROM [tbl_Products]"></asp:SqlDataSource>
        
    </form>
</body>
</html>
