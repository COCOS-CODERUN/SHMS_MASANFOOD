unit MaterialUnit;

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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxLabel, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxRadioGroup, cxImage, cxTextEdit, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, Uni, MemDS, DBAccess;

type
  TMaterialForm = class(TBaseChildForm)
    DS_M: TDataSource;
    cxGBox_Material: TcxGroupBox;
    cxEdit_name: TcxTextEdit;
    cxEdit_std: TcxTextEdit;
    cxEdit_Writer: TcxTextEdit;
    cxEdit_Reamrks: TcxTextEdit;
    cxEdit_WDT: TcxTextEdit;
    cxCEdit_UPrice: TcxCurrencyEdit;
    cxLbl12: TcxLabel;
    cxLbl13: TcxLabel;
    cxLbl14: TcxLabel;
    cxLbl15: TcxLabel;
    cxLbl16: TcxLabel;
    cxLbl17: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxCEdit_wgt: TcxCurrencyEdit;
    cxGBoxMaterialList: TcxGroupBox;
    DS_D1: TDataSource;
    cxImg_Mat: TcxImage;
    cxLbl18: TcxLabel;
    cxRGroup_Yn: TcxRadioGroup;
    cxLCBBox_Unit: TcxLookupComboBox;
    DS_Unit: TDataSource;
    DS_D3: TDataSource;
    DS_D2: TDataSource;
    cxLabel8: TcxLabel;
    cxLabel5: TcxLabel;
    cxEdit_Origin: TcxTextEdit;
    cxLCBBox_Division1: TcxLookupComboBox;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLCBBox_Division3: TcxLookupComboBox;
    cxLCBBox_Division2: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxGrid_mat: TcxGrid;
    cxGridDBTv_mat: TcxGridDBTableView;
    cxGridLv_mat: TcxGridLevel;
    cxRGroup_type: TcxRadioGroup;
    UniSP_M: TUniStoredProc;
    UniQuery_Unit: TUniQuery;
    UniQuery_D1: TUniQuery;
    UniQuery_D2: TUniQuery;
    UniQuery_D3: TUniQuery;
    cxEdit_ID: TcxTextEdit;
    cxGridDBTv_matItemID: TcxGridDBColumn;
    cxGridDBTv_matItemName: TcxGridDBColumn;
    cxGridDBTv_matItemNameSub: TcxGridDBColumn;
    cxGridDBTv_matItemStd: TcxGridDBColumn;
    cxGridDBTv_matItemUnit: TcxGridDBColumn;
    cxGridDBTv_matItemWgt: TcxGridDBColumn;
    cxGridDBTv_matItemUPrice: TcxGridDBColumn;
    cxGridDBTv_matItemType: TcxGridDBColumn;
    cxGridDBTv_matDivision1: TcxGridDBColumn;
    cxGridDBTv_matDivision2: TcxGridDBColumn;
    cxGridDBTv_matDivision3: TcxGridDBColumn;
    cxGridDBTv_matItemOrigin: TcxGridDBColumn;
    cxGridDBTv_matItemYn: TcxGridDBColumn;
    cxGridDBTv_matRemarks: TcxGridDBColumn;
    cxGridDBTv_matWriter: TcxGridDBColumn;
    cxGridDBTv_matWDT: TcxGridDBColumn;
    cxLabel4: TcxLabel;
    cxEdit_MCode: TcxTextEdit;
    cxGridDBTv_matItemMCode: TcxGridDBColumn;
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridDBTv_matCellDblClick(Sender: TcxCustomGridTableView;
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
  MaterialForm: TMaterialForm;

implementation

{$R *.dfm}

uses DataModule;

procedure TMaterialForm.FormCreate(Sender: TObject);
begin
  inherited;

  DataModuleForm.SearchCode('품목 단위' ,UniQuery_Unit);
  DataModuleForm.SearchCode('대분류'    ,UniQuery_D1);
  DataModuleForm.SearchCode('중분류'    ,UniQuery_D2);
  DataModuleForm.SearchCode('소분류'    ,UniQuery_D3);

  cxBtn_NewClick(self);
end;

//신규버튼 클릭 이벤트
procedure TMaterialForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Material);

  SearchMaterialList;
end;

