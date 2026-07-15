unit CCPHeatUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseChild, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, Data.DB,
  MemDS, DBAccess, Uni, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxTimeEdit, cxCurrencyEdit, cxTextEdit, cxDBData,
  cxGridDBTableView, dxWheelPicker, dxNumericWheelPicker, dxDateTimeWheelPicker,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxLabel, cxButtonEdit,
  Vcl.ExtCtrls, cxCheckBox, cxEditRepositoryItems, cxGridBandedTableView;

type
  TCCPHeatForm = class(TBaseChildForm)
    UniQuery_data: TUniQuery;
    DS_Data: TDataSource;
    cxGBox_Client: TcxGroupBox;
    cxGBox_input: TcxGroupBox;
    cxLbl1: TcxLabel;
    cxLkCBBox_Facility: TcxLookupComboBox;
    cxGBox_Right: TcxGroupBox;
    cxGBox_Approval: TcxGroupBox;
    cxLabel119: TcxLabel;
    cxLabel120: TcxLabel;
    cxLabel121: TcxLabel;
    cxBtn_dam: TcxButton;
    cxBtn_review: TcxButton;
    cxEdit_Writer: TcxTextEdit;
    cxEdit_Reviewer: TcxTextEdit;
    cxBtn_confirm: TcxButton;
    cxEdit_Confirmer: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    dxDateTimeWheelPicker: TdxDateTimeWheelPicker;
    cxGrid_data: TcxGrid;
    cxGridDBTv_data: TcxGridDBTableView;
    cxGridDBTv_data_date: TcxGridDBColumn;
    cxGridDBTv_data_data_reviewer: TcxGridDBColumn;
    cxGridDBTv_data_confirmer: TcxGridDBColumn;
    cxGridLv_data: TcxGridLevel;
    cxGridDBTv_data_writer: TcxGridDBColumn;
    DS_Fridge: TDataSource;
    DS_Item: TDataSource;
    UniQuery_Fridge: TUniQuery;
    UniQuery_Item: TUniQuery;
    cxDEdit_date: TcxDateEdit;
    cxTEdit_ItemID: TcxTextEdit;
    UniQuery_temp: TUniQuery;
    cxEditRepository: TcxEditRepository;
    cxEditRepositoryCBBox_reason: TcxEditRepositoryComboBoxItem;
    cxGrid_List: TcxGrid;
    cxGridTv_List: TcxGridBandedTableView;
    cxGridTv_ListColumn2: TcxGridBandedColumn;
    cxGridTv_List_Line: TcxGridBandedColumn;
    cxGridTv_List_ItemName: TcxGridBandedColumn;
    cxGridTv_List_Start: TcxGridBandedColumn;
    cxGridTv_List_HeatTimeText: TcxGridBandedColumn;
    cxGridTv_List_Number: TcxGridBandedColumn;
    cxGridTv_List_Temp1: TcxGridBandedColumn;
    cxGridTv_List_reason: TcxGridBandedColumn;
    cxGridTv_List_action: TcxGridBandedColumn;
    cxGridLv_List: TcxGridLevel;
    cxGridTv_List_Division: TcxGridBandedColumn;
    cxGridTv_List_HeatTime: TcxGridBandedColumn;
    cxGridTv_List_FinishTime: TcxGridBandedColumn;
    cxGridDBTv_data_Division: TcxGridDBColumn;
    cxGridTv_List_CCPHeatID: TcxGridBandedColumn;
    cxGridTv_List_ItemID: TcxGridBandedColumn;
    cxBtnSearch: TcxButton;
    cxLabel1: TcxLabel;
    cxBtn_Setting: TcxButton;
    cxGBox_Setting: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxCEdit_Cycle: TcxCurrencyEdit;
    cxCEdit_StartTime: TcxCurrencyEdit;
    cxCEdit_TotalTime: TcxCurrencyEdit;
    cxBtn_Default: TcxButton;
    cxBtn_Submit: TcxButton;
    cxBtn_Visible: TcxButton;
    uq_setting: TUniQuery;
    cxER_TextEdit: TcxEditRepositoryTextItem;
    cxER_Memo_Write: TcxEditRepositoryMemoItem;
    cxER_Memo_Read: TcxEditRepositoryMemoItem;
    usp_list: TUniStoredProc;
    cxGridTv_List_RealNumber: TcxGridBandedColumn;
    cxGridTv_List_GroupIdx: TcxGridBandedColumn;
    cxEditRepositoryCBBox_action: TcxEditRepositoryComboBoxItem;
    cxGroupBox1: TcxGroupBox;
    cxCBBox_reason: TcxComboBox;
    cxLabel5: TcxLabel;
    cxCBBox_action: TcxComboBox;
    cxLabel6: TcxLabel;
    cxBtn_ok: TcxButton;
    cxBtn_ok2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure dxDateTimeWheelPickerPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBTv_dataCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);

    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure cxBtn_reviewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);

    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridTv_ListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtnSearchClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxBtn_SettingClick(Sender: TObject);
    procedure cxBtn_VisibleClick(Sender: TObject);
    procedure cxBtn_DefaultClick(Sender: TObject);
    procedure cxBtn_SubmitClick(Sender: TObject);
    procedure cxGridTv_List_NumberCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridTv_ListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridTv_ListEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxBtn_okClick(Sender: TObject);

  private
    { Private declarations }
    TimeCnt1, TimeCnt2, TimeCnt3 : integer;
    ItemID1, ItemID2, ItemID3 : String;
    FridgeNo1, FridgeNo2, FridgeNo3 : Integer;
    SHDate1, SHDate2, SHDate3 : String;
    Number1, Number2, Number3 : Integer;
    Start : boolean;
    t : TcxDataController;
    procedure SearchHeat;
    function SaveCheckHeat : boolean;
    function DeleteCheckHeat : boolean;
  public
    { Public declarations }
  end;

