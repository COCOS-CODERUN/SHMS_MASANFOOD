unit CCPHeatCheckUnit2;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxWheelPicker, dxNumericWheelPicker,
  dxDateTimeWheelPicker, cxLabel, cxTimeEdit, cxCurrencyEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxSplitter, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxEditRepositoryItems, MemDS,
  DBAccess, Uni;

type
  TCCPHeatCheckForm2 = class(TBaseChildForm)
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
    cxGridDBTv_data_facility: TcxGridDBColumn;
    cxGridDBTv_data_data_reviewer: TcxGridDBColumn;
    cxGridDBTv_data_confirmer: TcxGridDBColumn;
    cxGridLv_data: TcxGridLevel;
    cxGBox_Client: TcxGroupBox;
    cxGBox_input: TcxGroupBox;
    cxLbl2: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxLbl1: TcxLabel;
    cxLkCBBox_Facility: TcxLookupComboBox;
    cxBtn_start: TcxButton;
    cxBtn_setting: TcxButton;
    cxLabel2: TcxLabel;
    cxEdit_time: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxEdit_temp: TcxTextEdit;
    cxGrid_List: TcxGrid;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_time: TcxGridColumn;
    cxGridTv_List_temp: TcxGridColumn;
    cxGridTv_List_reason: TcxGridColumn;
    cxGridTv_List_action: TcxGridColumn;
    cxGridTv_List_ID: TcxGridColumn;
    cxGridLv_List: TcxGridLevel;
    cxGBox_set: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    cxBtn_Gadd: TcxButton;
    cxBtn_Gsave: TcxButton;
    cxBtn_ItemClose: TcxButton;
    cxGrid_item: TcxGrid;
    cxGridTv_item: TcxGridTableView;
    cxGridTv_item_name: TcxGridColumn;
    cxGridTv_item_temp: TcxGridColumn;
    cxGridTv_item_error: TcxGridColumn;
    cxGridTv_item_time: TcxGridColumn;
    cxGridTv_item_TError: TcxGridColumn;
    cxGridTv_item_ID: TcxGridColumn;
    cxGridLv_item: TcxGridLevel;
    cxSplitter_item: TcxSplitter;
    cxBtn_end: TcxButton;
    cxEdit_start: TcxTextEdit;
    cxEdit_end: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxCBBox_Item: TcxComboBox;
    UniQuery_facility: TUniQuery;
    DS_Facility: TDataSource;
    UniQuery_comm: TUniQuery;
    UniQuery_basic: TUniQuery;
    cxEditRepository: TcxEditRepository;
    cxEditRepository_Name: TcxEditRepositoryComboBoxItem;
    cxEditRepository_decision: TcxEditRepositoryRadioGroupItem;
    cxEditRepository_Reason: TcxEditRepositoryComboBoxItem;
    UniQuery_data: TUniQuery;
    DS_Data: TDataSource;
    cxGridTv_List_check: TcxGridColumn;
    cxGridDBTv_data_writer: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure dxDateTimeWheelPickerPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure cxBtn_settingClick(Sender: TObject);
    procedure cxBtn_ItemCloseClick(Sender: TObject);
    procedure cxLkCBBox_FacilityPropertiesEditValueChanged(Sender: TObject);
    procedure cxCBBox_ItemPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_GaddClick(Sender: TObject);
    procedure cxBtn_GsaveClick(Sender: TObject);
    procedure cxBtn_damClick(Sender: TObject);
    procedure cxBtn_reviewClick(Sender: TObject);
    procedure cxBtn_startClick(Sender: TObject);
    procedure cxGridTv_List_tempCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxGridTv_ListEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridDBTv_dataCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetApprobalButtons;
    procedure SetGridList;
    procedure HearItemDataList;
    procedure DayHeatCheckList(CDate, FCode :string);
  end;

var
  CCPHeatCheckForm2: TCCPHeatCheckForm2;

  loopcnt : Integer;
  FridgeCode : string;

  CheckTemp, MTemp, PTemp : Double;

implementation

uses DataModule, MainUnit;

{$R *.dfm}

//form create
procedure TCCPHeatCheckForm2.FormCreate(Sender: TObject);
begin
  inherited;

  dxDateTimeWheelPicker.DateTime := Date;
  dxDateTimeWheelPickerPropertiesEditValueChanged(self);

  with DataModuleForm.FDQuerySetting(UniQuery_facility) do
  begin
    SQL.Add(' SELECT FridgeNo                   ');
    SQL.Add(' ,Name                             ');
    SQL.Add(' ,MaxTemp                          ');
    SQL.Add(' ,MinTemp                          ');
    SQL.Add(' ,SetTemp                          ');
    SQL.Add(' ,FridgeCode                       ');
    SQL.Add(' FROM Fridge                       ');
    SQL.Add(' WHERE LEFT(FridgeCode,2) =''CH''  ');
