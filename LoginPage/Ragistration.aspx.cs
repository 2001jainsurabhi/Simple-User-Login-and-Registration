using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace LoginPage
{
    public partial class Ragistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from [Table] where UserName='" + TextBoxUN.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (temp == 1)
                {
                    Response.Write("User already Exists");
                }
                
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into [Table] (username,email,password,dob,address,course,country,city) values (@Uname, @email, @password, @dob, @gender, @address, @course, @country, @city)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
                com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                com.Parameters.AddWithValue("@password", TextBoxPass.Text);
                com.Parameters.AddWithValue("@dob", TextBoxDOB.Text);
                
                com.Parameters.AddWithValue("@address", TextBoxAdd.Text);
                
                com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());
                com.Parameters.AddWithValue("@city", TextBoxCity.Text);
                // Assuming you have a TextBox control named "textBox1" for the parameter value

                // Retrieve the text from the TextBox control
                string parameterValue = TextBoxUN.Text;

                // Create a SqlParameter object and assign the value
                SqlParameter parameter = new SqlParameter("@Uname", SqlDbType.NVarChar);
                parameter.Value = parameterValue;

                // Use the parameter in your SqlCommand or stored procedure call
                // sqlCommand.Parameters.Add(parameter);
                // sqlCommand.ExecuteNonQuery();

                com.ExecuteNonQuery();
                Response.Redirect("Users.aspx");
                Response.Write("Registration is successfully");

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }            
            
        

        }

        protected void TextBoxCity_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxAdd_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged1(object sender, EventArgs e)
        {
           
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            
        }
    }
}