var
  CCPHeatForm: TCCPHeatForm;

implementation

{$R *.dfm}

uses DataModule, ItemModalUnit;

procedure TCCPHeatForm.cxBtnSearchClick(Sender: TObject);
begin
  inherited;
  if cxLkCBBox_Facility.Text = '' then
  begin
    Exit;
  end;
  if cxDEdit_date.Text = '' then
  begin
    Exit;
  end;
  SearchHeat;
end;

procedure TCCPHeatForm.cxBtn_DefaultClick(Sender: TObject);
begin
  inherited;
  // 기본값 설정
  cxCEdit_StartTime.Value := 8;
  cxCEdit_Cycle.Value     := 30;
  cxCEdit_TotalTime.Value := 14;
  // Update
end;

procedure TCCPHeatForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('삭제하시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    if DeleteCheckHeat then
    begin
      showmessage('삭제 완료');
      cxBtn_NewClick(self);
      SearchHeat;
    end;

  end;
end;

procedure TCCPHeatForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_input);

  if (cxEdit_Reviewer.Text = '') or (cxEdit_Confirmer.Text = '') then
  begin
    cxBtn_dam.Enabled     := True;
    cxBtn_review.Enabled  := True;
    cxBtn_confirm.Enabled := True;
  end
  else begin
    cxBtn_dam.Enabled     := False;
    cxBtn_review.Enabled  := False;
    cxBtn_confirm.Enabled := False;
  end;

end;

procedure TCCPHeatForm.cxBtn_reviewClick(Sender: TObject);
begin
  inherited;
  case TcxControl(Sender).Tag of
    5:
      begin
        cxEdit_Reviewer.Text := LoginUserName;
      end;
    6:
      begin
        cxEdit_Confirmer.Text := LoginUserName;
      end;
  end;

  with DataModuleForm.FDQuerySetting(UniQuery_temp) do
  begin
    if cxEdit_Confirmer.text = '' then
    begin
      SQL.Add(SQLInsert.Text);
    end
    else
    begin
      SQL.Add(SQLUpdate.Text);
    end;
    ParamByName('Writer').AsString      := LoginUserName;
    ParamByName('h_date').AsString      := cxDEdit_date.Text;
    ParamByName('GroupIndex').AsInteger := cxLkCBBox_Facility.EditValue;
    ParamByName('Division').AsString    := cxLkCBBox_Facility.Text;
    ExecSQL;
  end;

  if (cxEdit_Reviewer.Text = '') or (cxEdit_Confirmer.Text = '') then
  begin
    cxBtn_dam.Enabled     := True;
    cxBtn_review.Enabled  := True;
    cxBtn_confirm.Enabled := True;
  end
  else begin
    cxBtn_dam.Enabled     := False;
    cxBtn_review.Enabled  := False;
    cxBtn_confirm.Enabled := False;
  end;
