unit HaccpPlaceAndFacilityCheckUnit;

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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxGroupBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGrid, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  THaccpPlaceAndFacilityCheckForm = class(TForm)
    cxGBox_Top: TcxGroupBox;
    cxLabel20: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxGrid_List: TcxGrid;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_division: TcxGridColumn;
    cxGridTv_List_CheckItem: TcxGridColumn;
    cxGridTv_List_CheckReport: TcxGridColumn;
    cxGridTv_List_CheckID: TcxGridColumn;
    cxGridLv_List: TcxGridLevel;
    cxGBox_bottom: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxMemo_content: TcxMemo;
    cxGridTv_List_PlaceName: TcxGridColumn;
    UniQuery_comm: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure cxGridTv_List_CheckReportHeaderClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  HaccpPlaceAndFacilityCheckForm: THaccpPlaceAndFacilityCheckForm;

  loopcnt : Integer;

implementation

{$R *.dfm}

uses DataModule, HaccpGeneralUnit;

procedure THaccpPlaceAndFacilityCheckForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HaccpPlaceAndFacilityCheckForm := nil;
  Action := CaFree;
end;

procedure THaccpPlaceAndFacilityCheckForm.FormCreate(Sender: TObject);
begin
  ClearProc;
  GridListSetting;
end;

procedure THaccpPlaceAndFacilityCheckForm.FormShow(Sender: TObject);
begin
  {$IFDEF DEBUG}
    cxGridTv_List_CheckID.Visible := True;
  {$ELSE}
    cxGridTv_List_CheckID.Visible := False;
  {$ENDIF}
end;

procedure THaccpPlaceAndFacilityCheckForm.ClearProc;
begin
  cxDEdit_date.clear;
  cxMemo_content.clear;

  GridListSetting;
end;

procedure THaccpPlaceAndFacilityCheckForm.SaveProc;
begin
  if cxDEdit_date.Text = '' then
  begin
    ShowMessage('점검일자를 입력 하세요.');
    exit;
  end;

  for loopcnt := 0 to cxGridTv_list.DataController.RecordCount -1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpPlaceAndFacilityCheck', 'A') do
    begin
      ParamByName('@CheckID').Value       := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_CheckID.Index];
      ParamByName('@CheckDate').Value     := cxDEdit_date.Text;
      ParamByName('@PlaceName').Value     := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_PlaceName.Index];
      ParamByName('@CheckDivision').Value := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Division.Index];
      ParamByName('@CheckItem').Value     := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_CheckItem.Index];
      ParamByName('@CheckReport').Value   := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_CheckReport.Index];
      ParamByName('@Remark').Value        := cxMemo_content.Text;
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

procedure THaccpPlaceAndFacilityCheckForm.DeleteProc;
begin
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpPlaceAndFacilityCheck', 'B') do
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

procedure THaccpPlaceAndFacilityCheckForm.GridListSetting;
begin
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin

    sql.Add(' SELECT * FROM HaccpBasic   ');
    sql.Add(' WHERE MenuName = :MenuName ');
    ParambyName('MenuName').AsString := HaccpSelected_MenuName;
    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.RecordCount := UniQuery_comm.RecordCount;
    cxGridTv_list.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_PlaceName.Index,   FieldByName('Level1').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Division.Index,    FieldByName('Level2').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckItem.Index,   FieldByName('Level3').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckReport.Index, '');
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckID.Index,     0);

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

procedure THaccpPlaceAndFacilityCheckForm.cxGridTv_List_CheckReportHeaderClick(
  Sender: TObject);
begin
  cxGridTv_list.DataController.BeginUpdate;
  for loopcnt := 0 to cxGridTv_list.DataController.RecordCount -1 do
  begin
    cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckReport.Index, '○');
  end;
  cxGridTv_List.DataController.EndUpdate;
end;

procedure THaccpPlaceAndFacilityCheckForm.DataBindingToGrid;
begin
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpPlaceAndFacilityCheck', 'C') do
  begin
    ParamByName('@CheckDate').AsString := DataModule.HaccpSelected_Date;
    open;

    cxDEdit_date.Text := FieldByName('CheckDate').AsString;
    cxMemo_content.Text := FieldByName('Remark').AsString;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.RecordCount := RecordCount;
    cxGridTv_list.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_PlaceName.Index,   FieldByName('Placename').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Division.Index,    FieldByName('CheckDivision').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckItem.Index,   FieldByName('CheckItem').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckReport.Index, FieldByName('CheckReport').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckID.Index,     FieldByName('CheckID').AsInteger);

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

end.
