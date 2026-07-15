unit CCPTempCheckUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxTextEdit,
  Data.DB, cxDBData, cxGridDBTableView, dxWheelPicker, dxNumericWheelPicker,
  dxDateTimeWheelPicker, cxGridCustomTableView, cxGridTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxCurrencyEdit, cxDBEditRepository, cxEditRepositoryItems, cxGridChartView,
  cxGridDBChartView, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxBarBuiltInMenu, cxPC,
  cxSplitter, MemDS, DBAccess, Uni;

type
  TCCPTempCheckForm = class(TBaseChildForm)
    DS_Data: TDataSource;
    DS_Facility: TDataSource;
    DS_basic: TDataSource;
    cxEditRepository: TcxEditRepository;
    cxEditRepositoryCBBox_reason: TcxEditRepositoryComboBoxItem;
    DS_TC: TDataSource;
    DS_All: TDataSource;
    cxGBox_Right: TcxGroupBox;
    cxGbox_Main: TcxGroupBox;
    cxGBoxApproval: TcxGroupBox;
    cxLabel119: TcxLabel;
    cxLabel120: TcxLabel;
    cxLabel121: TcxLabel;
    cxBtnQAOK: TcxButton;
    cxBtnProdOK: TcxButton;
    cxEdit_Writer: TcxTextEdit;
    cxEdit_Reviewer: TcxTextEdit;
    cxBtnHaccpOK: TcxButton;
    cxEdit_Confirmer: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    dxDateTimeWheelPicker: TdxDateTimeWheelPicker;
    cxGrid_data: TcxGrid;
    cxGridDBTv_data: TcxGridDBTableView;
    cxGridDBTv_data_no: TcxGridDBColumn;
    cxGridDBTv_data_date: TcxGridDBColumn;
    cxGridDBTv_data_facility: TcxGridDBColumn;
    cxGridDBTv_data_data_reviewer: TcxGridDBColumn;
    cxGridDBTv_data_confirmer: TcxGridDBColumn;
    cxGridLv_data: TcxGridLevel;
    cxGBox_input: TcxGroupBox;
    cxLbl2: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxLbl1: TcxLabel;
    cxLkCBBox_Facility: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxEdit_min: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxEdit_max: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxEdit_CheckDate: TcxTextEdit;
    cxEdit_NowTemp: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxGrid_TempChart: TcxGrid;
    cxGridDBTv_TempChart: TcxGridDBChartView;
    cxGridDBTv_TempChartSeries1: TcxGridDBChartSeries;
    cxGridLv_TempChart: TcxGridLevel;
    cxGBox_List: TcxGroupBox;
    cxGBox_All: TcxGroupBox;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridDBTv_List_seq: TcxGridDBColumn;
    cxGridDBTv_List_time: TcxGridDBColumn;
    cxGridDBTv_List_temp: TcxGridDBColumn;
    cxGridLv_List: TcxGridLevel;
    cxSplitter_alltemp: TcxSplitter;
    cxGrid_temp: TcxGrid;
    cxGridTv_temp: TcxGridTableView;
    cxGridTv_temp_time: TcxGridColumn;
    cxGridTv_temp_temp: TcxGridColumn;
    cxGridTv_temp_basic: TcxGridColumn;
    cxGridTv_temp_contents: TcxGridColumn;
    cxGridTv_temp_ModifiedTemp: TcxGridColumn;
    cxGridTv_temp_ModifiedReason: TcxGridColumn;
    cxGridTv_temp_DataCheck: TcxGridColumn;
    cxGridTv_temp_CheckDate: TcxGridColumn;
    cxGridLv_temp: TcxGridLevel;
    FDQuery_data: TUniQuery;
    FDQuery_facility: TUniQuery;
    FDQuery_basic: TUniQuery;
    FDQuery_TC: TUniQuery;
    FDQuery_comm: TUniQuery;
    FDQuery_All: TUniQuery;
    FDQuery_dataDetail: TUniQuery;
    FDQuery_check: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure dxDateTimeWheelPickerPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBTv_data_noGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cxBtn_searchClick(Sender: TObject);
    procedure cxLkCBBox_FacilityPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_ConfirmerClick(Sender: TObject);
    procedure cxGridDBTv_dataCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridTv_tempCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridTv_tempEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridTv_temp_EditValueChanged(Sender: TObject);
    procedure cxBtnQAOKClick(Sender: TObject);
    procedure cxBtnProdOKClick(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SearchDateTempList;
    procedure GetReasonActionContentsList;
    procedure SetApprobalButtons;
  end;

var
  CCPTempCheckForm: TCCPTempCheckForm;

  loopcnt : Integer;
  FridgeCode : string;

  MaxTemp,MinTemp : Double;


implementation

uses DataModule, MainUnit;

{$R *.dfm}

procedure TCCPTempCheckForm.FormCreate(Sender: TObject);
begin
  inherited;

 dxDateTimeWheelPicker.DateTime := Date;

  with DataModuleForm.FDQuerySetting(FDQuery_facility) do
  begin
    SQL.Add(' SELECT FridgeNo                   ');
    SQL.Add(' ,Name                             ');
    SQL.Add(' ,MaxTemp                          ');
    SQL.Add(' ,MinTemp                          ');
    SQL.Add(' ,SetTemp                          ');
    SQL.Add(' ,FridgeCode                       ');
    SQL.Add(' FROM Fridge                       ');
    SQL.Add(' WHERE LEFT(FridgeCode,2) =''CC''  ');
//    SQL.Add(' AND FridgeNo  IN (2,11,25)        ');
    Open;
    cxLkCBBox_Facility.Properties.DropDownRows := RecordCount;
  end;
  //리스트의 한계기준 이탈 사유 세팅
  with DataModuleForm.FDQuerySetting(FDQuery_basic) do
  begin
    sql.Add(' SELECT BCDName, BCDID     ');
    sql.Add(' FROM BasicCodeDetail      ');
    sql.Add(' WHERE BCID = ''BC009''    '); //냉장냉동 이탈 사유
    sql.Add(' ORDER BY BCDID            ');
    open;

    cxEditRepositoryCBBox_reason.Properties.Items.Clear;
    for loopcnt := 0 to FDQuery_basic.RecordCount -1 do
    begin
      cxEditRepositoryCBBox_reason.Properties.Items.Add(FieldByName('BCDName').AsString);

      Next;
    end;
  end;

  cxSplitter_alltemp.CloseSplitter;

  cxBtn_NewClick(SELF);
end;


procedure TCCPTempCheckForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBox_input);

  cxEDit_Writer.Text := LoginUserName;
  cxBtnQAOK.Enabled := True;
  cxBtnProdOK.Enabled := True;
  cxBtnHaccpOK.Enabled := True;

  cxEdit_Reviewer.Clear;
  cxEdit_Confirmer.Clear;

  cxGridTv_temp.DataController.RecordCount := 0;
  FDQuery_TC.Close;

  MaxTemp := 0.0;
  MinTemp := 0.0;
