using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoteShares
{
    public partial class Register1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            using (var myDB = new notsharesEntities())
            {
                User newu = (from u in myDB.User
                             where u.Email == emailTxt.Text
                             select u).SingleOrDefault();
                if (newu == null)
                {
                    var newuser = new User();

                    newuser.Username = usernameTxt.Text;
                    newuser.Firstname = firstnameTxt.Text;
                    newuser.Surname = lastnameTxt.Text;
                    newuser.Email = emailTxt.Text;
                    newuser.Password = HashPassword(passwordTxt.Text);
                    newuser.IsActive = true;
                    
                    myDB.User.Add(newuser);
                    myDB.SaveChanges();

                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Label2.Text = "This email is already exist! Please enter new email.";
                }
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
    }
}