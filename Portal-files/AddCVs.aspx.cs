using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOBHANDLER
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            using (JOBHANDLEREntities db = new JOBHANDLEREntities())
            {
                tblEntryCV entry = new tblEntryCV();
                entry.objective = txtname.Text;
                entry.experience = txtexprience.Text;
                entry.fscm = Convert.ToInt32(txtedu.Text);
                entry.matm = Convert.ToInt32(TextBox6.Text);
                entry.skills = txtskill.Text;
                entry.acheivement = txtacheivement.Text;
                entry.projects = txtpro.Text;
                entry.intrest = txtinterest.Text;
                proimg.SaveAs(Server.MapPath("images//" + proimg.FileName));
                entry.image = "images/" + proimg.FileName;
                entry.hobby = txthobbies.Text;
                entry.phoneno = TextBox3.Text;
                entry.dob = Convert.ToDateTime(txtinfo.Text);
                entry.gender = TextBox2.Text;             
                entry.email = TextBox4.Text;
                entry.address = TextBox5.Text;

                db.tblEntryCVs.Add(entry);
                db.SaveChanges();
                lbl.InnerText = "Record Inserted successfully";
            }

            Response.Redirect("layout.aspx");

        }
    }
}