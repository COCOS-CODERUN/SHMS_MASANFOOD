unit LoginModalUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseModal, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, cxLabel,
  cxTextEdit, dxGDIPlusClasses, cxImage, System.Hash, cxCurrencyEdit,
  FireDAC.Stan.Param, frxSVGGraphic, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TLoginModalForm = class(TBaseModalForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLbl1: TcxLabel;
    cxLabel2: TcxLabel;
    cxEdit_ID: TcxTextEdit;
    cxEdit_Password: TcxTextEdit;
    cxLbl2: TcxLabel;
    cxLabel1: TcxLabel;
    cxEdit_PWCheck: TcxTextEdit;
    cxEdit_NewPassword: TcxTextEdit;
    cxBtnLogin: TcxButton;
    cxImgCocos: TcxImage;
    cxCEdit_UserID: TcxCurrencyEdit;
    cxButton1: TcxButton;
    procedure cxBtnLoginClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    function UserCheck:Boolean;
  public
    { Public declarations }
    Division:Integer;
    UserPW:String;
  end;

var
  LoginModalForm: TLoginModalForm;

implementation

Uses DataModule;

{$R *.dfm}


{ TLoginModalForm }


//변경 버튼
procedure TLoginModalForm.cxBtnLoginClick(Sender: TObject);
begin
  inherited;

  if cxEdit_ID.Text = '' then
  begin
    ShowMessage('아이디를 입력하세요.');
    DataModuleForm.ClearEditIncxGroupBox(cxGroupBox2);
    Exit;
  end;

  if cxEdit_Password.Text = '' then
  begin
    ShowMessage('비밀번호를 입력하세요.');
    DataModuleForm.ClearEditIncxGroupBox(cxGroupBox2);
    Exit;
  end;

  if cxEdit_NewPassword.Text = '' then
  begin
    ShowMessage('새로운 비밀번호를 입력하세요.');
    DataModuleForm.ClearEditIncxGroupBox(cxGroupBox2);
    Exit;
  end;

  if cxEdit_NewPassword.Text = '' then
  begin
    ShowMessage('비밀번호 확인란을 입력하세요.');
    DataModuleForm.ClearEditIncxGroupBox(cxGroupBox2);
    Exit;
  end;

  if cxEdit_NewPassword.Text <> cxEdit_PWCheck.Text then
  begin
    ShowMessage('비밀번호 확인란이 일치하지 않습니다. 다시 확인해주세요.');
    DataModuleForm.ClearEditIncxGroupBox(cxGroupBox2);
    Exit;
  end;

  if UserCheck then
  begin
    with DataModuleForm.FDQuerySetting(nil) do
    begin
      SQL.Add(' UPDATE MasterUser        ');
      SQL.Add(' SET PassWord = :PassWord ');
      SQL.Add(' WHERE UserID = :UserID   ');
      ParamByName('UserID').AsInteger  := Round(cxCEdit_UserID.Value);
      ParamByName('PassWord').AsString :=
      THashSHA2.GetHashString(cxEdit_NewPassword.Text, THashSHA2.TSHA2Version.SHA512).ToUpper;

      ExecSQL;
      ShowMessage('비밀번호가 변경되었습니다.');
      ModalResult := MrOk;
    end;
  end
  else
  begin
    ShowMessage('아이디 또는 비밀번호를 확인해주세요.');
    Exit;
  end;
end;

//계정 확인
function TLoginModalForm.UserCheck:Boolean;
begin
  Result := False;

  with DataModuleForm.FDSpSetting(nil, 'usp_User', 'O') do
  begin
    ParamByName('@LoginID').AsString  := cxEdit_ID.Text;

    //메인화면, 사용자관리 화면 구분
    if Division = 0 then
    begin
      ParamByName('@Password').AsString :=
        THashSHA2.GetHashString(cxEdit_Password.Text, THashSHA2.TSHA2Version.SHA512).ToUpper;
    end
    else
    begin
      ParamByName('@Password').AsString := UserPW;
    end;

    ExecProc;

    // 확인 성공
    if ParamByName('@RETURN_VALUE').AsInteger = 0 then
    begin
      cxCEdit_UserID.Value := ParamByName('@UserID').AsInteger;
      Result := True;
    end
    // 확인 실패
    else if (ParamByName('@RETURN_VALUE').AsInteger = 1)
           or  (ParamByName('@RETURN_VALUE').AsInteger = 2) then Result := False;

  end;

  Result := True;
end;

procedure TLoginModalForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  ModalResult := MrOk;
end;


end.
