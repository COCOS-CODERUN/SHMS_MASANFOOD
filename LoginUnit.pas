unit LoginUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxTextEdit, dxGDIPlusClasses,
  cxImage, cxLabel, Vcl.StdCtrls, cxButtons, cxGroupBox, cxCheckBox, WinInet,
  cxCurrencyEdit, ShellAPI, system.IniFiles, System.IOUtils, System.Hash,
  Vcl.ExtCtrls, FireDAC.Stan.Param, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, MemDS, DBAccess, Uni;

type
  TLoginForm = class(TForm)
    cxGBox1: TcxGroupBox;
    cxBtnLogin: TcxButton;
    cxLbl1: TcxLabel;
    cxImg_COCOS: TcxImage;
    cxLbl2: TcxLabel;
    cxEdit_Identification: TcxTextEdit;
    cxEdit_Password: TcxTextEdit;
    cxChkBox_RememberPassword: TcxCheckBox;
    cxCEdit_UserID: TcxCurrencyEdit;
    cxEdit_UserName: TcxTextEdit;
    PopupMenu: TPopupMenu;
    MenuItemClientServer: TMenuItem;
    cxLbl_PWChange: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    Image1: TImage;
    cxGroupBox2: TcxGroupBox;
    Image2: TImage;
    cxTextEdit2: TcxTextEdit;
    FDSpNativeCheck: TUniStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxBtnLoginClick(Sender: TObject);
    procedure cxEdit_IdentificationKeyPress(Sender: TObject; var Key: Char);
    procedure cxEdit_PasswordKeyPress(Sender: TObject; var Key: Char);
    procedure MenuItemClientServerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxLbl_PWChangeClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetLoinInfoFromIniFile;
    procedure SetLoginInfoToIniFile;
    function CheckLoginInfo(Identification, Password: string): Boolean;
  public
    { Public declarations }
    function isInternetConnected: Boolean;
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  LoginForm: TLoginForm;
  AuthorityCheck:Boolean; //그룹 권한 여부
  AuthorityID:Integer;

implementation

uses DataModule, MainUnit, LoginModalUnit;

{$R *.dfm}

// 폼 이벤트 ===================================================================
procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLoginForm.FormCreate(Sender: TObject);
begin
  SetWindowPos(LoginForm.handle, HWND_TOPMOST, LoginForm.Left, LoginForm.Top,
    LoginForm.Width, LoginForm.Height,0);
end;

