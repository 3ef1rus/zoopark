using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using zoopark;

namespace ZooparkForms
{
    public partial class log_in : Form
    {

        Database database = new Database(); 
        public log_in()
        {
            InitializeComponent();
            StartPosition= FormStartPosition.CenterScreen;
        }
        private void log_in_Load(object sender, EventArgs e)
        {
            textBoxPassword.PasswordChar= '*';
            textBoxLogin.MaxLength=50;
            textBoxPassword.MaxLength=50;
        }
        private void btn_Enter_Click(object sender, EventArgs e)
        {
            var loginUser = textBoxLogin.Text;
            var passwordUser = textBoxPassword.Text;

            SqlDataAdapter adapter= new SqlDataAdapter(); 
            DataTable table= new DataTable();

            string quaryStr = $"select useID, login_user, password_user from register where login_user='{loginUser}' and password_user='{passwordUser}'";

            SqlCommand command = new SqlCommand(quaryStr,database.getConnection()); 

            adapter.SelectCommand= command;
            adapter.Fill(table);

            if(table.Rows.Count == 1 ) 
            {
                MessageBox.Show("Вы вошли", "Успех", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Form1 frm1= new Form1();
                this.Hide();
                frm1.ShowDialog();
                this.Show();
            }
            else 
            { 
                MessageBox.Show("Не существует", "Такого аккаунта не существует", MessageBoxButtons.OK, MessageBoxIcon.Warning); 
            }

        }

        private void linkLabelCreateAcc_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            sign_in sing = new sign_in();
            this.Hide();
            sing.ShowDialog();
            this.Show();
        }
    }
}
