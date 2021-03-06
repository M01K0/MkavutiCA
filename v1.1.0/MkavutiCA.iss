; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MKavuti Cyber Assistant"  
#define MyAppCode "MKavutiCA"
#define MyAppVersion "1.1.0.231"
#define MyAppPublisher "Jack Siro and Ephantus Kiptanui"
#define MyAppURL "http://appsmata.com" 
#define UpdatesURL "https://github.com/JackSiro/"
#define MyOwnURL "http://twitter.com/jaksiro"
#define MyAppExeName "MKavutiCA.exe"

[Setup]
AppId={{77FDF823-C0A8-4F78-8C64-7188F6D24BD4}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppCode} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyOwnURL}
AppUpdatesURL={#UpdatesURL}
DefaultDirName=C:\AppSmata\{#MyAppCode}
DefaultGroupName={#MyAppCode}
DisableProgramGroupPage=yes
LicenseFile=D:\siros\projects\KnecNew\Mkavuti\Res\txt\license.txt
OutputDir=D:\siros\projects\KnecNew\Mkavuti\
OutputBaseFilename={#MyAppCode}_v{#MyAppVersion}
Compression=lzma
VersionInfoVersion={#MyAppVersion}
SolidCompression=yes
UninstallDisplayIcon={app}\{#MyAppExeName}
UninstallDisplayName={#MyAppName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Files]
Source: "D:\siros\projects\KnecNew\Mkavuti\MkavutiCA.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "D:\siros\projects\KnecNew\Mkavuti\Res\*"; DestDir: "{app}\res"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\siros\projects\KnecNew\Mkavuti\Reg\*"; DestDir: "{app}\res"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\siros\projects\KnecNew\Mkavuti\Reg\TABSMATA.OCX"; DestDir: {sys}; Flags: onlyifdoesntexist regserver 
Source: "D:\siros\projects\KnecNew\Mkavuti\Reg\MSCOMCTL.OCX"; DestDir: {sys}; Flags: onlyifdoesntexist regserver
Source: "D:\siros\projects\KnecNew\Mkavuti\Reg\PICCLP32.OCX"; DestDir: {sys}; Flags: onlyifdoesntexist regserver
                                                
[Icons]
Name: "{group}\{#MyAppCode}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppCode}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppCode}}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

