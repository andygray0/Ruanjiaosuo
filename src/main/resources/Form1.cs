using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data.Odbc;
using System.Runtime.InteropServices;
using System.Diagnostics;

namespace BITC
{
    public partial class Form1 : Form
    {
        private string dsn = "";
        private string user = "";
        private string password = "";
        private string url = "";
        private string address = "";

        [DllImport("kernel32")]
        private static extern int GetPrivateProfileString(string section, string key, string def, StringBuilder retVal, int size, string filePath);

        public Form1()
        {
            InitializeComponent();
            dsn = readConfig("CONFIG", "dsn");
            user = readConfig("CONFIG", "user");
            password = readConfig("CONFIG", "password");
            url = readConfig("CONFIG", "url");
            address = readConfig("CONFIG", "address");
            cbQueryType.SelectedIndex = 0;
        }

        public string readConfig(string Section, string Key)
        {
            StringBuilder temp = new StringBuilder(255);
            int i = GetPrivateProfileString(Section, Key, "", temp, 255, Application.StartupPath + "\\config.ini");
            return temp.ToString();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.textBox1.Text = "�����������";
            this.textBox1.ForeColor = Color.Gray;
            this.textBox1.Focus();
            this.label14.BackColor = Color.Transparent;
            this.label14.BringToFront();

            this.label15.BackColor = Color.Transparent;
            this.label15.BringToFront();

        }

        private void button1_Click(object sender, EventArgs e)
        {

            if (this.textBox1.Text == "" || this.textBox1.Text.ToString() == "�����������")
            {
                MessageBox.Show("�������ѯ������");
            }
            else
            {
                this.panel3.Visible = false;
                try
                {
                    OdbcConnection con = new OdbcConnection("DSN=" + dsn + ";UID=" + user + ";PWD=" + password);
                    
                    OdbcCommand mysqlcommand = con.CreateCommand();
                    con.Open();
                    string sss = this.textBox1.Text.ToString().Trim();
                    sss = sss.Replace(" ", "");

                    //select ����, ��������,�ʽ����  from v_dzqx where ����֤��='100020139' and ��ͨ����=@ltlx

                    //string sql = "select  ��ȡ��,������,������,������,��������,��Ʒ����,���ƺ�  from wxxxb where ƴ������  like '%" + sss + "%' ";

                   // string sql = "select ����, ��������,�ʽ����  from v_dzqx where ����֤��='100020139'";
                    //string sql = "select *  from v_wxtm where ������='200704871'";

                    //string sql = "select sum(�ʽ����) from v_dzqx  where ����֤��='100020139' and ��ͨ����='רҵ��1'";
                    
                    //ADD BY ZHAOGANG 2014-06-03
                    string sql = "";
                    switch (this.cbQueryType.SelectedIndex)
                    {
                        case 0:
                            sql = "SELECT wxxxb.��ȡ��,wxxxb.������,wxxxb.������,wxxxb.������,wxxxb.��������,wxxxb.��Ʒ����,wxxxb.���ƺ� FROM wxxxb, tmjsb WHERE wxxxb.���ƺ� = tmjsb.���ƺ� AND (tmjsb.ƴ������ LIKE '%" + sss + "%' OR tmjsb.������ LIKE '%" + sss + "%')";
                            break;
                        case 1:
                            sql = "SELECT wxxxb.��ȡ��,wxxxb.������,wxxxb.������,wxxxb.������,wxxxb.��������,wxxxb.��Ʒ����,wxxxb.���ƺ� FROM wxxxb, cbjsb WHERE wxxxb.���ƺ� = cbjsb.���ƺ� AND (cbjsb.ƴ������ LIKE '%" + sss + "%' OR cbjsb.������ LIKE '%" + sss + "%')";
                            break;
                        case 2:
                            sql = "SELECT wxxxb.��ȡ��,wxxxb.������,wxxxb.������,wxxxb.������,wxxxb.��������,wxxxb.��Ʒ����,wxxxb.���ƺ� FROM wxxxb, zzjsb WHERE wxxxb.���ƺ� = zzjsb.���ƺ� AND (zzjsb.ƴ������ LIKE '%" + sss + "%' OR zzjsb.������ LIKE '%" + sss + "%')";
                            break;
                        case 3:
                            sql = "SELECT DISTINCT wxxxb.��ȡ��,wxxxb.������,wxxxb.������,wxxxb.������,wxxxb.��������,wxxxb.��Ʒ����,wxxxb.���ƺ� FROM wxxxb, tmxxb WHERE wxxxb.���ƺ� = tmxxb.���ƺ� AND tmxxb.������ = '" + sss + "'";
                            break;
                        default:
                            sql = "SELECT wxxxb.��ȡ��,wxxxb.������,wxxxb.������,wxxxb.������,wxxxb.��������,wxxxb.��Ʒ����,wxxxb.���ƺ� FROM wxxxb, tmjsb WHERE wxxxb.���ƺ� = tmjsb.���ƺ� AND (tmjsb.ƴ������ LIKE '%" + sss + "%' OR tmjsb.������ LIKE '%" + sss + "%')";
                            break;
                    }

                     
                    OdbcDataAdapter oda = new OdbcDataAdapter(sql, con);
                    DataSet ds = new DataSet();
                    oda.Fill(ds);
                   // string iii  = ds.Tables[0].Rows[0]["������Ա"].ToString();
                    this.dataGridView1.DataSource = ds.Tables[0];
                    this.dataGridView1.Columns["������"].FillWeight = 35;
                    this.dataGridView1.Columns["��ȡ��"].FillWeight = 10;
                    this.dataGridView1.Columns["��ȡ��"].Visible = false;
                    this.dataGridView1.Columns["������"].FillWeight = 20;
                    this.dataGridView1.Columns["������"].FillWeight = 10;
                    this.dataGridView1.Columns["��������"].FillWeight = 10;
                    this.dataGridView1.Columns["��������"].Visible = false;
                    this.dataGridView1.Columns["���ƺ�"].FillWeight = 10;
                    this.dataGridView1.Columns["���ƺ�"].Visible = false;

                    this.dataGridView1.Columns["����λ������Ϣ"].FillWeight = 25;

                    if (ds.Tables[0].Rows.Count != 0)
                    {
                       
                    }

                    
                    con.Close();

                }
                catch (Exception ee)
                {
                    MessageBox.Show(ee.ToString());
                }
            }
        }

