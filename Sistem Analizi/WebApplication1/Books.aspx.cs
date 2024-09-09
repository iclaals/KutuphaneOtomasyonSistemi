using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sql_Book_Data_Entry.InsertParameters["book_Name"].DefaultValue = book_name.Text;
            sql_Book_Data_Entry.InsertParameters["book_Author"].DefaultValue = book_author.Text;
            sql_Book_Data_Entry.InsertParameters["book_ISBN"].DefaultValue = book_isbn.Text;
            sql_Book_Data_Entry.InsertParameters["book_Barkod"].DefaultValue = book_barkod.Text;
            sql_Book_Data_Entry.InsertParameters["book_Publisher"].DefaultValue = book_publisher.Text;
            sql_Book_Data_Entry.InsertParameters["book_Year"].DefaultValue = book_year.Text;
            sql_Book_Data_Entry.InsertParameters["book_Genre"].DefaultValue = book_genre.SelectedValue;
            sql_Book_Data_Entry.InsertParameters["book_Page"].DefaultValue = book_page.Text;
            sql_Book_Data_Entry.InsertParameters["book_Language"].DefaultValue = book_language.SelectedValue;
            sql_Book_Data_Entry.InsertParameters["book_Stock"].DefaultValue = book_stock.Text;
            sql_Book_Data_Entry.InsertParameters["book_Topic"].DefaultValue = book_topic.SelectedValue;

            int s = sql_Book_Data_Entry.Insert();

            if (s > 0)
            {
                Label1.Text = "Yeni kitap verisi eklendi: " + book_name.Text ;
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = "Yeni kitap verisi kaydı başarısız, bilgileri kontrol ediniz.";
                Label1.Visible = true;
            }

        }
    }
}