unit HaccpMeasureUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxRadioGroup, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, Vcl.StdCtrls, cxLabel, cxGroupBox,
  cxCurrencyEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxEditRepositoryItems, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, MemDS, DBAccess, Uni;

type
  THaccpMeasureForm = class(TForm)
    cxGroupBox5: TcxGroupBox;
    Label1: TLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxEdit_ItemNo1: TcxTextEdit;
    cxEdit_range1: TcxTextEdit;
    cxEdit_Position1: TcxTextEdit;
    cxEdit_method1: TcxTextEdit;
    cxEdit_ItemNo2: TcxTextEdit;
    cxEdit_range2: TcxTextEdit;
    cxEdit_Position2: TcxTextEdit;
    cxEdit_method2: TcxTextEdit;
    cxEdit_ItemNo3: TcxTextEdit;
    cxEdit_range3: TcxTextEdit;
    cxEdit_Position3: TcxTextEdit;
    cxEdit_method3: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxGrid_Temp: TcxGrid;
    cxGridBTv_Temp: TcxGridBandedTableView;
    cxGridBTv_TempColumn1: TcxGridBandedColumn;
    cxGridBTv_TempColumn2: TcxGridBandedColumn;
    cxGridBTv_TempColumn3: TcxGridBandedColumn;
    cxGridBTv_TempColumn4: TcxGridBandedColumn;
    cxGridBTv_TempColumn5: TcxGridBandedColumn;
    cxGridBTv_TempColumn6: TcxGridBandedColumn;
    cxGridBTv_TempColumn7: TcxGridBandedColumn;
    cxGridBTv_TempColumn8: TcxGridBandedColumn;
    cxGridBtvTab092: TcxGridBandedTableView;
    cxGridBtvTab092name: TcxGridBandedColumn;
    cxGridBtvTab092TestNo: TcxGridBandedColumn;
    cxGridBtvTab092Result: TcxGridBandedColumn;
    cxGridBtvTab092Decision: TcxGridBandedColumn;
    cxGridBtvTab092name2: TcxGridBandedColumn;
    cxGridBtvTab092TestNo2: TcxGridBandedColumn;
    cxGridBtvTab092Result2: TcxGridBandedColumn;
    cxGridBtvTab092Decision2: TcxGridBandedColumn;
    cxGridBtvTab092Code: TcxGridBandedColumn;
    cxGridLv_Temp: TcxGridLevel;
    cxLabel11: TcxLabel;
    cxRGroup_Results1: TcxRadioGroup;
    cxRGroup_Results2: TcxRadioGroup;
    cxRGroup_Results3: TcxRadioGroup;
    cxCEdit_Scale2_1: TcxCurrencyEdit;
    cxCEdit_Scale2_2: TcxCurrencyEdit;
    cxCEdit_Scale2_3: TcxCurrencyEdit;
    cxCEdit_Correction1: TcxCurrencyEdit;
    cxCEdit_Correction2: TcxCurrencyEdit;
    cxCEdit_Correction3: TcxCurrencyEdit;
    cxCEdit_Scale1_1: TcxCurrencyEdit;
    cxCEdit_Scale1_2: TcxCurrencyEdit;
    cxCEdit_Scale1_3: TcxCurrencyEdit;
    cxGroupBox2: TcxGroupBox;
    cxDEdit_date: TcxDateEdit;
    cxLabel85: TcxLabel;
    cxEditRepository: TcxEditRepository;
    cxEditRepositoryCBBoxItemTab06: TcxEditRepositoryComboBoxItem;
    cxEditRepositoryRGroupOKNG: TcxEditRepositoryRadioGroupItem;
    cxEditRepositoryRGroupSimpleOKNG: TcxEditRepositoryRadioGroupItem;
    cxEditRepositoryRGroupGoodBad: TcxEditRepositoryRadioGroupItem;
    cxEditRepositoryTextItem: TcxEditRepositoryTextItem;
    cxEditRepositoryRGroupGoodLack: TcxEditRepositoryRadioGroupItem;
    cxEditRepositoryCurrencyItemDay: TcxEditRepositoryCurrencyItem;
    cxEditRepositoryRGroupGetNot: TcxEditRepositoryRadioGroupItem;
    cxEditRepositoryRGroupOKNG1Column: TcxEditRepositoryRadioGroupItem;
    cxEditRepositoryMemoItem: TcxEditRepositoryMemoItem;
    cxGridBTv_TempColumn9: TcxGridBandedColumn;
    cxLabel12: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    Label3: TLabel;
    cxLabel13: TcxLabel;
    Label2: TLabel;
    UniQuery_comm: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridBTv_TempBands4HeaderClick(Sender: TObject);
    procedure cxLabel8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGridBTv_TempColumn2PropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Calculates;

  public
    { Public declarations }
    procedure ClearProc;
    procedure SaveProc;
    procedure DeleteProc;
    procedure GridListSetting;
    procedure DataBindingToGrid;
  end;

