$EmailFrom = "martonbodimarci@gmail.com"
$EmailTo = "budavari.bulcsu@szentmor.net"
$Subject = "Teszt e-mail a Digisparkról"
$Body = "Ez egy teszt e-mail üzenet - MŰKÖDIK!."

$Password = "nlnc ammw ctbs wkbb"

$SMTPServer = "smtp.gmail.com"
$SMTPPort = 587

Send-MailMessage -From $EmailFrom -To $EmailTo -Subject $Subject -Body $Body -SmtpServer $SMTPServer -Port $SMTPPort -UseSsl -Credential (New-Object System.Management.Automation.PSCredential ($EmailFrom, (ConvertTo-SecureString $Password -AsPlainText -Force)))