end;

procedure TCCPHeatForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;
  if SaveCheckHeat then
  begin
    showmessage('등록 완료');
    SearchHeat;
  end;
end;

procedure TCCPHeatForm.cxBtn_SearchClick(Sender: TObject);
begin
  inherited;
  SearchHeat;

  if (cxEdit_Reviewer.Text = '') or (cxEdit_Confirmer.Text = '') then
  begin
    cxBtn_dam.Enabled     := True;
    cxBtn_review.Enabled  := True;
    cxBtn_confirm.Enabled := True;
  end
  else begin
    cxBtn_dam.Enabled     := False;
    cxBtn_review.Enabled  := False;
    cxBtn_confirm.Enabled := False;
  end;
end;



procedure TCCPHeatForm.cxBtn_SettingClick(Sender: TObject);
begin
  inherited;
  // 250526 김동현 대리 : 협의된 내용 아니므로 Visible False 처리(사용은 가능)
  // 구이공정 조회설정 : 시작시간, 주기, 총 시간
  cxGBox_Setting.Visible := not cxGBox_Setting.Visible;
  // 위치 설정
  cxGBox_Setting.Left := cxBtn_Setting.Left;
  cxGBox_Setting.Top  := cxGrid_List.Top + cxBtn_Setting.Height;
end;

procedure TCCPHeatForm.cxBtn_SubmitClick(Sender: TObject);
begin
  inherited;
  // 적용
  With DataModuleForm.FDQuerySetting(nil) do
  begin
    SQL.Add(' Update ccp_heat_setting set ');
    SQL.Add('  s_starttime = :StartTime   ');
    SQL.Add(' ,s_cycle     = :Cycle       ');
    SQL.Add(' ,s_totaltime = :TotalTime   ');
    ParamByName('StartTime').AsInteger := Round(cxCEdit_StartTime.Value);
    ParamByName('Cycle').AsInteger     := Round(cxCEdit_Cycle.Value);
    ParamByName('TotalTime').AsInteger := Round(cxCEdit_TotalTime.Value);
    ExecSQL;
  end;
  cxBtn_VisibleClick(Self);
end;

procedure TCCPHeatForm.cxBtn_VisibleClick(Sender: TObject);
begin
  inherited;
  cxGBox_Setting.Visible := not cxGBox_Setting.Visible;
end;

//한계기준 다중 선택 시 같은 값 넣기
procedure TCCPHeatForm.cxBtn_okClick(Sender: TObject);
var loopcnt : integer;
      SelectedText : string;
begin
  inherited;

  for loopcnt := 0 to cxGridTv_List.Controller.SelectedRecordCount -1 do
  begin
    if TcxControl(Sender).Tag = 1 then
    begin
      cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].Index, cxGridTv_List_reason.Index] := cxCBBox_reason.Text;
    end
    else if TcxControl(Sender).Tag = 2 then
    begin
      cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].Index, cxGridTv_List_action.Index] := cxCBBox_action.Text;
    end;
  end;
end;

procedure TCCPHeatForm.cxGridDBTv_dataCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  with UniQuery_data do
  begin
    cxDEdit_date.Text       := FieldByName('CheckDate').AsString;
    cxEdit_Writer.Text      := FieldByName('Writer').AsString;
    cxEdit_Reviewer.Text    := FieldByName('Reviewer').AsString;
    cxEdit_Confirmer.Text   := FieldByName('Confirmer').AsString;
    cxLkCBBox_Facility.Text := FieldByName('Division').AsString;
  end;

  SearchHeat;
end;

procedure TCCPHeatForm.cxGridTv_ListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  t := cxGridTv_List.DataController;
  cxLkCBBox_Facility.Text := vartostr(t.Values[t.FocusedRecordIndex, cxGridDBTv_data_Division.Index]);
  cxDEdit_date.Text := vartostr(t.Values[t.FocusedRecordIndex, cxGridDBTv_data_date.Index]);
  SearchHeat;
end;

procedure TCCPHeatForm.cxGridTv_ListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[cxGridTv_List_Division.Index] = 'True' then
  begin
    ACanvas.Brush.Color := clWebSalmon;
    ACanvas.font.Color := clWhite;
  end;

  if AViewInfo.GridRecord.Selected then
  begin
    ACanvas.Brush.Color := clHighlight;
  end;

