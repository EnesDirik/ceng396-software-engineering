using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoteShares
{
    public partial class NoteDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User loggeduser = (User)Session["currentuser"];

            if (loggeduser != null)
            {
                if (Request["detail"] != null)
                {
                    int pId = Convert.ToInt32(Request["detail"]);

                    using (var myDB = new notsharesEntities())
                    {
                        var p = (from x in myDB.Note where (x.NoteId == pId && x.isActive==true) select x).SingleOrDefault();
                        Label1.Text = p.Course.CourseCode + " - " + p.Course.CourseName + " Note";
                        ImageButton1.ImageUrl = "~/images/" + p.NoteSrc;
                        lblName.Text = FindNameSurname(pId);
                        lblVoteNumber.Text = Convert.ToString(FindVoteCount(pId));

                        var vot = (from x in myDB.Vote where (x.NoteId == pId && x.UserId == loggeduser.UserId) select x).SingleOrDefault();
                        if (vot!= null)
                        {
                            VoteList.Visible = false;
                            Label2.Text = "You Voted";
                        }
                    }
                }
                else
                {
                    Response.Redirect("Note.aspx");
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
            var u = (from x in _db.Note where (x.NoteId == nid && x.isActive == true) select x).SingleOrDefault();
            var user = (from x in _db.User where (x.UserId == u.UserId && x.IsActive == true) select x).SingleOrDefault();
            if (u != null)
            {
                NameSurname = user.Firstname + " " + user.Surname;
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

        protected void VoteList_SelectedIndexChanged(object sender, EventArgs e)
        {
            User loggeduser = (User)Session["currentuser"];
            int pId = Convert.ToInt32(Request["detail"]);
            using (var db = new notsharesEntities())
            {
                Vote vote1 = new Vote();
                vote1.UserId = loggeduser.UserId;
                vote1.NoteId = pId;
                vote1.Vote1 = Convert.ToInt32(VoteList.SelectedItem.Value);

                db.Vote.Add(vote1);
                db.SaveChanges();
                Response.Redirect("NoteDetail.aspx?detail=" + pId);
            }
        }
    }
}