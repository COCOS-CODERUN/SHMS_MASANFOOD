unit ProductUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, BaseChild,
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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxLabel, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxRadioGroup, cxImage, cxTextEdit, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, Uni, MemDS, DBAccess, cxMemo;

type
  TProductForm = class(TBaseChildForm)
    DS_LIST: TDataSource;
    cxGBox_Info: TcxGroupBox;
    cxEdit_name: TcxTextEdit;
    cxEdit_Std: TcxTextEdit;
    cxEdit_writer: TcxTextEdit;
    cxEdit_WDT: TcxTextEdit;
    cxCEdit_UPrice: TcxCurrencyEdit;
    cxLbl13: TcxLabel;
    cxLbl14: TcxLabel;
    cxLbl15: TcxLabel;
    cxLbl16: TcxLabel;
    cxLbl17: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxCEdit_CWgt: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxGBoxMaterialList: TcxGroupBox;
    cxCEdit_BWgt: TcxCurrencyEdit;
    DS_D1: TDataSource;
    cxImage_item: TcxImage;
    cxLbl18: TcxLabel;
    cxRGroup_Yn: TcxRadioGroup;
    cxLCBBox_Unit: TcxLookupComboBox;
    DS_Unit: TDataSource;
    DS_D3: TDataSource;
    DS_D2: TDataSource;
    cxLabel8: TcxLabel;
    cxLCBBox_type: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxEdit_MCode: TcxTextEdit;
    cxLCBBox_D1: TcxLookupComboBox;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLCBBox_D3: TcxLookupComboBox;
    cxLCBBox_D2: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxGrid_Mat: TcxGrid;
    cxGridDBTv_Mat: TcxGridDBTableView;
    cxGridLv_Mat: TcxGridLevel;
    cxLabel6: TcxLabel;
    cxRGroup_Metal: TcxRadioGroup;
    cxLabel7: TcxLabel;
    cxRGroup_Tax: TcxRadioGroup;
    DS_Type: TDataSource;
    cxLabel9: TcxLabel;
    cxRGroup_Stock: TcxRadioGroup;
    UniQuery_Unit: TUniQuery;
    UniQuery_D1: TUniQuery;
    UniQuery_D2: TUniQuery;
    UniQuery_D3: TUniQuery;
    UniQuery_type: TUniQuery;
    UniSP_List: TUniStoredProc;
    cxLabel11: TcxLabel;
    cxEdit_HSCode: TcxTextEdit;
    cxEdit_NameEng: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxCEdit_PWgt: TcxCurrencyEdit;
    cxLabel14: TcxLabel;
    cxCEdit_BTWgt: TcxCurrencyEdit;
    cxLabel15: TcxLabel;
    cxEdit_BStd: TcxTextEdit;
    cxLabel18: TcxLabel;
    cxEdit_Period: TcxTextEdit;
    cxLabel19: TcxLabel;
    cxEdit_UseMon: TcxTextEdit;
    cxLabel20: TcxLabel;
    cxEdit_Process: TcxTextEdit;
    cxImage_barcode: TcxImage;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxMemo_ratio: TcxMemo;
    cxLabel21: TcxLabel;
    cxMemo_keep: TcxMemo;
    cxLabel24: TcxLabel;
    cxEdit_Remarks: TcxTextEdit;
    cxEdit_ID: TcxTextEdit;
    cxGridDBTv_MatItemID: TcxGridDBColumn;
    cxGridDBTv_MatItemName: TcxGridDBColumn;
    cxGridDBTv_MatItemNameSub: TcxGridDBColumn;
    cxGridDBTv_MatItemStd: TcxGridDBColumn;
    cxGridDBTv_MatItemUnit: TcxGridDBColumn;
    cxGridDBTv_MatItemUPrice: TcxGridDBColumn;
    cxGridDBTv_MatDivision1: TcxGridDBColumn;
    cxGridDBTv_MatDivision2: TcxGridDBColumn;
    cxGridDBTv_MatDivision3: TcxGridDBColumn;
    cxGridDBTv_MatItemCWgt: TcxGridDBColumn;
    cxGridDBTv_MatItemPWgt: TcxGridDBColumn;
    cxGridDBTv_MatItemPeriod: TcxGridDBColumn;
    cxGridDBTv_MatItemMCode: TcxGridDBColumn;
    cxGridDBTv_MatItemHSCode: TcxGridDBColumn;
    cxGridDBTv_MatRemarks: TcxGridDBColumn;
    cxLabel25: TcxLabel;
    cxRGroup_Heat: TcxRadioGroup;
    Label1: TLabel;
    cxCEdit_HTemp: TcxCurrencyEdit;
    cxCEdit_HTemp_1: TcxCurrencyEdit;
    cxLabel34: TcxLabel;
    cxEdit_MetalSenser: TcxTextEdit;
    cxLabel35: TcxLabel;
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridDBTv_MatCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SearchMaterialList;
  public
    { Public declarations }
  end;

