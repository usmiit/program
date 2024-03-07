using System;
using System.Text;
using System.Windows.Forms;
using System.Linq;
using System.IO;
using Spire.Pdf;

namespace pdf_to_text_converter
{
    /// <summary>
    /// Project Name: PDF To Text Converter
    /// Project Description: This is an application software that converts PDF Document into Text Document.
    /// </summary>
    
    public partial class frmPDFToTextConverter : Form
    {
        #region "Variables"

        private int indexPosition = 0;
        private int countPage = 0;
        private int startPageNumber = 0;
        private int stopPageNumber = 0;
        private int numberOfPages = 0;
        private string pageText = null;

        private string pageRange = null;
        private int pageRangeDifference = 0;
        private int fromPage = 0;
        private int toPage = 0;

        private const int minimumPage = 0;
        private const int maximumPage = 250;

        private string pdfFileProducer = null;
        private string pdfFileCreator = null;
        private string pdfFileCreationDate = null;
        private string pdfFileModificationDate = null;
        private string pdfFileAuthour = null;
        private string pdfFileSubject = null;
        private string pdfFileTitle = null;
        private string pdfFileDescription = null;
        private string pdfFileName = null;
        private string pdfFilePath = null;
        private string pdfFileVersion = null;

        private string txtFileProducer = null;
        private string txtFileCreator = null;
        private string txtFileCreationDate = null;
        private string txtFileModificationDate = null;
        private string txtFileAuthour = null;
        private string txtFileSubject = null;
        private string txtFileTitle = null;
        private string txtFileDescription = null;
        private string txtFileName = null;
        private string txtFilePath = null;
        private string txtFileVersion = null;

        //page declaration
        PdfPageBase page;

        #endregion

