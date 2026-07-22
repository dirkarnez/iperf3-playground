@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads

set PATH=^
%DOWNLOADS_DIR%\PortableGit\mingw64\bin;^
C:\PROGRA~1\Google\Chrome\Application;^
C:\PROGRA~2\Google\Chrome\Application;^
C:\PROGRA~1\7-Zip;^
C:\PROGRA~2\7-Zip;

%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe -command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;  $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest \"https://github.com/dirkarnez/iperf3-prebuilt/releases/download/v3.21/iperf3-v3.21-cygwin.zip\" -OutFile iperf3-v3.21-cygwin.zip" &&^
7z x iperf3-v3.21-cygwin.zip -o"iperf3-v3.21-cygwin" -y
pause