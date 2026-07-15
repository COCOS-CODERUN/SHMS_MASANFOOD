unit ItemSelectModelUnit;

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
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni;

type
  TItemSelectModelForm = class(TBaseModalForm)
    cxGrid_Item: TcxGrid;
    cxGridDBTv_Item: TcxGridDBTableView;
    cxGridDBTv_Item_ID: TcxGridDBColumn;
    cxGridDBTv_Item_Name: TcxGridDBColumn;
    cxGridDBTv_Item_Standard: TcxGridDBColumn;
    cxGridDBTv_Item_Unit: TcxGridDBColumn;
    cxGridLv_Item: TcxGridLevel;
    FDQuery_Item: TUniQuery;
    DS_Item: TDataSource;
    cxGridDBTv_Item_htemp1: TcxGridDBColumn;
    cxGridDBTv_Item_htemp2: TcxGridDBColumn;
    cxGridDBTv_Item_htemp3: TcxGridDBColumn;
    cxGridDBTv_Item_HSpeed: TcxGridDBColumn;
    cxGridDBTv_Item_htemp4: TcxGridDBColumn;
    cxGridDBTv_Item_htemp1_1: TcxGridDBColumn;
    cxGridDBTv_Item_htemp2_1: TcxGridDBColumn;
    cxGridDBTv_Item_Htemp3_1: TcxGridDBColumn;
    cxGridDBTv_Item_htemp4_1: TcxGridDBColumn;
    cxGridDBTv_Item_HSpeed_1: TcxGridDBColumn;
    procedure cxBtn_SelectionClick(Sender: TObject);
    procedure cxGridDBTv_ItemCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  ItemSelectModelForm: TItemSelectModelForm;

implementation

{$R *.dfm}

uses DataModule, MainUnit;

procedure TItemSelectModelForm.cxBtn_SelectionClick(Sender: TObject);
begin
  inherited;
  ModalResult := MrOk;
end;

procedure TItemSelectModelForm.cxGridDBTv_ItemCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  ModalResult := MrOk;
end;

procedure TItemSelectModelForm.FormCreate(Sender: TObject);
var
  Checked : boolean;
begin
  inherited;
  Checked := false;
  with DataModuleForm.FDQuerySetting(FDQuery_Item) do
  begin
    close;
    sql.Clear;
    SQL.Add('     SELECT ItemName, ItemID                                          ');
    SQL.Add('           ,ISNULL(HTemp,230) as HTemp ,ISNULL(HTemp_1,20) as HTemp_1 ');
    SQL.Add('       FROM MasterItem                                                ');
    SQL.Add('  WHERE ItemType = ''BD007''   AND ItemYn = 1                         ');
    if Division = 'Metal' then
    begin
      SQL.Add(' AND ItemMetal = 1 ');
    end
    else if Division = 'Heat' then
    begin
      SQL.Add(' AND ItemHeat = 1  ');
    end;

    Open;
  end;
end;

end.
