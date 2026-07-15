unit AuthorityGroupUnit;

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
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxCheckBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxCurrencyEdit, cxTextEdit, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  System.UITypes, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, Uni, MemDS, DBAccess;

type
  TAuthorityGroupForm = class(TBaseChildForm)
    cxGBoxList: TcxGroupBox;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridDBTv_List_Order: TcxGridDBColumn;
    cxGridDBTv_List_GroupID: TcxGridDBColumn;
    cxGridDBTv_List_Name: TcxGridDBColumn;
    cxGridDBTv_List_Remarks: TcxGridDBColumn;
    cxGridDBTv_List_Writer: TcxGridDBColumn;
    cxGridDBTv_List_WDT: TcxGridDBColumn;
    cxGridDBTv_List_Modifier: TcxGridDBColumn;
    cxGridDBTv_List_MDT: TcxGridDBColumn;
    cxGridLv_List: TcxGridLevel;
    cxGBoxUserPower: TcxGroupBox;
    cxGrid_Authority: TcxGrid;
    cxGridTv_GroupPower: TcxGridTableView;
    cxGridTv_GroupPower_WindowID: TcxGridColumn;
    cxGridTv_GroupPower_WindowMenu: TcxGridColumn;
    cxGridTv_GroupPower_WindowName: TcxGridColumn;
    cxGridTv_GroupPower_Read: TcxGridColumn;
    cxGridTv_GroupPower_Input: TcxGridColumn;
    cxGridTv_GroupPower_Alter: TcxGridColumn;
    cxGridTv_GroupPower_Delete: TcxGridColumn;
    cxGridLv_Authority: TcxGridLevel;
    cxSplitter: TcxSplitter;
    cxGBox_Info: TcxGroupBox;
    cxEdit_GroupName: TcxTextEdit;
    cxEdit_Writer: TcxTextEdit;
    cxEdit_Modifier: TcxTextEdit;
    cxLbl5: TcxLabel;
    cxLbl7: TcxLabel;
    cxLbl14: TcxLabel;
    cxLbl3: TcxLabel;
    cxEdit_Remarks: TcxTextEdit;
    cxCEdit_GroupID: TcxCurrencyEdit;
    DS_Group: TDataSource;
    FDSpDetail: TUniStoredProc;
    FDQuery_Group: TUniQuery;
    procedure cxGridDBTv_List_OrderGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxGridTv_GroupPower_ReadHeaderClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTv_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridTv_GroupPowerCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure SearchGroup;
    procedure SearchGroupPower;
    procedure GroupPowerSetting;
    procedure CellRow;
  public
    { Public declarations }
  end;

var
  AuthorityGroupForm: TAuthorityGroupForm;

implementation

Uses DataModule;

{$R *.dfm}

{ TAuthorityGroupForm }
procedure TAuthorityGroupForm.FormShow(Sender: TObject);
begin
  inherited;
  SearchGroup;
  cxBtn_NewClick(self);
end;

//신규 버튼
procedure TAuthorityGroupForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Info);
  GroupPowerSetting;
end;

//저장 버튼
procedure TAuthorityGroupForm.cxBtn_SaveClick(Sender: TObject);
var
  loopcnt: Integer;
begin
  inherited;

  if not CheckAuthoritySave(CanInput, CanAlter, 1, 1) then Exit;

  if cxEdit_GroupName.Text = '' then
  begin
    Exit;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_user', 'K') do
  begin
    ParamByName('@GroupID').AsInteger   := Round(cxCEdit_GroupID.Value);
    ParamByName('@GroupName').AsString  := cxEdit_GroupName.Text;
    ParamByName('@Remarks').AsString    := cxEdit_Remarks.Text;
    ParamByName('@Writer').AsString     := DataModule.LoginUserName;
    ParamByName('@Modifier').AsString   := DataModule.LoginUserName;
    ExecProc;

    cxCEdit_GroupID.Value               := ParamByName('@GroupID').AsInteger;
    cxEdit_Writer.Text                  := ParamByName('@Writer').AsString;
    cxEdit_Modifier.Text                := ParamByName('@Modifier').AsString;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_user', 'L') do
  begin
    for loopcnt := 0 to cxGridTv_GroupPower.DataController.RecordCount - 1 do
    begin
      ParamByName('@GroupID').AsInteger   := Round(cxCEdit_GroupID.Value);
      ParamByName('@WindowID').AsInteger  := cxGridTv_GroupPower.DataController.Values[loopcnt, cxGridTv_GroupPower_WindowID.Index];
      ParamByName('@HasRead').AsBoolean   := cxGridTv_GroupPower.DataController.Values[loopcnt, cxGridTv_GroupPower_Read.Index];
      ParamByName('@HasInput').AsBoolean  := cxGridTv_GroupPower.DataController.Values[loopcnt, cxGridTv_GroupPower_Input.Index];
      ParamByName('@HasAlter').AsBoolean  := cxGridTv_GroupPower.DataController.Values[loopcnt, cxGridTv_GroupPower_Alter.Index];
      ParamByName('@HasDelete').AsBoolean := cxGridTv_GroupPower.DataController.Values[loopcnt, cxGridTv_GroupPower_Delete.Index];
      ExecProc;
    end;
  end;

  SearchGroup;
  ShowMessage(MessageToSave);
end;

//삭제 버튼
procedure TAuthorityGroupForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  //권한 확인
  if not CheckAuthorityDelete(CanDelete) then Exit;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_user', 'M') do
    begin
      ParamByName('@GroupID').AsInteger := Round(cxCEdit_GroupID.Value);
      ExecProc;
    end;
    SearchGroupPower;
    SearchGroup;
  end;

end;