        #region "Methods"
        private void doConvertPDFToText(string pdfFileLocation, string txtFileLocation, int beginPageNumber, int endPageNumber)
        {
            try
            {
                DialogResult dr = MessageBox.Show("Are you sure to transform PDF file ("+ endPageNumber +" pages) ? ","Alert", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
                if (dr == DialogResult.Yes)
                {
                    //Show progress bar
                    pb.Visible = true;
                    appStatus("Please wait...");

                    //Instantiate an object of Spire.PdfDocument
                    using (PdfDocument docB = new PdfDocument())
                    {
                        //Load PDF document
                        docB.LoadFromFile(pdfFileLocation);

                        //Instantiate an object of StringBuilder
                        StringBuilder builder = new StringBuilder();

                        for (indexPosition = beginPageNumber; indexPosition < endPageNumber; indexPosition++)
                        {
                            //Instantiate an object of Spire.PdfPageBase to obtain text in per page of the PDF Document
                            page = docB.Pages[indexPosition];

                            //To extract all the content in this page
                            pageText = page.ExtractText();

                            if (!string.IsNullOrEmpty(pageText))
                            {
                                builder.AppendLine();
                                builder.AppendLine(pageText);
                                builder.AppendLine();
                            }

                            //Count the pages converted
                            countPage++;

                            //Show the number of PDF pages converted
                            appConvertStatus();
                        }

                        //To generate text document of the text derived
                        using (StreamWriter writer = new StreamWriter(txtFileLocation, false, Encoding.Unicode))
                        {
                            writer.Write(builder.ToString());
                            writer.Close();
                            if (chkOpenFileAfterConvert.Checked)
                            {
                                //Start the text document
                                TextDocViewer(txtFileLocation);
                            }
                        }

                        //Close connections of Spire.PdfDocument
                        docB.Close();

                        //Reset the class fields
                        resetFields();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Alert", MessageBoxButtons.OK);
            }
            finally
            {
                if (pb.Value > 99)
                {
                    MessageBox.Show("PDF file ("+ endPageNumber + ") pages tranformed successfully!!!", "Alert", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    pb.Visible = false;
                    pb.Value = 0;
                }
            }
        }

        private void appStatus(string remark)
        {
            if (!string.IsNullOrEmpty(remark))
            {
                lblAppStatus.Text = remark;
            }
        }

        private void appConvertStatus()
        {
            lblAppStatus.Text = countPage + " page(s) converted.";
            pb.Value = (countPage / numberOfPages) * 100;
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

        private void resetControls()
        {
            this.Text = "PDF Tube";
            rbAll.Checked = true;
            rbPages.Checked = false;
            tbPages.Text = tbPages.Text = "1 - " + maximumPage;
            tbPages.Enabled = false;
            tbInputFilePath.Text = @"C:\";
            tbOutputFilePath.Text = @"C:\";
            chkOpenFileAfterConvert.Checked = true;
            appStatus("Ready");
        }
            
        private void resetFields()
        {
            countPage = 0;
            indexPosition = 0;
            startPageNumber = 0;
            stopPageNumber = 0;
            numberOfPages = 0;
            txtFilePath = null;
            pdfFilePath = null;
            txtFileName = null;
            pdfFileName = null;
            pageText = null;
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
                    ofd.Filter = "Adobe PDF File (*.pdf)|*.pdf";
                    DialogResult result = ofd.ShowDialog();
                    if (result == DialogResult.OK)
                    {
                        if (File.Exists(ofd.FileName))
                        {
                            pdfFilePath = ofd.FileName;
                            pdfFileName = Path.GetFileName(pdfFilePath);

                            tbInputFilePath.Text = pdfFilePath;

                            this.Text = pdfFileName + " - PDF Tube";
                            appStatus("File is Selected");

                            
                            //Set text document name 
                            txtFileName = pdfFileName;
                            txtFileName = txtFileName.Replace(".pdf", ".txt");

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
                //Instantiate an object of Spire.PdfDocument
                using (PdfDocument docA = new PdfDocument())
                {
                    //Load PDF document
                    docA.LoadFromFile(fPath);

                    //Get PDF file producer
                    pdfFileProducer = docA.DocumentInformation.Producer;
                    //Get PDF file creator
                    pdfFileCreator = docA.DocumentInformation.Creator;
                    //Get PDF file creation date 
                    pdfFileCreationDate = docA.DocumentInformation.CreationDate.ToString();
                    //Get PDF file modification date
                    pdfFileModificationDate = docA.DocumentInformation.CreationDate.ToString();
                    //Get PDF file author
                    pdfFileAuthour = docA.DocumentInformation.Author;
                    //Get PDF file subject
                    pdfFileSubject = docA.DocumentInformation.Subject;
                    //Get PDF file title
                    pdfFileTitle = docA.DocumentInformation.Title;
                    //Get PDF file description
                    pdfFileDescription = docA.DocumentInformation.GetMetaData().ToString();
                    //Get PDF file version
                    pdfFileVersion = docA.FileInfo.Version.ToString();
                    //Get the number of pages of PDF file
                    numberOfPages = docA.Pages.Count;

                    //Close connections of Spire.PdfDocument
                    docA.Close();
                }

            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message, "Alert", MessageBoxButtons.OK);
            }
        }

        #endregion

        public frmPDFToTextConverter()
        {
            InitializeComponent();
            resetControls();
        }

        private void btnConvert_Click(object sender, EventArgs e)
        {
            if (rbAll.Checked)
            {
                //Check for PDF file
                if (File.Exists(pdfFilePath))
                {
                    if (numberOfPages <= maximumPage)
                    {
                        startPageNumber = minimumPage;
                        stopPageNumber = numberOfPages;

                        //Implement conversion
                        doConvertPDFToText(pdfFilePath, txtFilePath, startPageNumber, stopPageNumber);
                        resetFields();
                    }
                    else
                    {
                        startPageNumber = minimumPage;
                        stopPageNumber = maximumPage;
                        numberOfPages = stopPageNumber;

                        //Implement conversion
                        doConvertPDFToText(pdfFilePath, txtFilePath, startPageNumber, stopPageNumber);
                    }
                }
            }
            else
            {
                if (startPageNumber > 0)
                {
                    if (stopPageNumber > 0)
                    {
                        //Shrink the page numbers
                        startPageNumber--;
                        stopPageNumber--;

                        //Check again for page range difference
                        if (startPageNumber <= stopPageNumber)
                        {
                            pageRangeDifference = stopPageNumber - startPageNumber;
                            if (pageRangeDifference >= minimumPage)
                            {
                                if (pageRangeDifference <= maximumPage)
                                {
                                    //Check whether PDF file exist
                                    if (File.Exists(pdfFilePath))
                                    {
                                        if (startPageNumber <= numberOfPages)
                                        {
                                            if (stopPageNumber <= numberOfPages)
                                            {
                                                //Implement conversion
                                                doConvertPDFToText(pdfFilePath, txtFilePath, startPageNumber, stopPageNumber);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            resetFields();
            resetControls();
        }

        private void rbAll_CheckedChanged(object sender, EventArgs e)
        {
            resetFields();
            tbPages.Enabled = false;
            tbInputFilePath.Focus();
            tbPages.Text = "1 - " + maximumPage;
        }

        private void rbPages_CheckedChanged(object sender, EventArgs e)
        {
            resetFields();
            tbPages.Enabled = true;
            tbPages.Focus();
        }

        private void btnSelectInputFile_Click(object sender, EventArgs e)
        {
            openFile();
            if (File.Exists(pdfFilePath))
            {
                //Get PDF file information
                getPDFFileInfo(pdfFilePath);
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
            if (File.Exists(this.pdfFilePath))
            {
                getPDFFileInfo(this.pdfFilePath);
                frmFileInfo ffi1 = new frmFileInfo("PDF File Information", pdfFileProducer, pdfFileCreator, pdfFileCreationDate, pdfFileModificationDate, pdfFileAuthour, 
                    pdfFileSubject, pdfFileTitle, pdfFileDescription, pdfFileName, pdfFilePath, pdfFileVersion, numberOfPages.ToString());
                ffi1.ShowDialog();
            }
        }

        private void btnTextFileProperties_Click(object sender, EventArgs e)
        {
            if (File.Exists(pdfFilePath))
            {
                txtFileProducer = pdfFileProducer;
                txtFileCreator = pdfFileCreator;
                txtFileCreationDate = pdfFileCreationDate;
                txtFileModificationDate = pdfFileModificationDate;
                txtFileAuthour = pdfFileAuthour;
                txtFileSubject = pdfFileSubject;
                txtFileTitle = pdfFileTitle;
                txtFileDescription = pdfFileDescription;
                txtFileVersion = pdfFileVersion;

                frmFileInfo ffi2 = new frmFileInfo("Text File Information", txtFileProducer,txtFileCreator, txtFileCreationDate, txtFileModificationDate, txtFileAuthour, 
                    txtFileSubject, txtFileTitle, txtFileDescription, txtFileName, txtFilePath, "1.0.0.0", "1");
                ffi2.ShowDialog();
            }
        }

        private void tbPages_Validated(object sender, EventArgs e)
        {
            try
            {
                pageRange = tbPages.Text;
                if (!string.IsNullOrEmpty(pageRange))
                {
                    if (pageRange.Contains('-'))
                    {
                        if (pageRange.Split('-').Count() < 3)
                        {
                            fromPage = int.Parse(pageRange.Split('-')[0]);
                            toPage = int.Parse(pageRange.Split('-')[1]);

                            if (fromPage <= toPage)
                            {
                                pageRangeDifference = toPage - fromPage;
                                if(pageRangeDifference >= minimumPage)
                                {
                                    if (pageRangeDifference <= maximumPage)
                                    {
                                        startPageNumber = fromPage;
                                        stopPageNumber = toPage;

                                        tbPages.Text = startPageNumber + " - " + stopPageNumber;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch { }
        }

        private void lblHelp_Click(object sender, EventArgs e)
        {
            frmAbout aboutus = new frmAbout();
            aboutus.ShowDialog();
        }
    }
}
