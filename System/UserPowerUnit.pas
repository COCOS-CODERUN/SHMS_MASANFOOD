unit UserPowerUnit;

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
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxTextEdit, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, System.UITypes, Vcl.ExtCtrls,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, Uni, MemDS, DBAccess;

type
  TUserPowerForm = class(TBaseChildForm)
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
    cxGBoxUserPower: TcxGroupBox;
    cxGrid_Authority: TcxGrid;
    cxGridTv_UserPower: TcxGridTableView;
    cxGridTv_UserPower_WindowID: TcxGridColumn;
    cxGridTv_UserPower_WindowMenu: TcxGridColumn;
    cxGridTv_UserPower_WindowName: TcxGridColumn;
    cxGridTv_UserPower_Read: TcxGridColumn;
    cxGridLv_Authority: TcxGridLevel;
    cxSplitter: TcxSplitter;
    cxGridTv_UserPower_Input: TcxGridColumn;
    cxGridTv_UserPower_Alter: TcxGridColumn;
    cxGridTv_UserPower_Delete: TcxGridColumn;
    cxGBox_Info: TcxGroupBox;
    cxEdit_Writer: TcxTextEdit;
    cxEdit_Modifier: TcxTextEdit;
    cxLbl5: TcxLabel;
    cxLbl7: TcxLabel;
    cxLbl14: TcxLabel;
    cxLbl3: TcxLabel;
    cxEdit_Remarks: TcxTextEdit;
    cxLCBB_Group: TcxLookupComboBox;
    cxCEdit_GroupID: TcxCurrencyEdit;
    cxCEdit_UserID: TcxCurrencyEdit;
    DS_UserList: TDataSource;
    DS_Group: TDataSource;
    FDQuery_Group: TUniQuery;
    FDSpUserList: TUniStoredProc;
    FDSpUserPowerList: TUniStoredProc;
    FDSpAuthorityGroupDetail: TUniStoredProc;
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTv_List_UserOrderGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGridDBTv_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridTv_UserPower_ReadHeaderClick(Sender: TObject);
    procedure cxBtnSaveClick(Sender: TObject);
    procedure cxLCBB_GroupPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridTv_UserPowerEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxBtn_NewClick(Sender: TObject);
  private
    { Private declarations }
    Search: Boolean;
  public
    { Public declarations }
    procedure SearchUserList;
    procedure SearchPowerList;
    procedure SearchAuthorityGroup;
    procedure SearchAuthorityGroupDetail(GroupID:Integer);
    function PowerSave:Boolean;
    function PowerSaveDetail:Boolean;
  end;

var
  UserPowerForm: TUserPowerForm;

implementation

Uses DataModule;

{$R *.dfm}

{ TUserPowerForm }

//Form Show
procedure TUserPowerForm.FormShow(Sender: TObject);
begin
  inherited;
  SearchUserList;
  SearchAuthorityGroup;
  Search := False;
end;

//사용자========================================================================
//사용자 목록 조회
procedure TUserPowerForm.SearchUserList;
begin
  inherited;
  with DataModuleForm.FDSpSetting(FDSpUserList, 'usp_User', 'C') do Open;
end;

//사용자 더블 클릭
procedure TUserPowerForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  cxLCBB_Group.Text := '';
end;

procedure TUserPowerForm.cxGridDBTv_ListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  Search := True;
  cxGridTv_UserPower.DataController.RecordCount := 0;

  with FDSpUserList do
  begin
    cxCEdit_UserID.Value    := FieldByName('UserID').Value;
    cxCEdit_GroupID.Value   := FieldByName('AuthorityGroupID').AsInteger;
    cxEdit_Remarks.Text     := FieldByName('AuthorityRemarks').AsString;
    cxEdit_Writer.Text      := FieldByName('Writer').AsString;
    cxEdit_Modifier.Text    := FieldByName('Modifier').AsString;

    if Round(cxCEdit_GroupID.Value) <> 0 then
    begin
      cxLCBB_Group.EditValue := FieldByName('AuthorityGroupID').AsInteger;
    end
    else
    begin
      cxLCBB_Group.EditValue := 0;
    end;
  end;
  // 조회
  SearchPowerList;
  Search := False;
end;

//순번 컬럼
procedure TUserPowerForm.cxGridDBTv_List_UserOrderGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index + 1);
end;

//권한==========================================================================
//그룹 권한 조회
procedure TUserPowerForm.SearchAuthorityGroup;
begin
  with DataModuleForm.FDQuerySetting(FDQuery_Group) do
  begin
    SQL.Add('SELECT * FROM MasterAuthorityGroup ');
    Open;
  end;
end;


procedure TUserPowerForm.cxLCBB_GroupPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Search then Exit;

  if cxLCBB_Group.Text <> '' then
  begin
    SearchAuthorityGroupDetail(cxLCBB_Group.EditValue);
  end;





