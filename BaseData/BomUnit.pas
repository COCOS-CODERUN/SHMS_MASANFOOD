unit BomUnit;

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
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, MemDS, DBAccess, Uni, cxSplitter, cxCurrencyEdit;

type
  TBOMForm = class(TBaseChildForm)
    cxGBox_List: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridLv_List: TcxGridLevel;
    cxGridDBTv_List_NAME: TcxGridDBColumn;
    cxGridDBTv_List_STD: TcxGridDBColumn;
    cxGridDBTv_List_YN: TcxGridDBColumn;
    cxGridDBTv_List_ID: TcxGridDBColumn;
    cxGBox_search: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxLCBBox_type: TcxLookupComboBox;
    UniQuery_type: TUniQuery;
    DS_Type: TDataSource;
    DS_L: TDataSource;
    UniQuery_List: TUniQuery;
    cxSplitter1: TcxSplitter;
    cxGBox_Info: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxEdit_name: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxEdit_std: TcxTextEdit;
    cxEdit_ID: TcxTextEdit;
    cxGridLv_Bom: TcxGridLevel;
    cxGrid_Bom: TcxGrid;
    cxGridTv_Bom: TcxGridTableView;
    cxGridTv_Bom_name: TcxGridColumn;
    cxGridTv_Bom_std: TcxGridColumn;
    cxGridTv_Bom_unit: TcxGridColumn;
    cxGridTv_Bom_qty: TcxGridColumn;
    cxGridTv_Bom_uprice: TcxGridColumn;
    cxGridTv_Bom_amount: TcxGridColumn;
    cxGridTv_Bom_remark: TcxGridColumn;
    cxGridTv_Bom_ID: TcxGridColumn;
    cxGridDBTv_List_type: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    cxGridDBTv_List_Unit: TcxGridDBColumn;
    cxGridDBTv_List_UPrice: TcxGridDBColumn;
    cxLabel4: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxLCBBox_typePropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_RegisterClick(Sender: TObject);
    procedure cxGridDBTv_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridTv_Bom_qtyPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridTv_BomCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ItemDataList;
  end;

var
  BOMForm: TBOMForm;

  loopcnt : Integer;

implementation

{$R *.dfm}

uses DataModule, MainUnit;

//FORM CREATE
procedure TBOMForm.FormCreate(Sender: TObject);
begin
  inherited;

  cxBtn_NewClick(self);

  ItemDataList;
end;

//ITEM TYPE CHANGE
procedure TBOMForm.cxLCBBox_typePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  ItemDataList;
end;

//ITEM LIST
procedure TBOMForm.ItemDataList;
begin
  DataModuleForm.SearchCode('품목 구분' ,UniQuery_Type);

  with DataModuleForm.FDQuerySetting(UniQuery_List) do
  begin
    SQL.Add(' SELECT *, dbo.GetBCDName(ItemType) As TypeName ');
    SQL.Add(' ,(CASE WHEN (SELECT COUNT(*) FROM MasterBOM WHERE ItemID = MasterItem.ItemID) = 0 THEN ''N'' ELSE ''Y'' END) AS BomYn ');
    SQL.Add(' FROM MasterItem ');
    if cxLCBBox_type.Text <> '' then
    begin
      sql.Add(' WHERE ItemType = :ItemType ');
      ParamByName('ItemType').AsString := cxLCBBox_type.EditValue;
    end;

    open;
  end;
end;

//NEW
procedure TBOMForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Info);
  cxGridTv_Bom.DataController.RecordCount := 0;
end;