//    SQL.Add(' AND FridgeNo  IN (2,11,25)        ');
    Open;
    cxLkCBBox_Facility.Properties.DropDownRows := RecordCount;
  end;

  //리스트의 한계기준 이탈 사유 세팅
  with DataModuleForm.FDQuerySetting(UniQuery_basic) do
  begin
    sql.Add(' SELECT BCDName, BCDID     ');
    sql.Add(' FROM BasicCodeDetail      ');
    sql.Add(' WHERE BCID = ''BC011''    '); //가열 이탈 사유
    sql.Add(' ORDER BY BCDID            ');
    open;

    cxEditRepository_reason.Properties.Items.Clear;
    for loopcnt := 0 to UniQuery_basic.RecordCount -1 do
    begin
      cxEditRepository_reason.Properties.Items.Add(FieldByName('BCDName').AsString);

      Next;
    end;
  end;

  //폼명세팅
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' SELECT HName FROM HeatItem  ');
    open;

    cxCBBox_Item.Properties.Items.Clear;
    for loopcnt := 0 to UniQuery_comm.RecordCount -1 do
    begin
      cxCBBox_Item.Properties.Items.Add(FieldByName('HName').AsString);

      Next;
    end;
  end;

  cxBtn_NewClick(SELF);
  HearItemDataList;

  cxSplitter_item.CloseSplitter;
end;

//data list
procedure TCCPHeatCheckForm2.dxDateTimeWheelPickerPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDQuerySetting(UniQuery_data) do
  begin
    sql.Add(' exec usp_CCPHeatCheck @option = :option, @CheckDate=:CheckDate ');
    ParamByName('option').AsString := 'G';
    ParamByName('CheckDate').AsString := Formatdatetime('YYYY-MM', dxDateTimeWheelPicker.DateTime);
    open;
  end;
end;

procedure TCCPHeatCheckForm2.HearItemDataList;
begin
  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' SELECT * FROM HeatItem ');
    open;

    cxGridTv_item.DataController.RecordCount := 0;
    cxGridTv_item.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_item.DataController.AppendRecord;
      cxGridTv_item.DataController.SetValue(loopcnt, cxGridTv_Item_Name.Index,   FieldByName('HName').AsString);
      cxGridTv_item.DataController.SetValue(loopcnt, cxGridTv_Item_temp.Index,   FieldByName('HTemp').AsString);
      cxGridTv_item.DataController.SetValue(loopcnt, cxGridTv_Item_error.Index,  FieldByName('HError').AsString);
      cxGridTv_item.DataController.SetValue(loopcnt, cxGridTv_Item_time.Index,   FieldByName('HTime').AsString);
      cxGridTv_item.DataController.SetValue(loopcnt, cxGridTv_Item_Terror.Index, FieldByName('HTError').AsString);
      cxGridTv_item.DataController.SetValue(loopcnt, cxGridTv_Item_ID.Index,     FieldByName('HItemID').AsInteger);

      Next;
    end;
    cxGridTv_item.DataController.EndUpdate;
  end;
end;

//new
procedure TCCPHeatCheckForm2.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Approval);

  cxCBBox_Item.Text := '';
  cxEdit_temp.Clear;
  cxEdit_time.Clear;
  cxEdit_start.Clear;
  cxEdit_end.Clear;

  CheckTemp := 0;
  MTemp := 0;
  PTemp := 0;

  cxEDit_Writer.Text := LoginUserName;
  cxBtn_dam.Enabled := True;
  cxBtn_review.Enabled := True;
  cxBtn_confirm.Enabled := True;

  cxGridTv_List.DataController.RecordCount := 0;

  SetApprobalButtons;
end;