        //�������
        private void button40_Click(object sender, EventArgs e)
        {
            try
            {
              this.textBox1.Text = "";

              this.textBox1.ForeColor = Color.Black;
              this.panel3.Visible = false;
              this.panel2.Visible = false;
              Process pro = Process.Start(Application.StartupPath + "\\SoftBoard.exe");
              this.textBox1.Focus();
            }
            catch (Exception ee)
            {
                MessageBox.Show(ee.ToString());

            }

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int ii = e.RowIndex;
                
                string test = dataGridView1.Rows[ii].Cells["���ƺ�"].Value.ToString();
                try
                {
                    OdbcConnection con = new OdbcConnection("DSN=" + dsn + ";UID=" + user + ";PWD=" + password);
                
                    OdbcCommand mysqlcommand = con.CreateCommand();
                    
                    con.Open();
                    string sql = "select  * from tmxxb where �����ַ = '" + address + "' AND ���ƺ�  ='" + test + "'";
                 
                    OdbcDataAdapter oda = new OdbcDataAdapter(sql, con);
                    DataSet ds = new DataSet();
                    oda.Fill(ds);

                   
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        if (ds.Tables[0].Rows[i]["��־λ"].ToString() == "0" || ds.Tables[0].Rows[i]["��־λ"].ToString() == "O")
                        {
                            //ds.Tables[0].Rows[i].Delete();
                            ds.Tables[0].Rows.RemoveAt(i);            
                        }
                    }
                 
                    if(ds.Tables[0].Rows.Count == 0)
                    {
                        this.panel2.Visible = true;
                        //this.panel1.Visible = false;
                        
                        this.linkLabel1.Visible = true;
                        this.button50.Visible = true;

                        this.jwh.Text = "ͼ����裬�޷�����";
                        this.linkLabel1.Visible = false;
                        this.button50.Visible = false;
                        this.dataGridView2.Visible = false;

                    
                    
                    }
                    else{
                      if (ds.Tables[0].Rows.Count != 0)
                      {
                        this.dataGridView2.Visible = true;
                        this.panel2.Visible = true;
                        //this.panel1.Visible = false;
                        dataGridView2.AutoGenerateColumns = false;
                        DataTable dt = ds.Tables[0];

                        dt.Columns.Add("ͼ��״̬");
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            dt.Rows[i]["ͼ��״̬"] = "�ڿ�";
                            
                        }
                        this.dataGridView2.DataSource = dt;


                    }
                    if (ds.Tables[0].Rows.Count != 0)
                    {

                        //20110621���²���
                        int uuuss = 0;
                        DataSet ds2 = new DataSet();
                        for (int iu = 0; iu < ds.Tables[0].Rows.Count; iu++)
                        {
                            string sql2 = "SELECT * FROM tmjwb where ������ʶ = " + ds.Tables[0].Rows[iu]["��ʶ��"].ToString() + "";
                            OdbcDataAdapter oda2 = new OdbcDataAdapter(sql2, con);
                            
                            oda2.Fill(ds2);
                            if (ds2.Tables[0].Rows.Count == 0)
                            {
                                
                            }
                            else
                            {
                                uuuss++;
                                
                            }
                        }
                        if (uuuss > 0)
                        {
                            
                            this.jwh.Text = ds2.Tables[0].Rows[0]["��λ��"].ToString();
                            string uiui = this.jwh.Text.ToString();
                            if (uiui != "99999")
                            {
                                this.panel2.Visible = true;
                                //this.panel1.Visible = false;
                                this.linkLabel1.Visible = true;
                                this.button50.Visible = true;
                            }
                            else {
                                MessageBox.Show("�������¼�");
                            }
                            
                        }
                        else {
                            this.jwh.Text = "���޼�λ��Ϣ";
                            this.linkLabel1.Visible = false;
                            this.button50.Visible = false;
                            this.dataGridView2.Visible = false;
                        }
                        
                    }
                    else
                    {
                        this.jwh.Text = "ͼ����裬�޷�����";
                        this.linkLabel1.Visible = false;
                        this.button50.Visible = false;
                        this.dataGridView2.Visible = false;

                    }
                    //20110621���Ĳ���
                }
                    con.Close();

                }
                catch (Exception ee)
                {
                    MessageBox.Show(ee.ToString());
                }
            }
            catch (Exception eee)
            {
                MessageBox.Show(eee.ToString());

            }
        }

        private void button41_Click(object sender, EventArgs e)
        {
            this.panel2.Visible = false;
            this.textBox1.Text = "";

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            string jwh = this.jwh.Text.ToString();
            if (jwh != "")
            {
                //this.panel2.Visible = false;
                //this.panel3.Visible = true;
                //ZHAOGANG 20140609
                this.panel2.Visible = false;
                this.panel3.Visible = true;
                this.webBrowser1.Visible = true;
                this.webBrowser1.Navigate(url + jwh.Trim() + "");
            }
        }

        private void button43_Click(object sender, EventArgs e)
        {
            this.panel3.Visible = false;

        }

        private void button44_Click(object sender, EventArgs e)
        {

            this.panel3.Visible = false;
        }

        private void button46_Click(object sender, EventArgs e)
        {
           
            this.textBox1.Focus();
            SendKeys.Send("{Backspace}");
        }

        private void button47_Click(object sender, EventArgs e)
        {
            this.panel2.Visible = false;
            //this.panel1.Visible = false;
            this.panel3.Visible = false;
            OdbcConnection con = new OdbcConnection("DSN=" + dsn + ";UID=" + user + ";PWD=" + password);
            OdbcCommand mysqlcommand = con.CreateCommand();

            con.Open();
            string sql = "select  ��ȡ��,������,������,������,��������,��Ʒ����,���ƺ�  from wxxxb where ƴ������  = 'QRREFFCCEEXXCCOOKKAAAAAAAA'";
           
            OdbcDataAdapter oda = new OdbcDataAdapter(sql, con);
            DataSet ds = new DataSet();
            oda.Fill(ds);
            this.dataGridView1.DataSource = ds.Tables[0];
            this.dataGridView1.Columns["������"].FillWeight = 30;
            this.dataGridView1.Columns["��ȡ��"].FillWeight = 10;
            this.dataGridView1.Columns["��ȡ��"].Visible = false;
            this.dataGridView1.Columns["������"].FillWeight = 20;
            this.dataGridView1.Columns["������"].FillWeight = 10;
            this.dataGridView1.Columns["��������"].FillWeight = 10;
            this.dataGridView1.Columns["��������"].Visible = false;
            this.dataGridView1.Columns["���ƺ�"].FillWeight = 10;
            this.dataGridView1.Columns["���ƺ�"].Visible = false;

            this.dataGridView1.Columns["����λ������Ϣ"].FillWeight = 10;
            if (ds.Tables[0].Rows.Count != 0)
            {

            }

            con.Close();

            DataSet dds = new DataSet();
            this.textBox1.Text = "�����������";
            this.textBox1.ForeColor = Color.Gray;
            this.textBox1.Focus();
            this.label14.BackColor = Color.Transparent;
            this.label14.BringToFront();

            this.label15.BackColor = Color.Transparent;
            this.label15.BringToFront();
        }

        private void dataGridView1_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {

        }

        private void button49_Click(object sender, EventArgs e)
        {
            this.textBox1.Focus();
            SendKeys.Send(" ");
        }

        private void button50_Click(object sender, EventArgs e)
        {
            string jwh = this.jwh.Text.ToString();
            if (jwh != "" )
            {

                //if (jwh != "99999")
                //{
                //    this.panel2.Visible = false;
                //    this.panel3.Visible = true;
                //}

                //ZHAOGANG 20140609
                this.panel2.Visible = false;
                this.panel3.Visible = true;
                this.webBrowser1.Visible = true;
                this.webBrowser1.Navigate(url + jwh.Trim() + "");
                
            }
            else
            {
                this.webBrowser1.Visible = false;
            }

           
        }

        private void textBox1_Click(object sender, EventArgs e)
        {
            if (this.textBox1.Text == "�����������") this.textBox1.Text = "";
        }

        private void cbQueryType_SelectionChangeCommitted(object sender, EventArgs e)
        {
            this.textBox1.Focus();
        }

    }
}