//save
procedure TBOMForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDSpSetting(nil, 'usp_Item', 'E') do
  begin
    for loopcnt := 0 to cxGridTv_Bom.DataController.RecordCount -1 do
    begin
      ParamByName('@ItemID').Value   := cxEdit_ID.Text;
      ParamByName('@BItemID').Value  := cxGridTv_Bom.DataController.Values[loopcnt, cxGridTv_Bom_ID.Index];
      ParamByName('@BQty').Value     := cxGridTv_Bom.DataController.Values[loopcnt, cxGridTv_Bom_qty.Index];
      ParamByName('@BUprice').Value  := cxGridTv_Bom.DataController.Values[loopcnt, cxGridTv_Bom_UPrice.Index];
      ParamByName('@BAmount').Value  := cxGridTv_Bom.DataController.Values[loopcnt, cxGridTv_Bom_Amount.Index];
      ParamByName('@BRemarks').Value := cxGridTv_Bom.DataController.Values[loopcnt, cxGridTv_Bom_Remark.Index];
      try
        ExecProc;
      except
        SaveToError := True;
        Break;
      end;
    end;
  end;

  if SaveToError then
  begin
    ShowMessage(MessageToError);
  end
  else begin
    UniQuery_List.Refresh;
    ShowMessage(MessageToSave);
  end;
end;