//save
procedure TCCPHeatCheckForm2.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  if cxLkCBBox_Facility.Text = '' then
  begin
    ShowMessage('설비구분을 먼저 선택 하세요');
    exit;
  end;

  if cxDEdit_date.Text = '' then
  begin
    ShowMessage('일자를 입력하세요.');
    exit;
  end;

  if cxCBBox_Item.Text = '' then
  begin
    ShowMessage('품목을 먼저 선택 하세요');
    exit;
  end;

  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    for loopcnt := 0 to cxGridTv_list.DataController.RecordCount -1 do
    begin
      //이탈 한 목록만 저장 한다.
      if VarToStr(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_check.Index]) = 'C' then
      begin
        SQL.Add(' EXEC usp_CCPHeatCheck @option = :option               ');
        SQL.Add(' ,@CheckDate=:CheckDate     ,@FridgeCode=:FridgeCode   ');
        SQL.Add(' ,@ItemName=:ItemName       ,@CheckTime=:CheckTime     ');
        SQL.Add(' ,@CheckTemp=:CheckTemp     ,@CheckReason=:CheckReason ');
        SQL.Add(' ,@CheckAction=:CheckAction ,@CheckError=:CheckError   ');
        SQL.Add(' ,@StartTime=:StartTime ,@EndTime=:EndTime             ');
        ParamByName('option').AsString      := 'R';
        ParamByName('CheckDate').AsString   := cxDEdit_date.Text;
        ParamByName('FridgeCode').AsString  := FridgeCode;
        ParamByName('ItemName').AsString    := cxCBbox_item.Text;
        ParamByName('CheckTime').AsString   := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_time.Index];
        ParamByName('CheckTemp').AsString   := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_temp.Index];
        ParamByName('CheckReason').AsString := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_reason.Index];
        ParamByName('CheckAction').AsString := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_action.Index];
        ParamByName('CheckError').AsString  := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_check.Index];
        ParamByName('StartTime').AsString   := cxEdit_start.Text;
        ParamByName('EndTime').AsString     := cxEdit_end.Text;
        try
          ExecSQL;
        except
          SaveToError := True;
          break;
        end;
      end;
    end;

  end;

  if SaveToError then
  begin
    ShowMessage(MessageToError);
  end
  else begin
    ShowMessage(MessageToSave);
    cxBtn_damClick(self);
  end;
end;

//search
procedure TCCPHeatCheckForm2.cxBtn_SearchClick(Sender: TObject);
begin
  inherited;

  if cxLkCBBox_Facility.Text = '' then
  begin
    ShowMessage('설비구분을 먼저 선택 하세요');
    exit;
  end;

  if cxDEdit_date.Text = '' then
  begin
    ShowMessage('일자를 입력하세요.');
    exit;
  end;

  if cxCBBox_Item.Text = '' then
  begin
    ShowMessage('품목을 먼저 선택 하세요');
    exit;
  end;

  cxEdit_start.Clear;
  cxEdit_end.Clear;

  //DATA LIST
  SetGridList;

  //결재정보 조회
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' exec usp_CCPHeatCheck @option = :option, @CheckDate=:CheckDate, @FridgeCode = :FridgeCode ');
    ParamByName('option').AsString := 'H';
    ParamByName('CheckDate').AsString := cxDEdit_date.Text;
    ParamByName('FridgeCode').AsString := FridgeCode;
    open;

    cxEdit_Writer.Text         := FieldByName('Writer').AsString;
    cxEdit_Reviewer.Text       := FieldByName('Reviewer').AsString;
    cxEdit_Confirmer.Text      := FieldByName('Confirmer').AsString;
  end;

  // 결재 버튼 활성화
  SetApprobalButtons;
end;

procedure TCCPHeatCheckForm2.SetGridList;
  var FindIndex : Integer;
begin
  //grid setting
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' exec usp_CCPHeatCheck @option = :option, @CheckDate=:CheckDate, @FridgeNo = :FridgeNo ');
    ParamByName('option').AsString := 'D';
    ParamByName('CheckDate').AsString := cxDEdit_Date.Text;
    ParamByName('FridgeNo').AsString  := cxLkCBBox_Facility.EditValue;
    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.BeginUpdate;
    for loopcnt := 0 to UniQuery_comm.RecordCount -1 do
    begin
      cxGridTv_List.DataController.AppendRecord;
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_time.Index,     FieldByName('TempTime').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_temp.Index,     FieldByName('Temp').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_reason.Index,   '');
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_action.Index,   '');
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ID.Index,       '');

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;

  //저장된 데이터 있나 확인하고 불러온다
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    SQL.Add(' SELECT * FROM CCPHeatCheck     ');
    SQL.Add(' WHERE CheckDate = :CheckDate   ');
    SQL.Add(' AND   FridgeCode = :FridgeCode ');
    ParamByName('CheckDate').AsString := cxDEdit_Date.Text;
    ParamByName('FridgeCode').AsString  := FridgeCode;
    open;

    if UniQuery_comm.RecordCount > 0 then
    begin
      cxEdit_start.Text := FieldbyName('StartTime').AsString;
      cxEdit_end.Text   := FieldbyName('EndTime').AsString;

      cxGridTv_List.DataController.BeginUpdate;
      for loopcnt := 0 to UniQuery_comm.RecordCount -1 do
      begin
        FindIndex :=
        cxGridTv_List.DataController.FindRecordIndexByText(0, cxGridTv_List_time.Index, FieldbyName('CheckTime').AsString, False, False, True);

        if FindIndex <> -1 then
        begin
          cxGridTv_List.DataController.Values[FindIndex, cxGridTv_List_reason.Index] := FieldbyName('CheckReason').AsString;
          cxGridTv_List.DataController.Values[FindIndex, cxGridTv_List_action.Index] := FieldbyName('CheckAction').AsString;
          cxGridTv_List.DataController.Values[FindIndex, cxGridTv_List_check.Index]  := 'C';
        end;
      end;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

