; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "irc4osu!"
#define MyAppVersion "v0.0.5"
#define MyAppPublisher "GAMELASTER & Noobish"
#define MyAppURL "https://github.com/GAMELASTER/irc4osu"
#define MyAppExeName "irc4osu.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2CCDB370-7E4E-43AE-AD05-25F8F545099B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
ArchitecturesAllowed=x86
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\irc4osu
DisableProgramGroupPage=yes
LicenseFile=C:\Users\gamel\Desktop\irc4osu\LICENSE
InfoBeforeFile=C:\Users\gamel\Desktop\irc4osu\build\beforeinstall.rtf
OutputBaseFilename=irc4osu-x86-{#StringChange(MyAppVersion, '.', '')}
SetupIconFile=C:\Users\gamel\Desktop\irc4osu\www\images\logo.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\gamel\Desktop\irc4osu\build\irc4osu-win32-ia32\irc4osu.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\gamel\Desktop\irc4osu\build\irc4osu-win32-ia32\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

