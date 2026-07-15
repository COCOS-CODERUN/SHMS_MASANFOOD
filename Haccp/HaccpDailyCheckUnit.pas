unit HaccpDailyCheckUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel,
  cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCurrencyEdit, Data.DB, MemDS, DBAccess, Uni,
  cxRadioGroup;

type
  THaccpDailyCheckForm = class(TForm)
    cxGrid_List: TcxGrid;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_CheckItem: TcxGridColumn;
    cxGridTv_List_CheckReport: TcxGridColumn;
    cxGridLv_List: TcxGridLevel;
    cxGBox_Top: TcxGroupBox;
    cxLabel20: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxGBox_bottom: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    cxMemo_content: TcxMemo;
    cxGridTv_List_division: TcxGridColumn;
    cxGridTv_List_CheckID: TcxGridColumn;
    UniQuery_comm: TUniQuery;
    cxGridTv_List_period: TcxGridColumn;
    cxRGroup_Type: TcxRadioGroup;
    cxLabel6: TcxLabel;
    cxGridTv_List_CheckNote: TcxGridColumn;
    cxMemo_remark: TcxMemo;
    procedure FormCreate(Sender: TObject);
    procedure cxGridTv_List_CheckReportHeaderClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxRGroup_TypePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure ClearProc;
    procedure SaveProc;
    procedure DeleteProc;
    procedure GridListSetting;
    procedure DataBindingToGrid;
  end;

var
  HaccpDailyCheckForm: THaccpDailyCheckForm;

  loopcnt : Integer;

implementation

uses DataModule, HaccpGeneralUnit;

{$R *.dfm}

procedure THaccpDailyCheckForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HaccpDailyCheckForm := nil;
  Action := CaFree
end;

procedure THaccpDailyCheckForm.FormCreate(Sender: TObject);
begin
  ClearProc;
end;

procedure THaccpDailyCheckForm.ClearProc;
begin
  cxDEdit_date.clear;
  cxMemo_content.clear;
  cxMemo_remark.clear;

  GridListSetting;
end;

procedure THaccpDailyCheckForm.SaveProc;
begin
  if cxDEdit_date.Text = '' then
  begin
    ShowMessage('점검일자를 입력 하세요.');
    exit;
  end;

  for loopcnt := 0 to cxGridTv_list.DataController.RecordCount -1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpDailyCheck', 'A') do
    begin
      ParamByName('@CheckID').Value       := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_CheckID.Index];
      ParamByName('@CheckType').Value     := cxRGroup_type.EditValue;
      ParamByName('@CheckDate').Value     := cxDEdit_date.Text;
      ParamByName('@CheckPeriod').Value   := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Period.Index];
      ParamByName('@CheckDivision').Value := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_division.Index];
      ParamByName('@CheckItem').Value     := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_CheckItem.Index];
      ParamByName('@CheckReport').Value   := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_CheckReport.Index];
      ParamByName('@CheckNote').Value     := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_CheckNote.Index];
      ParamByName('@Remark').Value        := cxMemo_remark.Text;
      ParamByName('@Remark2').Value       := cxMemo_content.Text;
      ParamByName('@Writer').Value        := LoginUserName;
      ParamByName('@Reviewer').Value      := '';
      ParamByName('@Confirmer').Value     := '';
      ParamByName('@Modifier').Value      := LoginUserName;
      try
        ExecProc;
      except
        SaveToError := True;
      end;

      if cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_CheckID.Index] = 0 then
      begin
        cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_CheckID.Index]
        := ParamByName('@CheckID').Value;
      end;
    end;
  end;

  if SaveToError then
  begin
    ShowMessage(MessageToError);
  end;
end;

procedure THaccpDailyCheckForm.DeleteProc;
begin
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpDailyCheck', 'B') do
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

procedure THaccpDailyCheckForm.GridListSetting;
begin
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    close;
    sql.Clear;
    sql.Add(' SELECT * FROM HaccpBasic     ');
    sql.Add(' WHERE MenuName = :MenuName   ');
    sql.Add(' AND   LevelType = :LevelType ');
    ParambyName('MenuName').AsString := HaccpSelected_MenuName;
    if cxRGroup_Type.ItemIndex  = 0	 then
    begin

      ParambyName('LevelType').AsString := '일일';;
    end
    else begin
      ParambyName('LevelType').AsString := '주간연간';;
    end;

    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.RecordCount := UniQuery_comm.RecordCount;
    cxGridTv_list.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Period.Index,      FieldByName('Level1').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Division.Index,    FieldByName('Level2').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckItem.Index,   FieldByName('Level3').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckReport.Index, '');
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckNote.Index,   '');
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckID.Index,     0);

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

procedure THaccpDailyCheckForm.cxGridTv_List_CheckReportHeaderClick(
  Sender: TObject);
begin

  cxGridTv_list.DataController.BeginUpdate;
  for loopcnt := 0 to cxGridTv_list.DataController.RecordCount -1 do
  begin
    cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckReport.Index, 'OK');
  end;
  cxGridTv_List.DataController.EndUpdate;
end;

procedure THaccpDailyCheckForm.DataBindingToGrid;
begin
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpDailyCheck', 'C') do
  begin
    ParamByName('@CheckDate').AsString := DataModule.HaccpSelected_Date;
    open;

    cxDEdit_date.Text   := FieldByName('CheckDate').AsString;
    cxMemo_remark.Text  := FieldByName('Remark').AsString;
    cxMemo_content.Text := FieldByName('Remark2').AsString;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.RecordCount := RecordCount;
    cxGridTv_list.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Period.Index,      FieldByName('CheckPeriod').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Division.Index,    FieldByName('CheckDivision').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckItem.Index,   FieldByName('CheckItem').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckReport.Index, FieldByName('CheckReport').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckNote.Index,   FieldByName('CheckNote').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckID.Index,     FieldByName('CheckID').AsInteger);

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

//점검 구분
procedure THaccpDailyCheckForm.cxRGroup_TypePropertiesChange(Sender: TObject);
begin
  GridListSetting;
end;


end.
