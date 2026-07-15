unit HaccpGoodsCheckUnit;

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
  cxDropDownEdit, cxCalendar, cxLabel, cxGroupBox, cxRadioGroup, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxGridCustomTableView, cxGridTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, cxMemo, cxButtonEdit,
  cxEditRepositoryItems, cxExtEditRepositoryItems;

type
  THaccpGoodsCheckForm = class(TForm)
    cxGrid_List: TcxGrid;
    cxGridTv_List: TcxGridTableView;
    cxGridLv_List: TcxGridLevel;
    cxGridTv_List_ID: TcxGridColumn;
    cxGridTv_List_Goods: TcxGridColumn;
    cxGridTv_List_Check1: TcxGridColumn;
    cxGridTv_List_Check2: TcxGridColumn;
    cxGridTv_List_Check3: TcxGridColumn;
    cxGridTv_List_Check4: TcxGridColumn;
    cxGridTv_ListColumn1: TcxGridColumn;
    cxGBox_Input: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxDEdit_mdate: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxEdit_Goods: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxRGroup_Check1: TcxRadioGroup;
    cxRGroup_Check2: TcxRadioGroup;
    cxRGroup_Check4: TcxRadioGroup;
    cxRGroup_Check3: TcxRadioGroup;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxCEdit_ID: TcxCurrencyEdit;
    cxLabel12: TcxLabel;
    cxMemo_Remarks: TcxMemo;
    cxGridTv_ListColumn2: TcxGridColumn;
    cxGridTv_List_reviewer: TcxGridColumn;
    cxGridTv_List_CheckDate: TcxGridColumn;
    cxGridTv_List_Remarks: TcxGridColumn;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1Label1: TcxEditRepositoryLabel;
    cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem;
    procedure cxGridTv_ListColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridTv_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridTv_ListColumn2GetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure cxEditRepository1ButtonItem1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
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
  HaccpGoodsCheckForm: THaccpGoodsCheckForm;

implementation

{$R *.dfm}

uses DataModule;

procedure THaccpGoodsCheckForm.ClearProc;
begin
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Input);
  cxCEdit_ID.Value := 0;
end;

procedure THaccpGoodsCheckForm.cxEditRepository1ButtonItem1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  t : TcxDataController;
begin
  t := cxGridTv_List.DataController;
  if strtoint(vartostr(t.Values[t.FocusedRecordIndex, cxGridTv_List_ID.Index])) = 0 then exit;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with datamoduleForm.FDQuerySetting(nil) do
    begin
      close;
      sql.clear;
      sql.add(' Delete from HaccpGoodsCheck ');
      sql.add('  where GoodsID = :GoodsID   ');
      ParamByName('GoodsID').value := strtoint(vartostr(t.Values[t.FocusedRecordIndex, cxGridTv_List_ID.Index]));
      Execute;
    end;

    DataBindingToGrid;
  end;
end;

procedure THaccpGoodsCheckForm.cxGridTv_ListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  t : TcxDataController;
begin
  t := cxGridTv_List.DataController;
  cxDEdit_mdate.Text := t.values[t.focusedrecordindex, cxGridTv_List_CheckDate.index];
  cxCEdit_ID.value := t.values[t.focusedrecordindex, cxGridTv_List_ID.index];
  cxEdit_Goods.text := t.values[t.focusedrecordindex, cxGridTv_List_Goods.index];
  if vartostr(t.values[t.focusedrecordindex, cxGridTv_List_Check1.index]) = 'O' then
  begin
    cxRGroup_Check1.editvalue := True;
  end
  else
  begin
    cxRGroup_Check1.editvalue := false;
  end;
  if vartostr(t.values[t.focusedrecordindex, cxGridTv_List_Check2.index]) = 'O' then
  begin
    cxRGroup_Check2.editvalue := True;
  end
  else
  begin
    cxRGroup_Check2.editvalue := false;
  end;
  if vartostr(t.values[t.focusedrecordindex, cxGridTv_List_Check3.index]) = 'O' then
  begin
    cxRGroup_Check3.editvalue := True;
  end
  else
  begin
    cxRGroup_Check3.editvalue := false;
  end;
  if vartostr(t.values[t.focusedrecordindex, cxGridTv_List_Check4.index]) = 'O' then
  begin
    cxRGroup_Check4.editvalue := True;
  end
  else
  begin
    cxRGroup_Check4.editvalue := false;
  end;


