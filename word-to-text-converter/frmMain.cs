using System;
using System.Linq;
using System.Windows.Forms;
using System.IO;
using Spire.Doc;

namespace word_to_text_converter
{
    /// <summary>
    /// Project Name: Word To Text Converter
    /// Project Description: This is an application software that converts Word File into Text Document.
    /// </summary>

    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        #region doOperations

        //Fields declaration and initialization
        int numberOfPages = 0;
        string wordFileName = null;
        string wordFilePath = null;
        string txtFileName = null;
        string txtFilePath = null;

        private string wordFileProducer = null;
        private string wordFileCreator = null;
        private string wordFileCreationDate = null;
        private string wordFileModificationDate = null;
        private string wordFileAuthour = null;
        private string wordFileSubject = null;
        private string wordFileTitle = null;
        private string wordFileDescription = null;
        private string wordFileVersion = null;

        private string txtFileProducer = null;
        private string txtFileCreator = null;
        private string txtFileCreationDate = null;
        private string txtFileModificationDate = null;
        private string txtFileAuthour = null;
        private string txtFileSubject = null;
        private string txtFileTitle = null;
        private string txtFileDescription = null;
        private string txtFileVersion = null;

        private void doConvertWordToText(string WordFileLocation, string txtFileLocation)
        {
            try
            {
                //Instantiate an object of Spire.Document
                Document doc1 = new Document();

                //Load Word document
                doc1.LoadFromFile(WordFileLocation);

                //Save Text Document
                doc1.SaveToFile(txtFilePath, FileFormat.Txt);

                //Show the number of PDF pages converted
                appStatus(numberOfPages.ToString() + " page(s) converted.");

                //Launch the Text Document
                TextDocViewer(txtFilePath);

                //Close Spire.Document
                doc1.Close();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message, "Alert", MessageBoxButtons.OK);
            }
        }

        private void TextDocViewer(string documentName)
        {
            try
            {
                System.Diagnostics.Process.Start(documentName);
            }
            catch
            {
            }
        }

        private void appStatus(string remark)
        {
            if (!string.IsNullOrEmpty(remark))
                lblAppStatus.Text = remark;
        }

        private void resetFields()
        {
            numberOfPages = 0;
            txtFilePath = null;
            wordFilePath = null;
            txtFileName = null;
            wordFileName = null;
        }

        private void resetControls()
        {
            this.Text = "Word Tube";
            tbInputFilePath.Text = @"C:\";
            tbOutputFilePath.Text = @"C:\";
            chkOpenFileAfterConvert.Checked = false;
            appStatus("Ready");
        }

        private void openFile()
        {
            try
            {
                using (OpenFileDialog ofd = new OpenFileDialog())
                {
                    ofd.Title = "Open";
                    ofd.InitialDirectory = Environment.SpecialFolder.MyComputer.ToString();
                    ofd.Multiselect = false;
                    ofd.Filter = "Word File (*.docx)|*.docx";
                    DialogResult result = ofd.ShowDialog();
                    if (result == DialogResult.OK)
                    {
                        if (File.Exists(ofd.FileName))
                        {
                            wordFilePath = ofd.FileName;
                            wordFileName = Path.GetFileName(wordFilePath);

                            tbInputFilePath.Text = wordFilePath;

                            this.Text = wordFileName + " - Word Tube";
                            appStatus("File is Selected");


                            //Set text document name 
                            txtFileName = wordFileName;
                            txtFileName = txtFileName.Replace(".docx", ".txt");

                            //Set text document path 
                            txtFilePath = @"C:\" + txtFileName;

                            tbOutputFilePath.Text = txtFilePath;
                        }
                    }
                }
            }
            catch (Exception)
            {
            }
        }

        private void getPDFFileInfo(string fPath)
        {
            try
            {
                //Instantiate an object of Spire.Doc.Document
                Document doc2 = new Document();
                
                //Load MSWord document
                doc2.LoadFromFile(fPath);
                
                //Get the Word file producer
                wordFileProducer = doc2.BuiltinDocumentProperties.Company;

                //Get the Word file author
                wordFileAuthour = doc2.BuiltinDocumentProperties.Author;

                //Get the Word file subject
                wordFileSubject = doc2.BuiltinDocumentProperties.Subject;

                //Get the Word file title
                wordFileTitle = doc2.BuiltinDocumentProperties.Title;

                //Get the Word file creation date
                wordFileCreationDate = doc2.BuiltinDocumentProperties.CreateDate.ToString();

                //Get the Word file modification date
                wordFileModificationDate = doc2.BuiltinDocumentProperties.LastSaveDate.ToString();

                //Get the Word file description
                wordFileDescription = doc2.BuiltinDocumentProperties.Comments;

                //Get the Word file pages
                numberOfPages = doc2.BuiltinDocumentProperties.PageCount;

                //Close connections of Spire.PdfDocument
                doc2.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Alert", MessageBoxButtons.OK);
            }
        }
        #endregion

        private void btnSelectInputFile_Click(object sender, EventArgs e)
        {
            openFile();
            if (File.Exists(wordFilePath))
            {
                //Get PDF file information
                getPDFFileInfo(wordFilePath);
            }
        }

        private void btnSelectOutputFile_Click(object sender, EventArgs e)
        {
            using (FolderBrowserDialog fbd = new FolderBrowserDialog())
            {
                fbd.RootFolder = Environment.SpecialFolder.Desktop;
                fbd.ShowDialog();
                txtFilePath = fbd.SelectedPath;

                //Concatenate file path and filename 
                txtFilePath = txtFilePath + @"\" + txtFileName;
                tbOutputFilePath.Text = txtFilePath;
            }
        }

        private void btnPDFFileProperties_Click(object sender, EventArgs e)
        {
            if (File.Exists(this.wordFilePath))
            {
                getPDFFileInfo(this.wordFilePath);
                frmFileInfo ffi1 = new frmFileInfo("Word File Information", wordFileProducer, wordFileCreator, wordFileCreationDate, wordFileModificationDate, wordFileAuthour,
                    wordFileSubject, wordFileTitle, wordFileDescription, wordFileName, wordFilePath, wordFileVersion, numberOfPages.ToString());
                ffi1.ShowDialog();
            }
        }

        private void btnTextFileProperties_Click(object sender, EventArgs e)
        {
            if (File.Exists(wordFilePath))
            {
                txtFileProducer = wordFileProducer;
                txtFileCreator = wordFileCreator;
                txtFileCreationDate = wordFileCreationDate;
                txtFileModificationDate = wordFileModificationDate;
                txtFileAuthour = wordFileAuthour;
                txtFileSubject = wordFileSubject;
                txtFileTitle = wordFileTitle;
                txtFileDescription = wordFileDescription;
                txtFileVersion = wordFileVersion;

                frmFileInfo ffi2 = new frmFileInfo("Text File Information", txtFileProducer, txtFileCreator, txtFileCreationDate, txtFileModificationDate, txtFileAuthour,
                    txtFileSubject, txtFileTitle, txtFileDescription, txtFileName, txtFilePath, "1.0.0.0", "1");
                ffi2.ShowDialog();
            }
        }

        private void btnConvert_Click(object sender, EventArgs e)
        {
            if(File.Exists(wordFilePath))
            {
                doConvertWordToText(wordFilePath, txtFilePath);
                resetFields();
            }
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            resetFields();
            resetControls();
        }

        private void lblHelp_Click(object sender, EventArgs e)
        {
            frmAbout aboutus = new frmAbout();
            aboutus.ShowDialog();
        }
    }
}