procedure TCCPHeatCheckForm2.DayHeatCheckList(CDate, FCode: string);
begin
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' exec usp_CCPHeatCheck @option = :option, @CheckDate=:CheckDate, @FridgeNo = :FridgeNo ');
    ParamByName('option').AsString := 'D';
    ParamByName('CheckDate').AsString := CDate;
    ParamByName('FridgeNo').AsString  := cxLkCBBox_Facility.EditValue;
    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.BeginUpdate;
    for loopcnt := 0 to UniQuery_comm.RecordCount -1 do
    begin
      cxGridTv_List.DataController.AppendRecord;
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_time.Index,     FieldByName('TempTime').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_temp.Index,     FieldByName('Temp').AsCurrency);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_reason.Index,   '');
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_action.Index,   '');
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ID.Index,       '');
      cxGridTv_Item.DataController.SetValue(loopcnt, cxGridTv_List_check.Index,    '');

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

//품명설정
procedure TCCPHeatCheckForm2.cxBtn_settingClick(Sender: TObject);
begin
  inherited;
  cxSplitter_item.OpenSplitter;
end;

//품목 추가
procedure TCCPHeatCheckForm2.cxBtn_GaddClick(Sender: TObject);
  var AppendIndex : Integer;
begin
  inherited;

  AppendIndex := cxGridTv_Item.DataController.AppendRecord;

  cxGridTv_Item.DataController.SetValue(AppendIndex, cxGridTv_Item_name.Index, '');
  cxGridTv_Item.DataController.SetValue(AppendIndex, cxGridTv_Item_temp.Index, '');
  cxGridTv_Item.DataController.SetValue(AppendIndex, cxGridTv_Item_error.Index,'');
  cxGridTv_Item.DataController.SetValue(AppendIndex, cxGridTv_Item_time.Index, '');
  cxGridTv_Item.DataController.SetValue(AppendIndex, cxGridTv_Item_ID.Index, 0);
end;

//품목 저장
procedure TCCPHeatCheckForm2.cxBtn_GsaveClick(Sender: TObject);
begin
  inherited;

  for loopcnt := 0 to cxGridTv_Item.DataController.RecordCount -1 do
  begin
    if VarToStr(cxGridTv_Item.DataController.Values[loopcnt, cxGridTv_Item_name.Index]) <> '' then
    begin
      with DataModuleForm.FDQuerySetting(UniQuery_comm) do
      begin
        if cxGridTv_Item.DataController.Values[loopcnt, cxGridTv_Item_ID.Index] = 0 then  //insert
        begin
          sql.Add(' INSERT INTO HeatItem Values (:HItemID, :HName, :HTemp, :HError, :HTime, :HTError) ');
          ParamByName('HItemID').AsInteger := loopcnt +1;
        end
        else begin // update
          sql.Add(' UPDATE HeatItem SET  ');
          sql.Add('  HName   = :HName    ');
          sql.Add(' ,HTemp   = :HTemp    ');
          sql.Add(' ,HError  = :HError   ');
          sql.Add(' ,HTime   = :HTime    ');
          sql.Add(' ,HTError = :HTError  ');
          sql.Add(' WHERE HItemID = :HItemID ');
          ParamByName('HItemID').AsInteger := cxGridTv_Item.DataController.Values[loopcnt, cxGridTv_Item_ID.Index];
        end;

        ParamByName('HName').AsString    := VarToStr(cxGridTv_Item.DataController.Values[loopcnt, cxGridTv_Item_name.Index]);
        ParamByName('HTemp').AsString    := VarToStr(cxGridTv_Item.DataController.Values[loopcnt, cxGridTv_Item_temp.Index]);
        ParamByName('HError').AsString   := VarToStr(cxGridTv_Item.DataController.Values[loopcnt, cxGridTv_Item_error.Index]);
        ParamByName('HTime').AsString    := VarToStr(cxGridTv_Item.DataController.Values[loopcnt, cxGridTv_Item_time.Index]);
        ParamByName('HTError').AsString  := VarToStr(cxGridTv_Item.DataController.Values[loopcnt, cxGridTv_Item_Terror.Index]);

        try
          ExecSQL;
        except
          SaveToError := True;
          break;
        end;
      end;
    end;
  end;

  if SaveToError then
  begin
    ShowMessage(MessageToError);
  end
  else begin
    HearItemDataList;
    ShowMessage(MessageToSave);
  end;
