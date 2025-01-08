using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    string connString = System.Configuration.ConfigurationManager.ConnectionStrings["LibrarySystemConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadCategories();
        }
    }

    private void LoadCategories()
    {
        string query = "SELECT * FROM PublicationMst";

        using (SqlConnection conn = new SqlConnection(connString))
        {
            try
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        drppublication.Items.Clear();
                        drppublication.Items.Add(new ListItem("-- Select Publication --", ""));

                        while (reader.Read())
                        {
                            string categoryName = reader["Publication"].ToString();
                            string categoryId = reader["PId"].ToString();
                            drppublication.Items.Add(new ListItem(categoryName, categoryId));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error
                //   Response.Write($"Error loading categories: {ex.Message}");
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + ex.Message + "');", true);

            }
        }
    }

    private void LoadBranch()
    {
        string query = "SELECT * FROM BranchMst";

        using (SqlConnection conn = new SqlConnection(connString))
        {
            try
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        drpbranch.Items.Clear();
                        drpbranch.Items.Add(new ListItem("-- Select Branch --", ""));

                        while (reader.Read())
                        {
                            string branchName = reader["branchname"].ToString();
                            string branchId = reader["BranchID"].ToString();
                            drpbranch.Items.Add(new ListItem(branchName, branchId));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + ex.Message + "');", true);

                // Response.Write($"Error loading branches: {ex.Message}");
            }
        }
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(connString))
        {
            try
            {
                SqlCommand command = new SqlCommand("BOOK_INSERT", conn);
                command.CommandType = CommandType.StoredProcedure;

                // Add parameters to command
                command.Parameters.AddWithValue("@BNAME", txtbname.Text.Trim());
                command.Parameters.AddWithValue("@AUTHOR", txtauthor.Text.Trim());
                command.Parameters.AddWithValue("@DETAIL", txtdetail.Text.Trim());
                command.Parameters.AddWithValue("@PRICE", txtprice.Text.Trim());
                command.Parameters.AddWithValue("@PUBLICATION", drppublication.SelectedValue);
                command.Parameters.AddWithValue("@BRANCH", drpbranch.SelectedValue);
                command.Parameters.AddWithValue("@QUANTITIES", txtqnt.Text.Trim());
                command.Parameters.AddWithValue("@AVAILABLEQNT", txtqnt.Text.Trim());
                command.Parameters.AddWithValue("@RENTQNT", 0);

                if (FileUpload1.HasFile)
                {
                    string fileName = FileUpload1.FileName;
                    string savePath = Server.MapPath("~/Book/") + fileName;
                    FileUpload1.SaveAs(savePath);
                    command.Parameters.AddWithValue("@img", fileName);
                }
                else
                {
                    command.Parameters.AddWithValue("@img", DBNull.Value);
                }

                conn.Open();
                int result = command.ExecuteNonQuery();

                if (result > 0)
                {
                    Response.Write("Book inserted successfully.");
                }
                else
                {
                    Response.Write("Error inserting the book.");
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('"+ ex.Message + "');", true);

                // Response.Write($"Error: {ex.Message}");
            }
        }
    }

    protected void drppublication_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(drppublication.SelectedValue))
        {
            LoadBranch();
        }
    }
}
