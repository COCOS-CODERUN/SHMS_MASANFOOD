unit HaccpActionUnit;

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
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxPC, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCurrencyEdit, System.DateUtils,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxBarBuiltInMenu, Uni, MemDS, DBAccess, cxRadioGroup;

type
  THaccpActionForm = class(TBaseChildForm)
    DsMetal: TDataSource;
    FDqMetal: TUniQuery;
    cxGBoxMetalSearch: TcxGroupBox;
    cxDEdit_SDate: TcxDateEdit;
    cxDEdit_EDate: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxGridHaccpActionMetal: TcxGrid;
    cxGridDBTvHaccpActionMetal: TcxGridDBTableView;
    cxGridDBTvHaccpActionMetal_Order: TcxGridDBColumn;
    cxGridDBTvHaccpActionMetal_Time: TcxGridDBColumn;
    cxGridDBTvHaccpActionMetal_Name: TcxGridDBColumn;
    cxGridDBTvHaccpActionMetal_Result: TcxGridDBColumn;
    cxGridDBTvHaccpActionMetal_Basic: TcxGridDBColumn;
    cxGridDBTvHaccpActionMetal_Contents: TcxGridDBColumn;
    cxGridLvHaccpActionMetal: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure cxGridDBTvHaccpActionMetal_OrderGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HaccpActionForm: THaccpActionForm;

implementation

{$R *.dfm}

uses DataModule;

procedure THaccpActionForm.cxGridDBTvHaccpActionMetal_OrderGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;

  AText := IntToStr(ARecord.Index + 1);
end;

procedure THaccpActionForm.FormCreate(Sender: TObject);
begin
  inherited;
  cxDEdit_SDate.Date  := StartOfTheMonth(Now);
  cxDEdit_EDate.Date  := Now;
  cxBtn_SearchClick(Self);
end;

procedure THaccpActionForm.cxBtn_SearchClick(Sender: TObject);
begin
  inherited;
  // 목록 조회
  with DataModuleForm.FDQuerySetting(FDqMetal) do
  begin
    SQL.Add('SELECT * FROM CCPMetalActionContents');
    SQL.Add('WHERE CAST(MetalDatetime AS DATE) BETWEEN :SDate AND :EDate');
    ParamByName('SDate').AsString := cxDEdit_SDate.Text;
    ParamByName('EDate').AsString := cxDEdit_EDate.Text;
    Open;
  end;
end;

end.