//권한 그룹 조회
procedure TAuthorityGroupForm.SearchGroup;
begin
  with DataModuleForm.FDQuerySetting(FDQuery_Group) do
  begin
    SQL.Add(' SELECT * FROM MasterAuthorityGroup');
    Open;
  end;
end;

//그룹 권한 조회
procedure TAuthorityGroupForm.SearchGroupPower;
var
  loopcnt,FindIndex :Integer;
begin
  GroupPowerSetting;
  with DataModuleForm.FDSpSetting(FDSpDetail, 'usp_User', 'J') do
  begin
    ParamByName('@GroupID').AsInteger := Round(cxCEdit_GroupID.Value);
    Open;

    cxGridTv_GroupPower.DataController.BeginUpdate;
    for loopcnt := 0 to cxGridTv_GroupPower.DataController.RecordCount - 1 do
    begin
      with cxGridTv_GroupPower.DataController do
      begin
        FindIndex :=
          cxGridTv_GroupPower.DataController.FindRecordIndexByText(0,
          cxGridTv_GroupPower_WindowID.Index, FieldByName('WindowID').AsString, false, false, true);

        if FindIndex <> - 1then
        begin
          SetValue(FindIndex, cxGridTv_GroupPower_Read.Index, FieldByName('HasRead').Value);
          SetValue(FindIndex, cxGridTv_GroupPower_Input.Index, FieldByName('HasInPut').Value);
          SetValue(FindIndex, cxGridTv_GroupPower_Alter.Index, FieldByName('HasAlter').Value);
          SetValue(FindIndex, cxGridTv_GroupPower_Delete.Index, FieldByName('HasDelete').Value);
        end;

        Next;
      end;
    end;
    cxGridTv_GroupPower.DataController.EndUpdate;
  end;
end;

//그룹 권한 세팅
procedure TAuthorityGroupForm.GroupPowerSetting;
var
  loopcnt:Integer;
begin
  with DataModuleForm.FDSpSetting(FDSpDetail, 'usp_User', 'N') do
  begin
    Open;

    cxGridTv_GroupPower.DataController.BeginUpdate;
    cxGridTv_GroupPower.DataController.RecordCount := 0;
    for loopcnt := 0 to RecordCount - 1 do
    begin
      with cxGridTv_GroupPower.DataController do
      begin
        AppendRecord;

        SetValue(loopcnt, cxGridTv_GroupPower_WindowID.Index, FieldByName('WindowID').AsString);
        SetValue(loopcnt, cxGridTv_GroupPower_WindowMenu.Index, FieldByName('WindowMenuName').AsString);
        SetValue(loopcnt, cxGridTv_GroupPower_WindowName.Index, FieldByName('WindowName').AsString);
        SetValue(loopcnt, cxGridTv_GroupPower_Read.Index, false);
        SetValue(loopcnt, cxGridTv_GroupPower_Input.Index, false);
        SetValue(loopcnt, cxGridTv_GroupPower_Alter.Index, false);
        SetValue(loopcnt, cxGridTv_GroupPower_Delete.Index, false);

        Next;
      end;
    end;
    cxGridTv_GroupPower.DataController.EndUpdate;
  end;
end;

//순번 컬럼
procedure TAuthorityGroupForm.cxGridDBTv_List_OrderGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index + 1);
end;

//권한 클릭
procedure TAuthorityGroupForm.cxGridDBTv_ListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  cxCEdit_GroupID.Value := FDQuery_Group.FieldByName('AuthorityGroupID').AsInteger;
  cxEdit_GroupName.Text := FDQuery_Group.FieldByName('AuthorityGroupName').AsString;
  cxEdit_Writer.Text    := FDQuery_Group.FieldByName('Writer').AsString;
  cxEdit_Modifier.Text  := FDQuery_Group.FieldByName('Modifier').AsString;
  cxEdit_Remarks.Text   := FDQuery_Group.FieldByName('Remarks').AsString;
  SearchGroupPower;
end;

procedure TAuthorityGroupForm.cxGridTv_GroupPowerCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  CellRow;
end;

procedure TAuthorityGroupForm.cxGridTv_GroupPower_ReadHeaderClick(
  Sender: TObject);
var
  Index: Integer;
  CheckPower: Boolean;
begin
  inherited;
  CheckPower := False;

  with cxGridTv_GroupPower.DataController do
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
      with cxGridTv_GroupPower.DataController do
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
      with cxGridTv_GroupPower.DataController do
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

// 가로로 권한 체크
procedure TAuthorityGroupForm.CellRow;
begin
  inherited;
  cxGridTv_GroupPower.Controller.BeginUpdate;
  with cxGridTv_GroupPower.Controller do
  begin
    if SelectedRows[0].Values[cxGridTv_GroupPower_Read.Index] = true then   // 선택한 열의 읽기권한이  true이면 열의 권한 전부해제
    begin
      SelectedRows[0].Values[cxGridTv_GroupPower_Read.Index]   := 0;
      SelectedRows[0].Values[cxGridTv_GroupPower_Input.Index]  := 0;
      SelectedRows[0].Values[cxGridTv_GroupPower_Alter.Index]  := 0;
      SelectedRows[0].Values[cxGridTv_GroupPower_Delete.Index] := 0;
    end
    else
    begin
     SelectedRows[0].Values[cxGridTv_GroupPower_Read.Index]    := 1;
     SelectedRows[0].Values[cxGridTv_GroupPower_Input.Index]   := 1;
     SelectedRows[0].Values[cxGridTv_GroupPower_Alter.Index]   := 1;
     SelectedRows[0].Values[cxGridTv_GroupPower_Delete.Index]  := 1;
    end;
  end;
  cxGridTv_GroupPower.Controller.EndUpdate;
end;

end.
