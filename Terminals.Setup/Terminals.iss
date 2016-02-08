; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Terminals"
#define MyAppVersion "4.9.0.0"
#define MyAppPublisher "Oliver Kohl D.Sc."
#define MyAppURL "https://github.com/OliverKohlDSc/Terminals"
#define MyAppExeName "Terminals.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D76D63D5-A024-4B5D-8E69-2A65EB1F4C6A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
;PrivilegesRequired=lowest
AllowNoIcons=yes
InfoBeforeFile=C:\KOHL\Terminals\Git\Terminals\ReadMe_Description.txt
InfoAfterFile=C:\KOHL\Terminals\Git\Terminals\ReadMe.md
OutputBaseFilename=Setup_{#MyAppVersion}
SetupIconFile=C:\KOHL\Terminals\Git\Terminals\Terminals\terminalsicon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Terminals.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\TerminalsUpdater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\AxInterop.MSTSCLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\freebl3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Geckofx-Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Geckofx-Winforms.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\gkmedias.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\ICSharpCode.SharpZipLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Interop.MSTSCLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Release\KeePassLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Kohl.Explorer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Kohl.Framework.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\libGLESv2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\mozalloc.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\mozglue.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\mozjs.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\nss3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\nssckbi.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\nssdbm3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\omni.ja"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\plugin-container.exe"; DestDir: "{app}"; Flags: ignoreversion
; Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\putty.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\RegisterVMRC.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\softokn3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Terminals.Configuration.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Terminals.Connection.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Terminals.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Terminals.log4net.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\VMKeyboardHook.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\VMKeyboardHook64.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\VMRCActiveXClient.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\VMRCActiveXClient64.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\xul.dll"; DestDir: "{app}"; Flags: ignoreversion
; Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Radmin Viewer 3\*"; DestDir: "{app}\Radmin Viewer 3"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\KOHL\Terminals\Git\Terminals\Terminals\bin\x86\Distribution Release\Out\Plugins\*"; DestDir: "{app}\Plugins"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKCU; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}"; Flags: uninsdeletekey