end;

procedure TCCPHeatCheckForm2.cxBtn_ItemCloseClick(Sender: TObject);
begin
  inherited;
  cxSplitter_item.CloseSplitter;
end;

//설비 선택 시
procedure TCCPHeatCheckForm2.cxLkCBBox_FacilityPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  FridgeCode :=
    cxLkCBBox_Facility.Properties.Grid.DataController.Values[
    cxLkCBBox_Facility.Properties.Grid.DataController.FocusedRecordIndex,
    cxLkCBBox_Facility.Properties.ListColumns.Items[1].Index];
end;

//품명 선택 시
procedure TCCPHeatCheckForm2.cxCBBox_ItemPropertiesEditValueChanged(
  Sender: TObject);
  var FindIndex : Integer;
begin
  inherited;

  FindIndex :=
  cxGridTv_item.DataController.FindRecordIndexByText(0, cxGridTv_item_name.Index, cxCBBox_item.Text, false, false, true);

  if FindIndex <> -1 then
  begin
    cxEdit_temp.Text :=
    cxGridTv_item.DataController.Values[FindIndex, cxGridTv_item_temp.Index] + ' ±' +
    cxGridTv_item.DataController.Values[FindIndex, cxGridTv_item_error.Index] + ' ℃';

    cxEdit_time.Text :=
    cxGridTv_item.DataController.Values[FindIndex, cxGridTv_item_time.Index] + ' ±' +
    cxGridTv_item.DataController.Values[FindIndex, cxGridTv_item_terror.Index] + ' 초';

    CheckTemp := StrToFloat(cxGridTv_item.DataController.Values[FindIndex, cxGridTv_item_temp.Index]);
    MTemp := CheckTemp - StrToFloat(cxGridTv_item.DataController.Values[FindIndex, cxGridTv_item_error.Index]);
    PTemp := CheckTemp + StrToFloat(cxGridTv_item.DataController.Values[FindIndex, cxGridTv_item_error.Index]);
  end;
end;

//담당 버튼
procedure TCCPHeatCheckForm2.cxBtn_damClick(Sender: TObject);
begin
  inherited;
  cxEdit_Writer.Text := LoginUserName;

  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' exec usp_CCPHeatCheck @option = :option  ');
    sql.Add(' ,@CheckDate = :CheckDate, @FridgeCode = :FridgeCode, @Writer = :Writer ');
    ParamByName('option').AsString     := 'E';
    ParamByName('CheckDate').AsString  := cxDEdit_date.Text;
    ParamByName('FridgeCode').AsString := FridgeCode;
    ParamByName('Writer').AsString     := LoginUserName;
    ExecSQL;
  end;

  // 결재 버튼 활성화
  SetApprobalButtons;

//  cxGridTv_List.OptionsData.Editing := (cxEdit_Reviewer.Text = '') and (cxEdit_Confirmer.Text = '');

  UniQuery_data.Refresh;
end;

//검토 승인 버튼
procedure TCCPHeatCheckForm2.cxBtn_reviewClick(Sender: TObject);
begin
  inherited;

  // 결재
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

  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' exec usp_CCPHeatCheck @option = :option  ');
    sql.Add(' ,@CheckDate = :CheckDate, @FridgeCode = :FridgeCode,@Reviewer = :Reviewer, @Confirmer = :Confirmer ');
    ParamByName('option').AsString     := 'F';
    ParamByName('CheckDate').AsString  := cxDEdit_date.Text;
    ParamByName('FridgeCode').AsString := FridgeCode;
    ParamByName('Reviewer').AsString   := cxEdit_Reviewer.Text;
    ParamByName('Confirmer').AsString  := cxEdit_Confirmer.Text;
    ExecSQL;
  end;

  // 결재 버튼 활성화
  SetApprobalButtons;

  cxGridTv_List.OptionsData.Editing := (cxEdit_Reviewer.Text = '') and (cxEdit_Confirmer.Text = '');
  ShowMessage('확인하였습니다.');

  UniQuery_data.Refresh;
  dxDateTimeWheelPickerPropertiesEditValueChanged(Self);
