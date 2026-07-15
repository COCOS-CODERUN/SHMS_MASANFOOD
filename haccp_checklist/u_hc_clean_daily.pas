unit u_hc_clean_daily;

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
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxTextEdit, cxBlobEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxGroupBox, cxEditRepositoryItems, MemDS,
  DBAccess, Uni;

type
  Tf_hc_clean_daily = class(TForm)
    cxGBox_Out: TcxGroupBox;
    cxGOut: TcxGrid;
    cxGOutDBTv_: TcxGridDBTableView;
    cxGOutDBTv_h_id: TcxGridDBColumn;
    cxGOutDBTv_outid: TcxGridDBColumn;
    cxGOutDBTv_details: TcxGridDBColumn;
    cxGOutDBTv_results: TcxGridDBColumn;
    cxGOutDBTv_writer: TcxGridDBColumn;
    cxGOutDBTv_reviewer: TcxGridDBColumn;
    cxGOutLv: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxBtn_AddOut: TcxButton;
    cxBtn_DelOut: TcxButton;
    cxGD: TcxGrid;
    cxGDTv_: TcxGridTableView;
    cxGDTv_d_id: TcxGridColumn;
    cxGDTv_div: TcxGridColumn;
    cxGDTv_d_text: TcxGridColumn;
    cxGDTv_d_state: TcxGridColumn;
    cxGDTv_check_yn: TcxGridColumn;
    cxGDLv: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDEdit_Date: TcxDateEdit;
    cxEdit_Writer: TcxTextEdit;
    uq_d: TUniQuery;
    ds_d: TDataSource;
    uq_out: TUniQuery;
    ds_out: TDataSource;
    cxER: TcxEditRepository;
    cxERText: TcxEditRepositoryTextItem;
    cxERRG_yn: TcxEditRepositoryRadioGroupItem;
    uq_list: TUniQuery;
    uq: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_hc_clean_daily: Tf_hc_clean_daily;

implementation

{$R *.dfm}

end.
