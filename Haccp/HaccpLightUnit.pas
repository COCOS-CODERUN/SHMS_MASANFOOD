unit HaccpLightUnit;

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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxClasses, cxGridCustomView, cxGrid, dxGDIPlusClasses, cxImage, Data.DB,
  MemDS, DBAccess, Uni;

type
  THaccpLightForm = class(TForm)
    cxGroupBox25: TcxGroupBox;
    cxGridLS: TcxGrid;
    cxGridTvLS: TcxGridTableView;
    cxGridTvLSDivision: TcxGridColumn;
    cxGridTvLSWorkplace: TcxGridColumn;
    cxGridTvLSTemp: TcxGridColumn;
    cxGridTvLSBasic: TcxGridColumn;
    cxGridTvLSCode: TcxGridColumn;
    cxGridLvLS: TcxGridLevel;
    cxGridLightCheck: TcxGrid;
    cxGridTvLightCheck: TcxGridTableView;
    cxGridTvLightCheckWorkPlace: TcxGridColumn;
    cxGridTvLightCheckStandard: TcxGridColumn;
    cxGridTvLightCheckValue: TcxGridColumn;
    cxGridTvLightCheckCode: TcxGridColumn;
    cxGridLvLightCheck: TcxGridLevel;
    cxImgLightingT02: TcxImage;
    cxGroupBox5: TcxGroupBox;
    cxLabel64: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxLabel85: TcxLabel;
    cxEdit_LastDate: TcxTextEdit;
    cxCBoxModifyT02: TcxCheckBox;
    cxBtnSaveStandardT02: TcxButton;
    UniQuery_comm: TUniQuery;
    cxBtn_Image: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxGridTvLightCheckSeqGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxCBoxModifyT02PropertiesChange(Sender: TObject);
    procedure cxBtnSaveStandardT02Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxBtn_ImageClick(Sender: TObject);
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
  HaccpLightForm: THaccpLightForm;

  loopcnt : Integer;

implementation

{$R *.dfm}

uses DataModule, HaccpGeneralUnit, MainUnit;

procedure THaccpLightForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  HaccpLightForm := nil;
  Action := CaFree;
end;

procedure THaccpLightForm.FormCreate(Sender: TObject);
begin
  ClearProc;

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' SELECT LightImage FROM HaccpLightingImage ');
    open;

    if RecordCount > 0 then
    begin
      cxImgLightingT02.EditValue := FieldByName('LightImage').Value;
    end;
  end;
end;

procedure THaccpLightForm.cxGridTvLightCheckSeqGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.Index +1);
end;

procedure THaccpLightForm.ClearProc;
begin
  cxDEdit_date.clear;
  cxEdit_LastDate.Clear;

  GridListSetting;
end;

procedure THaccpLightForm.GridListSetting;
begin
  //측정 기준 목록
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    close;
    sql.Clear;
    sql.Add(' SELECT * FROM HaccpLightingStandard ');
    sql.Add(' ORDER BY Division , LSID ASC        ');
    open;

    cxGridTvLS.DataController.RecordCount := 0;
    cxGridTvLS.DataController.BeginUpdate;
    for loopcnt := 0 to UniQuery_comm.RecordCount -1 do begin
      cxGridTvLS.DataController.RecordCount := cxGridTvLS.DataController.RecordCount +1;

      cxGridTvLS.DataController.SetValue(loopcnt, cxGridTvLSDivision.Index,   FieldByName('Division').AsString);
      cxGridTvLS.DataController.SetValue(loopcnt, cxGridTvLSWorkplace.Index,  FieldByName('WorkPlace').AsString);
      cxGridTvLS.DataController.SetValue(loopcnt, cxGridTvLSTemp.Index,       FieldByName('ManageTemp').AsString);
      cxGridTvLS.DataController.SetValue(loopcnt, cxGridTvLSBasic.Index,      FieldByName('LightingBasic').AsString);
      cxGridTvLS.DataController.SetValue(loopcnt, cxGridTvLSCode.Index,       FieldByName('LSID').AsString);

      Next;
    end;
    cxGridTvLS.DataController.EndUpdate;
  end;

  //측장값 목록 만들어 준다
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    close;
    sql.Clear;
    sql.Add(' SELECT Level1, Level2 ');
    sql.Add(' FROM HaccpBasic       ');
    sql.Add(' WHERE MenuName = ''조도관리대장'' ');
    open;

    cxGridTvLightCheck.DataController.RecordCount := 0;
    cxGridTvLightCheck.DataController.BeginUpdate;
    for loopcnt := 0 to UniQuery_comm.RecordCount -1 do begin
      cxGridTvLightCheck.DataController.RecordCount := cxGridTvLightCheck.DataController.RecordCount +1;

      cxGridTvLightCheck.DataController.SetValue(loopcnt, cxGridTvLightCheckWorkPlace.Index, FieldByName('Level1').AsString);
      cxGridTvLightCheck.DataController.SetValue(loopcnt, cxGridTvLightCheckStandard.Index,  FieldByName('Level2').AsString);
      cxGridTvLightCheck.DataController.SetValue(loopcnt, cxGridTvLightCheckValue.Index,     0);
      cxGridTvLightCheck.DataController.SetValue(loopcnt, cxGridTvLightCheckCode.Index,      0);

      Next;
    end;
    cxGridTvLightCheck.DataController.EndUpdate;
  end;

  //마지막 측정일 가져와 준다
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    close;
    sql.Clear;
    sql.Add(' select TOP 1 CheckDate  ');
    sql.Add(' from HaccpLightingValue ');
    sql.Add(' order by CheckDate DESC ');
    open;

    cxEdit_LastDate.Text := FieldByName('CheckDate').AsString;
  end;
