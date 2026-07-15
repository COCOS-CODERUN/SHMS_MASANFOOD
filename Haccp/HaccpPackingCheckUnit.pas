unit HaccpPackingCheckUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,        system.DateUtils,
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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit,
  cxGroupBox, cxRadioGroup, cxMaskEdit, cxCalendar, cxLabel, cxMemo,
  cxCurrencyEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, MemDS, DBAccess, Uni;

type
  THaccpPackingCheckForm = class(TForm)
    cxGBox_Input: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxDEdit_Date: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel10: TcxLabel;
    cxEdit_CusName: TcxTextEdit;
    cxLabel18: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxRGroup_Check2: TcxRadioGroup;
    cxRGroup_Check6: TcxRadioGroup;
    cxCEdit_Qty: TcxCurrencyEdit;
    cxEdit_Item: TcxTextEdit;
    cxRGroup_Check1: TcxRadioGroup;
    cxRGroup_Check3: TcxRadioGroup;
    cxRGroup_Check4: TcxRadioGroup;
    cxRGroup_Check5: TcxRadioGroup;
    cxMemo_Remarks: TcxMemo;
    cxGroupBox24: TcxGroupBox;
    cxDEdit_edate: TcxDateEdit;
    cxBtn_Search: TcxButton;
    cxLabel118: TcxLabel;
    cxDEdit_sdate: TcxDateEdit;
    UniSP_L: TUniStoredProc;
    DS_L: TDataSource;
    cxCEdit_ID: TcxCurrencyEdit;
    cxGrid_data: TcxGrid;
    cxGridDBBTv_data: TcxGridDBBandedTableView;
    cxGridDBBTv_data_date: TcxGridDBBandedColumn;
    cxGridDBBTv_data_item1: TcxGridDBBandedColumn;
    cxGridDBBTv_data_item2: TcxGridDBBandedColumn;
    cxGridDBBTv_data_mdate1: TcxGridDBBandedColumn;
    cxGridDBBTv_data_mdate2: TcxGridDBBandedColumn;
    cxGridDBBTv_data_display1: TcxGridDBBandedColumn;
    cxGridDBBTv_data_display2: TcxGridDBBandedColumn;
    cxGridDBBTv_data_pack1: TcxGridDBBandedColumn;
    cxGridDBBTv_data_pack2: TcxGridDBBandedColumn;
    cxGridDBBTv_data_color1: TcxGridDBBandedColumn;
    cxGridDBBTv_data_color2: TcxGridDBBandedColumn;
    cxGridDBBTv_data_temp1: TcxGridDBBandedColumn;
    cxGridDBBTv_data_temp2: TcxGridDBBandedColumn;
    cxGridDBBTv_data_result1: TcxGridDBBandedColumn;
    cxGridDBBTv_data_result2: TcxGridDBBandedColumn;
    cxGridDBBTv_data_remark1: TcxGridDBBandedColumn;
    cxGridDBBTv_data_writer: TcxGridDBBandedColumn;
    cxGridDBBTv_data_reviewer: TcxGridDBBandedColumn;
    cxGridDBBTv_data_confirmer: TcxGridDBBandedColumn;
    cxGridDBBTv_dataColumn1: TcxGridDBBandedColumn;
    cxGridDBBTv_dataColumn2: TcxGridDBBandedColumn;
    cxGridDBBTv_dataColumn3: TcxGridDBBandedColumn;
    cxGridLv_data: TcxGridLevel;
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBBTv_dataCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBBTv_dataColumn3GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearProc;
    procedure SaveProc;
    procedure DeleteProc;
    procedure GridListSetting;
    procedure DataBindingToGrid;
    procedure ApprovalUpdate(ApprovalKind: string);
  end;

var
  HaccpPackingCheckForm: THaccpPackingCheckForm;

implementation

{$R *.dfm}

uses DataModule, HaccpGeneralUnit, MainUnit;

{ THaccpPackingCheckForm }

procedure THaccpPackingCheckForm.ApprovalUpdate(ApprovalKind: string);
begin
  if Round(cxCEdit_ID.Value) = 0 then exit;

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    close;
    sql.Clear;
    sql.Add(' UPDATE HaccpPackingCheck SET     ');
    if ApprovalKind = 'R' then
    begin
      sql.Add('  Reviewer = :Reviewer      ');
      ParamByName('Reviewer').AsString  := LoginUserName;
    end
    else begin
      sql.Add('  Confirmer = :Confirmer    ');
      ParamByName('Confirmer').AsString := LoginUserName;
    end;
    sql.Add(' WHERE PackingID = :PackingID ');
    ParamByName('PackingID').AsInteger := Round(cxCEdit_ID.Value);

    try
      ExecSQL;
      GridListSetting;
    except
      SaveToError := True;
    end;
  end;
end;

procedure THaccpPackingCheckForm.ClearProc;
begin
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Input);
  cxCEdit_ID.Value := 0;
  cxBtn_SearchClick(self);
end;

procedure THaccpPackingCheckForm.cxBtn_SearchClick(Sender: TObject);
begin
  GridListSetting;
end;

procedure THaccpPackingCheckForm.cxGridDBBTv_dataCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  DataBindingToGrid;
end;

