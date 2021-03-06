C:\Test\PSScript\AppWarpServerSetup.ps1
# Whenever Local AppHQ webserver is ruuning Add a static room and update room id api key and secret key in C:\Test\Config.txt file and then run C# test
#C:\Test\PSScript\EndToEndCSharp.ps1
C:\Test\PSScript\EndToEndJava.ps1
C:\Test\PSScript\AppWarpServerTearDown.ps1

#Todo: Try it in powershell instead of C# Console App
function Start-NewProcess(
        [string]$pfile = 'C:\Test\PSScript\RunAppWarpServer.ps1'        
    ){
    $p = New-Object System.Diagnostics.Process;
    $p.StartInfo.UseShellExecute = $false;
    $p.StartInfo.RedirectStandardOutput = $true;
    $p.StartInfo.FileName = $pfile;
    $p.StartInfo.Arguments = $arguments
    [void]$p.Start();
    $p.StandardOutput.ReadToEnd();
}