using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoteShares
{
    public partial class AddNote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User loggeduser = (User)Session["currentuser"];

            if (loggeduser == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                using (var db = new notsharesEntities())
                {
                    var course = (from x in db.Course select new { CourseId = x.CourseId, CourseCode = x.CourseCode }).ToList();
                    ddlCourse.DataSource = course;
                    ddlCourse.DataTextField = "CourseCode";
                    ddlCourse.DataValueField = "CourseId";
                    ddlCourse.DataBind();
                }
            }
        }

        protected void ButtonAddNote_Click(object sender, EventArgs e)
        {
            User loggeduser = (User)Session["currentuser"];

            using (var myDB = new notsharesEntities())
            {
                Note note = (from c in myDB.Note where c.NoteSrc == FileUpload1.FileName && c.isActive==true select c).SingleOrDefault();

                if (note == null)
                {
                    var n = new Note();

                    if (FileUpload1.HasFile)
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/images/" + FileUpload1.FileName));
                        n.NoteSrc = FileUpload1.FileName;
                    }

                    n.CourseId = Convert.ToInt32(ddlCourse.SelectedItem.Value);
                    n.UserId = loggeduser.UserId;
                    n.isActive = true;
                    n.createDate = DateTime.Now;
                    myDB.Note.Add(n);
                    myDB.SaveChanges();

                    Label1.Text = "Note Added Successfully";
                    LabelResult.Visible = false;

                    Response.Redirect("Home.aspx");
                }
                else
                {
                    LabelResult.Text = "Note Already Exists!";
                    Label1.Visible = false;
                }
            }
        }
    }
}