end;

procedure TCCPHeatForm.cxGridTv_ListEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;

  AAllow := False;
  if (Sender.DataController.Values[Sender.DataController.FocusedRecordIndex, cxGridTv_List_Division.Index] = True) then
  begin
    AAllow := True;
  end;
end;

procedure TCCPHeatForm.cxGridTv_List_NumberCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[cxGridTv_List_Division.Index] = 'True' then
  begin
    ACanvas.Brush.Color := clWebSalmon;
    ACanvas.font.Color := clWhite;
  end;
end;

function TCCPHeatForm.DeleteCheckHeat: boolean;
var
  t : TcxDataController;
begin
  result := false;
  t := cxGridTv_List.DataController;
//  with datamoduleform.FDQuerySetting(nil) do
//  begin
//    close;
//    sql.Clear;
//    sql.Add(' DELETE FROM CCPHeatCheck2  ');
//    sql.Add(' WHERE HeatTime = :HeatTime ');
//    ParamByName('HeatTime').AsString := vartostr(t.Values[t.FocusedRecordIndex, cxGridTv_List_HeatTime.Index]);
//    Execute;
//  end;
  result := True;
end;

procedure TCCPHeatForm.dxDateTimeWheelPickerPropertiesEditValueChanged(
  Sender: TObject);
var
  checkdate : string;
begin
  inherited;
  with DataModuleForm.FDQuerySetting(UniQuery_data) do
  begin
    close;
    sql.clear;
    sql.Add(' exec usp_CCPHeatCheck2 @option = :option, @CheckDate = :CheckDate ');
    ParamByName('option').AsString := 'C';
    ParamByName('CheckDate').AsString := Formatdatetime('YYYY-MM', dxDateTimeWheelPicker.DateTime)+'-01';
    checkdate :=  Formatdatetime('YYYY-MM', dxDateTimeWheelPicker.DateTime)+'-01';
    open;
  end;
end;

procedure TCCPHeatForm.FormActivate(Sender: TObject);
begin
  inherited;
//  if (cxLkCBBox_Facility.Text <> '') and (cxDEdit_date.Text <> '') then
//  begin
//    SearchHeat;
//  end;
end;

procedure TCCPHeatForm.FormCreate(Sender: TObject);
var
  loopCnt : integer;
begin
  inherited;

  dxDateTimeWheelPicker.DateTime := Date;
  dxDateTimeWheelPickerPropertiesEditValueChanged(self);

  //리스트의 한계기준 이탈 사유 세팅
  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' SELECT BCDName, BCDID     ');
    sql.Add(' FROM BasicCodeDetail      ');
    sql.Add(' WHERE BCID = ''BC011''    '); //이탈 사유
    sql.Add(' ORDER BY BCDID            ');
    open;

    cxEditRepositoryCBBox_reason.Properties.Items.Clear;
    cxCBbox_reason.Properties.Items.Clear;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxEditRepositoryCBBox_reason.Properties.Items.Add(FieldByName('BCDName').AsString);
      cxCBbox_reason.Properties.Items.Add(FieldByName('BCDName').AsString);

      Next;
    end;
  end;

  //리스트의 조치내역
  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' SELECT BCDName, BCDID     ');
    sql.Add(' FROM BasicCodeDetail      ');
    sql.Add(' WHERE BCID = ''BC015''    '); //조치내역
    sql.Add(' ORDER BY BCDID            ');
    open;

    cxEditRepositoryCBBox_action.Properties.Items.Clear;
    cxCBbox_action.Properties.Items.Clear;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxEditRepositoryCBBox_action.Properties.Items.Add(FieldByName('BCDName').AsString);
      cxCBbox_action.Properties.Items.Add(FieldByName('BCDName').AsString);

      Next;
    end;
  end;

  with datamoduleform.FDQuerySetting(Uniquery_Fridge) do
  begin
    close;
    sql.Clear;
    sql.Add('    with test as (                                                      ');
    sql.Add('      select distinct a.GroupIndex as Line,b.BCDName,                   ');
    sql.Add('             division = case when left(b.BCDName,1) = ''3'' then 0      ');
    sql.Add('                             when left(b.BCDName,1) = ''4'' then 1 end  ');
    sql.Add('        from Fridge a                                                   ');
    sql.Add('  inner join BasicCodeDetail b  on a.LineName = b.BCDID                 ');
    sql.Add('   where FridgeCode like ''CH%''  )                                     ');
    sql.Add('    select * from test                                                  ');
    sql.Add('   order by BCDName                                                     ');
    Open;
  end;

  // 조회
  With DataModuleForm.FDQuerySetting(uq_setting) do
  begin
    SQL.Add(SQLInsert.Text);
    Open;
    // 입력
    cxCEdit_StartTime.Value := FieldByName('s_starttime').AsInteger;
    cxCEdit_Cycle.Value     := FieldByName('s_cycle').AsInteger;
    cxCEdit_TotalTime.Value := FieldByName('s_totaltime').AsInteger;
  end;

  cxBtn_NewClick(self);

  cxGridTv_List.OptionsView.Header := false;
