Push-Location
$scriptdir = Split-Path $MyInvocation.MyCommand.Path
cd $scriptdir


"%VS140COMNTOOLS%\VsMSBuildCmd.bat"
msbuild ../msvs_solution/msvs_solution.sln /t:Rebuild /p:Configuration=Debug /p:Platform=x86 /v:minimal /nologo
If(!$?){exit 1}
msbuild ../msvs_solution/msvs_solution.sln /t:Rebuild /p:Configuration=Release /p:Platform=x86 /v:minimal /nologo
If(!$?){exit 1}
msbuild ../msvs_solution/msvs_solution.sln /t:Rebuild /p:Configuration=Debug /p:Platform=x64 /v:minimal /nologo
If(!$?){exit 1}
msbuild ../msvs_solution/msvs_solution.sln /t:Rebuild /p:Configuration=Release /p:Platform=x64 /v:minimal /nologo
If(!$?){exit 1}
Write-NuGetPackage nuget.autopkg
If(!$?){exit 1}
Pop-Location
