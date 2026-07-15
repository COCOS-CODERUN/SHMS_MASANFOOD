unit CCPHeatCheckUnit;

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
  dxDateTimeWheelPicker, cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxCurrencyEdit, MemDS, DBAccess, Uni, cxTimeEdit,
  cxEditRepositoryItems, cxSplitter;

type
  TCCPHeatCheckForm = class(TBaseChildForm)
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
    cxGrid_List: TcxGrid;
    cxGridLv_List: TcxGridLevel;
    UniQuery_facility: TUniQuery;
    DS_Facility: TDataSource;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_name: TcxGridColumn;
    cxGridTv_List_time: TcxGridColumn;
    cxGridTv_List_temp: TcxGridColumn;
    cxGridTv_List_htime: TcxGridColumn;
    cxGridTv_List_decision: TcxGridColumn;
    cxEditRepository: TcxEditRepository;
    cxEditRepository_Name: TcxEditRepositoryComboBoxItem;
    cxEditRepository_decision: TcxEditRepositoryRadioGroupItem;
    cxBtn_Add: TcxButton;
    UniQuery_comm: TUniQuery;
    UniQuery_data: TUniQuery;
    DS_Data: TDataSource;
    cxGridTv_List_reason: TcxGridColumn;
    cxGridTv_List_action: TcxGridColumn;
    cxEditRepository_Reason: TcxEditRepositoryComboBoxItem;
    UniQuery_basic: TUniQuery;
    cxGBox_set: TcxGroupBox;
    cxSplitter_item: TcxSplitter;
    cxGroupBox1: TcxGroupBox;
    cxBtn_Gadd: TcxButton;
    cxBtn_Gsave: TcxButton;
    cxGridLv_item: TcxGridLevel;
    cxGrid_item: TcxGrid;
    cxGridTv_item: TcxGridTableView;
    cxGridTv_item_name: TcxGridColumn;
    cxGridTv_item_temp: TcxGridColumn;
    cxGridTv_item_error: TcxGridColumn;
    cxGridTv_item_time: TcxGridColumn;
    cxGridTv_item_ID: TcxGridColumn;
    cxGridTv_item_TError: TcxGridColumn;
    cxBtn_setting: TcxButton;
    cxLabel1: TcxLabel;
    cxCBBox_Item: TcxComboBox;
    cxLabel2: TcxLabel;
    cxEdit_time: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxEdit_temp: TcxTextEdit;
    cxBtn_ItemClose: TcxButton;
    cxGridTv_List_ID: TcxGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure dxDateTimeWheelPickerPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure cxLkCBBox_FacilityPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_AddClick(Sender: TObject);
    procedure cxBtn_GaddClick(Sender: TObject);
    procedure cxBtn_GsaveClick(Sender: TObject);
    procedure cxCBBox_ItemPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridTv_List_timePropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_settingClick(Sender: TObject);
    procedure cxBtn_ItemCloseClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_damClick(Sender: TObject);
    procedure cxBtn_reviewClick(Sender: TObject);
    procedure cxGridDBTv_dataCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetApprobalButtons;
    procedure HearItemDataList;
    procedure DayHeatCheckList(CDate, FCode :string);
  end;

var
  CCPHeatCheckForm: TCCPHeatCheckForm;

  loopcnt : Integer;
  FridgeCode : string;

  CheckTemp, MTemp, PTemp : Double;

implementation

uses DataModule, MainUnit;

{$R *.dfm}


procedure TCCPHeatCheckForm.FormCreate(Sender: TObject);
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

procedure TCCPHeatCheckForm.FormResize(Sender: TObject);
begin
  inherited;

  cxGBox_set.Width := 400;
end;

procedure TCCPHeatCheckForm.HearItemDataList;
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
procedure TCCPHeatCheckForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Approval);

  cxCBBox_Item.Text := '';
  cxEdit_temp.Clear;
  cxEdit_time.Clear;

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