end;

function TCCPHeatForm.SaveCheckHeat : boolean;
var
  I: Integer;
begin
  result := false;
  t := cxGridTv_List.DataController;
  for I := 0 to t.RecordCount -1 do
  begin
    // 250804 김동현 : 신규프로시저 사용(이탈사유, 조치내역 저장)
    if t.Values[i, cxGridTv_List_Division.index] <> 'True' then
    begin
      Continue;
    end;
    with DataModuleForm.FDSpSetting(nil,'usp_ccp_heat_chk','E') do
    begin
//      ParamByName('@h_id').AsString     := t.Values[i, cxGridTv_List_CCPHeatID.index];
      ParamByName('@h_date').AsString   := cxDEdit_date.Text;
      ParamByName('@ItemID').AsString   := t.Values[i, cxGridTv_List_ItemID.index];
      ParamByName('@Number').AsString   := t.Values[i, cxGridTv_List_RealNumber.index];
      ParamByName('@h_Reason').AsString := t.Values[i, cxGridTv_List_reason.index];
      ParamByName('@h_Action').AsString := t.Values[i, cxGridTv_List_action.index];
      ExecSQL;
    end;
  end;
  result := True;
end;

procedure TCCPHeatForm.SearchHeat;
var
  I, AppendIndex : Integer;
begin
  start := false;
  t := cxGridTv_List.DataController;
  // 250801 김동현 : 신규 프로시저 사용(구이공정 조회)
  with DataModuleForm.FDSpSetting(usp_list,'usp_ccp_heat_chk','D') do
  begin
    ParamByName('@dt').AsString          := cxDEdit_date.Text;
    ParamByName('@GroupIndex').AsInteger := cxLkCBBox_Facility.EditValue;
    Open;

    t.RecordCount := 0;
    t.BeginUpdate;
    for I := 0 to usp_list.RecordCount -1 do
    begin
      t.AppendRecord;
//      t.Values[i, cxGridTv_List_CCPHeatID.Index]    := vartostr(FieldByName('h_id').AsString);
//      t.Values[i, cxGridTv_List_GroupIdx.Index]       := vartostr(FieldByName('SNO').AsString);
      t.Values[i, cxGridTv_List_GroupIdx.Index]       := vartostr(FieldByName('RCount').AsString);
      t.Values[i, cxGridTv_List_ItemID.Index]       := vartostr(FieldByName('ItemID').AsString);
//      t.Values[i, cxGridTv_List_Number.Index]       := vartostr(FieldByName('Idx').ASString);
      t.Values[i, cxGridTv_List_RealNumber.Index]   := vartostr(FieldByName('Number').ASString);
      t.Values[i, cxGridTv_List_HeatTimeText.Index] := vartostr(FieldByName('InsertTime').AsString);
      t.Values[i, cxGridTv_List_ItemName.Index]     := vartostr(FieldByName('ItemName').AsString);
      t.Values[i, cxGridTv_List_Temp1.Index]        := vartostr(FieldByName('T1').AsCurrency);
      t.Values[i, cxGridTv_List_reason.Index]       := vartostr(FieldByName('h_Reason').AsString);
      t.Values[i, cxGridTv_List_action.Index]       := vartostr(FieldByName('h_Action').AsString);
      t.Values[i, cxGridTv_List_Line.Index]         := vartostr(FieldByName('GroupIndex').AsInteger);
      t.Values[i, cxGridTv_List_Division.Index]     := vartostr(FieldByName('OverYN').AsString);
      Next;
    end;
    t.EndUpdate;
  end;

  Start := True;
end;

end.
