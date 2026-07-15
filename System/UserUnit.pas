unit UserUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseChild, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxCheckBox, cxSplitter,
  cxRadioGroup, cxCurrencyEdit, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.UITypes, System.Hash, cxMaskEdit, cxDropDownEdit, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White, MemDS,
  DBAccess, Uni, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TUserForm = class(TBaseChildForm)
    cxGBoxList: TcxGroupBox;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridDBTv_List_UserOrder: TcxGridDBColumn;
    cxGridDBTv_List_UserID: TcxGridDBColumn;
    cxGridDBTv_List_ID: TcxGridDBColumn;
    cxGridDBTv_List_Password: TcxGridDBColumn;
    cxGridDBTv_List_Name: TcxGridDBColumn;
    cxGridDBTv_List_Department: TcxGridDBColumn;
    cxGridDBTv_List_Position: TcxGridDBColumn;
    cxGridDBTv_List_Remarks: TcxGridDBColumn;
    cxGridDBTv_List_Writer: TcxGridDBColumn;
    cxGridDBTv_List_WDT: TcxGridDBColumn;
    cxGridDBTv_List_Modifier: TcxGridDBColumn;
    cxGridDBTv_List_MDT: TcxGridDBColumn;
    cxGridDBTv_List_IsUsable: TcxGridDBColumn;
    cxGridLv_List: TcxGridLevel;
    cxGBoxUser: TcxGroupBox;
    cxLbl1: TcxLabel;
    cxLbl2: TcxLabel;
    cxLbl3: TcxLabel;
    cxEdit_Password: TcxTextEdit;
    cxLbl4: TcxLabel;
    cxLbl5: TcxLabel;
    cxLbl6: TcxLabel;
    cxLbl7: TcxLabel;
    cxLbl8: TcxLabel;
    cxEdit_Writer: TcxTextEdit;
    cxLbl9: TcxLabel;
    cxEdit_Modifier: TcxTextEdit;
    cxLbl10: TcxLabel;
    cxCEdit_UserID: TcxCurrencyEdit;
    cxEdit_WDT: TcxTextEdit;
    cxEdit_MDT: TcxTextEdit;
    cxLabel10: TcxLabel;
    DS_UserList: TDataSource;
    cxEdit_ID: TcxTextEdit;
    cxBtn_PasswordChange: TcxButton;
    cxEdit_Name: TcxTextEdit;
    cxEdit_Department: TcxTextEdit;
    cxEdit_Position: TcxTextEdit;
    cxRGroup_IsUsable: TcxRadioGroup;
    cxEdit_Remarks: TcxTextEdit;
    cxCBoxUserSkin: TcxComboBox;
    cxLabel11: TcxLabel;
    cxCBoxBackSkin: TcxComboBox;
    cxLabel1: TcxLabel;
    cxCBoxBtnSkin: TcxComboBox;
    cxLabel2: TcxLabel;
    FDSpUserList: TUniStoredProc;
    cxLabel3: TcxLabel;
    cxRGroup_Alarm: TcxRadioGroup;
    cxGridDBTv_List_Alarm: TcxGridDBColumn;
    cxLkCBBox_Metal: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    FDQuery_facility: TUniQuery;
    DS_Facility: TDataSource;
    procedure FormResize(Sender: TObject);
    procedure cxBtnNewClick(Sender: TObject);
    procedure cxBtnSaveClick(Sender: TObject);
    procedure cxBtnDeleteClick(Sender: TObject);
    procedure cxGridDBTv_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTv_List_UserOrderGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxBtn_PasswordChangeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxCBoxUserSkinClick(Sender: TObject);
    procedure cxCBoxBackSkinClick(Sender: TObject);
    procedure cxCBoxBtnSkinClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SearchUserList;
    procedure SetUserEdit;
    function SaveUser: Boolean;
    function DeleteUser: Boolean;
  public
    { Public declarations }
  end;

var
  UserForm: TUserForm;

implementation

{$R *.dfm}

uses DataModule, LoginModalUnit, MainUnit;

// 폼 이벤트 ===================================================================
procedure TUserForm.FormShow(Sender: TObject);
var
  loopcnt: Integer;
