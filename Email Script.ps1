# Sending Email address - Change This Field
$From = "Sender@123.com"

# Receiving Email address - Change This Field
$To = "Receiver@123.com"

# Email Body - Change This Field
$body="Create a Powershell script that sends an Email"

$Credentials = (Get-Credential -Credential "$From")

# Email Properties
$Email_Props=@{
    SMTPServer="smtp.office365.com" # Can Change SMTP server
    From= $From
    To= $To
    subject= "Powershell Email Script"   # Change This Field
    UseSSL= $true
    port= 587
    Credential = $Credentials 
}
Send-MailMessage @Email_Props $body