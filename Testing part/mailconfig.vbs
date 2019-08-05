Function fnSendEmailFromOutlook
 
'Create an object of type Outlook
Set objOutlook = CreateObject("Outlook.Application")
Set myMail = objOutlook.CreateItem(0)
 
'Set the email properties
myMail.To = "raghu.rc@slkgroup.com"
'myMail.CC = "some_mail_id_2@gmail.com; some_other_mail@yahoo.com" 'Sending mails to multiple ids
myMail.BCC = "" 'If BCC is not required, then this line can be omitted
myMail.Subject = "Test run results from Jenkins build"
myMail.Body= "Test run results from Jenkins build"
myMail.Attachments.Add("C:\Users\raghu.rc\.jenkins\workspace\cucumberFreeSytle\CucumberMavenBDD\TestReport\report.html") 'Path of the file to be attached
 
'Send the mail
myMail.Send

 
'Clear object reference
Set myMail = Nothing
Set objOutlook = Nothing
 
End Function
CAll fnSendEmailFromOutlook()