var
  HaccpMeasureForm: THaccpMeasureForm;

implementation

{$R *.dfm}

uses DataModule, MainUnit, HaccpGeneralUnit;

procedure THaccpMeasureForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HaccpMeasureForm := nil;
  Action := caFree;
end;

procedure THaccpMeasureForm.FormCreate(Sender: TObject);
begin
  ClearProc;
end;

procedure THaccpMeasureForm.FormShow(Sender: TObject);
begin
  {$IFDEF DEBUG}
    cxGridBTv_temp.OptionsView.Header := True;
  {$ELSE}
    cxGridBTv_temp.OptionsView.Header := False;
  {$ENDIF}
end;

procedure THaccpMeasureForm.Calculates;
var
  value1, value2, value3, result1, result2 : double;
begin
  TcxCurrencyEdit(cxGridBTv_Temp.Controller.EditingController.Edit).PostEditValue;
  with cxGridBTv_Temp.DataController do
  begin
    BeginUpdate;

    value1 := StrToFloatDef(vartostr(values[FocusedRecordIndex, cxGridBTv_TempColumn2.Index]),0);
    value2 := StrToFloatDef(vartostr(values[FocusedRecordIndex, cxGridBTv_TempColumn3.Index]),0);

    result1 := value1 + value2;

    value3 := StrToFloatDef(vartostr(values[FocusedRecordIndex, cxGridBTv_TempColumn6.Index]),0);

    result2 := result1 - value3;

    values[FocusedRecordIndex, cxGridBTv_TempColumn4.Index] :=  result1;
    values[FocusedRecordIndex, cxGridBTv_TempColumn7.Index] :=  result2;

    EndUpdate;
  end;
end;

procedure THaccpMeasureForm.ClearProc;
begin
  // 저울 정보 초기화
  cxEdit_ItemNo1.Clear;
  cxEdit_ItemNo2.Clear;
  cxEdit_ItemNo3.Clear;
  cxEdit_range1.Clear;
  cxEdit_range2.Clear;
  cxEdit_range3.Clear;
  cxEdit_Position1.Clear;
  cxEdit_Position2.Clear;
  cxEdit_Position3.Clear;
  cxEdit_method1.Clear;
  cxEdit_method2.Clear;
  cxEdit_method3.Clear;
  cxCEdit_Scale1_1.Value;
  cxCEdit_Scale1_2.Value;
  cxCEdit_Scale1_3.Value;
  cxCEdit_Scale2_1.Value;
  cxCEdit_Scale2_2.Value;
  cxCEdit_Scale2_3.Value;
  cxCEdit_Correction1.Value;
  cxCEdit_Correction2.Value;
  cxCEdit_Correction3.Value;
  cxRGroup_Results1.ItemIndex := 1;
  cxRGroup_Results2.ItemIndex := 1;
  cxRGroup_Results3.ItemIndex := 1;

  GridListSetting;
end;

procedure THaccpMeasureForm.SaveProc;
var
  index : integer;
