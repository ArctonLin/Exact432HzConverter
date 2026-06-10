; --- Exact432Hz Converter Setup Script ---

[Setup]
; Software Basic Information
AppId={{35E047CE-7D28-441D-9AF2-818BDA144BE2}
AppName=Exact432Hz Converter
AppVersion=1.3.0
AppPublisher=Exact432Hz
AppPublisherURL=https://exact432hz.com
AppSupportURL=https://exact432hz.com
AppUpdatesURL=https://exact432hz.com

; Default installation path
DefaultDirName={autopf}\Exact432HzConverter
DefaultGroupName=Exact432Hz Converter

; Set the output folder and name for the setup file
OutputDir=.\Output
OutputBaseFilename=Exact432HzConverter_Setup_v1.3.0

; Installation and uninstallation icons
SetupIconFile=Exact432Hz.ico

; Request administrator privileges (required for writing to Program Files)
PrivilegesRequired=admin

; Compression settings
Compression=lzma2
SolidCompression=yes

; The app is 32-bit (x86), so we do NOT set ArchitecturesInstallIn64BitMode

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
; The main executable
Source: "Exact432HzConverter.exe"; DestDir: "{app}"; Flags: ignoreversion
; Include all other dependencies in the current Release output directory (excluding the ISS script and Output folder)
Source: "*"; Excludes: "*.iss,Output\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
; Explicitly include the Icon file so shortcuts can use it
Source: "Exact432Hz.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Start menu shortcut
Name: "{group}\Exact432Hz Converter"; Filename: "{app}\Exact432HzConverter.exe"; IconFilename: "{app}\Exact432Hz.ico"
; Desktop shortcut
Name: "{autodesktop}\Exact432Hz Converter"; Filename: "{app}\Exact432HzConverter.exe"; IconFilename: "{app}\Exact432Hz.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\Exact432HzConverter.exe"; Description: "{cm:LaunchProgram,Exact432Hz Converter}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}"