//해당월의 데이터 목록
procedure TCCPHeatCheckForm.dxDateTimeWheelPickerPropertiesEditValueChanged(
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

//추가하기
procedure TCCPHeatCheckForm.cxBtn_AddClick(Sender: TObject);
  var AppendIndex : Integer;
begin
  inherited;

  EssentialItem(cxLkCBBox_Facility, '설비구분');
  EssentialItem(cxCBBox_Item, '품명');
  EssentialItem(cxDEdit_date, '점검일자');

  with cxGridTv_List.DataController do
  begin
    AppendIndex := AppendRecord;
    SetValue(AppendIndex, cxGridTv_List_name.Index, cxCBbox_Item.Text);
    SetValue(AppendIndex, cxGridTv_List_time.Index, '00:00');
    SetValue(AppendIndex, cxGridTv_List_temp.Index, 0);
    SetValue(AppendIndex, cxGridTv_List_htime.Index, cxEdit_time.Text);
    SetValue(AppendIndex, cxGridTv_List_decision.Index, False);
    SetValue(AppendIndex, cxGridTv_List_reason.Index, '');
    SetValue(AppendIndex, cxGridTv_List_action.Index, '');
    SetValue(AppendIndex, cxGridTv_List_ID.Index, '');
  end;
end;

//search
procedure TCCPHeatCheckForm.cxBtn_SearchClick(Sender: TObject);
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

  //DATA LIST
  DayHeatCheckList(cxDEdit_date.Text, FridgeCode);

  //결재정보 조회
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' exec usp_CCPHeatCheck @option = :option, @CheckDate=:CheckDate, @FridgeCode = :FridgeCode ');
    ParamByName('option').AsString := 'D';
    ParamByName('CheckDate').AsString := cxDEdit_date.Text;
    ParamByName('FridgeCode').AsString := FridgeCode;
    open;

    cxEdit_Writer.Text         := FieldByName('Writer').AsString;
    cxEdit_Reviewer.Text       := FieldByName('Reviewer').AsString;
    cxEdit_Confirmer.Text      := FieldByName('Confirmer').AsString;
  end;

  // 결재 버튼 활성화
  SetApprobalButtons;

//  cxGridTv_List.OptionsData.Editing := (cxEdit_Reviewer.Text = '') and (cxEdit_Confirmer.Text = '');
end;

//DATA LIST
procedure TCCPHeatCheckForm.DayHeatCheckList(CDate, FCode: string);
begin
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' SELECT * FROM CCPHeatCheck     ');
    sql.Add(' WHERE CheckDate = :CheckDate   ');
    sql.Add(' AND   FridgeCode = :FridgeCode ');
    ParamByName('CheckDate').AsString := CDate;
    ParamByName('FridgeCode').AsString := FCode;
    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.BeginUpdate;
    for loopcnt := 0 to UniQuery_comm.RecordCount -1 do
    begin
      cxGridTv_List.DataController.AppendRecord;
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_name.Index,     FieldByName('ItemName').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_time.Index,     FieldByName('CheckTime').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_temp.Index,     FieldByName('HeatTemp').AsCurrency);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_htime.Index,    FieldByName('HeatTime').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_decision.Index, FieldByName('Decision').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_reason.Index,   FieldByName('CheckReason').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_action.Index,   FieldByName('CheckAction').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ID.Index,       FieldByName('CheckID').AsString);

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

//품명 설정
procedure TCCPHeatCheckForm.cxBtn_settingClick(Sender: TObject);
begin
  inherited;

  cxSplitter_item.OpenSplitter;
end;

procedure TCCPHeatCheckForm.cxBtn_ItemCloseClick(Sender: TObject);
begin
  inherited;

  cxSplitter_item.CloseSplitter;
end;

//설비 선택 시
procedure TCCPHeatCheckForm.cxLkCBBox_FacilityPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  FridgeCode :=
    cxLkCBBox_Facility.Properties.Grid.DataController.Values[
    cxLkCBBox_Facility.Properties.Grid.DataController.FocusedRecordIndex,
    cxLkCBBox_Facility.Properties.ListColumns.Items[1].Index];
end;

