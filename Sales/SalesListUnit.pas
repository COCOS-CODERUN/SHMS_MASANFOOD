unit SalesListUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox,
  Vcl.ComCtrls, dxCore, cxDateUtils, Data.DB, MemDS, DBAccess, Uni,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  cxTextEdit, cxMaskEdit, cxCalendar, cxRadioGroup, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, System.DateUtils,
  cxCurrencyEdit, frxClass, frxDBSet, frxExportXLSX, frxExportBaseDialog,
  frxExportPDF;

type
  TSalesListForm = class(TBaseChildForm)
    cxGBoxOrderSearch: TcxGroupBox;
    cxDEdit_edate: TcxDateEdit;
    cxDEdit_sdate: TcxDateEdit;
    cxRGroup_Group: TcxRadioGroup;
    cxLbl1: TcxLabel;
    cxLCBBox_Cus: TcxLookupComboBox;
    DS_cus: TDataSource;
    cxLabel1: TcxLabel;
    UniQuery_cus: TUniQuery;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridLv_List: TcxGridLevel;
    UniSP_List: TUniStoredProc;
    DS_L: TDataSource;
    cxGridDBTv_List_Sano: TcxGridDBColumn;
    cxGridDBTv_List_division: TcxGridDBColumn;
    cxGridDBTv_List_name: TcxGridDBColumn;
    cxGridDBTv_List_cost: TcxGridDBColumn;
    cxGridDBTv_List_tax: TcxGridDBColumn;
    cxGridDBTv_List_amount: TcxGridDBColumn;
    UniSP_Detail: TUniStoredProc;
    DS_D: TDataSource;
    cxGridDBTv_Detail: TcxGridDBTableView;
    cxGridDBTv_Detail_CusName: TcxGridDBColumn;
    cxGridDBTv_Detail_ItemName: TcxGridDBColumn;
    cxGridDBTv_Detail_Qty: TcxGridDBColumn;
    cxGridDBTv_Detail_Cost: TcxGridDBColumn;
    cxGridDBTv_Detail_Tax: TcxGridDBColumn;
    cxGridDBTv_Detail_Amount: TcxGridDBColumn;
    frxReport_List: TfrxReport;
    FUDS_S: TfrxUserDataSet;
    FDS_L: TfrxDBDataset;
    frxReport_Detail: TfrxReport;
    FDS_D: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure cxRGroup_GroupPropertiesChange(Sender: TObject);
    procedure FUDS_SGetValue(const VarName: string; var Value: Variant);
    procedure cxBtn_PrintClick(Sender: TObject);
    procedure cxBtn_ExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SalesListForm: TSalesListForm;

  ComName : string;

implementation

uses DataModule;

{$R *.dfm}


procedure TSalesListForm.FormCreate(Sender: TObject);
begin
  inherited;

  cxDEdit_sdate.Date := StartOfTheMonth(Date);
  cxDEdit_edate.Date := Date;

  with DataModuleForm.FDQuerySetting(UniQuery_cus) do
  begin
    SQL.Add(' SELECT CustomerID, CustomerName              ');
    SQL.Add(' FROM MasterCustomer                           ');
    SQL.Add(' WHERE IsUsable = 1                            ');
    SQL.Add(' AND CustomerDivision in(''BD001'', ''BD022'') ');
    Open;
  end;

  cxGridLv_List.GridView := cxGridDBTv_List;
  cxBtn_SearchClick(self);
end;

procedure TSalesListForm.cxRGroup_GroupPropertiesChange(Sender: TObject);
begin
  inherited;

  if cxRGroup_Group.ItemIndex = 0 then
  begin
    cxGridLv_List.GridView := cxGridDBTv_List;
  end
  else begin
    cxGridLv_List.GridView := cxGridDBTv_Detail;
  end;

  cxBtn_SearchClick(self);
end;

//search
procedure TSalesListForm.cxBtn_SearchClick(Sender: TObject);
  var CusID : Integer;
      OptionStr : string;
      SearchUniSP : TUniStoredProc;
begin
  inherited;

  if cxRGroup_Group.ItemIndex = 0 then
  begin
    OptionStr := 'R';
    SearchUniSP := UniSP_List;
  end
  else begin
    OptionStr := 'T';
    SearchUniSP := UniSP_Detail;
  end;

  with DataModuleForm.FDSpSetting(SearchUniSP, 'usp_SalesInOut', OptionStr) do
  begin
    ParamByName('@Sdate').AsString := cxDEdit_Sdate.Text;
    ParamByName('@Edate').AsString := cxDEdit_edate.Text;
    if cxLCBBox_Cus.Text = '' then
    begin
      CusID := 0;
    end
    else begin
      CusID := cxLCBBox_Cus.EditValue;
    end;

    ParamByName('@CustomerID').AsInteger := CusID;
    open;
  end;
end;

procedure TSalesListForm.cxBtn_ExcelClick(Sender: TObject);
begin
  inherited;

  ExcelPrint(cxGrid_List, Self.Caption);
end;

//print
procedure TSalesListForm.cxBtn_PrintClick(Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' SELECt ComName FROM CompanyInfo ');
    open;

    ComName := FieldByName('ComName').AsString;
  end;

  if cxRGroup_Group.ItemIndex = 0 then
  begin
    frxReport_List.ShowReport(true);
  end
  else begin
    frxReport_Detail.ShowReport(true);
  end;
end;

procedure TSalesListForm.FUDS_SGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;

  if CompareText(VarName, 'comname') = 0 then
  begin
    Value := ComName;
  end
  else if CompareText(VarName, 'cusname') = 0 then
  begin
    Value := cxLCBBox_Cus.Text;
  end
  else if CompareText(VarName, 'sdate') = 0 then
  begin
    Value := cxDEdit_sdate.Text;
  end
  else if CompareText(VarName, 'edate') = 0 then
  begin
    Value := cxDEdit_edate.Text;
  end;
end;


end.