end;

//auto seq
procedure TCCPTempCheckForm.cxGridDBTv_data_noGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  Atext := IntToStr(ARecord.Index +1);
end;

//설비 선택 시 해당 한계기준 온도 가져온다
procedure TCCPTempCheckForm.cxLkCBBox_FacilityPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cxLkCBBox_Facility.Text = '' then
  begin
    cxEdit_min.Text := '';
    cxEdit_max.Text := '';

    exit;
  end;

  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' SELECT MinTemp, MaxTemp FROM Fridge ');
    SQL.Add(' WHERE FridgeNo  = :FridgeNo      ');
    ParamByName('FridgeNo').AsInteger := cxLkCBBox_Facility.EditValue;
    open;

    cxEdit_min.Text := FieldByName('MinTemp').AsString + ' °C';
    cxEdit_max.Text := FieldByName('MaxTemp').AsString + ' °C';
  end;

  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' select top 1 Temp,checkdate from tempcheck ');
    SQL.Add(' where FridgeNo = :FridgeNo      ');
    SQL.Add(' order by CheckDate desc         ');
    ParamByName('FridgeNo').AsInteger := cxLkCBBox_Facility.EditValue;
    open;

    cxEdit_NowTemp.Text := FieldByName('Temp').AsString + ' °C';
    cxEdit_CheckDate.Text := FieldByName('checkdate').AsString;
  end;

  FridgeCode :=
    cxLkCBBox_Facility.Properties.Grid.DataController.Values[
    cxLkCBBox_Facility.Properties.Grid.DataController.FocusedRecordIndex,
    cxLkCBBox_Facility.Properties.ListColumns.Items[1].Index];

  FDQuery_TC.Close;
  cxGridTv_temp.DataController.RecordCount := 0;

  MaxTemp := StrToFloat(Copy(cxEdit_max.Text, 1, Pos('°C', cxEdit_max.Text)-1));
  MinTemp := StrToFloat(Copy(cxEdit_Min.Text, 1, Pos('°C', cxEdit_Min.Text)-1));