//품명 선택 시
procedure TCCPHeatCheckForm.cxCBBox_ItemPropertiesEditValueChanged(
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
    MTemp := CheckTemp - StrToFloat(cxGridTv_item.DataController.Values[FindIndex, cxGridTv_item_terror.Index]);
    PTemp := CheckTemp + StrToFloat(cxGridTv_item.DataController.Values[FindIndex, cxGridTv_item_terror.Index]);
  end;
end;

//측정시간 입력 시
procedure TCCPHeatCheckForm.cxGridTv_List_timePropertiesEditValueChanged(
  Sender: TObject);
  var FocusedIndex : Integer;
begin
  inherited;

  cxGridTv_List.Controller.EditingController.Edit.PostEditValue;

  FocusedIndex := cxGridTv_List.DataController.FocusedRecordIndex;

  with DataModuleForm.FDSpSetting(nil, 'usp_CCPHeatCheck', 'A') do
  begin
    ParamByName('@FridgeNo').AsInteger := cxLkCBBox_Facility.EditValue;
    ParamByName('@CheckDate').AsString := cxDEdit_date.Text;
    ParamByName('@CheckTime').AsTime   := StrToTime(cxGridTv_List.DataController.Values[FocusedIndex, cxGridTv_List_time.Index]);
    open;

    if RecordCount > 0 then
    begin
      //온도 조회
      cxGridTv_List.DataController.Values[FocusedIndex, cxGridTv_List_temp.index] := FieldByName('Temp').AsCurrency;

      //판정 여부
      if (FieldByName('Temp').AsCurrency >= MTemp) or (FieldByName('Temp').AsCurrency <= PTemp) then
      begin
        cxGridTv_List.DataController.Values[FocusedIndex, cxGridTv_List_decision.Index] := True;
      end;
    end
    else begin
      cxGridTv_List.DataController.Values[FocusedIndex, cxGridTv_List_temp.index] := 0;
      cxGridTv_List.DataController.Values[FocusedIndex, cxGridTv_List_decision.Index] := False;
    end;
  end;
end;

//품목 추가
procedure TCCPHeatCheckForm.cxBtn_GaddClick(Sender: TObject);
  var AppendIndex : Integer;
begin
  inherited;

  AppendIndex := cxGridTv_Item.DataController.AppendRecord;

  cxGridTv_Item.DataController.SetValue(AppendIndex, cxGridTv_Item_name.Index, '');
  cxGridTv_Item.DataController.SetValue(AppendIndex, cxGridTv_Item_temp.Index, '');
  cxGridTv_Item.DataController.SetValue(AppendIndex, cxGridTv_Item_error.Index, '');
  cxGridTv_Item.DataController.SetValue(AppendIndex, cxGridTv_Item_time.Index, '');
  cxGridTv_Item.DataController.SetValue(AppendIndex, cxGridTv_Item_ID.Index, 0);
end;

//품목 저장
procedure TCCPHeatCheckForm.cxBtn_GsaveClick(Sender: TObject);
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

//저장
procedure TCCPHeatCheckForm.cxBtn_SaveClick(Sender: TObject);
  var Option : string;
begin
  inherited;

  for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
  begin
    if VarToStr(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_ID.Index]) = '' then
    begin
      Option := 'B'
    end
    else begin
      Option := 'C'
    end;

    with DataModuleForm.FDSpSetting(nil, 'usp_CCPHeatCheck', Option) do
    begin
      ParamByName('@CheckID').Value     := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_ID.Index];
      ParamByName('@CheckDate').Value   := cxDEdit_date.Text;
      ParamByName('@FridgeCode').Value  := FridgeCode;
      ParamByName('@ItemName').Value    := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_name.Index];
      ParamByName('@CheckTime').Value   := StrToTime(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_time.Index]);
      ParamByName('@HeatTemp').Value    := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_temp.Index];
      ParamByName('@HeatTime').Value    := VarToStr(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_htime.Index]);
      ParamByName('@Decision').Value    := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_decision.Index];
      ParamByName('@CheckReason').Value := VarToStr(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_reason.Index]);
      ParamByName('@CheckAction').Value := VarToStr(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_action.Index]);
      try
        ExecProc;
      except
        SaveToError := False;
        break;
      end;
    end;
  end;

  if SaveToError then
  begin
    Showmessage(MessageToError);
  end
  else begin
    DayHeatCheckList(cxDEdit_date.Text, FridgeCode);
    Showmessage(MessageToSave);
  end;

  //data save
  cxBtn_damClick(Self);
end;

//data list double click
procedure TCCPHeatCheckForm.cxGridDBTv_dataCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with UniQuery_data do
  begin
    cxLkCBBox_Facility.Text := FieldByName('Division').AsString;
    cxDEdit_date.Text       := FieldByName('CheckDate').AsString;
    cxEdit_Writer.Text      := FieldByName('Writer').AsString;
    cxEdit_Reviewer.Text    := FieldByName('Reviewer').AsString;
    cxEdit_Confirmer.Text   := FieldByName('Confirmer').AsString;
  end;

  //버튼들 활성화 세팅
  SetApprobalButtons;

  cxBtn_searchClick(self);
end;

//담당 확인
procedure TCCPHeatCheckForm.cxBtn_damClick(Sender: TObject);
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

//검토, 승인 버튼
procedure TCCPHeatCheckForm.cxBtn_reviewClick(Sender: TObject);
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
procedure TCCPHeatCheckForm.SetApprobalButtons;
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

end.