//delete one
procedure TBOMForm.cxGridTv_BomCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if cxEdit_ID.Text = '' then
  begin
    Exit;
  end;

  if MessageDlg(DataModule.MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDQuerySetting(nil) do
    begin
      sql.Add(' DELETE FROM MasterBOM  ');
      sql.Add(' WHERE ItemID = :ItemID ');
      sql.Add(' AND BItemID = :BItemID ');
      ParamByName('ItemID').AsString  := cxEdit_ID.Text;
      ParamByName('BItemID').AsString :=
      cxGridTv_BOM.DataController.Values[cxGridTv_BOM.DataController.FocusedRecordIndex, cxGridTv_BOM_ID.Index];
      try
        ExecSQL;
        cxGridTv_BOM.DataController.DeleteRecord(cxGridTv_BOM.DataController.FocusedRecordIndex);
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

//delete
procedure TBOMForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  if cxEdit_ID.Text = '' then
  begin
    Exit;
  end;

  if MessageDlg(DataModule.MessageToDeleteAll, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDQuerySetting(nil) do
    begin
      sql.Add(' DELETE FROM MasterBOM  ');
      sql.Add(' WHERE ItemID = :ItemID ');
      ParamByName('ItemID').AsString := cxEdit_ID.Text;
      try
        ExecSQL;
        UniQuery_List.Refresh;
        cxBtn_NewClick(self);
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

//Item List Double Click
procedure TBOMForm.cxGridDBTv_ListCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  if UniQuery_List.FieldByName('TypeName').AsString <> '제품' then
  begin
    exit;
  end;

  with UniQuery_List do
  begin
    cxEdit_ID.Text    := FieldByName('ItemID').AsString;
    cxEdit_Name.Text  := FieldByName('ItemName').AsString;
    cxEdit_std.Text   := FieldByName('ItemStd').AsString;
  end;

  //grid clear first
  cxGridTV_BOM.DataController.RecordCount := 0;

  if UniQuery_List.FieldByName('BomYn').AsString = 'Y' then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_Item', 'F') do
    begin
      ParamByName('@ItemID').AsString := cxEdit_ID.Text;
      open;

      cxGridTV_BOM.DataController.BeginUpdate;
      for loopcnt := 0 to RecordCount -1 do
      begin
        cxGridTV_BOM.DataController.AppendRecord;
        cxGridTV_BOM.DataController.SetValue(loopcnt, cxGridTv_Bom_name.Index,    FieldByName('ItemName').AsString);
        cxGridTV_BOM.DataController.SetValue(loopcnt, cxGridTv_Bom_std.Index,     FieldByName('ItemStd').AsString);
        cxGridTV_BOM.DataController.SetValue(loopcnt, cxGridTv_Bom_unit.Index,    FieldByName('ItemUnit').AsString);
        cxGridTV_BOM.DataController.SetValue(loopcnt, cxGridTv_Bom_qty.Index,     FieldByName('BQty').AsCurrency);
        cxGridTV_BOM.DataController.SetValue(loopcnt, cxGridTv_Bom_uprice.Index,  FieldByName('BUPrice').AsCurrency);
        cxGridTV_BOM.DataController.SetValue(loopcnt, cxGridTv_Bom_amount.Index,  FieldByName('BAmount').AsCurrency);
        cxGridTV_BOM.DataController.SetValue(loopcnt, cxGridTv_Bom_remark.Index,  FieldByName('BRemarks').AsString);
        cxGridTV_BOM.DataController.SetValue(loopcnt, cxGridTv_Bom_ID.Index,      FieldByName('BItemID').AsString);

        Next;
      end;
      cxGridTV_BOM.DataController.EndUpdate;
    end;
  end;
end;

//등록
procedure TBOMForm.cxBtn_RegisterClick(Sender: TObject);
  var FindIndex, AppendIndex : Integer;
begin
  inherited;

  cxGridTv_Bom.DataController.BeginUpdate;
  for loopcnt := 0 to cxGridDBTv_List.Controller.SelectedRecordCount -1 do
  begin
    FindIndex :=
    cxGridTv_Bom.DataController.FindRecordIndexByText(0,
    cxGridTv_Bom_Name.Index, UniQuery_List.FieldByName('ItemName').AsString, False, False, True);

    if cxGridDBTv_List.DataController.Values[cxGridDBTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridDBTv_List_type.Index] = '제품' then
    begin
      Continue;
    end;

    if FindIndex = -1 then
    begin
      AppendIndex := cxGridTv_Bom.DataController.AppendRecord;
      cxGridTv_Bom.DataController.Values[AppendIndex,cxGridTv_Bom_name.Index]
      := cxGridDBTv_List.DataController.Values[cxGridDBTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridDBTv_List_name.Index];

      cxGridTv_Bom.DataController.Values[AppendIndex,cxGridTv_Bom_std.Index]
      := cxGridDBTv_List.DataController.Values[cxGridDBTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridDBTv_List_Std.Index];

      cxGridTv_Bom.DataController.Values[AppendIndex,cxGridTv_Bom_Unit.Index]
      := cxGridDBTv_List.DataController.Values[cxGridDBTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridDBTv_List_Unit.Index];

      cxGridTv_Bom.DataController.Values[AppendIndex,cxGridTv_Bom_qty.Index] := '0';

      cxGridTv_Bom.DataController.Values[AppendIndex,cxGridTv_Bom_UPrice.Index]
      := cxGridDBTv_List.DataController.Values[cxGridDBTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridDBTv_List_UPrice.Index];

      cxGridTv_Bom.DataController.Values[AppendIndex,cxGridTv_Bom_Amount.Index] := 0;
      cxGridTv_Bom.DataController.Values[AppendIndex,cxGridTv_Bom_remark.Index] := '';

      cxGridTv_Bom.DataController.Values[AppendIndex,cxGridTv_Bom_ID.Index]
      := cxGridDBTv_List.DataController.Values[cxGridDBTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridDBTv_List_ID.Index];
    end;

  end;
  cxGridTv_Bom.DataController.EndUpdate;
end;

//수량 변경 시

procedure TBOMForm.cxGridTv_Bom_qtyPropertiesEditValueChanged(Sender: TObject);
  var FocusedIndex : Integer;
begin
  inherited;

  cxGridTv_Bom.Controller.EditingController.Edit.PostEditValue;

  FocusedIndex := cxGridTv_Bom.DataController.FocusedRecordIndex;

  cxGridTv_Bom.DataController.Values[FocusedIndex, cxGridTv_Bom_amount.Index]
  :=
  cxGridTv_Bom.DataController.Values[FocusedIndex, cxGridTv_Bom_qty.Index]
  *
  cxGridTv_Bom.DataController.Values[FocusedIndex, cxGridTv_Bom_Uprice.Index];
end;

end.