begin
  inherited;
  SearchUserList;
  cxBtnNewClick(self);
  // 스킨리스트
  cxCBoxUserSkin.Properties.Items.Clear;
  cxCBoxBtnSkin.Properties.Items.Clear;
  cxCBoxBackSkin.Properties.Items.Clear;
  for loopcnt := 0 to Length(DataModuleForm.cxSkinList) - 1 do
  begin
    cxCBoxUserSkin.Properties.Items.Add(DataModuleForm.cxSkinList[loopcnt]);
    cxCBoxBtnSkin.Properties.Items.Add(DataModuleForm.cxSkinList[loopcnt]);
    cxCBoxBackSkin.Properties.Items.Add(DataModuleForm.cxSkinList[loopcnt]);
  end;
end;

procedure TUserForm.FormCreate(Sender: TObject);
begin
  inherited;
  with DataModuleForm.FDQuerySetting(FDQuery_facility) do
  begin
    sql.Add(' SELECT * FROM Metal             ');
    sql.Add(' WHERE LEFT(MetalCode,2) =''CD'' ');
    open;
  end;
end;

procedure TUserForm.FormResize(Sender: TObject);
begin
  inherited;
  cxGBoxList.Width := ClientWidth div 2;
end;

// 버튼 이벤트 =================================================================
// 신규 버튼
procedure TUserForm.cxBtnNewClick(Sender: TObject);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBoxUser);
  cxRGroup_IsUsable.ItemIndex := 0;
  cxEdit_ID.SetFocus;
  cxEdit_Password.Properties.ReadOnly := false;
  cxBtn_PasswordChange.Visible := false;
end;

// 저장 버튼
procedure TUserForm.cxBtnSaveClick(Sender: TObject);
begin
  inherited;
  //권한 확인
//  if not CheckAuthoritySave
//    (CanInput, CanAlter, Round(cxCEdit_UserID.Value), 1) then Exit;

  if cxEdit_ID.Text = '' then
  begin
    ShowMessage('아이디를 입력하세요.');
    cxEdit_ID.SetFocus;
    Exit;
  end;

  if cxEdit_Password.Text = '' then
  begin
    ShowMessage('비밀번호를 입력하세요.');
    cxEdit_Password.SetFocus;
    Exit;
  end;

  if SaveUser then
  begin
    // 저장시 스킨 바로 적용
    DataModuleForm.UserSkin := cxCBoxUserSkin.Text;
    DataModuleForm.BtnSkin  := cxCBoxBtnSkin.Text;
    DataModuleForm.BackSkin := cxCBoxBackSkin.Text;
    SearchUserList;
    cxBtnNewClick(self);
    ShowMessage(MessageToSave);
  end;
end;

//비밀번호 변경 버튼
procedure TUserForm.cxBtn_PasswordChangeClick(Sender: TObject);
begin
  inherited;

  // NULL CHECK
  if cxCEdit_UserID.Text = '' then
  begin
    ShowMessage('비밀번호를 변경하실 유저를 선택해주세요.');
    Exit;
  end;

  // 마스터 계정이 아니면
  if DataModule.LoginId <> 1 then
  begin
    if (DataModule.LoginId <> Round(cxCEdit_UserID.Value)) then
    begin
      ShowMessage('다른 계정의 비밀번호를 변경할 권한이 없습니다');
      Exit;
    end;
  end;

  // 기존 ID, PW를 미리 세팅
  LoginModalForm                                      := TLoginModalForm.Create(Self);
  LoginModalForm.Division                             := 1;
  LoginModalForm.cxEdit_ID.Text                       := cxEdit_ID.Text;
  LoginModalForm.cxEdit_Password.Text                 := Copy(FDSpUserList.FieldByName('PassWord').AsString,1,8);
  LoginModalForm.UserPW                               := FDSpUserList.FieldByName('PassWord').AsString;
  LoginModalForm.cxEdit_ID.Properties.ReadOnly        := True;
  LoginModalForm.cxEdit_Password.Properties.ReadOnly  := True;

  // 비밀번호 변경을 했을시 재조회.
  if LoginModalForm.ShowModal = mrOk then
  begin
    SearchUserList;
    DataModuleForm.ClearEditIncxGroupBox(cxGBoxUser);
  end;