var
  ProductForm: TProductForm;

implementation

{$R *.dfm}

uses DataModule;

//Formshow 이벤트
procedure TProductForm.FormCreate(Sender: TObject);
begin
  inherited;

  DataModuleForm.SearchCode('품목 구분' ,UniQuery_Type);
  DataModuleForm.SearchCode('품목 단위' ,UniQuery_Unit);
  DataModuleForm.SearchCode('대분류'    ,UniQuery_D1);
  DataModuleForm.SearchCode('중분류'    ,UniQuery_D2);
  DataModuleForm.SearchCode('소분류'    ,UniQuery_D3);

  cxBtn_NewClick(self);
end;

//신규버튼 클릭 이벤트
procedure TProductForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Info);

  cxLCBBox_type.Text := '제품';
  cxRGroup_Yn.ItemIndex    := 0;
  cxRGroup_metal.ItemIndex := 1;
  cxRGroup_Tax.ItemIndex   := 1;
  cxRGroup_Stock.ItemIndex := 1;

  SearchMaterialList;
end;

//저방버튼 클릭 이벤트
procedure TProductForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  //Null 체크
  EssentialItem(cxEdit_Name, '제품명');

  with DataModuleForm.FDSpSetting(nil, 'usp_Item', 'B') do
  begin
    ParamByName('@ItemID').Value      := cxEdit_ID.Text;
    ParamByName('@ItemName').Value    := cxEdit_Name.Text;
    ParamByName('@ItemNameSub').Value := cxEdit_NameEng.Text;
    ParamByName('@ItemStd').Value     := cxEdit_Std.Text;
    ParamByName('@ItemUnit').Value    := cxLCBBox_Unit.Text;
    ParamByName('@ItemWgt').Value     := 0;
    ParamByName('@ItemUPrice').Value  := cxCEdit_UPrice.Value;
    ParamByName('@ItemType').Value    := cxLCBBox_Type.EditValue;
    ParamByName('@Division1').Value   := cxLCBBox_D1.EditValue;
    ParamByName('@Division2').Value   := cxLCBBox_D2.EditValue;
    ParamByName('@Division3').Value   := cxLCBBox_D3.EditValue;
    ParamByName('@ItemOrigin').Value  := '';
    ParamByName('@ItemCWgt').Value    := cxCEdit_CWgt.Value;
    ParamByName('@ItemPWgt').Value    := cxCEdit_PWgt.Value;
    ParamByName('@ItemPeriod').Value  := cxEdit_Period.Text;
    ParamByName('@ItemMCode').Value   := cxEdit_MCode.Text;
    ParamByName('@ItemHSCode').Value  := cxEdit_HSCode.Text;
    ParamByName('@ItemBWgt').Value    := cxCEdit_BWgt.Value;
    ParamByName('@ItemBTWgt').Value   := cxCEdit_BTWgt.Value;
    ParamByName('@ItemBStd').Value    := cxEdit_BStd.Text;
    ParamByName('@ItemUseMon').Value  := cxEdit_UseMon.Text;
    ParamByName('@ItemProcess').Value := cxEdit_Process.Text;
    ParamByName('@ItemMetal').Value   := cxRGroup_metal.EditValue;
    ParamByName('@ItemHeat').Value    := cxRGroup_Heat.EditValue;
    ParamByName('@ItemTax').Value     := cxRGroup_Tax.EditValue;
    ParamByName('@ItemStock').Value   := cxRGroup_Stock.EditValue;
    ParamByName('@ItemKeep').Value    := cxMemo_keep.Text;
    ParamByName('@ItemRatio').Value   := cxMemo_Ratio.Text;
    ParamByName('@ItemYn').Value      := cxRGroup_Yn.EditValue;
    ParamByName('@Remarks').Value     := cxEdit_Remarks.Text;
    ParamByName('@Writer').Value      := LoginUserName;
    ParamByName('@ItemImg').Value     := cxImage_item.EditValue;
    ParamByName('@ItemImg2').Value    := cxImage_barcode.EditValue;
    ParamByName('@MetalSenser').Value := cxEdit_MetalSenser.Text;
    ParamByName('@HTemp').Value       := cxCEdit_HTemp.Value;
    ParamByName('@HTemp_1').Value     := cxCEdit_HTemp_1.Value;

    try
      ExecProc;
      ShowMessage(MessageToSave);
      cxBtn_NewClick(self);
    except
      ShowMessage(MessageToError);
    end;
  end;
