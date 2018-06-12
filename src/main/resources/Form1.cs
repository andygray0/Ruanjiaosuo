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
            this.textBox1.Text = "请输入检索词";
            this.textBox1.ForeColor = Color.Gray;
            this.textBox1.Focus();
            this.label14.BackColor = Color.Transparent;
            this.label14.BringToFront();

            this.label15.BackColor = Color.Transparent;
            this.label15.BringToFront();

        }

        private void button1_Click(object sender, EventArgs e)
        {

            if (this.textBox1.Text == "" || this.textBox1.Text.ToString() == "请输入检索词")
            {
                MessageBox.Show("请输入查询条件！");
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

                    //select 借期, 读者姓名,允借册数  from v_dzqx where 读者证号='100020139' and 流通类型=@ltlx

                    //string sql = "select  索取号,正题名,责任者,出版者,出版日期,作品语种,控制号  from wxxxb where 拼音编码  like '%" + sss + "%' ";

                   // string sql = "select 借期, 读者姓名,允借册数  from v_dzqx where 读者证号='100020139'";
                    //string sql = "select *  from v_wxtm where 条形码='200704871'";

                    //string sql = "select sum(允借册数) from v_dzqx  where 读者证号='100020139' and 流通类型='专业书1'";
                    
                    //ADD BY ZHAOGANG 2014-06-03
                    string sql = "";
                    switch (this.cbQueryType.SelectedIndex)
                    {
                        case 0:
                            sql = "SELECT wxxxb.索取号,wxxxb.正题名,wxxxb.责任者,wxxxb.出版者,wxxxb.出版日期,wxxxb.作品语种,wxxxb.控制号 FROM wxxxb, tmjsb WHERE wxxxb.控制号 = tmjsb.控制号 AND (tmjsb.拼音编码 LIKE '%" + sss + "%' OR tmjsb.检索点 LIKE '%" + sss + "%')";
                            break;
                        case 1:
                            sql = "SELECT wxxxb.索取号,wxxxb.正题名,wxxxb.责任者,wxxxb.出版者,wxxxb.出版日期,wxxxb.作品语种,wxxxb.控制号 FROM wxxxb, cbjsb WHERE wxxxb.控制号 = cbjsb.控制号 AND (cbjsb.拼音编码 LIKE '%" + sss + "%' OR cbjsb.出版者 LIKE '%" + sss + "%')";
                            break;
                        case 2:
                            sql = "SELECT wxxxb.索取号,wxxxb.正题名,wxxxb.责任者,wxxxb.出版者,wxxxb.出版日期,wxxxb.作品语种,wxxxb.控制号 FROM wxxxb, zzjsb WHERE wxxxb.控制号 = zzjsb.控制号 AND (zzjsb.拼音编码 LIKE '%" + sss + "%' OR zzjsb.检索点 LIKE '%" + sss + "%')";
                            break;
                        case 3:
                            sql = "SELECT DISTINCT wxxxb.索取号,wxxxb.正题名,wxxxb.责任者,wxxxb.出版者,wxxxb.出版日期,wxxxb.作品语种,wxxxb.控制号 FROM wxxxb, tmxxb WHERE wxxxb.控制号 = tmxxb.控制号 AND tmxxb.条形码 = '" + sss + "'";
                            break;
                        default:
                            sql = "SELECT wxxxb.索取号,wxxxb.正题名,wxxxb.责任者,wxxxb.出版者,wxxxb.出版日期,wxxxb.作品语种,wxxxb.控制号 FROM wxxxb, tmjsb WHERE wxxxb.控制号 = tmjsb.控制号 AND (tmjsb.拼音编码 LIKE '%" + sss + "%' OR tmjsb.检索点 LIKE '%" + sss + "%')";
                            break;
                    }

                     
                    OdbcDataAdapter oda = new OdbcDataAdapter(sql, con);
                    DataSet ds = new DataSet();
                    oda.Fill(ds);
                   // string iii  = ds.Tables[0].Rows[0]["还操作员"].ToString();
                    this.dataGridView1.DataSource = ds.Tables[0];
                    this.dataGridView1.Columns["正题名"].FillWeight = 35;
                    this.dataGridView1.Columns["索取号"].FillWeight = 10;
                    this.dataGridView1.Columns["索取号"].Visible = false;
                    this.dataGridView1.Columns["责任者"].FillWeight = 20;
                    this.dataGridView1.Columns["出版者"].FillWeight = 10;
                    this.dataGridView1.Columns["出版日期"].FillWeight = 10;
                    this.dataGridView1.Columns["出版日期"].Visible = false;
                    this.dataGridView1.Columns["控制号"].FillWeight = 10;
                    this.dataGridView1.Columns["控制号"].Visible = false;

                    this.dataGridView1.Columns["书库架位导航信息"].FillWeight = 25;

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

        //打开软键盘
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
                
                string test = dataGridView1.Rows[ii].Cells["控制号"].Value.ToString();
                try
                {
                    OdbcConnection con = new OdbcConnection("DSN=" + dsn + ";UID=" + user + ";PWD=" + password);
                
                    OdbcCommand mysqlcommand = con.CreateCommand();
                    
                    con.Open();
                    string sql = "select  * from tmxxb where 分配地址 = '" + address + "' AND 控制号  ='" + test + "'";
                 
                    OdbcDataAdapter oda = new OdbcDataAdapter(sql, con);
                    DataSet ds = new DataSet();
                    oda.Fill(ds);

                   
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        if (ds.Tables[0].Rows[i]["标志位"].ToString() == "0" || ds.Tables[0].Rows[i]["标志位"].ToString() == "O")
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

                        this.jwh.Text = "图书外借，无法导航";
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

                        dt.Columns.Add("图书状态");
                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            dt.Rows[i]["图书状态"] = "在库";
                            
                        }
                        this.dataGridView2.DataSource = dt;


                    }
                    if (ds.Tables[0].Rows.Count != 0)
                    {

                        //20110621更新部分
                        int uuuss = 0;
                        DataSet ds2 = new DataSet();
                        for (int iu = 0; iu < ds.Tables[0].Rows.Count; iu++)
                        {
                            string sql2 = "SELECT * FROM tmjwb where 条码表标识 = " + ds.Tables[0].Rows[iu]["标识列"].ToString() + "";
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
                            
                            this.jwh.Text = ds2.Tables[0].Rows[0]["架位号"].ToString();
                            string uiui = this.jwh.Text.ToString();
                            if (uiui != "99999")
                            {
                                this.panel2.Visible = true;
                                //this.panel1.Visible = false;
                                this.linkLabel1.Visible = true;
                                this.button50.Visible = true;
                            }
                            else {
                                MessageBox.Show("该书已下架");
                            }
                            
                        }
                        else {
                            this.jwh.Text = "暂无架位信息";
                            this.linkLabel1.Visible = false;
                            this.button50.Visible = false;
                            this.dataGridView2.Visible = false;
                        }
                        
                    }
                    else
                    {
                        this.jwh.Text = "图书外借，无法导航";
                        this.linkLabel1.Visible = false;
                        this.button50.Visible = false;
                        this.dataGridView2.Visible = false;

                    }
                    //20110621更改部分
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
            string sql = "select  索取号,正题名,责任者,出版者,出版日期,作品语种,控制号  from wxxxb where 拼音编码  = 'QRREFFCCEEXXCCOOKKAAAAAAAA'";
           
            OdbcDataAdapter oda = new OdbcDataAdapter(sql, con);
            DataSet ds = new DataSet();
            oda.Fill(ds);
            this.dataGridView1.DataSource = ds.Tables[0];
            this.dataGridView1.Columns["正题名"].FillWeight = 30;
            this.dataGridView1.Columns["索取号"].FillWeight = 10;
            this.dataGridView1.Columns["索取号"].Visible = false;
            this.dataGridView1.Columns["责任者"].FillWeight = 20;
            this.dataGridView1.Columns["出版者"].FillWeight = 10;
            this.dataGridView1.Columns["出版日期"].FillWeight = 10;
            this.dataGridView1.Columns["出版日期"].Visible = false;
            this.dataGridView1.Columns["控制号"].FillWeight = 10;
            this.dataGridView1.Columns["控制号"].Visible = false;

            this.dataGridView1.Columns["书库架位导航信息"].FillWeight = 10;
            if (ds.Tables[0].Rows.Count != 0)
            {

            }

            con.Close();

            DataSet dds = new DataSet();
            this.textBox1.Text = "请输入检索词";
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
            if (this.textBox1.Text == "请输入检索词") this.textBox1.Text = "";
        }

        private void cbQueryType_SelectionChangeCommitted(object sender, EventArgs e)
        {
            this.textBox1.Focus();
        }

    }
}