//  if Round(cxCEdit_GroupID.Value) = 0 then
//  begin
//    if MessageDlg('그룹 권한을 적용 하시겠습니까?', mtInformation, [mbYes, mbNo], 0) = mrYes then
//    begin
//      cxCEdit_GroupID.Value
//      := Round(cxLCBB_Group.EditValue);
//
//      SearchAuthorityGroupDetail(Round(cxCEdit_GroupID.Value));
//    end
//    else
//    begin
//      Exit;
//    end;
//  end
//  else
//  begin
//    cxCEdit_GroupID.Value
//      := Round(cxLCBB_Group.EditValue);
//    SearchAuthorityGroupDetail(Round(cxCEdit_GroupID.Value));
//  end;
end;

//그리드 에디팅
procedure TUserPowerForm.cxGridTv_UserPowerEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  if Search then Exit;

  if cxLCBB_Group.Text <> '' then
  begin
    if MessageDlg('그룹 권한을 해제하시겠습니까?', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      AAllow := True;
    end
    else
    begin
      AAllow := False;
    end;
  end;
end;

//그룹 권한 상세 조회
procedure TUserPowerForm.SearchAuthorityGroupDetail(GroupID:Integer);
var
  index: Integer;
begin
//  AuthoritySetting;
  if GroupID = 0 then Exit;

  with DataModuleForm.FDSpSetting(FDSpAuthorityGroupDetail, 'usp_User', 'J') do
  begin
    ParamByName('@GroupID').AsInteger := GroupID;
    Open;
    cxGridTv_UserPower.DataController.RecordCount := 0;
    if RecordCount = 0 then Exit;

    cxGridTv_UserPower.DataController.BeginUpdate;

    First;
    for index := 0 to RecordCount - 1 do
    begin
      with cxGridTv_UserPower.DataController do
      begin
        AppendRecord;
        SetValue(index, cxGridTv_UserPower_WindowID.Index, FieldByName('WindowID').AsString);
        SetValue(index, cxGridTv_UserPower_WindowMenu.Index, FieldByName('WindowMenuName').AsString);
        SetValue(index, cxGridTv_UserPower_WindowName.Index, FieldByName('WindowName').AsString);
        SetValue(index, cxGridTv_UserPower_Read.Index, FieldByName('HasRead').Value);
        SetValue(index, cxGridTv_UserPower_Input.Index, FieldByName('HasInPut').Value);
        SetValue(index, cxGridTv_UserPower_Alter.Index, FieldByName('HasAlter').Value);
        SetValue(index, cxGridTv_UserPower_Delete.Index, FieldByName('HasDelete').Value);
      end;
      Next;
    end;
    cxGridTv_UserPower.DataController.EndUpdate;
  end;
end;

//권한 목록 조회
procedure TUserPowerForm.SearchPowerList;
var
  loopcnt: Integer;
begin
  with DataModuleForm.FDSpSetting(FDSpUserPowerList, 'usp_User', 'G') do
  begin
    ParamByName('@UserID').AsInteger := Round(cxCEdit_UserID.Value);
    Open;
    cxGridTv_UserPower.DataController.RecordCount := 0;
    if RecordCount = 0 then Exit;

    cxGridTv_UserPower.DataController.BeginUpdate;
    First;
    for loopcnt := 0 to RecordCount - 1 do
    begin
      with cxGridTv_UserPower.DataController do
      begin
        AppendRecord;
        SetValue(loopcnt, cxGridTv_UserPower_WindowID.Index, FieldByName('WindowID').AsString);
        SetValue(loopcnt, cxGridTv_UserPower_WindowMenu.Index, FieldByName('WindowMenuName').AsString);
        SetValue(loopcnt, cxGridTv_UserPower_WindowName.Index, FieldByName('WindowName').AsString);
        SetValue(loopcnt, cxGridTv_UserPower_Read.Index, FieldByName('HasRead').Value);
        SetValue(loopcnt, cxGridTv_UserPower_Input.Index, FieldByName('HasInPut').Value);
        SetValue(loopcnt, cxGridTv_UserPower_Alter.Index, FieldByName('HasAlter').Value);
        SetValue(loopcnt, cxGridTv_UserPower_Delete.Index, FieldByName('HasDelete').Value);
      end;

      Next;
    end;
    cxGridTv_UserPower.DataController.EndUpdate;

  end;
  // 그룹권한이 존재하는경우
  if Round(cxCEdit_GroupID.Value) <> 0 then
  begin
    SearchAuthorityGroupDetail(Round(cxCEdit_GroupID.Value));
  end;
end;

//권한 여부 헤더 클릭
procedure TUserPowerForm.cxGridTv_UserPower_ReadHeaderClick(
  Sender: TObject);
var
  Index: Integer;
  CheckPower: Boolean;
begin
  inherited;
  CheckPower := False;
  with cxGridTv_UserPower.DataController do
  begin
    BeginUpdate;
    for Index := 0 to RecordCount - 1 do
    begin
      if Values[Index, (Sender AS TcxGridColumn).Index] = False then
      begin
        CheckPower := True;
        Break;
      end;
    end;
    EndUpdate;
  end;
  if CheckPower then
  begin
    if MessageDlg( '전체권한을 주시겠습니까?'
        , mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      with cxGridTv_UserPower.DataController do
      begin
        BeginUpdate;
        for Index := 0 to RecordCount - 1 do
        begin
          SetValue(Index, (Sender AS TcxGridColumn).Index, 1);
        end;
        EndUpdate;
      end;
    end;
  end
  else begin
    if MessageDlg( '전체권한을 취소겠습니까?'
        , mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      with cxGridTv_UserPower.DataController do
      begin
        BeginUpdate;
        for Index := 0 to RecordCount - 1 do
        begin
          SetValue(Index, (Sender AS TcxGridColumn).Index, 0);
        end;
        EndUpdate;
      end;
    end;
  end;
end;

//저장 버튼
procedure TUserPowerForm.cxBtnSaveClick(Sender: TObject);
begin
  inherited;
  //권한 확인
//  if Not CheckAuthoritySave
//    (CanInput, CanAlter, Round(cxCEdit_UserID.Value), 1) then Exit;

  if cxCEdit_UserID.Text = '' then
  begin
    Exit;
  end;
  // 관리자계정 제외하고 나머지계정은 자기자신만 저장가능하게.
  if DataModule.LoginId <> 1 then
  begin
    if Round(cxCEdit_UserID.Value) <> DataModule.LoginId then
    begin
      ShowMessage('타계정의 권한은 관리자만 수정할 수 있습니다.');
      Exit;
    end;
  end;

  if PowerSave then
  begin
    if PowerSaveDetail then
    begin
      SearchPowerList;
      SearchUserList;
      ShowMessage(MessageToSave);
    end;
  end;

  {
  //사용자 권한, 그룹권한 구분
  if Round(cxCEdit_GroupID.Value) = 0 then
  begin
    if PowerSave then
    begin
      if PowerSaveDetail then
      begin
        SearchPowerList;
        SearchUserList;
        ShowMessage(MessageToSave);
      end;
    end;
  end
  else
  begin
    if PowerSave then
    begin
      cxLCBB_GroupPropertiesEditValueChanged(self);
      SearchUserList;
      ShowMessage(MessageToSave);
    end;
  end;
  }
end;

//권한 저장 함수
function TUserPowerForm.PowerSave: Boolean;
var
  loopcnt: Integer;
begin
  Result := False;

  with DataModuleForm.FDSpSetting(nil, 'usp_User', 'H') do
  begin
    ParamByName('@UserID').AsInteger  := Round(cxCEdit_UserID.Value);

//    if Round(cxCEdit_GroupID.Value) = 0 then
//    begin
//      ParamByName('@GroupID').Clear;
//    end
//    else
//    begin
//      ParamByName('@GroupID').AsInteger := Round(cxCEdit_GroupID.Value);
//    end;
    ParamByName('@GroupID').AsInteger := cxLCBB_Group.EditValue;
    ParamByName('@Remarks').AsString  := cxEdit_Remarks.Text;
    ParamByName('@Writer').AsString   := DataModule.LoginUserName;
    ParamByName('@Modifier').AsString := DataModule.LoginUserName;

    ExecProc;
  end;

  Result := True;
end;

//개별 권한 상세 저장
function TUserPowerForm.PowerSaveDetail: Boolean;
var
  loopcnt:Integer;
begin
  Result := False;

  with DataModuleForm.FDSpSetting(nil, 'usp_User', 'I') do
  begin
    for loopcnt := 0 to cxGridTv_UserPower.DataController.RecordCount - 1 do
    begin
      ParamByName('@UserID').AsInteger    := Round(cxCEdit_UserID.Value);
      ParamByName('@WindowID').AsInteger  := cxGridTv_UserPower.DataController.Values[loopcnt,  cxGridTv_UserPower_WindowID.Index];
      ParamByName('@HasRead').AsBoolean   := cxGridTv_UserPower.DataController.Values[loopcnt,  cxGridTv_UserPower_Read.Index];
      ParamByName('@HasInput').AsBoolean  := cxGridTv_UserPower.DataController.Values[loopcnt,  cxGridTv_UserPower_Input.Index];
      ParamByName('@HasAlter').AsBoolean  := cxGridTv_UserPower.DataController.Values[loopcnt,  cxGridTv_UserPower_Alter.Index];
      ParamByName('@HasDelete').AsBoolean  := cxGridTv_UserPower.DataController.Values[loopcnt, cxGridTv_UserPower_Delete.Index];
      ExecProc;
    end;
  end;

  Result := True;
end;

end.
