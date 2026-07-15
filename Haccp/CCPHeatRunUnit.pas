unit CCPHeatRunUnit;

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
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar,
  cxLabel, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, MemDS, DBAccess, Uni, cxCurrencyEdit;

type
  TCCPHeatRunForm = class(TBaseChildForm)
    cxGBox_Srch: TcxGroupBox;
    cxLbl2: TcxLabel;
    cxDEdit_SDate: TcxDateEdit;
    cxDEdit_EDate: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLCBox_Fridge: TcxLookupComboBox;
    cxGBox_List: TcxGroupBox;
    cxGList: TcxGrid;
    cxGListDBTv_: TcxGridDBTableView;
    cxGListDBTv_h_date: TcxGridDBColumn;
    cxGListDBTv_h_type: TcxGridDBColumn;
    cxGListDBTv_ItemName: TcxGridDBColumn;
    cxGListDBTv_InsertTime: TcxGridDBColumn;
    cxGListDBTv_T1: TcxGridDBColumn;
    cxGListDBTv_Writer: TcxGridDBColumn;
    cxGListDBTv_OverYN: TcxGridDBColumn;
    cxGListLv: TcxGridLevel;
    uq_Fridge: TUniQuery;
    ds_Fridge: TDataSource;
    uq_list: TUniQuery;
    ds_list: TDataSource;
    cxGListDBTv_Name: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure cxGListDBTv_h_typeCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CCPHeatRunForm: TCCPHeatRunForm;

implementation

{$R *.dfm}

uses DataModule, MainUnit;

procedure TCCPHeatRunForm.FormCreate(Sender: TObject);
begin
  inherited;
  // 설비구분
  With DataModuleForm.FDQuerySetting(uq_Fridge) do
  begin
    SQL.Add(SQLInsert.Text);
    Open;
  end;
  cxLCBox_Fridge.ItemIndex := 0;
  // 시작기준
  cxDEdit_SDate.Date := Date;
  cxDEdit_EDate.Date := Date;
  // 구이온도 목록 조회
  cxBtn_SearchClick(Self);
end;

procedure TCCPHeatRunForm.cxBtn_SearchClick(Sender: TObject);
begin
  inherited;
  // 구이온도 목록 조회
  With DataModuleForm.FDQuerySetting(uq_list) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('SDate').AsString       := cxDEdit_SDate.Text;
    ParamByName('EDate').AsString       := cxDEdit_EDate.Text;
    ParamByName('GroupIndex').AsInteger := StrToIntDef(VarToStr(cxLCBox_Fridge.EditValue), 0);
    Open;
  end;
end;

procedure TCCPHeatRunForm.cxGListDBTv_h_typeCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  // 이탈 시 색상 표현
  if AViewInfo.GridRecord.Values[cxGListDBTv_OverYN.Index] = True then
  begin
    ACanvas.Brush.Color := MainForm.cxStyle_SkyRed.Color;
  end;
end;

end.
