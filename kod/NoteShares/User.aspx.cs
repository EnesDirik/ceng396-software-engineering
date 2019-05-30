using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoteShares
{
    public partial class User1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                User loggeduser = (User)Session["currentuser"];

                if (loggeduser == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    using (var myDB = new notsharesEntities())
                    {
                        var user = (from u in myDB.User
                                    where (loggeduser.UserId == u.UserId)
                                    select u).SingleOrDefault();

                        usernameTxt.Text = user.Username;
                        firstnameTxt.Text = user.Firstname;
                        lastnameTxt.Text = user.Surname;
                        passwordTxt.Text = user.Password;
                        emailTxt.Text = user.Email;

                        lblTitle.Text = user.Firstname + " " + user.Surname + " Profile";

                        var notes = (from c in myDB.Note where (c.isActive == true && c.UserId==loggeduser.UserId) select c).ToList();

                        if (notes == null)
                        {
                            txtDelete.Visible = false;
                            btnDeleteNote.Visible = false;
                        }

                        dlNotes.DataSource = notes;
                        dlNotes.DataBind();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            User loggeduser = (User)Session["currentuser"];

            using (var myDb = new notsharesEntities())
            {
                var user = (from u in myDb.User
                            where (loggeduser.UserId == u.UserId)
                            select u).SingleOrDefault();

                user.Username = usernameTxt.Text;
                user.Firstname = firstnameTxt.Text;
                user.Surname = lastnameTxt.Text;
                user.Password = HashPassword(passwordTxt.Text);
                user.Email = emailTxt.Text;

                myDb.SaveChanges();
            }
        }

        public static string HashPassword(string password) //Takes a string and creates hash of the string
        {
            //STEP 1 Create the salt value with a cryptographic PRNG:

            byte[] salt;
            new System.Security.Cryptography.RNGCryptoServiceProvider().GetBytes(salt = new byte[16]);

            //STEP 2 Create the Rfc2898DeriveBytes and get the hash value:

            var pbkdf2 = new System.Security.Cryptography.Rfc2898DeriveBytes(password, salt, 10000);
            //Note: Depending on the performance requirements of your specific application, the value '10000' can be reduced. 
            //      A minimum value should be around 1000.
            byte[] hash = pbkdf2.GetBytes(20);

            //STEP 3 Combine the salt and password bytes for later use:

            byte[] hashBytes = new byte[36];
            System.Array.Copy(salt, 0, hashBytes, 0, 16);
            System.Array.Copy(hash, 0, hashBytes, 16, 20);

            //STEP 4 Turn the combined salt+hash into a string for storage

            string savedPasswordHash = System.Convert.ToBase64String(hashBytes);

            //STEP 5 Return hashed password (It will be 48 characters long)
            return savedPasswordHash;

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

        protected void dlNotes_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void btnDeleteNote_Click(object sender, EventArgs e)
        {
            using (var db = new notsharesEntities())
            {
                if (txtDelete.Text != null)
                {
                    int id = Convert.ToInt32(txtDelete.Text);
                    var note = (from x in db.Note where (x.NoteId == id && x.isActive == true) select x).SingleOrDefault();

                    note.isActive = false;
                    db.SaveChanges();
                    Response.Redirect("User.aspx");
                }
                else
                {
                    Label4.Text = "Please enter a delete id";
                }
            }
        }
    }
}