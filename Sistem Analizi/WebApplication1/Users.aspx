<%@ Page Language="C#" AutoEventWireup="true" Codefile="Users.aspx.cs" Inherits="WebApplication1.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style4 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 31%;
            height: 49%;
            position: absolute;
            right: 9%;
            top: 25%;
            font-family: "Franklin Gothic Book";
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            width: 25%;
            height: 2%;
        }
        .auto-style8 {
            text-align: center;
            width: 25%;
            height: 2%;
        }
        .auto-style9 {
            text-align: center;
            height: 2%;
        }
        .auto-style10 {
            border-style: solid;
            border-width: 1px;
            padding: 1px 4px;
            width: 31%;
            height: 33%;
            position: absolute;
            left: 9%;
            top: 25%;
            font-family: "Franklin Gothic Book";
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style11 {
            font-family: "Franklin Gothic Medium";
            font-weight: bold;
        }
        .auto-style12 {
            font-family: "Franklin Gothic Book";
            font-weight: bold;
        }
        .auto-style13 {
            text-align: center;
            font-family: "Franklin Gothic Book";
            font-size:65px;
        }
    </style>
</head>
<body style="height: 284px">
    <form id="form1" runat="server">
        <h1 class="auto-style13">Admin Kayıt Formu</h1>
        <div class="auto-style4">
            <table style="width:100%; height:100%;background-image:url(Background/book-library-with-open-textbook.jpg); background-size:cover">
                <tr>
                      <td style="width:25%; height:2%"><p class="auto-style6">Kullanıcı Adı Soyadı:</p></td>
                     <td style="width:25%; height:2%" class="auto-style1">
                         <asp:TextBox ID="user_name" runat="server" CssClass="auto-style12"></asp:TextBox>
                      </td>
                  </tr>
                                <tr>
                     <td style="width:25%; height:2%"><p class="auto-style6">Kullanıcı Kimliği:</p></td>
                    <td style="width:25%; height:2%" class="auto-style1">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style12"></asp:TextBox>
                     </td>
                  </tr>
                                <tr>
                     <td style="width:25%; height:2%"><p class="auto-style6">Kullanıcı Şifresi:</p></td>
                    <td style="width:25%; height:2%" class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style12"></asp:TextBox>
                     </td>
                  </tr>
                <tr>
                     <td class="auto-style7"><p class="auto-style6">Kullanıcı E-Postası:</p></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="user_email" runat="server" CssClass="auto-style12"></asp:TextBox>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%"><p class="auto-style6">Kullanıcı Doğum Tarihi:</p></td>
                    <td style="width:25%; height:2%" class="auto-style1">
                        <asp:TextBox ID="user_birth" runat="server" CssClass="auto-style12"></asp:TextBox>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%"><p class="auto-style6">Kullanıcı Cinsiyeti:</p></td>
                    <td style="width:25%; height:2%" class="auto-style5">
                        <asp:RadioButtonList ID="user_gender" runat="server" AutoPostBack="True" Width="220px">
                            <asp:ListItem Value="0">Erkek</asp:ListItem>
                            <asp:ListItem Value="1">Kadın</asp:ListItem>
                        </asp:RadioButtonList>
                     </td>
                  </tr>
                <tr>
                    <td class="auto-style9">

                        <asp:Button ID="Button1" runat="server" Text="Kaydet" Height="40px" Width="130px" BackColor="Transparent" BorderColor="White" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White" />

                    </td>
                    <td class="auto-style1">
                                                <asp:Button ID="Button3" runat="server" Text="Kapat" Height="40px" Width="130px" BackColor="Transparent" BorderColor="White" Font-Bold="True" Font-Names="Franklin Gothic Book" ForeColor="White" />

                    </td>

                </tr>
            </table>
        </div>

        <div class="auto-style10">
                        <table style="width:100%; height:100%; background-image:url(Background/book-library-with-open-textbook.jpg); background-size:cover">
                <tr>
                      <td style="width:25%; height:2%"><p class="auto-style6">Kullanıcı Kimliği:</p></td>
                     <td style="width:25%; height:2%" class="auto-style1">
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11"></asp:TextBox>
                      </td>
                  </tr>
                <tr>
                     <td class="auto-style7"><p class="auto-style6">Kullanıcı Şifresi:</p></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="auto-style12"></asp:TextBox>
                     </td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%"></td>
                    <td style="width:25%; height:2%" class="auto-style1"></td>
                  </tr>
                <tr>
                     <td style="width:25%; height:2%"></td>
                    <td style="width:25%; height:2%" class="auto-style5"></td>
                  </tr>
                <tr>
                    <td class="auto-style9" colspan="2">

                        <asp:Button ID="Button2" runat="server" Text="Giriş" Height="40px" Width="130px" BackColor="Transparent" BorderColor="White" Font-Bold="True" Font-Names="franklin gothic book" ForeColor="White" />

                    </td>

                </tr>
            </table>
        </div>
    </form>
</body>
</html>