end;

procedure THaccpGoodsCheckForm.cxGridTv_ListColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  Atext := InttoStr(ARecord.Index + 1);
end;

procedure THaccpGoodsCheckForm.cxGridTv_ListColumn2GetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if vartostr(cxGridTv_List.DataController.Values[ARecord.Index,cxGridTv_List_reviewer.Index]) = '' then
  begin
    AProperties := cxEditRepository1ButtonItem1.Properties
  end
  else
  begin
    AProperties := cxEditRepository1Label1.Properties
  end;
end;

procedure THaccpGoodsCheckForm.DataBindingToGrid;
var
  t : tcxdatacontroller;
  appendIndex : integer;
begin
  t := cxGridTv_List.datacontroller;
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpGoodsCheck', 'C') do
  begin
    ParamByName('@CheckDate').Value  := DataModule.HaccpSelected_Date;
    open;

    t.beginupdate;
    t.recordcount := 0;
    for var I := 0 to recordcount -1 do
    begin
      appendIndex := t.AppendRecord;
      t.values[appendindex, cxGridTv_List_ID.index]       := FieldByName('GoodsID').value;
      t.values[appendindex, cxGridTv_List_Goods.index]    := vartostr(FieldByName('Goods').AsString);
      t.values[appendindex, cxGridTv_List_Check1.index]   := vartostr(FieldByName('Check1').AsString);
      t.values[appendindex, cxGridTv_List_Check2.index]   := vartostr(FieldByName('Check2').AsString);
      t.values[appendindex, cxGridTv_List_Check3.index]   := vartostr(FieldByName('Check3').AsString);
      t.values[appendindex, cxGridTv_List_Check4.index]   := vartostr(FieldByName('Check4').AsString);
      t.values[appendindex, cxGridTv_List_reviewer.index] := vartostr(FieldByName('Reviewer').AsString);
      t.values[appendindex, cxGridTv_List_Remarks.index]  := vartostr(FieldByName('Remarks').AsString);
      t.values[appendindex, cxGridTv_List_CheckDate.index]  := vartostr(FieldByName('CheckDate').AsString);
      next;
    end;
    t.endupdate;

    cxDEdit_mdate.text := vartostr(FieldByName('CheckDate').AsString);
  end;
end;

procedure THaccpGoodsCheckForm.DeleteProc;
var
  t : tcxdatacontroller;
  appendIndex : integer;
begin
  t := cxGridTv_List.datacontroller;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpGoodsCheck', 'B') do
    begin
      ParamByName('@CheckDate').AsString   := cxDEdit_mdate.text;
      ExecProc;
    end;

    DataBindingToGrid;
  end;
end;

procedure THaccpGoodsCheckForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HaccpGoodsCheckForm := nil;
  Action := CaFree;
end;

procedure THaccpGoodsCheckForm.GridListSetting;
begin

end;

procedure THaccpGoodsCheckForm.SaveProc;
begin
  if cxDEdit_mdate.Text = '' then
  begin
    showmessage('입고일을 입력 하세요.');
    cxDEdit_mdate.setfocus;
    exit;
  end;

  if cxEdit_Goods.Text = '' then
  begin
    showmessage('제품명을 입력 하세요.');
    cxEdit_Goods.setfocus;
    exit;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpGoodsCheck', 'A') do begin
    ParamByName('@GoodsID').AsInteger       := Round(cxCEdit_ID.Value);
    ParamByName('@CheckDate').AsString      := cxDEdit_mdate.Text;
    ParamByName('@Goods').AsString          := cxEdit_Goods.Text;
    ParamByName('@Check1').AsBoolean        := cxRGroup_Check1.EditValue;
    ParamByName('@Check2').AsBoolean        := cxRGroup_Check2.EditValue;
    ParamByName('@Check3').AsBoolean        := cxRGroup_Check3.EditValue;
    ParamByName('@Check4').AsBoolean        := cxRGroup_Check4.EditValue;
    ParamByName('@Writer').AsString         := LoginUserName;
    ParamByName('@Remarks').AsString        := cxMemo_Remarks.Text;
    ExecProc;
  end;

  DataBindingToGrid;
end;

end.
