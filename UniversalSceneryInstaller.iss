; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!


//***************************************************************************
//***************************************************************************
#define MyAppName "SimDocks Birds Air Route FlightSimulator Scenery"
#define MyAppVersion "1.0.0.1"
#define MyAppPublisher "SimDocks Maritime 3D Sceneries"
#define MyAppCopyright "� 2019 SimDocks Maritime 3D Sceneries"
#define MySceneryName "SimDocks Birds Air Route"
// as it appears in scenery.cfg:
#define MySceneryCollectionDir "SimDocks"
#define MySceneryTitle "SimDocks_Birds_Air_Route" 
//***************************************************************************
//***************************************************************************

 
[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5D2B6BCC-BB65-4329-A56D-9319318EA1DF}}
//SignTool=signtool
AllowNetworkDrive=no
AllowRootDirectory=no
AllowUNCPath=no
AlwaysShowDirOnReadyPage=yes
AppCopyright={#MyAppCopyright}
AppendDefaultDirName=yes
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
BackColor=clBlue
CreateAppDir=False
DefaultDirName={sd}\FSimBaseFolder\{#MyAppName}
DefaultGroupName={#MyAppPublisher}
DirExistsWarning=yes
DisableDirPage=yes
DisableProgramGroupPage=yes
DisableWelcomePage=no
//LicenseFile=AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\License_de.txt
OutputDir=D:\Projects\FlightSimulator\UniversalSceneryInstaller
OutputBaseFilename={#MySceneryTitle}_Installer
//Password=!SimDocks_2019! 
//mypassword
Encryption=no
Compression=lzma
SetupLogging=yes
SolidCompression=yes
//UninstallFilesDir={code:GetUserAppDataPath}\_uninst_
UninstallFilesDir=_uninst_\exe\{#MyAppName}
UsePreviousAppDir=no
UsePreviousTasks=no
WizardImageFile=Installer-Logo.bmp
WizardImageStretch=no

[Languages]
Name: "English"; MessagesFile: "compiler:Default.isl"; LicenseFile: "D:\Projects\FlightSimulator\UniversalSceneryInstaller\End_User_License_Agreement.rtf"
Name: "Deutsch"; MessagesFile: "compiler:Languages\German.isl"; LicenseFile: "D:\Projects\FlightSimulator\UniversalSceneryInstaller\Endbenutzer-Lizenzvertrag.rtf"

[Types]
Name: "Prepar3D_v4"; Description: "{cm:InstallForP3Dv4}"; Check: CheckP3Dv4
Name: "Prepar3D_v3"; Description: "{cm:InstallForP3Dv3}"; Check: CheckP3Dv3
Name: "FSX"; Description: "{cm:InstallForFSX}"; Check: CheckFSX

[Components]
Name: "P3Dv4Inst"; Description: "Prepar3D v4 - Installs the scenery for P3Dv4"; Types: Prepar3D_v4; Flags: exclusive
Name: "P3Dv3Inst"; Description: "Prepar3D v3 - Installs the scenery for P3Dv3"; Types: Prepar3D_v3; Flags: exclusive
Name: "FSXInst"; Description: "FSX - Installs the scenery for FSX"; Types: FSX; Flags: exclusive

[Dirs]
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Name: _uninst_\exe; Attribs: hidden;
Name: _uninst_\exe\{#MyAppName}; Attribs: hidden;

[OldDirs]
//Name: "{code:GetUserAppDataPath}"; Flags: uninsalwaysuninstall;
//Name: "{code:GetUserAppDataPath}\_uninst_"; Flags: uninsalwaysuninstall; Attribs: hidden

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{uninstallexe}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\SimDocksSceneryConfigurator"; Filename: "{code:GetSceneryBasePath}\SimDocksSceneryConfigurator.exe"; IconFilename: "{code:GetSceneryBasePath}\SimDocksSceneryConfigurator.exe"
Name: "{group}\SimDocksSceneryConfigurator"; Filename: "{code:GetSceneryBasePath}\SimDocksSceneryConfigurator.exe"; IconFilename: "{code:GetSceneryBasePath}\SimDocksSceneryConfigurator.exe"
Name: "{group}\SimDocks_Vogelflug_Handbuch"; Filename: "{code:GetSceneryInstallPath}\doc\SimDocks_Vogelflug_Handbuch.pdf"
Name: "{group}\SimDocks_Birds_Air_Route_Manual"; Filename: "{code:GetSceneryInstallPath}\doc\SimDocks_Birds_Air_Route_Manual.pdf"

[INI]
Filename: "{code:GetConfigFilePath}\scenery.cfg"; Section: "{code:GetMaxAreaString}"; Key: "Title"; String: "{#MySceneryTitle}"; Flags: createkeyifdoesntexist; Tasks: Legacy; BeforeInstall: Copy_Old_Scenery_cfg
Filename: "{code:GetConfigFilePath}\scenery.cfg"; Section: "{code:GetMaxAreaString}"; Key: "Local"; String: "{code:GetSceneryInstallPath}"; Flags: createkeyifdoesntexist; Components: P3Dv4Inst P3Dv3Inst FSXInst; Tasks: Legacy
Filename: "{code:GetConfigFilePath}\scenery.cfg"; Section: "{code:GetMaxAreaString}"; Key: "Active"; String: "TRUE"; Flags: createkeyifdoesntexist; Components: P3Dv4Inst P3Dv3Inst FSXInst; Tasks: Legacy
Filename: "{code:GetConfigFilePath}\scenery.cfg"; Section: "{code:GetMaxAreaString}"; Key: "Required"; String: "FALSE"; Flags: createkeyifdoesntexist; Components: P3Dv4Inst P3Dv3Inst FSXInst; Tasks: Legacy
Filename: "{code:GetConfigFilePath}\scenery.cfg"; Section: "{code:GetMaxAreaString}"; Key: "Layer"; String: "{code:GetMaxLayerString}"; Flags: createkeyifdoesntexist; Tasks: Legacy

Filename: "{code:GetConfigFilePath}\simobjects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Title"; String: "{#MySceneryTitle} Boats"; Flags: createkeyifdoesntexist; Tasks: Legacy; BeforeInstall: Copy_Old_Simobjects_cfg
Filename: "{code:GetConfigFilePath}\simobjects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Path"; String: "{code:GetSceneryInstallPath}\SimObjects\Boats"; Flags: createkeyifdoesntexist; Tasks: Legacy
Filename: "{code:GetConfigFilePath}\simobjects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Required"; String: "False"; Flags: createkeyifdoesntexist; Tasks: Legacy
Filename: "{code:GetConfigFilePath}\simobjects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Active"; String: "True"; Flags: createkeyifdoesntexist; Tasks: Legacy

Filename: "{code:GetConfigFilePath}\simobjects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Title"; String: "{#MySceneryTitle} Ground Vehicles"; Flags: createkeyifdoesntexist; Tasks: Legacy; BeforeInstall: Prepare_Simobjects_GroundVehicles_cfg
Filename: "{code:GetConfigFilePath}\simobjects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Path"; String: "{code:GetSceneryInstallPath}\SimObjects\GroundVehicles"; Flags: createkeyifdoesntexist; Tasks: Legacy
Filename: "{code:GetConfigFilePath}\simobjects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Required"; String: "False"; Flags: createkeyifdoesntexist; Tasks: Legacy
Filename: "{code:GetConfigFilePath}\simobjects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Active"; String: "True"; Flags: createkeyifdoesntexist; Tasks: Legacy

Filename: "{code:GetConfigFilePath}\effects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Title"; String: "{#MySceneryTitle} Effects"; Flags: createkeyifdoesntexist; Tasks: Legacy; BeforeInstall: Copy_Old_Effects_cfg
Filename: "{code:GetConfigFilePath}\effects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Path"; String: "{code:GetSceneryInstallPath}\Effects"; Flags: createkeyifdoesntexist; Tasks: Legacy
Filename: "{code:GetConfigFilePath}\effects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Required"; String: "False"; Flags: createkeyifdoesntexist; Tasks: Legacy
Filename: "{code:GetConfigFilePath}\effects.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Active"; String: "True"; Flags: createkeyifdoesntexist; Tasks: Legacy

Filename: "{code:GetConfigFilePath}\sound.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Title"; String: "{#MySceneryTitle} Sounds"; Flags: createkeyifdoesntexist; Tasks: Legacy; BeforeInstall: Copy_Old_Sound_cfg
Filename: "{code:GetConfigFilePath}\sound.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Path"; String: "{code:GetSceneryInstallPath}\sound"; Flags: createkeyifdoesntexist; Tasks: Legacy
Filename: "{code:GetConfigFilePath}\sound.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Required"; String: "False"; Flags: createkeyifdoesntexist; Tasks: Legacy
Filename: "{code:GetConfigFilePath}\sound.cfg"; Section: "{code:GetMaxEntryString}"; Key: "Active"; String: "True"; Flags: createkeyifdoesntexist; Tasks: Legacy


Filename: "{code:GetConfigFilePath}\add-ons.cfg"; Section: "{code:GetMaxPackageString}"; Key: "Title"; String: "{#MySceneryTitle}"; Flags: createkeyifdoesntexist; Tasks: xml; BeforeInstall: Copy_Old_addons_cfg
Filename: "{code:GetConfigFilePath}\add-ons.cfg"; Section: "{code:GetMaxPackageString}"; Key: "Path"; String: "{code:GetUserMyDocumentsPath}"; Flags: createkeyifdoesntexist; Tasks: xml
Filename: "{code:GetConfigFilePath}\add-ons.cfg"; Section: "{code:GetMaxPackageString}"; Key: "Required"; String: "False"; Flags: createkeyifdoesntexist; Tasks: xml
Filename: "{code:GetConfigFilePath}\add-ons.cfg"; Section: "{code:GetMaxPackageString}"; Key: "Active"; String: "True"; Flags: createkeyifdoesntexist; Tasks: xml

[Tasks]
Name: "xml"; Description: "{cm:TaskXML}"; Flags: checkablealone exclusive; Components: P3Dv3Inst P3Dv4Inst; Check: CheckIsP3D
Name: "Legacy"; Description: "{cm:TaskLegacy}"; Flags: checkablealone exclusive unchecked; Components: P3Dv3Inst P3Dv4Inst FSXInst; Check: CheckIsP3D

[Files]
Source: "..\UniversalSceneryConfigurator\Release\UniversalSceneryConfigurator.exe"; DestDir: "{code:GetSceneryBasePath}"; DestName: "SimDocksSceneryConfigurator.exe"

Source: "AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\add-on_prototype.xml"; DestDir: "{code:GetUserMyDocumentsPath}"; DestName: "add-on.xml"; Tasks: xml; AfterInstall: Append_addon_xml
Source: "AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\uninstall.cmd"; DestDir: "{code:GetUninstallCmdPath}"; DestName: "unregister.ini"; Tasks: Legacy xml; AfterInstall: Append_uninstall_ini
Source: "AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\LastInstall.log"; DestDir: "{code:GetSceneryInstallPath}"; DestName: "LastInstall.log"; Tasks: Legacy xml

Source: "AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\doc\*.*"; DestDir: "{code:GetSceneryInstallPath}\doc"; Flags: createallsubdirs recursesubdirs; Components: P3Dv4Inst P3Dv3Inst FSXInst; Permissions: admins-full
Source: "AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\scripts\*.*"; DestDir: "{code:GetSceneryInstallPath}\scripts"; Flags: createallsubdirs recursesubdirs; Components: P3Dv4Inst P3Dv3Inst FSXInst; Permissions: admins-full
Source: "AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\images\*.*"; DestDir: "{code:GetSceneryInstallPath}\images"; Flags: createallsubdirs recursesubdirs; Components: P3Dv4Inst P3Dv3Inst FSXInst; Permissions: admins-full
Source: "AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\simobjects\*.*"; DestDir: "{code:GetSceneryInstallPath}\simobjects"; Flags: createallsubdirs recursesubdirs; Components: P3Dv4Inst P3Dv3Inst FSXInst; Permissions: admins-full

Source: "AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\scenery\*.*"; DestDir: "{code:GetSceneryInstallPath}\scenery"; Flags: createallsubdirs recursesubdirs; Components: P3Dv4Inst P3Dv3Inst FSXInst; Permissions: admins-full
Source: "AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\texture\*.*"; DestDir: "{code:GetSceneryInstallPath}\texture"; Flags: createallsubdirs recursesubdirs; Components: P3Dv4Inst P3Dv3Inst FSXInst; Permissions: admins-full
Source: "AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\effects\*.*"; DestDir: "{code:GetSceneryInstallPath}\effects"; Flags: createallsubdirs recursesubdirs; Components: P3Dv4Inst P3Dv3Inst FSXInst; Permissions: admins-full
Source: "AddOn Scenery\SimDocks\SimDocks_Birds_Air_Route\sound\*.*"; DestDir: "{code:GetSceneryInstallPath}\sound"; Flags: createallsubdirs recursesubdirs; Components: P3Dv4Inst P3Dv3Inst FSXInst; Permissions: admins-full

[Run]
Filename: "{code:GetSceneryBasePath}\SimDocksSceneryConfigurator.exe"

[UninstallRun]
//Filename: "{code:GetUnregisterCmdPath}"; Flags: runhidden; Components: P3Dv3Inst P3Dv4Inst; Tasks: xml

[Messages]
StatusCreateIniEntries=Registering scenery ...
Deutsch.StatusCreateIniEntries=Szenerie wird registriert ...

[CustomMessages]
English.TaskXML=Register using add-on.xml file (recommended)
Deutsch.TaskXML=Registrieren mit add-on.xml (empfohlen)
English.TaskLegacy=Register using scenery.cfg
Deutsch.TaskLegacy=Registrieren in scenery.cfg
English.InstallForP3Dv4=Install the scenery into Prepar3D v4
Deutsch.InstallForP3Dv4=Installiert die Szenerie in Prepar3D v4
English.InstallForP3Dv3=Install the scenery into Prepar3D v3
Deutsch.InstallForP3Dv3=Installiert die Szenerie in Prepar3D v3
English.InstallForFSX=Install the scenery into FSX
Deutsch.InstallForFSX=Installiert die Szenerie in FSX
Deutsch.UninstallProgram=Entfernen von %1
English.UninstallProgram=deinstall %1

[Code]
var 
P3Dv4Path: string;
P3Dv4Installed: boolean;

P3Dv3Path: string;
P3Dv3Installed: boolean;

FSXPath: string;
FSXInstalled: boolean;

FSXSEPath: string;
FSXSEInstalled: boolean;

SimulatorPath: String;

CustomPath: string;
CustomInstallation: boolean;


UseLegacyRegistrationMethod: boolean;
SceneryAlreadyInstalled: boolean;
MaxAreaNumber: Integer;
MaxLayerNumber: Integer;

MaxEntryNumber: Integer;

NewEntryNumber: Integer;
NewLayerNumber: Integer;

NewSceneryTitle: String;

Page: TInputDirWizardPage;
DataDir: String;

CheckAlreadyInstalledDone: Boolean;
CheckAlreadyInstalledResult: Boolean;

SceneryInstallPath: String;
SceneryBasePath: String;
ConfigFilePath: String;

UserAppDataPath: String;
UserMyDocumentsPath: String;

// ReadRegStr $INSTDIR HKLM "Software\Microsoft\Microsoft Games\Flight Simulator\10.0" "SetupPath"
// ReadRegStr $INSTDIR HKCU "Software\Microsoft\Microsoft Games\flight simulator\10.0" AppPath
// InstallDirRegKey HKLM "Software\Microsoft\Microsoft Games\flight simulator\10.0" SetupPath


//Steam is a bit tricky. If FSX disk has never been installed, the path for the FSX:SE version is identical to the FSX disk version!
//Code:
//
//HKCU "Software\Microsoft\Microsoft Games\flight simulator\10.0" "AppPath"
//
//If FSX:SE is installed on a computer that already has FSX disk installed, then the path is made unique as follows:
//Code:
//
//HKCU "Software\Microsoft\Microsoft Games\flight simulator - steam edition\10.0" "AppPath"
//
//Prepar3Dv4 is simple:
//Code:
//
//HKCU "Software\Lockheed Martin\Prepar3D v4" "AppPath"



/////////////////////////////////////////////////////
//Path to scenery.cfg
//%PROGRAMDATA%\Lockheed Martin\Prepar3D v2 



procedure InitializeWizard;

begin
  Log('Active language = ' + ActiveLanguage);
  if ActiveLanguage = 'English' then
  begin
    Page := CreateInputDirPage(wpSelectTasks,
    'Please select the installation folde for the scenery', 'Where do you want the scenery and texture files to be stored?',
    'The large scenery files will be stored here.'#13#10#13#10 +
    'Click "Next" to continue. Click "Browse" to select a different location.',
    False, 'New folder');
  end;

  if ActiveLanguage = 'Deutsch' then
  begin
    Page := CreateInputDirPage(wpSelectTasks,
    'Bitte den Installationspfad f�r die Szenerie ausw�hlen', 'Wo sollen Szenerie- und Texturdateien gespeichert werden?',
    'Die umfangreichen Szeneriedaten werden hier gespeichert.'#13#10#13#10 +
    'Zum Fortfahren auf "Weiter" klicken. Um einen anderen Speicherort zu w�hlen, bitte auf "Durchsuchen" klicken.',
    False, 'Neues Verzeichnis');
  end;
// Add item (with an empty caption)
  Page.Add('');

// Set initial value (optional)

// Read value into variable
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  Stringpos: Integer;
begin
  Result := TRUE;
  if CurPageID = wpSelectComponents then
  begin
    if IsComponentSelected('FSXInst') then
    begin
      SceneryInstallPath := FSXPath + '{#MySceneryCollectionDir}\{#MySceneryTitle}';
      SceneryBasePath := FSXPath + '{#MySceneryCollectionDir}';
      UserAppDataPath := ExpandConstant('{userappdata}\{#MySceneryCollectionDir}\{#MySceneryTitle}');
      UserMyDocumentsPath := ExpandConstant('{userdocs}\FSX\{#MySceneryTitle}');
      SimulatorPath := FSXPath;
    end;

    if IsComponentSelected('P3Dv3Inst') then
    begin
      SceneryInstallPath := RemoveBackslashUnlessRoot(P3Dv3Path) + ' Add-ons\{#MySceneryCollectionDir}\{#MySceneryTitle}';
      SceneryBasePath := RemoveBackslashUnlessRoot(P3Dv3Path) + ' Add-ons\{#MySceneryCollectionDir}';
      ConfigFilePath := ExpandConstant('{commonappdata}\Lockheed Martin\Prepar3D v3');
      UserAppDataPath := ExpandConstant('{userappdata}\Lockheed Martin\Prepar3D v3 Add-ons\{#MySceneryCollectionDir}\{#MySceneryTitle}');
      UserMyDocumentsPath := ExpandConstant('{userdocs}\Prepar3D v3 Add-ons\{#MySceneryTitle}');
      SimulatorPath := P3Dv3Path;


      //      RegWriteStringValue(HKEY_LOCAL_MACHINE, 'Software\{#MyAppPublisher}\{#MySceneryName}',
//        'SimPath', P3Dv3Path);

    end;

    if IsComponentSelected('P3Dv4Inst') then
    begin
      SceneryInstallPath := RemoveBackslashUnlessRoot(P3Dv4Path) + ' Add-ons\{#MySceneryCollectionDir}\{#MySceneryTitle}';
      SceneryBasePath := RemoveBackslashUnlessRoot(P3Dv4Path) + ' Add-ons\{#MySceneryCollectionDir}';
      ConfigFilePath := ExpandConstant('{commonappdata}\Lockheed Martin\Prepar3D v4');
      UserAppDataPath := ExpandConstant('{userappdata}\Lockheed Martin\Prepar3D v4 Add-ons\{#MySceneryCollectionDir}\{#MySceneryTitle}');
      UserMyDocumentsPath := ExpandConstant('{userdocs}\Prepar3D v4 Add-ons\{#MySceneryTitle}');
      SimulatorPath := P3Dv4Path;

//      RegWriteStringValue(HKEY_LOCAL_MACHINE, 'Software\{#MyAppPublisher}\{#MySceneryName}',
//        'SimPath', P3Dv4Path);
    end;

    Page.Values[0] := SceneryInstallPath;
    Log('Initialize SceneryInstallPath: ' + SceneryInstallPath);

  end;

  if CurPageID = Page.ID then
  begin
    SceneryInstallPath := Page.Values[0];

    Stringpos := Pos('{#MySceneryCollectionDir}', SceneryInstallPath);
    If Stringpos > 0 then
    begin
      Delete(SceneryInstallPath, Stringpos, 1000);
    end;

    Stringpos := Pos('{#MySceneryTitle}', SceneryInstallPath);
    If Stringpos > 0 then
    begin
      Delete(SceneryInstallPath, Stringpos, 1000);
    end;

    SceneryInstallPath := RemoveBackslash(SceneryInstallPath);
    SceneryBasePath := SceneryInstallPath + '\{#MySceneryCollectionDir}';
    SceneryInstallPath := SceneryInstallPath + '\{#MySceneryCollectionDir}\{#MySceneryTitle}';

    Log('Final SceneryBasePath is: ' + SceneryBasePath);
    Log('Final SceneryInstallPath is: ' + SceneryInstallPath);

    Log('NextButtonClick on self-created page: SceneryInstallPath is ' + SceneryInstallPath);
    Log('ConfigFilePath is ' + ConfigFilePath);
    Log('UserAppDataPath is ' + UserAppDataPath);
    Log('UserMyDocumentsPath is ' + UserMyDocumentsPath);

//    RegWriteStringValue(HKEY_LOCAL_MACHINE, 'Software\{#MyAppPublisher}\{#MySceneryName}',
//    'SceneryInstallPath', SceneryInstallPath);

//    RegWriteStringValue(HKEY_LOCAL_MACHINE, 'Software\{#MyAppPublisher}\{#MySceneryName}',
//    'ConfigFilePath', ConfigFilePath);

//    RegWriteStringValue(HKEY_LOCAL_MACHINE, 'Software\{#MyAppPublisher}\{#MySceneryName}',
//    'UserAppDataPath', UserAppDataPath);

    CheckAlreadyInstalledDone := FALSE;
    CheckAlreadyInstalledResult := FALSE;
  end;
end;

procedure SetControlCursor(oCtrl: TControl; oCurs: TCursor);
var 
  i     : Integer;
  oCmp  : TComponent;
begin
  oCtrl.Cursor := oCurs;
  for i := 0 to oCtrl.ComponentCount-1 do
  begin
    oCmp := oCtrl.Components[i];
    if oCmp is TControl then
    begin
      SetControlCursor(TControl(oCmp), oCurs);
    end;
  end;
end;


function CheckP3Dv4() : Boolean;
begin
  Result := FALSE;
//    if RegQueryStringValue(HKCU64, 'SOFTWARE\Lockheed Martin\Prepar3D v4', 'AppPath', P3Dv4Path) then
    if RegQueryStringValue(HKCU, 'SOFTWARE\Lockheed Martin\Prepar3D v4', 'AppPath', P3Dv4Path) then
      begin 
          Log('GetPathInfo: P3Dv4 setup path is ' + P3Dv4Path);
          P3Dv4Installed := true;
          Result := TRUE;
      end;
end;

function CheckP3Dv3() : Boolean;
begin
  Result := FALSE;
    if RegQueryStringValue(HKCU, 'SOFTWARE\Lockheed Martin\Prepar3D v3', 'AppPath', P3Dv3Path) then
        begin 
          Log('GetPathInfo: P3Dv3 setup path is ' + P3Dv3Path);
          P3Dv3Installed := true;
          Result := TRUE;
      end;

Result := FALSE;      
end;

function CheckFSX() : Boolean;
begin
  Result := FALSE;
    if RegQueryStringValue(HKCU, 'Software\Microsoft\Microsoft Games\Flight Simulator\10.0', 'AppPath', FSXPath) then
        begin 
           Log('GetPathInfo: FSX setup path is ' + FSXPath);
           FSXInstalled := true;
           Result := true;
        end;

Result := FALSE;      

end;

function CheckIsP3D() : Boolean;
begin
  Result := FALSE;
    if P3Dv3Installed Or P3Dv4Installed then
        begin 
           Log('A P3D version ist installed');
           Result := true;
        end;
end;

function GetSceneryInstallPath(Param: string) : String;
begin
  Result := SceneryInstallPath;
end;

function GetSceneryBasePath(Param: string) : String;
begin
  Result := SceneryBasePath;
end;


function GetConfigFilePath(Param: string) : String;
begin
  Result := ConfigFilePath;
end;

function GetUserAppDataPath(Param: string) : String;
begin
  Result := UserAppDataPath;
end;

function GetUserMyDocumentsPath(Param: string) : String;
begin
  Result := UserMyDocumentsPath;
end;


function GetUninstallCmdPath(Param: string) : String;
var
  UninstallCmdPath: String;
begin
  UninstallCmdPath := ExtractFilePath(ExpandConstant('{uninstallexe}'));
  Log('GetUninstallCmdPath = ' + UninstallCmdPath);
  Result := UninstallCmdPath;
end;

function GetUnregisterCmdPath(Param: string) : String;
var
  UninstallCmdPath: String;
begin
  UninstallCmdPath := ExtractFilePath(ExpandConstant('{uninstallexe}')) + '\unregister.cmd';
  Log('GetUnregisterCmdPath = ' + UninstallCmdPath);
  Result := UninstallCmdPath;
end;


function DeleteEntryForFile(Filename: String; Title: String; IsSceneryCfg: Boolean; IsAddonsCfg: Boolean) : Boolean;
var
  EntrySection: String;
  CurrentTitle: String;
  TempString: String;
  I: Integer;
  EntryNumber: Integer;
begin
  Result := True;
  EntryNumber := 0;

  Log('DeleteEntryForFile ' + Filename + ', ' + Title + ')');

  for I := 1 to 999 do
  begin
    EntrySection := Format('Entry.%d', [I]);

    if IsAddonsCfg = True then
    begin
      EntrySection := Format('Package.%d', [I]);
    end;

    if IsSceneryCfg = True then
    begin
      EntrySection := Format('Area.%3.3d', [I]);
    end;

    begin
      if not IsIniSectionEmpty(EntrySection, Filename) then
      begin
        CurrentTitle := GetIniString(EntrySection, 'Title', '', Filename);
//Log('Current Title = ' + CurrentTitle);
        if CurrentTitle = Title then
        begin
          DeleteIniSection(EntrySection, Filename);
          Log('Deleted Ini section ' + EntrySection + ' in file ' + Filename);
          Exit;
        end;
      end;
    end;
  end;
end;


function FindMaxEntryForFile(Filename: String; IsSceneryCfg: Boolean; IsAddonsCfg: Boolean) : Integer;
var
  EntrySection: String;
  NextEntrySection: String;
  TempString: String;
  I: Integer;
  J: Integer;
  LayerNumber: Integer;
begin
  LayerNumber := 0;

  for I := 1 to 999 do
  begin
    EntrySection := Format('Entry.%d', [I]);

    if IsAddonsCfg = True then
    begin
      EntrySection := Format('Package.%d', [I]);
    end;

    if IsSceneryCfg = True then
    begin
      EntrySection := Format('Area.%3.3d', [I]);

      LayerNumber := GetIniInt(EntrySection, 'Layer', 0, 0, 1000, Filename);
      if LayerNumber > NewLayerNumber then
      begin
        NewLayerNumber := LayerNumber;
      end;
    end;

    begin
      if IsIniSectionEmpty(EntrySection, Filename) then
      begin
        Log('found empty entry at ' + EntrySection);
        J := I + 1;
        NextEntrySection := Format('Entry.%d', [J]);

        if IsAddonsCfg = True then
        begin
          NextEntrySection := Format('Package.%d', [J]);
        end;

        if IsSceneryCfg = True then
        begin
          NextEntrySection := Format('Area.%3.3d', [J]);
        end;
        if IsIniSectionEmpty(NextEntrySection, Filename) then
        begin
          Log('found 2nd empty entry at ' + NextEntrySection);

          J := I + 2;
          NextEntrySection := Format('Entry.%d', [J]);

          if IsAddonsCfg = True then
          begin
            NextEntrySection := Format('Package.%d', [J]);
          end;

          if IsSceneryCfg = True then
          begin
            NextEntrySection := Format('Area.%3.3d', [J]);
          end;

          if IsIniSectionEmpty(NextEntrySection, Filename) then
          begin
            Log('found 3rd empty entry at ' + NextEntrySection);
            NewEntryNumber := I;
            Result := I;

            if IsSceneryCfg = True then
            begin
              NewLayerNumber := NewLayerNumber + 1;
            end;

            // SaveStringToFile(Filename, #13#10 + ' ' + #13#10, True);
            Exit;
          end;
        end;

      end;
    end;
  end;
end;


function GetMaxAreaString(Param : String) : String;
begin
  Result := Format('Area.%3.3d', [NewEntryNumber]);
end;

function GetMaxLayerString(Param : String) : String;
begin
  MaxLayerNumber := MaxLayerNumber + 1;
  Result := Format('%3.3d', [NewLayerNumber]);
end;

function GetMaxEntryString(Param : String) : String;
begin
  Result := Format('Entry.%d', [NewEntryNumber]);
end;

function GetMaxPackageString(Param : String) : String;
begin
  Result := Format('Package.%d', [NewEntryNumber]);
end;



procedure AppendBlankLineToSceneryCfg;
begin
  SaveStringToFile(ExpandConstant('{code:GetConfigFilePath}\scenery.cfg'), #13#10, True);
end;

procedure Copy_Old_Scenery_cfg;
var
SourcePath: String;
TargetFilename: String;
TargetPath: String;
begin
  SourcePath := GetConfigFilePath('') + '\scenery.cfg';
  TargetFilename := 'scenery_cfg_Before_{#MySceneryTitle}_was_installed.cfg';
  TargetPath:=GetConfigFilePath('') + '\' + TargetFilename;
  if not FileExists(TargetFilename) then
  begin
    FileCopy(SourcePath, TargetPath, TRUE);
  end;

  DeleteEntryForFile(SourcePath, '{#MySceneryTitle}', True, False);

  NewEntryNumber := 0;
  NewLayerNumber := 0;

  FindMaxEntryForFile(SourcePath, True, False);
end;

procedure Copy_Old_Simobjects_cfg;
var
SourcePath: String;
TargetFilename: String;
TargetPath: String;
begin
  SourcePath := GetConfigFilePath('') + '\simobjects.cfg';
  TargetFilename := 'simobjects_cfg_Before_{#MySceneryTitle}_was_installed.cfg';
  TargetPath:=GetConfigFilePath('') + '\' + TargetFilename;
  if not FileExists(TargetFilename) then
  begin
    FileCopy(SourcePath, TargetPath, TRUE);
  end;

  DeleteEntryForFile(SourcePath, '{#MySceneryTitle} Boats', False, False);
  DeleteEntryForFile(SourcePath, '{#MySceneryTitle} Ground Vehicles', False, False);

  NewEntryNumber := 0;
  NewLayerNumber := 0;

  FindMaxEntryForFile(SourcePath, False, False);
end;

procedure Prepare_Simobjects_GroundVehicles_cfg;
var
SourcePath: String;
TargetFilename: String;
TargetPath: String;
begin
  SourcePath := GetConfigFilePath('') + '\simobjects.cfg';
  DeleteEntryForFile(SourcePath, '{#MySceneryTitle} Ground Vehicles', True, False);

  NewEntryNumber := 0;
  NewLayerNumber := 0;

  FindMaxEntryForFile(SourcePath, False, False);
end;


procedure Copy_Old_Sound_cfg;
var
SourcePath: String;
TargetFilename: String;
TargetPath: String;
begin
  SourcePath := GetConfigFilePath('') + '\sound.cfg';
  TargetFilename := 'sound_cfg_Before_{#MySceneryTitle}_was_installed.cfg';
  TargetPath:=GetConfigFilePath('') + '\' + TargetFilename;
  if not FileExists(TargetFilename) then
  begin
    FileCopy(SourcePath, TargetPath, TRUE);
  end;

  DeleteEntryForFile(SourcePath, '{#MySceneryTitle} Sounds', False, False);

  NewEntryNumber := 0;
  NewLayerNumber := 0;

  FindMaxEntryForFile(SourcePath, False, False);
end;

procedure Copy_Old_Effects_cfg;
var
SourcePath: String;
TargetFilename: String;
TargetPath: String;
begin
  SourcePath := GetConfigFilePath('') + '\effects.cfg';
  TargetFilename := 'effects_cfg_Before_{#MySceneryTitle}_was_installed.cfg';
  TargetPath:=GetConfigFilePath('') + '\' + TargetFilename;
  if not FileExists(TargetFilename) then
  begin
    FileCopy(SourcePath, TargetPath, TRUE);
  end;

  DeleteEntryForFile(SourcePath, '{#MySceneryTitle} Effects', False, False);

  NewEntryNumber := 0;
  NewLayerNumber := 0;

  FindMaxEntryForFile(SourcePath, False, False);
end;

procedure Copy_Old_Addons_cfg;
var
SourcePath: String;
TargetFilename: String;
TargetPath: String;
begin
  SourcePath := GetConfigFilePath('') + '\add-ons.cfg';
  TargetFilename := 'add-ons_cfg_Before_{#MySceneryTitle}_was_installed.cfg';
  TargetPath:=GetConfigFilePath('') + '\' + TargetFilename;
  if not FileExists(TargetFilename) then
  begin
    FileCopy(SourcePath, TargetPath, TRUE);
  end;

  DeleteEntryForFile(SourcePath, '{#MySceneryTitle}', False, True);

  NewEntryNumber := 0;
  NewLayerNumber := 0;

  FindMaxEntryForFile(SourcePath, False, True);
end;

procedure Append_addon_xml;
var
   SimPath: String;
   Params: String;
   UserAppData: String;
   ResultCode: Integer;
   FilePath: String;
begin
  FilePath := ExtractFilePath(ExpandConstant('{uninstallexe}'));
  Log('Uninstall path: ' + FilePath);
  Log('completing add-on.xml file');
  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  <AddOn.Name>{#MySceneryTitle}</AddOn.Name>'#13#10, True);
  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  <AddOn.Description>{#MyAppPublisher} - {#MySceneryName}</AddOn.Description>'#13#10, True);

  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  <AddOn.Component>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '    <Category>Scenery</Category>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), ExpandConstant('    <Path>{code:GetSceneryInstallPath}\scenery</Path>'#13#10), True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), ExpandConstant('    <Name>{#MySceneryTitle}</Name>'#13#10), True);
  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  </AddOn.Component>'#13#10, True);

  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  <AddOn.Component>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '    <Category>Texture</Category>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), ExpandConstant('    <Path>{code:GetSceneryInstallPath}\texture</Path>'#13#10), True);
  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  </AddOn.Component>'#13#10, True);

  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  <AddOn.Component>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '    <Category>Effects</Category>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), ExpandConstant('    <Path>{code:GetSceneryInstallPath}\effects</Path>'#13#10), True);
  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  </AddOn.Component>'#13#10, True);

  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  <AddOn.Component>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '    <Category>SimObjects</Category>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), ExpandConstant('    <Path>{code:GetSceneryInstallPath}\SimObjects\Boats</Path>'#13#10), True);
  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  </AddOn.Component>'#13#10, True);

  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  <AddOn.Component>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '    <Category>SimObjects</Category>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), ExpandConstant('    <Path>{code:GetSceneryInstallPath}\SimObjects\GroundVehicles</Path>'#13#10), True);
  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  </AddOn.Component>'#13#10, True);

  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  <AddOn.Component>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '    <Category>Sound</Category>'#13#10, True);
    SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), ExpandConstant('    <Path>{code:GetSceneryInstallPath}\Sound</Path>'#13#10), True);
  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '  </AddOn.Component>'#13#10, True);

  SaveStringToFile(ExpandConstant('{code:GetUserMyDocumentsPath}\add-on.xml'), '</SimBase.Document>'#13#10, True);


//  UserAppData := ExpandConstant('{userappdata}\{#MySceneryCollectionDir}\{#MySceneryTitle}');
//  Params := '-Configure: Category=Add-on Package, Operation=Add, FileLocation=Roaming, Path={code:GetUserAppDataPath}';
//  Log('Execute Prepar3D: ' + SimulatorPath + 'Prepar3D.exe ' + Params);
//  Exec(SimulatorPath + 'Prepar3D.exe', Params, '', SW_HIDE, ewWaitUntilTerminated, ResultCode);

end;

procedure Append_uninstall_cmd;
var
   FilePath: String;
   Params: String;
   UserAppData: String;
   ResultCode: Integer;
begin
  Log('completing uninstall.cmd file');
 
  UserAppData := ExpandConstant('{userappdata}\{#MySceneryCollectionDir}\{#MySceneryTitle}');
  Params := SimulatorPath + 'Prepar3D.exe -Configure: Category=Add-on Package, Operation=Remove, FileLocation=Roaming, Path=' + UserAppData;
  Log('write to uninstall.cmd: ' + Params);
  FilePath := ExtractFilePath(ExpandConstant('{uninstallexe}')) + '\unregister.cmd';
  Log('Unregister.cmd FilePath = ' + FilePath);
  SaveStringToFile(FilePath, Params + #13#10, True);
//  Exec(SimPath + 'Prepar3D.exe', Params, '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
end;

procedure Append_uninstall_ini;
var
   FilePath: String;
   Params: String;
   UserAppData: String;
   ResultCode: Integer;
begin
  Log('completing uninstall.ini file');
 
  UserAppData := ExpandConstant('{userappdata}\{#MySceneryCollectionDir}\{#MySceneryTitle}');
//  Params := SimulatorPath + 'Prepar3D.exe -Configure: Category=Add-on Package, Operation=Remove, FileLocation=Roaming, Path=' + UserAppData;
  Log('write to uninstall.ini: ' + Params);
  FilePath := ExtractFilePath(ExpandConstant('{uninstallexe}')) + '\unregister.ini';
  SetIniString('ConfigFiles', 'Path', ConfigFilePath, FilePath);
  SetIniString('DocumentFiles', 'Path', UserMyDocumentsPath, FilePath);

  Log('Unregister.ini FilePath = ' + FilePath);
end;



function InitializeUninstall(): Boolean;
begin
  Result := True;
end;

//////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////


function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo, MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: String): String;
var
  SceneryDirPrompt: String;
begin
  SceneryDirPrompt := 'Scenery folder:';

  if ActiveLanguage = 'Deutsch' then
  begin
    SceneryDirPrompt := 'Szenerie-Verzeichnis:';
  end;

  Result := MemoUserInfoInfo + NewLine + SceneryDirPrompt + NewLine + Space + SceneryInstallPath + NewLine 
            + NewLine + MemoComponentsInfo + NewLine + NewLine
            + MemoTasksInfo;
end;

//////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////




procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var
  SceneryArea: Integer;
  TempString: String;
  MyPath: String;
  AreaSection: String;
  RegMethod: String;
  SimPath: String;
  UserAppData: String;
  Params: String;
  ResultCode: Integer;
  UnRegisterFilePath: String;
begin
  Log('CurUninstallStepChanged executing');

  if CurUninstallStep = usAppMutexCheck then
  begin
    Log('CurUninstallStepChanged doing its thing');

//    UnRegisterFilePath := ExpandConstant('{code:GetUninstallCmdPath}\unregister.cmd');
//    Log('check for file ' + UnRegisterFilePath);

//    if FileExists(UnRegisterFilePath) = True then
//    begin
//      Log('Execute: ' + UnRegisterFilePath);
//      Exec(UnRegisterFilePath, '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
//    end;

    UnRegisterFilePath := ExpandConstant('{code:GetUninstallCmdPath}\unregister.ini');
    Log('check for file ' + UnRegisterFilePath);

    if FileExists(UnRegisterFilePath) = True then
    begin
      ConfigFilePath := GetIniString('ConfigFiles', 'Path', '', UnRegisterFilePath);

      DeleteEntryForFile(ConfigFilePath + '\scenery.cfg', '{#MySceneryTitle}', True, False);
      DeleteEntryForFile(ConfigFilePath + '\effects.cfg', '{#MySceneryTitle} Effects', False, False);
      DeleteEntryForFile(ConfigFilePath + '\sound.cfg', '{#MySceneryTitle} Sounds', False, False);
      DeleteEntryForFile(ConfigFilePath + '\simobjects.cfg', '{#MySceneryTitle} Boats', False, False);
      DeleteEntryForFile(ConfigFilePath + '\simobjects.cfg', '{#MySceneryTitle} Ground Vehicles', False, False);
      DeleteEntryForFile(ConfigFilePath + '\add-ons.cfg', '{#MySceneryTitle}', False, True);

//      ConfigFilePath := GetIniString('DocumentFiles', 'Path', '', UnRegisterFilePath);

    end;

//    RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'Software\{#MyAppPublisher}\{#MySceneryName}');
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
 logfilepathname, logfilename, newfilepathname: string;
begin

  if CurStep = ssDone then
  begin
    logfilepathname := expandconstant('{log}');
    logfilename := ExtractFileName(logfilepathname);

    if Length(logfilename) > 5 then
    begin
      newfilepathname := RemoveBackslash(SceneryInstallPath) + '\LastInstall.log';
      Log('copy logfile to ' +  newfilepathname);
      FileCopy(logfilepathname, newfilepathname, false);
      DeleteFile(logfilepathname);
    end;
    
  end;

end;