end;

//해당월의 데이터 목록
procedure TCCPTempCheckForm.dxDateTimeWheelPickerPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDQuerySetting(FDQuery_data) do
  begin
    sql.Add(' exec usp_CCPCheckTemp @option = :option, @TempDate=:TempDate ');
    ParamByName('option').AsString := 'B';
    ParamByName('TempDate').AsString := Formatdatetime('YYYY-MM', dxDateTimeWheelPicker.DateTime);
    open;
  end;
end;

//일자 변경 시
procedure TCCPTempCheckForm.cxBtn_searchClick(Sender: TObject);
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

  with DataModuleForm.FDQuerySetting(FDQuery_dataDetail) do
  begin
    sql.Add(' exec usp_CCPCheckTemp @option = :option, @TempDate=:TempDate, @FridgeCode = :FridgeCode ');
    ParamByName('option').AsString := 'H';
    ParamByName('TempDate').AsString := cxDEdit_date.Text;
    ParamByName('FridgeCode').AsString := FridgeCode;
    open;

    cxEdit_Writer.Text         := FieldByName('Writer').AsString;
    cxEdit_Reviewer.Text       := FieldByName('Reviewer').AsString;
    cxEdit_Confirmer.Text      := FieldByName('Confirmer').AsString;
  end;

  // 결재 버튼 활성화
  SetApprobalButtons;

  cxGridTv_temp.OptionsData.Editing := (cxEdit_Reviewer.Text = '') and (cxEdit_Confirmer.Text = '');

  //시간 및 온도 세팅
  SearchDateTempList;

  //한계기준 이탈 사유 및 조치내역 조회
  GetReasonActionContentsList;
end;

//시간 및 온도 세팅
procedure TCCPTempCheckForm.SearchDateTempList;
  var ChkCnt : integer;
begin
  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' EXEC usp_CCPCheckTemp @OPTION = :option           ');
    sql.Add(' ,@t_datetime = :t_datetime, @FridgeNo = :FridgeNo ');
    ParamByName('option').AsString     := 'L';
    ParamByName('t_datetime').AsString := cxDEdit_date.Text;
    ParamByName('FridgeNo').AsInteger  := cxLkCBBox_Facility.EditValue;
    open;

    cxGridTv_temp.DataController.RecordCount := 0;
    cxGridTv_temp.DataController.RecordCount := FDQuery_comm.RecordCount;
    cxGridTv_temp.DataController.BeginUpdate;
    for loopcnt := 0 to FDQuery_comm.RecordCount -1 do
    begin
      cxGridTv_temp.DataController.SetValue(loopcnt, cxGridTv_temp_time.Index,   FieldByName('TempTime').AsString);
      cxGridTv_temp.DataController.SetValue(loopcnt, cxGridTv_temp_temp.Index,   FieldByName('Temp').AsString);