procedure TLoginForm.FormShow(Sender: TObject);
begin
  // 프로그램이 실행된 실제경로
  // ExtractFilePath(Application.ExeName)
  // 디렉토리 제거
  // RemoveDirectory('C:\TEMP')
  // 디렉토리 생성
  // CreateDir('C:\TEMP')

  // 프로그램 디렉토리 이름 상수값 체크
  if (ProgramFolderName <> '') then
  begin
    // 경로 디렉토리 존재 유무 체크
    if DirectoryExists(TPath.GetPublicPath + '\' + ProgramFolderName) then
    begin
      // 경로에 파일 존재 유무 체크
      if FileExists(TPath.GetPublicPath + '\' + ProgramFolderName + '\ClientEnv.ini') then
      begin
        // INI 파일에서 로그인 정보 확인
        GetLoinInfoFromIniFile;
      end;
    end;
  end;

  cxEdit_Identification.SetFocus;
end;

// Button, Edit 이벤트 =========================================================
// 로그인 버튼
procedure TLoginForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.WndParent := GetDesktopWindow;
end;

procedure TLoginForm.cxBtnLoginClick(Sender: TObject);
begin
  // 네이티브 클라이언트 체크
  if isInternetConnected then
  begin
    try
      with DataModuleForm.FDSpSetting(FDSpNativeCheck,'usp_User','P') do
      begin
        ParamByName('@TestDate').AsDate := now;
        Open;
      end;
    Except on e:exception do
      begin
        ShowMessage('창 내부에서 우클릭하여 드라이버를 먼저 설치해주세요.');
        Exit;
      end;
    end;
  end
  // 인터넷 체크
  else
  begin
    ShowMessage('인터넷에 연결되어있지않습니다.');
    Exit;
  end;

  // Null 체크
  if cxEdit_Identification.Text =  '' then
  begin
    ShowMessage('아이디를 입력하세요');
    cxEdit_Identification.SetFocus;
    Exit;
  end;

  if cxEdit_Password.Text = '' then
  begin
    ShowMessage('비밀번호를 입력하세요.');
    cxEdit_Password.SetFocus;
    Exit;
  end;

  if CheckLoginInfo(cxEdit_Identification.Text, cxEdit_Password.Text) then
  begin
    // 로그인 정보 DataModule 변수에 기억
    DataModule.LoginId        := Round(cxCEdit_UserID.Value);
    DataModule.LoginUserId    := cxEdit_Identification.Text;
    DataModule.LoginUserName  := cxEdit_UserName.Text;
    DataModule.GroupAuthority := AuthorityCheck;
    DataModule.GroupID        := AuthorityID;

    // 프로그램 디렉토리 이름 상수값 체크
    if (ProgramFolderName <> '') then
    begin
      // 경로 디렉토리 존재 유무 체크
      if DirectoryExists(TPath.GetPublicPath + '\' + ProgramFolderName) then
      begin
        // 경로에 파일 존재 유무 체크
        if FileExists(TPath.GetPublicPath + '\' + ProgramFolderName + '\ClientEnv.ini') then
        begin
          // INI 파일에 로그인 정보 저장
          SetLoginInfoToIniFile;
        end;
      end;
    end;

    // 접속기록(Log) 추가
    with DataModuleForm.FDSpSetting(nil,'usp_User','R') do
    begin
      ParamByName('@UserID').Value      := DataModule.LoginId;
      ParamByName('@AccessCheck').Value := True;
      ExecProc;
    end;

    ModalResult := mrOk;
  end;
end;

// 아이디 Edit 엔터 키 입력 -> 비밀번호 Edit로 포커스 이동
procedure TLoginForm.cxEdit_IdentificationKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    cxEdit_Password.SetFocus;
  end;
end;

// 비밀번호 Edit 엔터 키 입력 -> 로그인 버튼 클릭
procedure TLoginForm.cxEdit_PasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    cxBtnLoginClick(cxBtnLogin);
  end;
end;

//비밀번호 변경
procedure TLoginForm.cxLbl_PWChangeClick(Sender: TObject);
begin
  LoginModalForm := TLoginModalForm.Create(self);
  LoginModalForm.Division := 0;
  LoginForm.SendToBack;
  if LoginModalForm.ShowModal <> mrOk then
  begin

  end;

end;

// 팝업 메뉴 관련 ==============================================================
// Microsoft® SQL Server® 2012 Native Client 다운로드
procedure TLoginForm.MenuItemClientServerClick(Sender: TObject);
begin
  ShellExecute(HInstance, 'open',
  PChar('https://www.microsoft.com/ko-kr/download/confirmation.aspx?id=50402'),
  nil, nil, SW_NORMAL);
end;

// 로그인 기능 =================================================================
// INI 파일에서 로그인 정보 확인
procedure TLoginForm.GetLoinInfoFromIniFile;
var
  ClientEnvIniPath, LoginId, LoginPassword: string;
  IsRememberPassword: Boolean;
  ClientEnvFile: TIniFile;
begin
  ClientEnvIniPath :=
    TPath.GetPublicPath + '\' + ProgramFolderName + '\ClientEnv.ini';
  ClientEnvFile := TIniFile.Create(ClientEnvIniPath);
  try
    LoginId := ClientEnvFile.ReadString('LoginInfo', 'LoginId', '');
    LoginPassword := ClientEnvFile.ReadString('LoginInfo', 'LoginPassword', '');
    if ClientEnvFile.ReadString('LoginInfo', 'RememberPassword', 'N') = 'Y' then
    begin
      IsRememberPassword := True;
    end
    else
    begin
      IsRememberPassword := False;
    end;
  finally
    ClientEnvFile.DisposeOf;
  end;

  cxEdit_Identification.Text := LoginId;
  cxEdit_Password.Text := LoginPassword;
  cxChkBox_RememberPassword.Checked := IsRememberPassword;
end;

// INI 파일에 로그인 정보 저장
procedure TLoginForm.SetLoginInfoToIniFile;
var
  ClientEnvIniPath, LoginId, LoginPassword, IsRememberPassword: string;
  ClientEnvFile: TIniFile;
begin
  LoginId := cxEdit_Identification.Text;
  if cxChkBox_RememberPassword.Checked then
  begin
    IsRememberPassword := 'Y';
    LoginPassword := cxEdit_Password.Text;
  end
  else
  begin
    IsRememberPassword := 'N';
    LoginPassword := '';
  end;

  ClientEnvIniPath :=
    TPath.GetPublicPath + '\' + ProgramFolderName + '\ClientEnv.ini';
  ClientEnvFile := TIniFile.Create(ClientEnvIniPath);
  try
    ClientEnvFile.WriteString('LoginInfo', 'LoginId', LoginId);
    ClientEnvFile.WriteString('LoginInfo', 'RememberPassword',
      IsRememberPassword);
    ClientEnvFile.WriteString('LoginInfo', 'LoginPassword', LoginPassword);
  finally
    ClientEnvFile.Free;
  end;
end;

// 로그인 체크
function TLoginForm.CheckLoginInfo(Identification, Password: string): Boolean;
begin
  Result := False;

  with DataModuleForm.FDSpSetting(nil, 'usp_User', 'O') do
  begin
    ParamByName('@LoginID').AsString  := Identification;
    ParamByName('@Password').AsString :=
    THashSHA2.GetHashString(Password, THashSHA2.TSHA2Version.SHA512).ToUpper;
    ExecProc;

    // 로그인 성공
    if ParamByName('@RETURN_VALUE').AsInteger = 0 then
    begin
      cxCEdit_UserID.Value := ParamByName('@UserID').AsInteger;
      cxEdit_UserName.Text := ParamByName('@Name').AsString;
      AuthorityCheck       := ParamByName('@AuthorityCheck').AsBoolean;
      AuthorityID          := ParamByName('@GroupID').AsInteger;
      MainUnit.AlarmCheck  := ParamByName('@Alarm').AsBoolean;
      MainUnit.MetalAlarm  := ParamByName('@MetalAlarm').AsInteger;
      // 개별 스킨 적용
      DataModuleForm.UserSkin := ParamByName('@UserSkin').AsString;
      // 개별 버튼 스킨 적용
      DataModuleForm.BtnSkin  := ParamByName('@BtnSkin').AsString;
      // 개별 배경스킨 적용
      DataModuleForm.BackSkin := ParamByName('@BackSkin').AsString;

      Result := True;
    end
    // 로그인 실패
    else if (ParamByName('@RETURN_VALUE').AsInteger = 1)
           or  (ParamByName('@RETURN_VALUE').AsInteger = 2) then
    begin
      ShowMessage('아이디 또는 비밀번호를 확인해주세요.');
      cxEdit_Identification.Clear;
      cxEdit_Password.Clear;
      cxEdit_Identification.SetFocus;
      Result := False;
    end
  end;
end;

function TLoginForm.isInternetConnected: Boolean;
var
  dwFlags : DWORD;
begin
  Result := InternetGetConnectedState(@dwFlags, 0);

end;


end.
