unit mu_v_result_user;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseModal, cxGraphics, cxControls,
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
  dxScrollbarAnnotations, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGrid, Data.DB, MemDS,
  DBAccess, Uni, cxDBData, cxGridDBTableView;

type
  Tmf_v_result_user = class(TBaseModalForm)
    cxGBox_User: TcxGroupBox;
    cxGUser: TcxGrid;
    cxGUserLv: TcxGridLevel;
    ds_user: TDataSource;
    uq_user: TUniQuery;
    cxGUserDBTv_: TcxGridDBTableView;
    cxGUserDBTv_UserID: TcxGridDBColumn;
    cxGUserDBTv_LoginID: TcxGridDBColumn;
    cxGUserDBTv_Name: TcxGridDBColumn;
    cxGUserDBTv_Position: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_SelectionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mf_v_result_user: Tmf_v_result_user;

implementation

{$R *.dfm}

uses DataModule;

procedure Tmf_v_result_user.FormCreate(Sender: TObject);
begin
  inherited;
  // 사용자 정보 조회
  With DataModuleForm.FDQuerySetting(uq_user) do
  begin
    SQL.Add(SQLInsert.Text);
    Open
  end;
end;

procedure Tmf_v_result_user.cxBtn_SelectionClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOK;
end;

end.
