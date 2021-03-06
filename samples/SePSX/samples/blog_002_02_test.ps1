#ipmo C:\Projects\PS\SePSX\SePSX\bin\Release35\SePSX.dll
ipmo C:\Projects\PS\SePSX\out\3.5\SePSX.dll;
$ff01 = Start-SeChrome;
$searchBox = ($ff01 | `
	Enter-SeURL -URL "http://www.google.com/" | `
	Get-SeWebElement -Name "q" | `
	Set-SeWebElementKeys -Text "Cheese" | `
	Submit-SeWebElement);

Write-Host "Text:";
$searchBox | Read-SeWebElementText
Write-Host "Enabled:";
$searchBox | Read-SeWebElementEnabled
Write-Host "Displayed:";
$searchBox | Read-SeWebElementDisplayed
Write-Host "Selected:";
$searchBox | Read-SeWebElementSelected
Write-Host "TagName:";
$searchBox | Read-SeWebElementTagName
Write-Host "Size:";
$searchBox | Read-SeWebElementSize
Write-Host "Location:";
$searchBox | Read-SeWebElementLocation

sleep -Seconds 3; # to observe the result
$ff01.Title;
$ff01 | Stop-SeChrome;