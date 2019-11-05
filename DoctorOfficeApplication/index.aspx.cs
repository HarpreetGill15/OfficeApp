using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoctorOfficeApplication
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\harpr\source\repos\DoctorOfficeApplication\DoctorOfficeApplication\App_Data\HappyDatabase.mdf; Integrated Security = True
                //connect to database
                string connection;
                connection = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename = C:\Users\harpr\source\repos\DoctorOfficeApplication\DoctorOfficeApplication\App_Data\HappyDatabase.mdf;";
                SqlConnection con = new SqlConnection(connection);
                con.Open();
                Response.Write("Connected");
                
                //Get the user and pass from the text fields
                string username = admin_username.Text;
                string password = admin_password.Text;

                SqlCommand command;
                SqlDataReader dataReader;
                String sql = "";
                String output = "";

                //sql query to search for admin username and password
                sql = "Select * from Admin where username = '" + username + "' AND password ='" + password+"'";

                command = new SqlCommand(sql, con);

                dataReader = command.ExecuteReader();

                //read the values of the return
                while (dataReader.Read())
                {
                    output = output + dataReader.GetValue(0) + " and " + dataReader.GetValue(1);
                    //swtich to next page
                }//End while loop
                Response.Write(output);
                command.Dispose();
                con.Close();

            }//End postback if
        }
    }
}