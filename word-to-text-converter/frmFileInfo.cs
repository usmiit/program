using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace word_to_text_converter
{
    public partial class frmFileInfo : Form
    {
        public frmFileInfo()
        {
        }

        public frmFileInfo(string fileType, string fileProducer, string fileCreator, string fileCreationDate, string fileModificationDate, string fileAuthour,
            string fileSubject, string fileTitle, string fileDescription, string fileName, string filePath, string fileVersion, string filePages)
        {
            InitializeComponent();

            if (string.IsNullOrEmpty(fileType))
                this.Text = "?";
            else
                this.Text = fileType;

            if (string.IsNullOrEmpty(fileProducer))
                lblProducer.Text = "?";
            else
                lblProducer.Text = fileProducer;

            if (string.IsNullOrEmpty(fileCreator))
                lblCreator.Text = "?";
            else
                lblCreator.Text = fileCreator;

            if (string.IsNullOrEmpty(fileCreationDate))
                lblCreationDate.Text = "?";
            else
                lblCreationDate.Text = fileCreationDate;

            if (string.IsNullOrEmpty(fileModificationDate))
                lblModificationDate.Text = "?";
            else
                lblModificationDate.Text = fileModificationDate;

            if (string.IsNullOrEmpty(fileAuthour))
                lblAuthor.Text = "?";
            else
                lblAuthor.Text = fileAuthour;

            if (string.IsNullOrEmpty(fileSubject))
                lblSubject.Text = "?";
            else
                lblSubject.Text = fileSubject;

            if (string.IsNullOrEmpty(fileTitle))
                lblTitle.Text = "?";
            else
                lblTitle.Text = fileTitle;

            if (string.IsNullOrEmpty(fileDescription))
                lblDescription.Text = "?";
            else
                lblDescription.Text = fileDescription;

            if (string.IsNullOrEmpty(fileName))
                lblFileName.Text = "?";
            else
                lblFileName.Text = fileName;

            if (string.IsNullOrEmpty(filePath))
                lblFilePath.Text = "?";
            else
                lblFilePath.Text = filePath;

            if (string.IsNullOrEmpty(fileVersion))
                lblFileVersion.Text = "?";
            else
                lblFileVersion.Text = fileVersion;

            if (string.IsNullOrEmpty(filePages))
                lblPages.Text = "?";
            else
                lblPages.Text = filePages;
        }
    }
}