//      cxGridTv_temp.DataController.SetValue(loopcnt, cxGridTv_temp_basic.Index,     '');
      cxGridTv_temp.DataController.SetValue(loopcnt, cxGridTv_temp_contents.Index,  '');
      cxGridTv_temp.DataController.SetValue(loopcnt, cxGridTv_temp_CheckDate.Index, FieldByName('CheckDate').AsString);

      Next;
    end;
    cxGridTv_temp.DataController.EndUpdate;
  end;

  //제상 체크
  {
  for loopcnt := 0 to FDQuery_comm.RecordCount -1 do
  begin
    if VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_temp.Index]) <> '' then
    begin
      if (StrToFloat(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_temp.Index]) < MinTemp)
         or (StrToFloat(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_temp.Index]) > MaxTemp) then
      begin
        with DataModuleForm.FDQuerySetting(FDQuery_check) do
        begin
          sql.Add(' SELECT TOP 5 DEF FROM TempCheck ');
          sql.Add(' WHERE CheckDate < :CheckDate    ');
          sql.Add(' AND   FridgeNo = :FridgeNo      ');
          sql.Add(' ORDER BY CheckDate DESC         ');
          ParamByName('CheckDate').AsDateTime := cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_CheckDate.Index];
          ParamByName('FridgeNo').AsInteger  := cxLkCBBox_Facility.EditValue;
          showmessage(sql.text);
          open;

          for ChkCnt := 0 to FDQuery_check.RecordCount -1 do
          begin
            if FieldByName('DEF').AsBoolean = True then
            begin
              cxGridTv_temp.DataController.SetValue(loopcnt, cxGridTv_temp_basic.Index, '제상으로 인한 온도 상승');

              Break;
            end;

            Next;
          end;
        end;
      end;
    end;
  end;
  }

  with DataModuleForm.FDQuerySetting(FDQuery_TC) do
  begin
    sql.Add(' EXEC usp_CCPCheckTemp @OPTION = :option           ');
    sql.Add(' ,@t_datetime = :t_datetime, @FridgeNo = :FridgeNo ');
    ParamByName('option').AsString     := 'C';
    ParamByName('t_datetime').AsString := cxDEdit_date.Text;
    ParamByName('FridgeNo').AsInteger  := cxLkCBBox_Facility.EditValue;
    open;
  end;

  with DataModuleForm.FDQuerySetting(FDQuery_All) do
  begin
    sql.Add(' EXEC usp_CCPCheckTemp @OPTION = :option           ');
    sql.Add(' ,@t_datetime = :t_datetime, @FridgeNo = :FridgeNo ');
    ParamByName('option').AsString     := 'F';
    ParamByName('t_datetime').AsString := cxDEdit_date.Text;
    ParamByName('FridgeNo').AsInteger  := cxLkCBBox_Facility.EditValue;
    open;
  end;
end;

//한계기준 이탈 사유 및 조치내역 조회
procedure TCCPTempCheckForm.GetReasonActionContentsList;
  var Find_Index : Integer;
begin

  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' EXEC usp_CCPCheckTemp @OPTION = :option           ');
    sql.Add(' ,@TempDate = :TempDate, @FridgeCode = :FridgeCode ');
    ParamByName('option').AsString      := 'A';
    ParamByName('@TempDate').AsString   := cxDEdit_date.Text;
    ParamByName('@FridgeCode').AsString := FridgeCode;
    open;

    cxGridTv_temp.DataController.BeginUpdate;
    for loopcnt := 0 to FDQuery_comm.RecordCount -1 do
    begin
      Find_Index :=
      cxGridTv_temp.DataController.FindRecordIndexByText(0, cxGridTv_temp_time.Index, FieldByName('TempTime').AsString, False, False, True);

      if Find_Index <> -1 then
      begin
        cxGridTv_temp.DataController.SetValue(Find_Index, cxGridTv_temp_basic.Index, FieldByName('BasicReason').AsString);
        cxGridTv_temp.DataController.SetValue(Find_Index, cxGridTv_temp_contents.Index, FieldByName('ActionContents').AsString);
//        if VarToStr(FieldByName('ModifiedTemp').Value) <> '' then
//        begin
//          cxGridTv_temp.DataController.SetValue(Find_Index,   cxGridTv_temp_ModifiedTemp.Index, FieldByName('ModifiedTemp'  ).AsFloat);
//          cxGridTv_temp.DataController.SetValue(Find_Index, cxGridTv_temp_ModifiedReason.Index, FieldByName('ModifiedReason').AsString);
//        end;
      end;

      Next;
    end;
    cxGridTv_temp.DataController.EndUpdate;
  end;
