using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            if (checkedListBox1.Items.Count == 0)
            {
                button1.Enabled = false;
                button3.Enabled = false;
            }
        }

        int i=0;

        private void button2_Click(object sender, EventArgs e)
        {
            i++;
            checkedListBox1.Items.Add(i.ToString());

            if (checkedListBox1.Items.Count > 0)
            {
                button1.Enabled = true;
                button1.Text = "Select All";

            }
        }

        int selectedIndex;

        private void checkedListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedIndex = checkedListBox1.SelectedIndex;
            button3.Enabled = true;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            i = checkedListBox1.Items.Count-1;

            do
            {
                if (checkedListBox1.GetItemChecked(i))
                    checkedListBox1.Items.RemoveAt(i);

                i--;
            } while (i >= 0);



         
        }

        private void button1_Click(object sender, EventArgs e)
        {
            bool state = false;

            if (button1.Text.Equals("Select All"))
            {
                state = true;
                button1.Text = "Unselect All";
            }
            else if (button1.Text.Equals("Unselect All"))
            {
                state = false;
                button1.Text = "Select All";
            }
            
            for (int i = 0; i < checkedListBox1.Items.Count; i++)
                {
                    checkedListBox1.SetItemChecked(i, state);
                    
                }

           
        }
    }
}