end;

procedure THaccpLightForm.SaveProc;
begin
  if cxDEdit_date.Text = '' then
  begin
    showmessage('측정일 입력하세요.');
    exit;
  end;

  for loopcnt := 0 to cxGridTvLightCheck.DataController.RecordCount -1 do begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpLightingValue', 'A') do
    begin
      ParamByName('@LightID').AsInteger      := cxGridTvLightCheck.DataController.Values[loopcnt, cxGridTvLightCheckCode.Index];
      ParamByName('@CheckDate').AsString     := cxDEdit_date.Text;
      ParamByName('@WorkPlace').AsString     := cxGridTvLightCheck.DataController.Values[loopcnt, cxGridTvLightCheckWorkPlace.Index];
      ParamByName('@LightStandard').AsString := cxGridTvLightCheck.DataController.Values[loopcnt, cxGridTvLightCheckStandard.Index];
      ParamByName('@LightValue').AsInteger   := cxGridTvLightCheck.DataController.Values[loopcnt, cxGridTvLightCheckValue.Index];
      ParamByName('@Writer').Value           := LoginUserName;
      ParamByName('@Reviewer').Value         := '';
      ParamByName('@Confirmer').Value        := '';
      try
        ExecProc;
      except
        SaveToError := True;
      end;

      if cxGridTvLightCheck.DataController.Values[loopcnt, cxGridTvLightCheckCode.Index] = 0 then
      begin
        cxGridTvLightCheck.DataController.Values[loopcnt, cxGridTvLightCheckCode.Index]
        := ParamByName('@LightID').AsInteger;
      end;
    end;
  end;

  if SaveToError then
  begin
    ShowMessage(MessageToError);
  end;
end;

procedure THaccpLightForm.DeleteProc;
begin
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpLightingValue', 'B') do
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

procedure THaccpLightForm.DataBindingToGrid;
begin
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpLightingValue', 'C') do
  begin
    ParamByName('@CheckDate').Value := DataModule.HaccpSelected_Date;
    open;

    cxDEdit_date.Text := FieldByName('CheckDate').AsString;

    cxGridTvLightCheck.DataController.RecordCount := 0;
    cxGridTvLightCheck.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do begin
      cxGridTvLightCheck.DataController.RecordCount := cxGridTvLightCheck.DataController.RecordCount +1;

      cxGridTvLightCheck.DataController.SetValue(loopcnt, cxGridTvLightCheckWorkPlace.Index, FieldByName('WorkPlace').AsString);
      cxGridTvLightCheck.DataController.SetValue(loopcnt, cxGridTvLightCheckStandard.Index,  FieldByName('LightStandard').AsString);
      cxGridTvLightCheck.DataController.SetValue(loopcnt, cxGridTvLightCheckValue.Index,     FieldByName('LightValue').AsInteger);
      cxGridTvLightCheck.DataController.SetValue(loopcnt, cxGridTvLightCheckCode.Index,      FieldByName('LightID').AsInteger);

      Next;
    end;
    cxGridTvLightCheck.DataController.EndUpdate;
  end;
end;

procedure THaccpLightForm.cxCBoxModifyT02PropertiesChange(Sender: TObject);
begin
  cxGridTvLSDivision.Options.CellMerging  := not cxCBoxModifyT02.Checked;
  cxGridTvLSDivision.Options.Editing      := cxCBoxModifyT02.Checked;
  cxGridTvLSWorkplace.Options.Editing     := cxCBoxModifyT02.Checked;
  cxGridTvLSTemp.Options.Editing          := cxCBoxModifyT02.Checked;
  cxGridTvLSBasic.Options.CellMerging     := not cxCBoxModifyT02.Checked;
  cxGridTvLSBasic.Options.Editing         := cxCBoxModifyT02.Checked;
  cxBtnSaveStandardT02.Visible            := cxCBoxModifyT02.Checked;
  cxGridTvLS.OptionsSelection.CellSelect  := cxCBoxModifyT02.Checked;
end;

procedure THaccpLightForm.cxBtnSaveStandardT02Click(Sender: TObject);
begin
  for loopcnt := 0 to cxGridTvLS.DataController.RecordCount - 1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpLightingValue', 'D') do
    begin
      ParamByName('@Division'     ).AsString  := cxGridTvLS.DataController.Values[loopcnt, cxGridTvLSDivision.Index];
      ParamByName('@WorkPlace'    ).AsString  := cxGridTvLS.DataController.Values[loopcnt, cxGridTvLSWorkplace.Index];
      ParamByName('@ManageTemp'   ).AsString  := cxGridTvLS.DataController.Values[loopcnt, cxGridTvLSTemp.Index];
      ParamByName('@LightingBasic').AsString  := cxGridTvLS.DataController.Values[loopcnt, cxGridTvLSBasic.Index];
      ParamByName('@LSID'         ).AsInteger := cxGridTvLS.DataController.Values[loopcnt, cxGridTvLSCode.Index];
      ExecProc;
    end;
  end;
  cxCBoxModifyT02.Checked := False;
end;

//image save
procedure THaccpLightForm.cxBtn_ImageClick(Sender: TObject);
begin
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpLightingValue', 'E') do
  begin
    ParamByName('@LightImage').Value := cxImgLightingT02.EditValue;
    ExecProc;
  end;
end;

end.