end;

// 삭제 버튼
procedure TUserForm.cxBtnDeleteClick(Sender: TObject);
begin
  inherited;

  //삭제 권한 확인
  if not CheckAuthorityDelete(CanDelete) then Exit;

  // 관리자 계정 삭제 차단
  if cxCEdit_UserID.text = '1' then
  begin
    ShowMessage('관리자 계정은 삭제할 수 없습니다.');
    Exit;
  end;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    if DeleteUser then
    begin
      SearchUserList;
      cxBtnNewClick(self);
    end;
  end;

end;

// 그리드 이벤트 ===============================================================
// 그리드 더블클릭
procedure TUserForm.cxGridDBTv_ListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBoxUser);
  SetUserEdit;

  if CheckAuthoritySave(CanInput, CanAlter, Round(cxCEdit_UserID.Value), 0) then
  begin
    cxBtn_PasswordChange.Visible  := True;
  end;
end;

// 그리드 순번
procedure TUserForm.cxGridDBTv_List_UserOrderGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index + 1);
end;

// 사용자 관련 기능 ============================================================
// 사용자 목록 조회
procedure TUserForm.SearchUserList;
var
  UserIdToFocus: string;
  RecordIndexToFocus: Integer;
begin
  UserIdToFocus := cxCEdit_UserID.Text;

  with DataModuleForm.FDSpSetting(FDSpUserList, 'usp_User', 'C') do Open;

  with cxGridDBTv_List.DataController do
  begin
    RecordIndexToFocus :=
      FindRecordIndexByText(0, cxGridDBTv_List_UserID.Index, UserIdToFocus, False, False, True);
    if RecordIndexToFocus > 0 then
    begin
      FocusedRecordIndex := RecordIndexToFocus;
    end;
  end;
end;

// 사용자 목록 에디트셋
procedure TUserForm.SetUserEdit;
begin
  with FDSpUserList do
  begin
    if (Active) and (RecordCount > 0) then
    begin
      cxCEdit_UserID.Value        := FieldByName('UserID').AsInteger;
      cxEdit_ID.Text              := FieldByName('LoginID').AsString;
      cxEdit_Password.Text        := Copy(FieldByName('Password').AsString,1,8);
      cxEdit_Name.Text            := FieldByName('Name').AsString;
      cxEdit_Department.Text      := FieldByName('Department').AsString;
      cxEdit_Position.Text        := FieldByName('Position').AsString;
      cxCBoxUserSkin.Text         := FieldByName('UserSkin').AsString;
      cxCBoxBtnSkin.Text          := FieldByName('BtnSkin').AsString;
      cxCBoxBackSkin.Text         := FieldByName('BackSkin').AsString;
      cxEdit_Remarks.Text         := FieldByName('Remarks').AsString;
      cxEdit_Writer.Text          := FieldByName('Writer').AsString;
      cxEdit_WDT.Text             := FieldByName('WDT').AsString;
      cxEdit_Modifier.Text        := FieldByName('Modifier').AsString;
      cxEdit_MDT.Text             := FieldByName('MDT').AsString;
      cxRGroup_IsUsable.EditValue := FieldByName('IsUsable').AsBoolean;
      cxRGroup_Alarm.EditValue    := FieldByName('Alarm').AsBoolean;
      cxLkCBBox_Metal.EditValue   := FieldByName('MetalAlarm').Asinteger;
    end;
  end;

  cxEdit_Password.Properties.ReadOnly := True;
end;

// 유저 저장 함수
function TUserForm.SaveUser: Boolean;
var
  PW: String;