procedure THaccpPackingCheckForm.cxGridDBBTv_dataColumn3GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  Atext := IntToStr(ARecord.Index + 1);
end;

procedure THaccpPackingCheckForm.DataBindingToGrid;
begin

  with UniSP_L do
  begin
    cxCEdit_ID.Value    := strtointdef(vartostr(FieldByName('PackingID').value),0);
    cxDEdit_Date.text   := FieldByName('CheckDate').AsString;
    cxEdit_Item.Text    := FieldByName('CheckItem').AsString;
    cxEdit_CusName.Text := FieldByName('CheckCusName').AsString;
    cxCEdit_Qty.Value   := strtointdef(vartostr(FieldByName('CheckQty').value),0);
    cxMemo_Remarks.Text := FieldByName('Remarks').AsString;
    if vartostr(FieldByName('Check1').value) = 'X' then
    begin
      cxRGroup_Check1.itemindex := 1;
    end
    else if vartostr(FieldByName('Check1').value) = 'O' then
    begin
      cxRGroup_Check1.itemindex := 0;
    end;

    if vartostr(FieldByName('Check2').value) = 'X' then
    begin
      cxRGroup_Check2.itemindex := 1;
    end
    else if vartostr(FieldByName('Check2').value) = 'O' then
    begin
      cxRGroup_Check2.itemindex := 0;
    end;

    if vartostr(FieldByName('Check3').value) = 'X' then
    begin
      cxRGroup_Check3.itemindex := 1;
    end
    else if vartostr(FieldByName('Check3').value) = 'O' then
    begin
      cxRGroup_Check3.itemindex := 0;
    end;

    if vartostr(FieldByName('Check4').value) = 'X' then
    begin
      cxRGroup_Check4.itemindex := 1;
    end
    else if vartostr(FieldByName('Check4').value) = 'O' then
    begin
      cxRGroup_Check4.itemindex := 0;
    end;

    if vartostr(FieldByName('Check5').value) = 'X' then
    begin
      cxRGroup_Check5.itemindex := 1;
    end
    else if vartostr(FieldByName('Check5').value) = 'O' then
    begin
      cxRGroup_Check5.itemindex := 0;
    end;

    if vartostr(FieldByName('Check6').value) = 'X' then
    begin
      cxRGroup_Check6.itemindex := 1;
    end
    else if vartostr(FieldByName('Check6').value) = 'O' then
    begin
      cxRGroup_Check6.itemindex := 0;
    end;

  end;
end;

procedure THaccpPackingCheckForm.DeleteProc;
begin
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpPackingCheck', 'B') do
    begin
      ParamByName('@PackingID').AsInteger   := ROUND(cxCEdit_ID.Value);
      ExecProc;
    end;
  end;
end;

procedure THaccpPackingCheckForm.FormCreate(Sender: TObject);
begin
  {$IFDEF DEBUG}
    cxCEdit_ID.Visible := True;
  {$ELSE}
    cxCEdit_ID.Visible := False;
  {$ENDIF}

  cxDEdit_sdate.Date := StartOfTheMonth(date);
  cxDEdit_edate.Date := Date;

  cxGridDBBTv_data.OptionsView.Header := false;
end;

procedure THaccpPackingCheckForm.GridListSetting;
begin
  with DataModuleForm.FDSpSetting(UniSP_L, 'usp_HaccpPackingCheck', 'C') do
  begin
    ParamByName('@SDate').Value := cxDEdit_sdate.text;
    ParamByName('@EDate').value := cxDEdit_edate.Text;
    open;
  end;
end;

procedure THaccpPackingCheckForm.SaveProc;
begin
  if cxDEdit_Date.Text = '' then
  begin
    showmessage('입고일을 입력 하세요.');
    cxDEdit_Date.setfocus;
    exit;
  end;

  if cxEdit_Item.Text = '' then
  begin
    showmessage('제품명을 입력 하세요.');
    cxEdit_Item.setfocus;
    exit;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpPackingCheck', 'A') do begin
    ParamByName('@PackingID').AsInteger     := Round(cxCEdit_ID.Value);
    ParamByName('@CheckDate').AsString      := cxDEdit_Date.Text;
    ParamByName('@CheckItem').AsString      := cxEdit_Item.Text;
    ParamByName('@CheckQty').Value          := cxCEdit_Qty.Text;
    ParamByName('@CheckCusName').AsString   := cxEdit_CusName.Text;
    ParamByName('@Check1').AsBoolean        := cxRGroup_Check1.EditValue;
    ParamByName('@Check2').AsBoolean        := cxRGroup_Check2.EditValue;
    ParamByName('@Check3').AsBoolean        := cxRGroup_Check3.EditValue;
    ParamByName('@Check4').AsBoolean        := cxRGroup_Check4.EditValue;
    ParamByName('@Check5').AsBoolean        := cxRGroup_Check5.EditValue;
    ParamByName('@Check6').AsBoolean        := cxRGroup_Check6.EditValue;
    ParamByName('@Remarks').AsString        := cxMemo_Remarks.Text;
    ParamByName('@Writer').AsString         := LoginUserName;
    ExecProc;
  end;

  GridListSetting;
end;

end.
