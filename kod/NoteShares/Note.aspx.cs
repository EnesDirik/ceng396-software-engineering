using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoteShares
{
    public partial class Note1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User loggeduser = (User)Session["currentuser"];

            if (loggeduser != null)
            {
                if (Request["code"] != null)
                {
                    using (var db = new notsharesEntities())
                    {
                        int CourseId = Convert.ToInt32(Request["code"]);

                        var course = (from c in db.Course where (c.CourseId == CourseId) select c).SingleOrDefault();
                        Label1.Text = course.CourseCode + " - " + course.CourseName + " Notes";

                        var notes = (from c in db.Note where(c.CourseId==CourseId && c.isActive==true) select c).ToList();

                        dlNotes.DataSource = notes;
                        dlNotes.DataBind();                     
                    }
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        public string FindNameSurname(object id)
        {
            string NameSurname = "";
            int nid = Convert.ToInt32(id);
            notsharesEntities _db = new notsharesEntities();
            var u = (from x in _db.User where (x.UserId == nid && x.IsActive == true) select x).SingleOrDefault();

            if (u != null)
            {
                NameSurname = u.Firstname + " " + u.Surname;
            }
            return NameSurname;
        }

        public int FindVoteCount(object id)
        {
            int VoteCount = 0;
            int nid = Convert.ToInt32(id);
            notsharesEntities _db = new notsharesEntities();
            var u = (from x in _db.Vote where (x.NoteId == nid) select x).ToList();

            if (u != null)
            {
                foreach (var item in u)
                {
                    VoteCount += item.Vote1;
                }
                if (VoteCount != 0)
                {
                    return VoteCount / u.Count;
                }           
            }

            return 0;
        }
    }
}