unit HaccpYearEduPlanUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid;

type
  THaccpYearEduPlanForm = class(TForm)
    cxGBox_Top: TcxGroupBox;
    cxLabel20: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    cxCBBox_year: TcxComboBox;
    cxGridLv_List: TcxGridLevel;
    cxGrid_List: TcxGrid;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_division: TcxGridColumn;
    cxGridTv_List_target: TcxGridColumn;
    cxGridTv_List_edu: TcxGridColumn;
    cxGridTv_List_1: TcxGridColumn;
    cxGridTv_List_2: TcxGridColumn;
    cxGridTv_List_3: TcxGridColumn;
    cxGridTv_List_4: TcxGridColumn;
    cxGridTv_List_5: TcxGridColumn;
    cxGridTv_List_6: TcxGridColumn;
    cxGridTv_List_7: TcxGridColumn;
    cxGridTv_List_8: TcxGridColumn;
    cxGridTv_List_9: TcxGridColumn;
    cxGridTv_List_10: TcxGridColumn;
    cxGridTv_List_11: TcxGridColumn;
    cxGridTv_List_12: TcxGridColumn;
    cxGridTv_List_ID: TcxGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxCBBox_yearPropertiesEditValueChanged(Sender: TObject);
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
  HaccpYearEduPlanForm: THaccpYearEduPlanForm;

  loopcnt : Integer;

implementation

uses DataModule, HaccpGeneralUnit;

{$R *.dfm}

procedure THaccpYearEduPlanForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HaccpYearEduPlanForm := nil;
  Action := caFree;
end;

procedure THaccpYearEduPlanForm.FormCreate(Sender: TObject);
begin
  for loopcnt := 2019 to 2049 do
  begin
    cxCBBox_year.Properties.Items.Add(IntToStr(loopcnt+1));
  end;

  ClearProc;
  GridListSetting;
end;

procedure THaccpYearEduPlanForm.FormShow(Sender: TObject);
begin
  {$IFDEF DEBUG}
    cxGridTv_List_ID.Visible := True;
  {$ELSE}
    cxGridTv_List_ID.Visible := False;
  {$ENDIF}
end;

procedure THaccpYearEduPlanForm.ClearProc;
begin
  cxCBBox_year.Text := ''; //Copy(DateToStr(Date), 1, 4);
//  cxCBBox_yearPropertiesEditValueChanged(SELF);
end;

procedure THaccpYearEduPlanForm.SaveProc;
begin
  if cxCBbox_year.Text = '' then
  begin
    ShowMessage('해당년도를 입력하세요.');
    exit;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpYearEdu', 'A') do
  begin
    for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
    begin
      ParamByName('@EduYear').Value   := cxCBbox_year.Text;
      ParamByName('@ListID').Value    := loopcnt+1;
      ParamByName('@YDivision').Value := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_division.Index];
      ParamByName('@YTarget').Value   := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_target.Index];
      ParamByName('@YEdu').Value      := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_edu.Index];
      ParamByName('@M1').Value        := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_1.Index];
      ParamByName('@M2').Value        := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_2.Index];
      ParamByName('@M3').Value        := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_3.Index];
      ParamByName('@M4').Value        := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_4.Index];
      ParamByName('@M5').Value        := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_5.Index];
      ParamByName('@M6').Value        := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_6.Index];
      ParamByName('@M7').Value        := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_7.Index];
      ParamByName('@M8').Value        := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_8.Index];
      ParamByName('@M9').Value        := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_9.Index];
      ParamByName('@M10').Value       := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_10.Index];
      ParamByName('@M11').Value       := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_11.Index];
      ParamByName('@M12').Value       := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_12.Index];
      ParamByName('@Writer').Value    := LoginUserName;
      ParamByName('@Reviewer').Value  := '';
      ParamByName('@Confirmer').Value := '';
      try
        ExecProc;
      except
        SaveToError := True;
      end;
    end;
  end;
end;

procedure THaccpYearEduPlanForm.DeleteProc;
begin
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpYearEdu', 'B') do
    begin
      ParamByName('@EduYear').Value := cxCBbox_year.Text;
      try
        ExecProc;
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

procedure THaccpYearEduPlanForm.GridListSetting;
begin
  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' SELECT * FROM HaccpBasic   ');
    sql.Add(' WHERE MenuName = :MenuName ');
    ParambyName('MenuName').AsString := HaccpSelected_MenuName;
    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_list.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_List.DataController.AppendRecord;
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_division.Index,  FieldByName('Level1').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_target.Index,    FieldByName('Level2').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_edu.Index,       FieldByName('Level3').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_1.Index,  False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_2.Index,  False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_3.Index,  False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_4.Index,  False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_5.Index,  False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_6.Index,  False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_7.Index,  False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_8.Index,  False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_9.Index,  False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_10.Index, False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_11.Index, False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_12.Index, False);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ID.Index, 0);

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

procedure THaccpYearEduPlanForm.DataBindingToGrid;
begin
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpYearEdu', 'C') do
  begin
    ParamByName('@EduYear').AsString := cxCBbox_year.Text;
    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_list.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_List.DataController.AppendRecord;
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_division.Index,  FieldByName('YDivision').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_target.Index,    FieldByName('YTarget').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_edu.Index,       FieldByName('YEdu').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_1.Index,  FieldByName('M1').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_2.Index,  FieldByName('M2').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_3.Index,  FieldByName('M3').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_4.Index,  FieldByName('M4').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_5.Index,  FieldByName('M5').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_6.Index,  FieldByName('M6').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_7.Index,  FieldByName('M7').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_8.Index,  FieldByName('M8').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_9.Index,  FieldByName('M9').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_10.Index, FieldByName('M10').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_11.Index, FieldByName('M11').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_12.Index, FieldByName('M12').AsBoolean);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ID.Index, FieldByName('ListID').AsInteger);

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;

  if cxGridTv_List.DataController.RecordCount = 0 then
  begin
    GridListSetting;
  end;

end;

procedure THaccpYearEduPlanForm.cxCBBox_yearPropertiesEditValueChanged(
  Sender: TObject);
begin
  DataBindingToGrid;
end;


end.
