echo SendingReportFileWithLog
$EmailFrom = "test2012atul@gmail.com"
$EmailTo = "atul.singh@shephertz.co.in,dhruv.chopra@shephertz.co.in,saurav.gulati@shephertz.co.in"
$Subject = "Report" 
$Body = "Summary" 
$SMTPServer = "smtp.gmail.com" 
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("test2012atul", "lightpass"); 
#$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)

$emailMessage = New-Object System.Net.Mail.MailMessage
$emailMessage.From = $EmailFrom
$emailMessage.To.Add($EmailTo)
$emailMessage.Subject = $Subject
$emailMessage.Body = $Body
$emailMessage.Attachments.Add("C:\Automation\JunitAppWarp\report\html\junit-noframes.html")
#$emailMessage.Attachments.Add("C:\Test\AppWarpTestResult.txt");
$SMTPClient.Send($emailMessage)