end;

//결재버튼 활성화 여부
procedure TCCPHeatCheckForm2.SetApprobalButtons;
begin
  //결재버튼 활성화
  if (cxEdit_Writer.Text = '') or (cxEdit_Reviewer.Text = '') or (cxEdit_Confirmer.Text = '') then
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

  // 결재 이후에는 저장 못하게
  if cxEdit_Reviewer.Text = '' then
  begin
    cxBtn_Save.Enabled   := True;
  end
  else begin
    cxBtn_Save.Enabled   := False;
  end;
end;

//시작, 종료하기
procedure TCCPHeatCheckForm2.cxBtn_startClick(Sender: TObject);
  var STime, ETime : string;
      StartRecord, EndRecord : Integer;
begin
  inherited;

  if cxLkCBBox_Facility.Text = '' then
  begin
    ShowMessage('설비구분을 먼저 선택 하세요');
    exit;
  end;

  if cxDEdit_date.Text = '' then
  begin
    ShowMessage('일자를 입력하세요.');
    exit;
  end;

  if cxCBBox_Item.Text = '' then
  begin
    ShowMessage('품목을 먼저 선택 하세요');
    exit;
  end;

  if (Sender As TcxButton).Name = 'cxBtn_start' then
  begin
    cxEdit_start.Text := FormatDateTime('YYYY-MM-DD HH:mm:SS' ,Now);
  end
  else begin
    cxEdit_end.Text := FormatDateTime('YYYY-MM-DD HH:mm:SS' ,Now);
  end;

  STime := Copy(cxEdit_start.Text, 12, 5);
  ETime := Copy(cxEdit_end.Text, 12, 5);

  for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
  begin
    if cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_time.Index] > STime then
    begin
      StartRecord := loopcnt;
      break;
    end;
  end;

  if ETime = '' then
  begin
    EndRecord := cxGridTv_List.DataController.RecordCount -1;
  end
  else begin
    for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
    begin
      if cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_time.Index] > ETime then
      begin
        EndRecord := loopcnt;
        break;
      end;
    end;
  end;

  //한계 이탈 체크
  with cxGridTv_List.DataController do
  begin
    for loopcnt := StartRecord to EndRecord do
    begin
      if VarToStr(Values[loopcnt, cxGridTv_List_temp.Index]) <> '' then
      begin
        if (MTemp > StrToFloat(Values[loopcnt, cxGridTv_List_temp.Index])) or (StrToFloat(Values[loopcnt, cxGridTv_List_temp.Index]) > PTemp) then
        begin
          Values[loopcnt, cxGridTv_list_check.Index] := 'C';
        end;
      end;
    end;
  end;
end;

procedure TCCPHeatCheckForm2.cxGridTv_ListEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;

//  if Sender.DataController.RecordCount = 0 then exit;
//
//  if AItem.Index in [cxGridTv_List_reason.Index, cxGridTv_List_action.Index] then
//  begin
//    AAllow := False;
//
//    if Sender.DataController.Values[Sender.DataController.FocusedRecordIndex, cxGridTv_List_Check.Index] = 'C' then
//    begin
//      AAllow := True;
//    end;
//  end;
end;

procedure TCCPHeatCheckForm2.cxGridTv_List_tempCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

  if AViewInfo.GridRecord.Values[cxGridTv_List_check.Index] = 'C' then
  begin
    ACanvas.Brush.Color := $00D0D0FF;
  end;
end;

procedure TCCPHeatCheckForm2.cxGridDBTv_dataCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  cxLkCBBox_Facility.Text := UniQuery_data.FieldByName('Division').AsString;
  cxDEdit_date.Text       := UniQuery_data.FieldByName('CheckDate').AsString;

  cxEdit_writer.Text      := UniQuery_data.FieldByName('Writer').AsString;
  cxEdit_reviewer.Text    := UniQuery_data.FieldByName('Reviewer').AsString;
  cxEdit_confirmer.Text   := UniQuery_data.FieldByName('Confirmer').AsString;

  SetGridList;

  SetApprobalButtons;
end;


end.