end;

//입력
procedure TCCPTempCheckForm.cxBtnProdOKClick(Sender: TObject);
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

  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' exec usp_CCPCheckTemp @option = :option  ');
    sql.Add(' ,@TempDate = :TempDate, @FridgeCode = :FridgeCode,@Reviewer = :Reviewer, @Confirmer = :Confirmer ');
    ParamByName('option').AsString     := 'G';
    ParamByName('TempDate').AsString   := cxDEdit_date.Text;
    ParamByName('FridgeCode').AsString := FridgeCode;
    ParamByName('Reviewer').AsString   := cxEdit_Reviewer.Text;
    ParamByName('Confirmer').AsString  := cxEdit_Confirmer.Text;
    ExecSQL;
  end;


  // 결재 버튼 활성화
  SetApprobalButtons;

//  cxBtnQAOK.Enabled     := cxEdit_Writer.Text = '';
//  cxBtnProdOK.Enabled   := (cxEdit_Reviewer.Text = '') and not(cxEdit_Writer.Text = '');
//  cxBtnHaccpOK.Enabled  := (cxEdit_Confirmer.Text = '') and not(cxEdit_Writer.Text = '');
  // 결재 이후에는 저장 못하게
//  cxBtnSave.Enabled   := (cxEdit_Reviewer.Text = '') and (cxEdit_Confirmer.Text = '');
//  cxBtnDelete.Enabled := (cxEdit_Reviewer.Text = '') and (cxEdit_Confirmer.Text = '');
//  cxBtn_New.Enabled    := (cxEditProdOK.Text = '') and (cxEditHaccpOK.Text = '');
  cxGridTv_temp.OptionsData.Editing := (cxEdit_Reviewer.Text = '') and (cxEdit_Confirmer.Text = '');
  ShowMessage('확인하였습니다.');
//  cxBtn_Confirmer.Visible  := False;


  FDQuery_data.Refresh;
  dxDateTimeWheelPickerPropertiesEditValueChanged(Self);
end;

procedure TCCPTempCheckForm.cxBtnQAOKClick(Sender: TObject);
begin
  inherited;
  cxEdit_Writer.Text := LoginUserName;

  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' exec usp_CCPCheckTemp @option = :option  ');
    sql.Add(' ,@TempDate = :TempDate, @FridgeCode = :FridgeCode, @Confirmer = :Confirmer ');
    ParamByName('option').AsString     := 'Z';
    ParamByName('TempDate').AsString   := cxDEdit_date.Text;
    ParamByName('FridgeCode').AsString := FridgeCode;
    ParamByName('Confirmer').AsString  := LoginUserName;
    ExecSQL;
  end;


  // 결재 버튼 활성화
  SetApprobalButtons;

//  cxBtnQAOK.Enabled     := cxEdit_Writer.Text = '';
//  cxBtnProdOK.Enabled   := (cxEdit_Reviewer.Text = '') and not(cxEdit_Writer.Text = '');
//  cxBtnHaccpOK.Enabled  := (cxEdit_Confirmer.Text = '') and not(cxEdit_Writer.Text = '');
  // 결재 이후에는 저장 못하게
//  cxBtnSave.Enabled   := (cxEdit_Reviewer.Text = '') and (cxEdit_Confirmer.Text = '');
//  cxBtnDelete.Enabled := (cxEdit_Reviewer.Text = '') and (cxEdit_Confirmer.Text = '');
//  cxBtn_New.Enabled    := (cxEditProdOK.Text = '') and (cxEditHaccpOK.Text = '');
  cxGridTv_temp.OptionsData.Editing := (cxEdit_Reviewer.Text = '') and (cxEdit_Confirmer.Text = '');


//  ShowMessage('확인하였습니다.');
//  cxBtn_Confirmer.Visible  := False;
  FDQuery_data.Refresh;
end;


