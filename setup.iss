[Setup]
AppName=My Installer App
AppVersion=1.0.0
DefaultDirName={pf}\MyInstallerApp
DefaultGroupName=My Installer App
OutputDir=output
OutputBaseFilename=MyInstaller-Setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern

[Files]
Source: "dist/app-win.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "package.json"; DestDir: "{app}"
; أضف أي ملفات إضافية تحتاجها

[Icons]
Name: "{group}\My Installer App"; Filename: "{app}\app-win.exe"
Name: "{commondesktop}\My Installer App"; Filename: "{app}\app-win.exe"

[Run]
Filename: "{app}\app-win.exe"; Description: "Launch My Installer App"; Flags: nowait postinstall skipifsilent
