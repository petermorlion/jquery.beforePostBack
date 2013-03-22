using System;

namespace BeforePostBackSample
{
    public partial class Default : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (!IsPostBack)
            {
                labelPostBackCount.Text = 0.ToString();
                labelSubmitCount.Text = 0.ToString();
            }
        }

        protected void OnButtonPostBackClick(object sender, EventArgs e)
        {
            var postBackCount = int.Parse(labelSubmitCount.Text);
            postBackCount++;
            labelSubmitCount.Text = postBackCount.ToString();
        }

        protected void LinkButtonPostBackOnClick(object sender, EventArgs e)
        {
            var postBackCount = int.Parse(labelPostBackCount.Text);
            postBackCount++;
            labelPostBackCount.Text = postBackCount.ToString();
        }
    }
}