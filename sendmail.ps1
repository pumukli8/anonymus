$EmailFrom = "martonbodimarci@gmail.com"
$EmailTo = "martonbodimarci@gmail.com"
$Subject = "Teszt e-mail a Digisparkrol"
$Body = "Ez egy teszt e-mail uzenet - MUKODIK!."

$Password = "nlnc ammw ctbs wkbb"

$SMTPServer = "smtp.gmail.com"
$SMTPPort = 587

Send-MailMessage -From $EmailFrom -To $EmailTo -Subject $Subject -Body $Body -SmtpServer $SMTPServer -Port $SMTPPort -UseSsl -Credential (New-Object System.Management.Automation.PSCredential ($EmailFrom, (ConvertTo-SecureString $Password -AsPlainText -Force)))