end;

//삭제버튼 클릭 이벤트
procedure TProductForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;
  if cxEdit_ID.Text = '' then
  begin
    Exit;
  end;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_Item', 'C') do
    begin
      ParamByName('@ItemID').Value   := cxEdit_ID.Text;
      ParamByName('@ItemType').Value := cxLCBBox_Type.EditValue;
      try
        ExecProc;
        cxBtn_NewClick(self);
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

//그리드 더블클릭 이벤트
procedure TProductForm.cxGridDBTv_MatCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with UniSP_List do
  begin
    cxEdit_ID.Text           :=	FieldByName('ItemID').AsString;
    cxEdit_Name.Text         :=	FieldByName('ItemName').AsString;
    cxEdit_NameEng.Text      :=	FieldByName('ItemNameSub').AsString;
    cxEdit_Std.Text          :=	FieldByName('ItemStd').AsString;
    cxLCBBox_Unit.Text       :=	FieldByName('ItemUnit').AsString;
    cxCEdit_UPrice.Value     :=	FieldByName('ItemUPrice').Value;
    cxLCBBox_Type.EditValue  :=	FieldByName('ItemType').AsString;
    cxLCBBox_D1.EditValue    :=	FieldByName('Division1').AsString;
    cxLCBBox_D2.EditValue    :=	FieldByName('Division2').AsString;
    cxLCBBox_D3.EditValue    :=	FieldByName('Division3').AsString;
    cxCEdit_CWgt.Value       :=	FieldByName('ItemCwgt').Value;
    cxCEdit_PWgt.Value       :=	FieldByName('ItemPwgt').Value;
    cxEdit_Period.Text       :=	FieldByName('ItemPeriod').AsString;
    cxEdit_MCode.Text        :=	FieldByName('ItemMCode').AsString;
    cxEdit_HSCode.Text       :=	FieldByName('ItemHSCode').AsString;
    cxCEdit_BWgt.Value       :=	FieldByName('ItemBwgt').Value;
    cxCEdit_BTWgt.Value      :=	FieldByName('ItemBTwgt').Value;
    cxEdit_BStd.Text         :=	FieldByName('ItemBStd').AsString;
    cxEdit_UseMon.Text       :=	FieldByName('ItemUseMon').AsString;
    cxEdit_Process.Text      :=	FieldByName('ItemProcess').AsString;
    cxRGroup_metal.EditValue :=	FieldByName('ItemMetal').AsBoolean;
    cxRGroup_Heat.EditValue  :=	FieldByName('ItemHeat').AsBoolean;
    cxRGroup_Tax.EditValue   :=	FieldByName('ItemTax').AsBoolean;
    cxRGroup_Stock.EditValue :=	FieldByName('ItemStock').AsBoolean;
    cxMemo_keep.Text         :=	FieldByName('ItemKeep').AsString;
    cxMemo_Ratio.Text        :=	FieldByName('ItemRatio').AsString;

    cxCEdit_HTemp.Value     := FieldByName('HTemp').AsInteger;
    cxCEdit_HTemp_1.Value   := FieldByName('HTemp_1').AsInteger;

    cxRGroup_Yn.EditValue    :=	FieldByName('ItemYn').AsBoolean;
    cxEdit_Remarks.Text      :=	FieldByName('Remarks').AsString;
    cxEdit_Writer.text       :=	FieldByName('Writer').AsString;
    cxEdit_WDT.Text          :=	FieldByName('WDT').AsString;
    cxEdit_MetalSenser.Text  := FieldByName('MetalSenser').AsString;
  end;

    //이미지 호출
  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' SELECT * FROM MasterItemImg ');
    sql.Add(' WHERE ItemID = :ItemID      ');
    sql.Add(' AND   Division =:ItemType   ');
    ParamByName('@ItemID').AsString   := cxEDit_ID.Text;
    ParamByName('@ItemType').AsString := cxLCBBox_Type.EditValue;
    open;

    if RecordCount > 0 then
    begin
      cxImage_item.EditValue    := FieldByName('ItemImage').Value;
      cxImage_barcode.EditValue := FieldByName('ItemImage2').Value;
    end
    else begin
      cxImage_item.Clear;
      cxImage_barcode.Clear;
    end;
  end;
end;

//원자재 리스트 검색
procedure TProductForm.SearchMaterialList;
begin

  With DataModuleForm.FDSpSetting(UniSP_List,'usp_Item','D') do
  begin
    ParamByName('@ItemType').AsString := 'BD007';
    Open;
  end;
end;



end.
