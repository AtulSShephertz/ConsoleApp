echo RevertingChangesInAppWarp
$ServerDir = "C:\Automation\AppWarp"
$TestDir = "C:\Test"
cd $ServerDir
git reset --hard |Out-Null
cd $TestDir
Remove-Item .\AppWarpWinDesktop.dll,.\AppWarpWinDesktopTest.dll,.\newresults.xml,.\TestResult -Recurse