begin
  Result := False;

  //신규
  if Round(cxCEdit_UserID.Value) = 0 then
  begin
    PW := THashSHA2.GetHashString(cxEdit_Password.Text, THashSHA2.TSHA2Version.SHA512).ToUpper;
  end
  //일반 저장
  else
  begin
    PW := FDSpUserList.FieldByName('PassWord').AsString;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_User', 'E') do
  begin
    ParamByName('@UserID').AsInteger     := Round(cxCEdit_UserID.Value);
    ParamByName('@LoginID').AsString     := cxEdit_ID.Text;
    ParamByName('@Password').AsString    := PW;
    ParamByName('@Name').AsString        := cxEdit_Name.Text;
    ParamByName('@Department').AsString  := cxEdit_Department.Text;
    ParamByName('@Position').AsString    := cxEdit_Position.Text;
    ParamByName('@UserSkin').AsString    := cxCBoxUserSkin.Text;
    ParamByName('@BtnSkin').AsString     := cxCBoxBtnSkin.Text;
    ParamByName('@BackSkin').AsString    := cxCBoxBackSkin.Text;
    ParamByName('@Remarks').AsString     := cxEdit_Remarks.Text;
    ParamByName('@Writer').AsString      := DataModule.LoginUserName;
    ParamByName('@Modifier').AsString    := DataModule.LoginUserName;
    ParamByName('@IsUsable').AsBoolean   := cxRGroup_IsUsable.EditValue;
    ParamByName('@Alarm').AsBoolean      := cxRGroup_Alarm.EditValue;
    if cxLkCBBox_Metal.Text = '' then
    begin
      ParamByName('@MetalAlarm').AsInteger := 0;
    end
    else
    begin
      ParamByName('@MetalAlarm').AsInteger := cxLkCBBox_Metal.EditValue;
    end;


    ExecProc;

    cxCEdit_UserID.Value  := ParamByName('@UserID').AsInteger;
    cxEdit_Writer.Text    := ParamByName('@Writer').AsString;
    cxEdit_WDT.Text       := ParamByName('@WDT').AsString;
    cxEdit_Modifier.Text  := ParamByName('@Modifier').AsString;
    cxEdit_MDT.Text       := ParamByName('@MDT').AsString;
  end;

  Result := True;
end;

// 유저 삭제 함수
function TUserForm.DeleteUser: Boolean;
begin
  Result := False;

  with DataModuleForm.FDSpSetting(nil, 'usp_User', 'F') do
  begin
    ParamByName('@UserID').AsInteger := Round(cxCEdit_UserID.Value);
    ExecProc;

    if ParamByName('@RETURN_VALUE').AsInteger <> 0 then
    begin
      MessageDlg(MessageToErrorDelete,mtError, [mbOK], 0);
      Exit;
    end;
  end;

  Result := True;
end;

// 백그라운드 스킨 미리보기
procedure TUserForm.cxCBoxBackSkinClick(Sender: TObject);
begin
  inherited;
  if cxCBoxBackSkin.Text = '' then Exit;
  if cxCEdit_UserID.text = '' then
  begin
    cxCBoxBackSkin.Text := '';
    ShowMessage('사용자를 먼저 선택해주세요.');
    Exit;
  end;

  // 스킨 미리보기
  DataModuleForm.StyleChangeBackGround(MainForm, cxCBoxBackSkin.Text);
end;

// 버튼 스킨 미리보기
procedure TUserForm.cxCBoxBtnSkinClick(Sender: TObject);
begin
  inherited;
  if cxCBoxBtnSkin.Text = '' then Exit;
  if cxCEdit_UserID.text = '' then
  begin
    cxCBoxBtnSkin.Text := '';
    ShowMessage('사용자를 먼저 선택해주세요.');
    Exit;
  end;

  // 스킨 미리보기
  DataModuleForm.StyleChangecxButton(Self, cxCBoxBtnSkin.Text);
end;

// 그룹박스 스킨 미리보기
procedure TUserForm.cxCBoxUserSkinClick(Sender: TObject);
begin
  inherited;
  if cxCBoxUserSkin.Text = '' then Exit;
  if cxCEdit_UserID.text = '' then
  begin
    cxCBoxUserSkin.Text := '';
    ShowMessage('사용자를 먼저 선택해주세요.');
    Exit;
  end;

  // 스킨 미리보기
  DataModuleForm.StyleChangecxGroupBox(Self, cxCBoxUserSkin.Text);
end;

end.