//저방버튼 클릭 이벤트
procedure TMaterialForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  //Null 체크
  EssentialItem(cxEdit_Name, '원부재료명');

  with DataModuleForm.FDSpSetting(nil, 'usp_Item', 'B') do
  begin
    ParamByName('@ItemID').Value      := cxEdit_ID.Text;
    ParamByName('@ItemName').Value    := cxEdit_name.Text;
    ParamByName('@ItemNameSub').Value := '';  //cxEdit_std.Text;
    ParamByName('@ItemMCode').Value   := cxEdit_MCode.Text;
    ParamByName('@ItemStd').Value     := cxEdit_std.Text;
    ParamByName('@ItemUnit').Value    := cxLCBBox_Unit.Text;
    ParamByName('@ItemWgt').Value     := cxCEdit_wgt.Value;
    ParamByName('@ItemUPrice').Value  := cxCEdit_UPrice.Value;
    ParamByName('@ItemType').Value    := cxRGroup_type.EditValue;
    ParamByName('@Division1').Value   := cxLCBBox_Division1.Text;
    ParamByName('@Division2').Value   := cxLCBBox_Division2.Text;
    ParamByName('@Division3').Value   := cxLCBBox_Division3.Text;
    ParamByName('@ItemOrigin').Value  := cxEdit_Origin.Text;
    ParamByName('@ItemYn').Value      := cxRGroup_Yn.EditValue;
    ParamByName('@Remarks').Value     := cxEdit_Reamrks.Text;
    ParamByName('@Writer').Value      := LoginUserName;
    ParamByName('@Modifier').Value    := LoginUserName;
    ParamByName('@ItemImg').Value     := cxImg_Mat.EditValue;
    try
      ExecProc;
      cxBtn_NewClick(self);
      ShowMessage(MessageToSave);
    except
      ShowMessage(MessageToError);
    end;
  end;
end;

//삭제버튼 클릭 이벤트
procedure TMaterialForm.cxBtn_DeleteClick(Sender: TObject);
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
      ParamByName('@ItemID').Value := cxEdit_ID.Text;
      try
        ExecProc;
        UniSP_M.Refresh;
        cxBtn_NewClick(self);
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

//그리드 더블클릭 이벤트
procedure TMaterialForm.cxGridDBTv_matCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with UniSP_M do
  begin
    cxEdit_ID.Text          := FieldByName('ItemID').Value;
    cxEdit_name.Text        := FieldByName('ItemName').Value;
    cxEdit_MCode.Text       := FieldByName('ItemMCode').Value;
    cxEdit_std.Text         := FieldByName('ItemStd').Value;
    cxLCBBox_Unit.Text      := FieldByName('ItemUnit').Value;
    cxCEdit_wgt.Value       := FieldByName('ItemWgt').Value;
    cxCEdit_UPrice.Value    := FieldByName('ItemUPrice').Value;
    cxRGroup_type.EditValue := FieldByName('ItemType').Value;
    cxLCBBox_Division1.Text := FieldByName('Division1').Value;
    cxLCBBox_Division2.Text := FieldByName('Division2').Value;
    cxLCBBox_Division3.Text := FieldByName('Division3').Value;
    cxEdit_Writer.Text      := FieldByName('Writer').Value;
    cxEdit_WDT.Text         := FieldByName('WDT').Value;
    cxEdit_Origin.Text      := FieldByName('ItemOrigin').Value;
    cxRGroup_Yn.EditValue   := FieldByName('ItemYn').Value;
    cxEdit_Reamrks.Text     := FieldByName('Remarks').Value;
  end;

  //이미지 호출
  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' SELECT * FROM MasterItemImg ');
    sql.Add(' WHERE ItemID = :ItemID      ');
    sql.Add(' AND   Division =:ItemType   ');
    ParamByName('@ItemID').AsString   := cxEDit_ID.Text;
    ParamByName('@ItemType').AsString := cxRGroup_type.EditValue;
    open;

    if RecordCount > 0 then
    begin
      cxImg_Mat.EditValue := FieldByName('ItemImage').Value;
    end
    else begin
      cxImg_Mat.Clear;
    end;
  end;
end;

//원자재 리스트 검색
procedure TMaterialForm.SearchMaterialList;
begin

  With DataModuleForm.FDSpSetting(UniSP_M,'usp_Item','A') do
  begin
    //ParamByName('@ItemType').AsString := cxRGroup_type.EditValue;
    Open;
  end;
end;




end.
