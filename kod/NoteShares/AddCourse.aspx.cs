using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoteShares
{
    public partial class AddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User loggeduser = (User)Session["currentuser"];

            if (loggeduser == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ButtonAddCourse_Click(object sender, EventArgs e)
        {
            User loggeduser = (User)Session["currentuser"];

            using (var myDB = new notsharesEntities())
            {
                Course newc = (from c in myDB.Course
                             where c.CourseCode == TextBoxCoursecode.Text
                             select c).SingleOrDefault();

                if (newc == null)
                {
                    var newcourse = new Course();

                    newcourse.CourseName = TextBoxCoursename.Text;
                    newcourse.CourseCode = TextBoxCoursecode.Text;
                    newcourse.Department = TextBoxDepartment.Text;
                    newcourse.UserId = loggeduser.UserId;
                    myDB.Course.Add(newcourse);
                    myDB.SaveChanges();

                    Label1.Text = "Course Added Successfully";
                    LabelResult.Visible = false;
                    
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    LabelResult.Text = "Course Already Exists!";
                    Label1.Visible = false;
                }
            }
        }
    }
}