procedure TCCPTempCheckForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  EssentialItem(cxLkCBBox_Facility, '설비');
  EssentialItem(cxDEdit_date      , '점검일자');

  // 체크
  for loopcnt := 0 to cxGridTv_temp.DataController.RecordCount -1 do
  begin
    //이탈 사유나 조치내역이 있고 수정온도를 입력 후 수정 사유를 입력 하지 않았을 때
    if (VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_basic.Index]   ) <> '') or
       (VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_contents.Index]) <> '') then
    begin
      if VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_modifiedTemp.Index]) <> '' then
      begin
        if VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_ModifiedReason.Index]) = '' then
        begin
          ShowMessage('온도사유를 작성하사지 않은 곳이 있습니다.');
          exit;
        end;
      end;
    end
    //이탈 사유나 조치내역이 없는데 수정 온도를 입력 하는 경우
    else if (VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_basic.Index]) = '')
      or (VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_contents.Index]) = '') then
    begin
      if VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_modifiedTemp.Index]) <> '' then
      begin
        ShowMessage('이탈사유 및 조치내역을 입력하세요.');
        exit;
      end;
    end;
  end;

  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' exec usp_CCPCheckTemp @option = :option  ');
    sql.Add(' ,@TempDate = :TempDate, @FridgeCode = :FridgeCode ');
    ParamByName('option').AsString      := 'Z';
    ParamByName('@TempDate').AsString   := cxDEdit_date.Text;
    ParamByName('@FridgeCode').AsString := FridgeCode;
    ExecSQL;
  end;

  for loopcnt := 0 to cxGridTv_temp.DataController.RecordCount -1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_CCPCheckTemp', 'I') do
    begin
      if (VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_basic.Index]    ) <> '') or
         (VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_contents.Index] ) <> '') or
         (VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_DataCheck.Index]) <> '') then
      begin
//        DataModuleForm.SetFDSpTemp('usp_CCPCheckTemp');
//        ParamByName('@Option'         ).AsString := 'I';
        ParamByName('@TempDate'       ).AsString := cxDEdit_date.Text;
        ParamByName('@FridgeCode'     ).AsString := FridgeCode;
        ParamByName('@TempTime'       ).AsString := cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_time.Index];
        ParamByName('@BasicReason'    ).AsString := VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_basic.Index]);
        ParamByName('@ActionContents' ).AsString := VarToStr(cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_contents.Index]);
        ParamByName('@Confirmer'      ).AsString := '';
        ParamByName('@ModifiedTemp'   ).Value    := cxGridTv_temp.DataController.Values[loopcnt, cxGridTv_temp_ModifiedTemp.Index];
        ParamByName('@ModifiedReason' ).AsString := VarToStr(cxGridTv_temp.DataController.Values[loopcnt,cxGridTv_temp_ModifiedReason.Index]);
        ExecProc;
      end;
    end;
    cxGridTv_temp.DataController.SetValue(loopcnt, cxGridTv_temp_DataCheck.Index, '');
  end;

  ShowMessage(MessageToSave);
  FDQuery_data.Refresh;
end;

