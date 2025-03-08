using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STORE_InventoryManagementSystem.Forms
{
	public partial class AddEmployeeForm : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page Load logic if needed
        }

        protected void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["StoreDB"].ConnectionString;

            // Handle form submission logic here
            string employeeID = txtEmployeeID.Text;
            string employeeName = txtEmployeeName.Text;
            string department = ddlDepartment.SelectedValue;
            string zone = ddlZone.SelectedValue;
            string contactNumber = txtContactNumber.Text;
            string email = txtEmail.Text;

            // Insert data into database
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO Employees (EmployeeID, EmployeeName, Department, Zone, ContactNumber, Email) " +
                               "VALUES (@EmployeeID, @EmployeeName, @Department, @Zone, @ContactNumber, @Email)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@EmployeeID", employeeID);
                    cmd.Parameters.AddWithValue("@EmployeeName", employeeName);
                    cmd.Parameters.AddWithValue("@Department", department);
                    cmd.Parameters.AddWithValue("@Zone", zone);
                    cmd.Parameters.AddWithValue("@ContactNumber", contactNumber);
                    cmd.Parameters.AddWithValue("@Email", email);

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        // Example: Store in database, display a message, etc.

                        Response.Write("<script>alert('Form submitted successfully!');</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                    }
                }
            }
        }
    }
}