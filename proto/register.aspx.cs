using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;


namespace proto
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // When the button is clicked,
            // change the button text, and disable it.

            Button clickedButton = (Button)sender;
            clickedButton.Text = " Registration in Progress ";
            clickedButton.Enabled = false;

   
        }


        protected void btnRegister_Click2(object sender, EventArgs e)
        {
            //create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            //create role store and role manager
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            //create user
            var user = new IdentityUser() { UserName = txtRegEmail.Text, Email = txtRegEmail.Text };
            IdentityResult result = manager.Create(user, txtRegPassword.Text);
            IdentityRole adminRole = new IdentityRole("admin");
            roleManager.Create(adminRole);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "admin");
                manager.Update(user);
                litRegisterError.Text = "Registration Successful ";
            }
            else
            {
                litRegisterError.Text = "An error has occurred: " + result.Errors.FirstOrDefault();
            }
        }
    }
    }