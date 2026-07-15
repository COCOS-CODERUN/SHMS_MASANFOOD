unit InOutListUnit;

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
  Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxRadioGroup, cxTextEdit,
  cxMaskEdit, cxCalendar, Data.DB, MemDS, DBAccess, Uni, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCurrencyEdit, System.DateUtils, frxClass, frxDBSet, frxExportPDF,
  frxExportBaseDialog, frxExportXLSX;

type
  TInOutListForm = class(TBaseChildForm)
    cxGBoxOrderSearch: TcxGroupBox;
    cxDEdit_edate: TcxDateEdit;
    cxDEdit_sdate: TcxDateEdit;
    cxLbl1: TcxLabel;
    cxLCBBox_Cus: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    UniQuery_cus: TUniQuery;
    DS_cus: TDataSource;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridLv_List: TcxGridLevel;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List_date: TcxGridDBColumn;
    cxGridDBTv_List_division: TcxGridDBColumn;
    cxGridDBTv_List_type: TcxGridDBColumn;
    cxGridDBTv_List_ItemName: TcxGridDBColumn;
    cxGridDBTv_List_qty: TcxGridDBColumn;
    cxGridDBTv_List_UPrice: TcxGridDBColumn;
    cxGridDBTv_List_cost: TcxGridDBColumn;
    cxGridDBTv_List_amount: TcxGridDBColumn;
    cxGridDBTv_List_InCharge: TcxGridDBColumn;
    cxGridDBTv_List_OutCharge: TcxGridDBColumn;
    UniSP_List: TUniStoredProc;
    DS_L: TDataSource;
    cxGridDBTv_List_Tax: TcxGridDBColumn;
    cxGridDBTv_List_balance: TcxGridDBColumn;
    frxReport_List: TfrxReport;
    FDS_L: TfrxDBDataset;
    FUDS_S: TfrxUserDataSet;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_PrintClick(Sender: TObject);
    procedure FUDS_SGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InOutListForm: TInOutListForm;

  ComName : string;

implementation

uses DataModule;

{$R *.dfm}

procedure TInOutListForm.FormCreate(Sender: TObject);
begin
  inherited;

  cxDEdit_sdate.Date := StartOfTheMonth(Date);
  cxDEdit_edate.Date := Date;

  with DataModuleForm.FDQuerySetting(UniQuery_cus) do
  begin
    SQL.Add(' SELECT CustomerID, CustomerName ');
    SQL.Add(' FROM MasterCustomer             ');
    SQL.Add(' WHERE IsUsable = 1              ');
    Open;
  end;
end;

//search
procedure TInOutListForm.cxBtn_SearchClick(Sender: TObject);
begin
  inherited;

  EssentialItem(cxLCBBox_Cus, '거래처명');

  with DataModuleForm.FDSpSetting(UniSP_List, 'usp_PurchaseInOut', '2') do
  begin
    ParamByName('@Sdate').AsString := cxDEdit_Sdate.Text;
    ParamByName('@Edate').AsString := cxDEdit_edate.Text;
    ParamByName('@CustomerID').AsInteger := cxLCBBox_Cus.EditValue;
    open;
  end;
end;

//print
procedure TInOutListForm.cxBtn_PrintClick(Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' SELECt ComName FROM CompanyInfo ');
    open;

    ComName := FieldByName('ComName').AsString;
  end;

  frxReport_List.ShowReport(true);
end;

procedure TInOutListForm.FUDS_SGetValue(const VarName: string;
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