//확인
procedure TCCPTempCheckForm.cxBtn_ConfirmerClick(Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    close;
    sql.Clear;
    sql.Add(' exec usp_CCPCheckTemp @option = :option  ');
    sql.Add(' ,@TempDate = :TempDate, @FridgeCode = :FridgeCode, @Confirmer = :Confirmer ');
    ParamByName('option').AsString     := 'Z';
    ParamByName('TempDate').AsString   := cxDEdit_date.Text;
    ParamByName('FridgeCode').AsString := FridgeCode;
    ParamByName('Confirmer').AsString  := LoginUserName;
    ExecSQL;
  end;

  ShowMessage('확인하였습니다.');
//  cxBtn_Confirmer.Visible  := False;
  FDQuery_data.Refresh;
end;

procedure TCCPTempCheckForm.cxGridDBTv_dataCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with FDQuery_data do
  begin
    cxLkCBBox_Facility.Text := FieldByName('Division').AsString;
    cxDEdit_date.Text       := FieldByName('CheckDate').AsString;
    cxEdit_Writer.Text         := FieldByName('Writer').AsString;
    cxEdit_Reviewer.Text       := FieldByName('Reviewer').AsString;
    cxEdit_Confirmer.Text      := FieldByName('Confirmer').AsString;
  end;

  //버튼들 활성화 세팅
  SetApprobalButtons;

  cxBtn_searchClick(self);
end;

//한계 기준 온도 벗어나면 표시 하기
procedure TCCPTempCheckForm.cxGridTv_tempCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

  if VarToStr(AViewInfo.GridRecord.Values[cxGridTv_temp_temp.Index]) <> '' then
  begin
    if (StrToFloat(AViewInfo.GridRecord.Values[cxGridTv_temp_temp.Index]) > MaxTemp)
    or (StrToFloat(AViewInfo.GridRecord.Values[cxGridTv_temp_temp.Index]) < mintemp) then
    begin
      if AViewInfo.Item.Index IN [0, 1] then
      begin
        ACanvas.Brush.Color := $00D0D0FF;
      end;
    end;
  end;

  if AViewInfo.Selected then
  begin
    ACanvas.Brush.Color := clHighlight;
  end;
end;

procedure TCCPTempCheckForm.cxGridTv_tempEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
// 에디팅 허용
var
  DatePlusTime: string;
begin
  inherited;
  // 에디팅 허용으로 초기화
  AAllow := True;
  // 클릭한 레코드의 시간 값 저장
  DatePlusTime := cxDEdit_date.Text + ' ' +
                  VarToStr(Sender.DataController.Values[Sender.Controller.FocusedRecordIndex,
                  cxGridTv_temp_time.Index]);

  // 한계기준이탈사유, 조치내역, 수정온도, 온도수정사유 컬럼이 아닐 경우 에디팅 방지
  if not (AItem.Index in [2,3,4,5]) then
  begin
    AAllow := False;
  end;
  // 온도 값이 있다면 수행
  if Sender.DataController.Values[Sender.DataController.FocusedRecordIndex, cxGridTv_temp_temp.Index] <> '' then
  begin
    // 온도 값이 기준치 안이라면 에디팅 방지
    if (StrToFloat(Sender.DataController.Values[Sender.DataController.FocusedRecordIndex, cxGridTv_temp_temp.Index]) < MaxTemp) and
       (StrToFloat(Sender.DataController.Values[Sender.DataController.FocusedRecordIndex, cxGridTv_temp_temp.Index]) > mintemp) then
    begin
      AAllow := False;
    end;
  end
  // 클릭한 레코드의 시간값이 현재보다 이후일 경우 에디팅 방지
  else if StrToDateTime(DatePlusTime) > Now then
  begin
      AAllow := False;
  end;
end;

procedure TCCPTempCheckForm.cxGridTv_temp_EditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxGridTv_temp.Controller.EditingController.Edit.PostEditValue;
  cxGridTv_temp.DataController.SetValue(cxGridTv_temp.DataController.FocusedRecordIndex,
    cxGridTv_temp_DataCheck.Index, 'C');
end;

//버튼들 활성화 여부
procedure TCCPTempCheckForm.SetApprobalButtons;
begin
  //결재버튼 활성화
  if (cxEdit_Writer.Text = '') or (cxEdit_Reviewer.Text = '') or (cxEdit_Confirmer.Text = '') then
  begin
    cxBtnQAOK.Enabled    := True;
    cxBtnProdOK.Enabled  := True;
    cxBtnHaccpOK.Enabled := True;
  end
  else begin
    cxBtnQAOK.Enabled    := False;
    cxBtnProdOK.Enabled  := False;
    cxBtnHaccpOK.Enabled := False;
  end;

  // 결재 이후에는 저장 못하게
  if cxEdit_Writer.Text = '' then
  begin
    cxBtn_Save.Enabled   := True;
//    cxBtn_Delete.Enabled := True;
  end
  else begin
    cxBtn_Save.Enabled   := False;
//    cxBtn_Delete.Enabled := False;
  end;
end;

end.
