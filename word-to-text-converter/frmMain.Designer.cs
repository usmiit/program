namespace word_to_text_converter
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.ttHelp = new System.Windows.Forms.ToolTip(this.components);
            this.lblHelp = new System.Windows.Forms.Label();
            this.pnlStatus1 = new System.Windows.Forms.Panel();
            this.lblAppStatus = new System.Windows.Forms.Label();
            this.pnlStatus2 = new System.Windows.Forms.Panel();
            this.pnlBottom = new System.Windows.Forms.Panel();
            this.lblInputInfo = new System.Windows.Forms.Label();
            this.pbArrow1 = new System.Windows.Forms.PictureBox();
            this.pnl1 = new System.Windows.Forms.Panel();
            this.pnlTop = new System.Windows.Forms.Panel();
            this.btnReset = new System.Windows.Forms.Button();
            this.btnConvert = new System.Windows.Forms.Button();
            this.pnl4 = new System.Windows.Forms.Panel();
            this.gbOutputFile = new System.Windows.Forms.GroupBox();
            this.btnTextFileProperties = new System.Windows.Forms.Button();
            this.chkOpenFileAfterConvert = new System.Windows.Forms.CheckBox();
            this.btnSelectOutputFile = new System.Windows.Forms.Button();
            this.tbOutputFilePath = new System.Windows.Forms.TextBox();
            this.pnl3 = new System.Windows.Forms.Panel();
            this.lblOutputInfo = new System.Windows.Forms.Label();
            this.pbArrow2 = new System.Windows.Forms.PictureBox();
            this.pnl2 = new System.Windows.Forms.Panel();
            this.gbInputFile = new System.Windows.Forms.GroupBox();
            this.btnPDFFileProperties = new System.Windows.Forms.Button();
            this.btnSelectInputFile = new System.Windows.Forms.Button();
            this.tbInputFilePath = new System.Windows.Forms.TextBox();
            this.pnlStatus1.SuspendLayout();
            this.pnlStatus2.SuspendLayout();
            this.pnlBottom.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbArrow1)).BeginInit();
            this.pnl1.SuspendLayout();
            this.pnlTop.SuspendLayout();
            this.pnl4.SuspendLayout();
            this.gbOutputFile.SuspendLayout();
            this.pnl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbArrow2)).BeginInit();
            this.pnl2.SuspendLayout();
            this.gbInputFile.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblHelp
            // 
            this.lblHelp.AutoSize = true;
            this.lblHelp.BackColor = System.Drawing.Color.Transparent;
            this.lblHelp.Font = new System.Drawing.Font("Calibri", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHelp.ForeColor = System.Drawing.Color.Blue;
            this.lblHelp.Location = new System.Drawing.Point(189, 5);
            this.lblHelp.Name = "lblHelp";
            this.lblHelp.Size = new System.Drawing.Size(13, 14);
            this.lblHelp.TabIndex = 12;
            this.lblHelp.Text = "?";
            this.ttHelp.SetToolTip(this.lblHelp, "Help");
            this.lblHelp.Click += new System.EventHandler(this.lblHelp_Click);
            // 
            // pnlStatus1
            // 
            this.pnlStatus1.Controls.Add(this.lblAppStatus);
            this.pnlStatus1.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnlStatus1.Location = new System.Drawing.Point(0, 0);
            this.pnlStatus1.Name = "pnlStatus1";
            this.pnlStatus1.Size = new System.Drawing.Size(356, 23);
            this.pnlStatus1.TabIndex = 0;
            // 
            // lblAppStatus
            // 
            this.lblAppStatus.AutoSize = true;
            this.lblAppStatus.ForeColor = System.Drawing.Color.Fuchsia;
            this.lblAppStatus.Location = new System.Drawing.Point(8, 5);
            this.lblAppStatus.Name = "lblAppStatus";
            this.lblAppStatus.Size = new System.Drawing.Size(38, 13);
            this.lblAppStatus.TabIndex = 35;
            this.lblAppStatus.Text = "Ready";
            // 
            // pnlStatus2
            // 
            this.pnlStatus2.Controls.Add(this.lblHelp);
            this.pnlStatus2.Dock = System.Windows.Forms.DockStyle.Right;
            this.pnlStatus2.Location = new System.Drawing.Point(416, 0);
            this.pnlStatus2.Name = "pnlStatus2";
            this.pnlStatus2.Size = new System.Drawing.Size(208, 23);
            this.pnlStatus2.TabIndex = 36;
            // 
            // pnlBottom
            // 
            this.pnlBottom.Controls.Add(this.pnlStatus2);
            this.pnlBottom.Controls.Add(this.pnlStatus1);
            this.pnlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlBottom.Location = new System.Drawing.Point(0, 387);
            this.pnlBottom.Name = "pnlBottom";
            this.pnlBottom.Size = new System.Drawing.Size(624, 23);
            this.pnlBottom.TabIndex = 3;
            // 
            // lblInputInfo
            // 
            this.lblInputInfo.AutoSize = true;
            this.lblInputInfo.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblInputInfo.ForeColor = System.Drawing.Color.Green;
            this.lblInputInfo.Location = new System.Drawing.Point(34, 6);
            this.lblInputInfo.Name = "lblInputInfo";
            this.lblInputInfo.Size = new System.Drawing.Size(212, 13);
            this.lblInputInfo.TabIndex = 0;
            this.lblInputInfo.Text = "Select the Word File for conversion:";
            // 
            // pbArrow1
            // 
            this.pbArrow1.BackColor = System.Drawing.Color.Green;
            this.pbArrow1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.pbArrow1.ErrorImage = null;
            this.pbArrow1.Location = new System.Drawing.Point(12, 5);
            this.pbArrow1.Name = "pbArrow1";
            this.pbArrow1.Size = new System.Drawing.Size(16, 16);
            this.pbArrow1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.pbArrow1.TabIndex = 0;
            this.pbArrow1.TabStop = false;
            // 
            // pnl1
            // 
            this.pnl1.AccessibleRole = System.Windows.Forms.AccessibleRole.None;
            this.pnl1.BackColor = System.Drawing.Color.LightYellow;
            this.pnl1.Controls.Add(this.lblInputInfo);
            this.pnl1.Controls.Add(this.pbArrow1);
            this.pnl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnl1.Location = new System.Drawing.Point(0, 0);
            this.pnl1.Name = "pnl1";
            this.pnl1.Size = new System.Drawing.Size(624, 27);
            this.pnl1.TabIndex = 2;
            // 
            // pnlTop
            // 
            this.pnlTop.BackColor = System.Drawing.Color.LightYellow;
            this.pnlTop.Controls.Add(this.btnReset);
            this.pnlTop.Controls.Add(this.btnConvert);
            this.pnlTop.Controls.Add(this.pnl4);
            this.pnlTop.Controls.Add(this.pnl3);
            this.pnlTop.Controls.Add(this.pnl2);
            this.pnlTop.Controls.Add(this.pnl1);
            this.pnlTop.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlTop.Location = new System.Drawing.Point(0, 0);
            this.pnlTop.Name = "pnlTop";
            this.pnlTop.Size = new System.Drawing.Size(624, 410);
            this.pnlTop.TabIndex = 2;
            // 
            // btnReset
            // 
            this.btnReset.ForeColor = System.Drawing.Color.Black;
            this.btnReset.Location = new System.Drawing.Point(310, 352);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(80, 22);
            this.btnReset.TabIndex = 9;
            this.btnReset.Text = "Reset";
            this.btnReset.UseVisualStyleBackColor = true;
            this.btnReset.Click += new System.EventHandler(this.btnReset_Click);
            // 
            // btnConvert
            // 
            this.btnConvert.ForeColor = System.Drawing.Color.Black;
            this.btnConvert.Location = new System.Drawing.Point(224, 352);
            this.btnConvert.Name = "btnConvert";
            this.btnConvert.Size = new System.Drawing.Size(80, 22);
            this.btnConvert.TabIndex = 8;
            this.btnConvert.Text = "Convert";
            this.btnConvert.UseVisualStyleBackColor = true;
            this.btnConvert.Click += new System.EventHandler(this.btnConvert_Click);
            // 
            // pnl4
            // 
            this.pnl4.BackColor = System.Drawing.Color.Gold;
            this.pnl4.Controls.Add(this.gbOutputFile);
            this.pnl4.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnl4.Location = new System.Drawing.Point(0, 196);
            this.pnl4.Name = "pnl4";
            this.pnl4.Size = new System.Drawing.Size(624, 142);
            this.pnl4.TabIndex = 4;
            // 
            // gbOutputFile
            // 
            this.gbOutputFile.Controls.Add(this.btnTextFileProperties);
            this.gbOutputFile.Controls.Add(this.chkOpenFileAfterConvert);
            this.gbOutputFile.Controls.Add(this.btnSelectOutputFile);
            this.gbOutputFile.Controls.Add(this.tbOutputFilePath);
            this.gbOutputFile.Location = new System.Drawing.Point(12, 6);
            this.gbOutputFile.Name = "gbOutputFile";
            this.gbOutputFile.Size = new System.Drawing.Size(600, 121);
            this.gbOutputFile.TabIndex = 24;
            this.gbOutputFile.TabStop = false;
            this.gbOutputFile.Text = "Text File";
            // 
            // btnTextFileProperties
            // 
            this.btnTextFileProperties.ForeColor = System.Drawing.Color.Black;
            this.btnTextFileProperties.Location = new System.Drawing.Point(512, 68);
            this.btnTextFileProperties.Name = "btnTextFileProperties";
            this.btnTextFileProperties.Size = new System.Drawing.Size(80, 22);
            this.btnTextFileProperties.TabIndex = 7;
            this.btnTextFileProperties.Text = "File Info";
            this.btnTextFileProperties.UseVisualStyleBackColor = true;
            this.btnTextFileProperties.Click += new System.EventHandler(this.btnTextFileProperties_Click);
            // 
            // chkOpenFileAfterConvert
            // 
            this.chkOpenFileAfterConvert.AutoSize = true;
            this.chkOpenFileAfterConvert.ForeColor = System.Drawing.Color.Black;
            this.chkOpenFileAfterConvert.Location = new System.Drawing.Point(7, 19);
            this.chkOpenFileAfterConvert.Name = "chkOpenFileAfterConvert";
            this.chkOpenFileAfterConvert.Size = new System.Drawing.Size(218, 17);
            this.chkOpenFileAfterConvert.TabIndex = 4;
            this.chkOpenFileAfterConvert.Text = "Opens file after conversion with Notepad";
            this.chkOpenFileAfterConvert.UseVisualStyleBackColor = true;
            // 
            // btnSelectOutputFile
            // 
            this.btnSelectOutputFile.ForeColor = System.Drawing.Color.Black;
            this.btnSelectOutputFile.Location = new System.Drawing.Point(7, 68);
            this.btnSelectOutputFile.Name = "btnSelectOutputFile";
            this.btnSelectOutputFile.Size = new System.Drawing.Size(80, 22);
            this.btnSelectOutputFile.TabIndex = 6;
            this.btnSelectOutputFile.Text = "Browse File";
            this.btnSelectOutputFile.UseVisualStyleBackColor = true;
            this.btnSelectOutputFile.Click += new System.EventHandler(this.btnSelectOutputFile_Click);
            // 
            // tbOutputFilePath
            // 
            this.tbOutputFilePath.BackColor = System.Drawing.Color.White;
            this.tbOutputFilePath.ForeColor = System.Drawing.Color.Fuchsia;
            this.tbOutputFilePath.Location = new System.Drawing.Point(8, 42);
            this.tbOutputFilePath.Name = "tbOutputFilePath";
            this.tbOutputFilePath.ReadOnly = true;
            this.tbOutputFilePath.Size = new System.Drawing.Size(584, 20);
            this.tbOutputFilePath.TabIndex = 5;
            this.tbOutputFilePath.Text = "C:\\";
            // 
            // pnl3
            // 
            this.pnl3.AccessibleRole = System.Windows.Forms.AccessibleRole.None;
            this.pnl3.BackColor = System.Drawing.Color.LightYellow;
            this.pnl3.Controls.Add(this.lblOutputInfo);
            this.pnl3.Controls.Add(this.pbArrow2);
            this.pnl3.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnl3.Location = new System.Drawing.Point(0, 169);
            this.pnl3.Name = "pnl3";
            this.pnl3.Size = new System.Drawing.Size(624, 27);
            this.pnl3.TabIndex = 4;
            // 
            // lblOutputInfo
            // 
            this.lblOutputInfo.AutoSize = true;
            this.lblOutputInfo.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblOutputInfo.ForeColor = System.Drawing.Color.Green;
            this.lblOutputInfo.Location = new System.Drawing.Point(34, 7);
            this.lblOutputInfo.Name = "lblOutputInfo";
            this.lblOutputInfo.Size = new System.Drawing.Size(227, 13);
            this.lblOutputInfo.TabIndex = 23;
            this.lblOutputInfo.Text = "Select location for the Text Document:";
            // 
            // pbArrow2
            // 
            this.pbArrow2.BackColor = System.Drawing.Color.Green;
            this.pbArrow2.ErrorImage = null;
            this.pbArrow2.Location = new System.Drawing.Point(12, 6);
            this.pbArrow2.Name = "pbArrow2";
            this.pbArrow2.Size = new System.Drawing.Size(16, 16);
            this.pbArrow2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.pbArrow2.TabIndex = 0;
            this.pbArrow2.TabStop = false;
            // 
            // pnl2
            // 
            this.pnl2.BackColor = System.Drawing.Color.Gold;
            this.pnl2.Controls.Add(this.gbInputFile);
            this.pnl2.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnl2.Location = new System.Drawing.Point(0, 27);
            this.pnl2.Name = "pnl2";
            this.pnl2.Size = new System.Drawing.Size(624, 142);
            this.pnl2.TabIndex = 3;
            // 
            // gbInputFile
            // 
            this.gbInputFile.Controls.Add(this.btnPDFFileProperties);
            this.gbInputFile.Controls.Add(this.btnSelectInputFile);
            this.gbInputFile.Controls.Add(this.tbInputFilePath);
            this.gbInputFile.ForeColor = System.Drawing.Color.Black;
            this.gbInputFile.Location = new System.Drawing.Point(12, 6);
            this.gbInputFile.Name = "gbInputFile";
            this.gbInputFile.Size = new System.Drawing.Size(600, 121);
            this.gbInputFile.TabIndex = 5;
            this.gbInputFile.TabStop = false;
            this.gbInputFile.Text = "Word File";
            // 
            // btnPDFFileProperties
            // 
            this.btnPDFFileProperties.ForeColor = System.Drawing.Color.Black;
            this.btnPDFFileProperties.Location = new System.Drawing.Point(511, 45);
            this.btnPDFFileProperties.Name = "btnPDFFileProperties";
            this.btnPDFFileProperties.Size = new System.Drawing.Size(80, 22);
            this.btnPDFFileProperties.TabIndex = 2;
            this.btnPDFFileProperties.Text = "File Info";
            this.btnPDFFileProperties.UseVisualStyleBackColor = true;
            this.btnPDFFileProperties.Click += new System.EventHandler(this.btnPDFFileProperties_Click);
            // 
            // btnSelectInputFile
            // 
            this.btnSelectInputFile.ForeColor = System.Drawing.Color.Black;
            this.btnSelectInputFile.Location = new System.Drawing.Point(8, 45);
            this.btnSelectInputFile.Name = "btnSelectInputFile";
            this.btnSelectInputFile.Size = new System.Drawing.Size(80, 22);
            this.btnSelectInputFile.TabIndex = 1;
            this.btnSelectInputFile.Text = "Browse File";
            this.btnSelectInputFile.UseVisualStyleBackColor = true;
            this.btnSelectInputFile.Click += new System.EventHandler(this.btnSelectInputFile_Click);
            // 
            // tbInputFilePath
            // 
            this.tbInputFilePath.BackColor = System.Drawing.Color.White;
            this.tbInputFilePath.ForeColor = System.Drawing.Color.Fuchsia;
            this.tbInputFilePath.Location = new System.Drawing.Point(7, 19);
            this.tbInputFilePath.Name = "tbInputFilePath";
            this.tbInputFilePath.ReadOnly = true;
            this.tbInputFilePath.Size = new System.Drawing.Size(584, 20);
            this.tbInputFilePath.TabIndex = 0;
            this.tbInputFilePath.Text = "C:\\";
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Gold;
            this.ClientSize = new System.Drawing.Size(624, 410);
            this.Controls.Add(this.pnlBottom);
            this.Controls.Add(this.pnlTop);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Word Tube";
            this.pnlStatus1.ResumeLayout(false);
            this.pnlStatus1.PerformLayout();
            this.pnlStatus2.ResumeLayout(false);
            this.pnlStatus2.PerformLayout();
            this.pnlBottom.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pbArrow1)).EndInit();
            this.pnl1.ResumeLayout(false);
            this.pnl1.PerformLayout();
            this.pnlTop.ResumeLayout(false);
            this.pnl4.ResumeLayout(false);
            this.gbOutputFile.ResumeLayout(false);
            this.gbOutputFile.PerformLayout();
            this.pnl3.ResumeLayout(false);
            this.pnl3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbArrow2)).EndInit();
            this.pnl2.ResumeLayout(false);
            this.gbInputFile.ResumeLayout(false);
            this.gbInputFile.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ToolTip ttHelp;
        private System.Windows.Forms.Label lblHelp;
        private System.Windows.Forms.Panel pnlStatus1;
        private System.Windows.Forms.Label lblAppStatus;
        private System.Windows.Forms.Panel pnlStatus2;
        private System.Windows.Forms.Panel pnlBottom;
        private System.Windows.Forms.Label lblInputInfo;
        private System.Windows.Forms.PictureBox pbArrow1;
        private System.Windows.Forms.Panel pnl1;
        private System.Windows.Forms.Panel pnlTop;
        private System.Windows.Forms.Button btnReset;
        private System.Windows.Forms.Button btnConvert;
        private System.Windows.Forms.Panel pnl4;
        private System.Windows.Forms.GroupBox gbOutputFile;
        private System.Windows.Forms.Button btnTextFileProperties;
        private System.Windows.Forms.CheckBox chkOpenFileAfterConvert;
        private System.Windows.Forms.Button btnSelectOutputFile;
        private System.Windows.Forms.TextBox tbOutputFilePath;
        private System.Windows.Forms.Panel pnl3;
        private System.Windows.Forms.Label lblOutputInfo;
        private System.Windows.Forms.PictureBox pbArrow2;
        private System.Windows.Forms.Panel pnl2;
        private System.Windows.Forms.GroupBox gbInputFile;
        private System.Windows.Forms.Button btnPDFFileProperties;
        private System.Windows.Forms.Button btnSelectInputFile;
        private System.Windows.Forms.TextBox tbInputFilePath;
    }
}