begin
  if cxDEdit_date.Text = '' then
  begin
    showmessage('점검일자를 입력하세요.');
    exit;
  end;

  //저울 정보 저장
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpMeasure', 'A') do
  begin
    ParambyName('@CheckDate').Value   := cxDEdit_date.text;
    ParambyName('@ItemNo1').Value     := cxEdit_ItemNo1.Text;
    ParambyName('@ItemNo2').Value     := cxEdit_ItemNo2.Text;
    ParambyName('@ItemNo3').Value     := cxEdit_ItemNo3.Text;
    ParambyName('@range1').Value      := cxEdit_range1.Text;
    ParambyName('@range2').Value      := cxEdit_range2.Text;
    ParambyName('@range3').Value      := cxEdit_range3.Text;
    ParambyName('@Position1').Value   := cxEdit_Position1.text;
    ParambyName('@Position2').Value   := cxEdit_Position2.text;
    ParambyName('@Position3').Value   := cxEdit_Position3.text;
    ParambyName('@method1').Value     := cxEdit_method1.text;
    ParambyName('@method2').Value     := cxEdit_method2.text;
    ParambyName('@method3').value     := cxEdit_method3.text;
    ParambyName('@Scale1_1').Value    := cxCEdit_Scale1_1.Value;
    ParambyName('@Scale1_2').Value    := cxCEdit_Scale1_2.Value;
    ParambyName('@Scale1_3').Value    := cxCEdit_Scale1_3.Value;
    ParambyName('@Scale2_1').Value    := cxCEdit_Scale2_1.Value;
    ParambyName('@Scale2_2').Value    := cxCEdit_Scale2_2.Value;
    ParambyName('@Scale2_3').Value    := cxCEdit_Scale2_3.Value;
    ParambyName('@Correction1').Value := cxCEdit_Correction1.Value;
    ParambyName('@Correction2').Value := cxCEdit_Correction2.Value;
    ParambyName('@Correction3').Value := cxCEdit_Correction3.Value;
    ParambyName('@Results1').Value    := cxRGroup_Results1.EditValue;
    ParambyName('@Results2').Value    := cxRGroup_Results1.EditValue;
    ParambyName('@Results3').Value    := cxRGroup_Results1.EditValue;
    try
      ExecProc;
    except
      SaveToError := True;
      exit;
    end;
  end;

  //온도계 정보 저장
  cxGridBTv_Temp.DataController.BeginUpdate;
  for Index := 0 to cxGridBTv_Temp.DataController.RecordCount - 1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpMeasure', 'E') do
    begin
      ParambyName('@CheckDate').Value := cxDEdit_date.text;
      ParambyName('@Name').Value      :=
        cxGridBTv_Temp.DataController.Values[Index, cxGridBTv_TempColumn1.Index];
      ParambyName('@value1_1').Value  :=
        cxGridBTv_Temp.DataController.Values[Index, cxGridBTv_TempColumn2.Index];
      ParambyName('@value1_2').Value  :=
        cxGridBTv_Temp.DataController.Values[Index, cxGridBTv_TempColumn3.Index];
      ParambyName('@value1_3').Value  :=
        cxGridBTv_Temp.DataController.Values[Index, cxGridBTv_TempColumn4.Index];
      ParambyName('@name2').Value     :=
        cxGridBTv_Temp.DataController.Values[Index, cxGridBTv_TempColumn5.Index];
      ParambyName('@value2_1').Value  :=
        cxGridBTv_Temp.DataController.Values[Index, cxGridBTv_TempColumn6.Index];
      ParambyName('@value2_2').Value  :=
        cxGridBTv_Temp.DataController.Values[Index, cxGridBTv_TempColumn7.Index];
      ParambyName('@Result').Value    :=
        cxGridBTv_Temp.DataController.Values[Index, cxGridBTv_TempColumn8.Index];
      ParambyName('@Writer').Value    := DataModule.LoginUserName;
      try
      ExecProc;
      except
        SaveToError := True;
      end;

      cxGridBTv_Temp.DataController.Values[Index, cxGridBTv_TempColumn9.Index]
        := ParamByName('@TempMeasureID').Value;
    end;
  end;
  cxGridBTv_Temp.DataController.EndUpdate;

end;

procedure THaccpMeasureForm.DeleteProc;
begin
  //저울 및 온도계 정보 삭제
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpMeasure', 'B') do
    begin
      ParamByName('@CheckDate').Value := cxDEdit_date.Text;
      try
        ExecProc;
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

procedure THaccpMeasureForm.GridListSetting;
var
  loopcnt : Integer;
begin
  // 온도계 그리드 셋팅
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    close;
    sql.Clear;
    sql.Add(' SELECT * FROM HaccpBasic   ');
    sql.Add(' WHERE MenuName = :MenuName ');
    ParambyName('MenuName').AsString := HaccpSelected_MenuName;
    open;

    cxGridBTv_Temp.DataController.RecordCount := 0;
    cxGridBTv_Temp.DataController.RecordCount := UniQuery_comm.RecordCount;
    cxGridBTv_Temp.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridBTv_Temp.DataController.SetValue(loopcnt, cxGridBTv_TempColumn1.Index, FieldByName('Level1').AsString);
      cxGridBTv_Temp.DataController.SetValue(loopcnt, cxGridBTv_TempColumn2.Index,      0);
      cxGridBTv_Temp.DataController.SetValue(loopcnt, cxGridBTv_TempColumn3.Index,      0);
      cxGridBTv_Temp.DataController.SetValue(loopcnt, cxGridBTv_TempColumn4.Index,      0);
      cxGridBTv_Temp.DataController.SetValue(loopcnt, cxGridBTv_TempColumn5.Index, FieldByName('Level2').AsString);
      cxGridBTv_Temp.DataController.SetValue(loopcnt, cxGridBTv_TempColumn6.Index,      0);
      cxGridBTv_Temp.DataController.SetValue(loopcnt, cxGridBTv_TempColumn7.Index,      0);
      cxGridBTv_Temp.DataController.SetValue(loopcnt, cxGridBTv_TempColumn9.Index,      0);
      Next;
    end;
    cxGridBTv_Temp.DataController.EndUpdate;
  end;
end;

procedure THaccpMeasureForm.cxGridBTv_TempBands4HeaderClick(Sender: TObject);
var
  loopcnt : integer;
