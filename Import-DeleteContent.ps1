#Cengiz YILMAZ
#www.cengizyilmaz.net
#23.01.2023

Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn

$importFile = "C:\Kitap1.csv"

$users = Import-Csv -Path $importFile | Select-Object -ExpandProperty EmailAddress

foreach ($user in $users) {

    $search = Search-Mailbox -Identity $user -SearchQuery "Received<8/1/2022" -DeleteContent -Force

         }