begin
  with cxGridBTv_Temp.DataController do
  begin
    if MessageDlg('전체 적용을 하시겠습니까?'
      , mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      for loopcnt := 0 to RecordCount - 1 do
      begin
        Values[loopcnt, cxGridBTv_TempColumn8.Index] := 1;
      end;
    end;
  end;
end;

procedure THaccpMeasureForm.cxGridBTv_TempColumn2PropertiesEditValueChanged(
  Sender: TObject);
begin
  Calculates;
end;

procedure THaccpMeasureForm.cxLabel8Click(Sender: TObject);
begin

  if MessageDlg('전체 적용을 하시겠습니까?'
    , mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    cxRGroup_Results1.ItemIndex := 0;
    cxRGroup_Results2.ItemIndex := 0;
    cxRGroup_Results3.ItemIndex := 0;
  end;

end;

procedure THaccpMeasureForm.DataBindingToGrid;
var
  index : integer;
begin
  // 저울 정보 조회
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpMeasure', 'C') do
  begin
    ParamByName('@CheckDate').AsString := DataModule.HaccpSelected_Date;
    open;

    cxDEdit_date.text           := FieldByName('CheckDate').Value;
    cxEdit_ItemNo1.Text         := FieldByName('ItemNo1').Value;
    cxEdit_ItemNo2.Text         := FieldByName('ItemNo2').Value;
    cxEdit_ItemNo3.Text         := FieldByName('ItemNo3').Value;
    cxEdit_range1.Text          := FieldByName('range1').Value;
    cxEdit_range2.Text          := FieldByName('range2').Value;
    cxEdit_range3.Text          := FieldByName('range3').Value;
    cxEdit_Position1.text       := FieldByName('Position1').Value;
    cxEdit_Position2.text       := FieldByName('Position2').Value;
    cxEdit_Position3.text       := FieldByName('Position3').Value;
    cxEdit_method1.text         := FieldByName('method1').Value;
    cxEdit_method2.text         := FieldByName('method2').Value;
    cxEdit_method3.text         := FieldByName('method3').value;
    cxCEdit_Scale1_1.Value      := FieldByName('Scale1_1').Value;
    cxCEdit_Scale1_2.Value      := FieldByName('Scale1_2').Value;
    cxCEdit_Scale1_3.Value      := FieldByName('Scale1_3').Value;
    cxCEdit_Scale2_1.Value      := FieldByName('Scale2_1').Value;
    cxCEdit_Scale2_2.Value      := FieldByName('Scale2_2').Value;
    cxCEdit_Scale2_3.Value      := FieldByName('Scale2_3').Value;
    cxCEdit_Correction1.Value   := FieldByName('Correction1').Value;
    cxCEdit_Correction2.Value   := FieldByName('Correction2').Value;
    cxCEdit_Correction3.Value   := FieldByName('Correction3').Value;
    cxRGroup_Results1.EditValue := FieldByName('Results1').Value;
    cxRGroup_Results1.EditValue := FieldByName('Results2').Value;
    cxRGroup_Results1.EditValue := FieldByName('Results3').Value;
  end;

  // 온도계 정보 조회
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpMeasure', 'F') do
  begin
    ParamByName('@CheckDate').AsString := DataModule.HaccpSelected_Date;
    open;

    cxGridBTv_Temp.DataController.BeginUpdate;
    cxGridBTv_Temp.DataController.RecordCount := 0;
    for Index := 0 to RecordCount - 1 do
    begin
      cxGridBTv_Temp.DataController.AppendRecord;
      cxGridBTv_Temp.DataController.SetValue(Index, cxGridBTv_TempColumn1.Index,
        FieldByName('Name').value);
      cxGridBTv_Temp.DataController.SetValue(Index, cxGridBTv_TempColumn2.Index,
        FieldByName('value1_1').value);
      cxGridBTv_Temp.DataController.SetValue(Index, cxGridBTv_TempColumn3.Index,
        FieldByName('value1_2').value);
      cxGridBTv_Temp.DataController.SetValue(Index, cxGridBTv_TempColumn4.Index,
        FieldByName('value1_3').value);
      cxGridBTv_Temp.DataController.SetValue(Index, cxGridBTv_TempColumn5.Index,
        FieldByName('Name2').value);
      cxGridBTv_Temp.DataController.SetValue(Index, cxGridBTv_TempColumn6.Index,
        FieldByName('value2_1').value);
      cxGridBTv_Temp.DataController.SetValue(Index, cxGridBTv_TempColumn7.Index,
        FieldByName('value2_2').value);
      cxGridBTv_Temp.DataController.SetValue(Index, cxGridBTv_TempColumn8.Index,
        FieldByName('result').value);
      cxGridBTv_Temp.DataController.SetValue(Index, cxGridBTv_TempColumn9.Index,
        FieldByName('TempMeasureID').value);
      Next;
    end;
    cxGridBTv_Temp.DataController.EndUpdate;
  end;
end;

end.
