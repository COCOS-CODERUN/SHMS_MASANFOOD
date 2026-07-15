unit ItemModalUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseModal, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxCurrencyEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxRadioGroup, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White, MemDS,
  DBAccess, Uni;

type
  TItemModalForm = class(TBaseModalForm)
    cxGBoxProductList: TcxGroupBox;
    cxGrid_Item: TcxGrid;
    cxGridDBTv_Item: TcxGridDBTableView;
    cxGridDBTv_Item_ID: TcxGridDBColumn;
    cxGridDBTv_Item_Name: TcxGridDBColumn;
    cxGridDBTv_Item_Category: TcxGridDBColumn;
    cxGridDBTv_Item_Standard: TcxGridDBColumn;
    cxGridDBTv_Item_Unit: TcxGridDBColumn;
    cxGridDBTv_Item_Weight: TcxGridDBColumn;
    cxGridDBTv_Item_UPOP: TcxGridDBColumn;
    cxGridDBTv_Item_Remarks: TcxGridDBColumn;
    cxGridLv_Item: TcxGridLevel;
    cxGBoxPurchaseSearch: TcxGroupBox;
    cxRGroupSearchType: TcxRadioGroup;
    cxBtn_SearchList: TcxButton;
    cxRGroup_ItemType: TcxRadioGroup;
    DS_Item: TDataSource;
    cxGridDBTv_Item_UPOS: TcxGridDBColumn;
    cxGridDBTv_Item_TaxCheck: TcxGridDBColumn;
    FDQuery_Item: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure cxBtn_SearchListClick(Sender: TObject);
    procedure cxRGroupSearchTypePropertiesChange(Sender: TObject);
    procedure cxBtn_SelectionClick(Sender: TObject);
    procedure cxBtn_CloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CustomerDivision: String;
    CustomrID : Integer;
    MetakCheck : String;
  end;

var
  ItemModalForm: TItemModalForm;

implementation

Uses DataModule;

{$R *.dfm}

{ TItemModalForm }

procedure TItemModalForm.FormShow(Sender: TObject);
begin
  inherited;
  cxBtn_SearchListClick(Self);
end;

//º±≈√
procedure TItemModalForm.cxBtn_CloseClick(Sender: TObject);
begin
  inherited;

  ModalResult := mrNo;
  close;
end;

procedure TItemModalForm.cxBtn_SearchListClick(Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDQuerySetting(FDQuery_Item) do
  begin
    if cxRGroupSearchType.ItemIndex = 0 then
    begin
      SQL.Add(' EXEC usp_Item @Option = :Option, @ItemType = :ItemType ');
      ParamByName('Option').AsString := 'D';
      ParamByName('ItemType').AsString := cxRGroup_ItemType.EditValue;

      if CustomerDivision = 'CCP' then
      begin
        SQL.Add(' ,@ItemMetal = :ItemMetal ');
        ParamByName('ItemMetal').AsBoolean := True;
      end;
      Open;
    end
    else
    begin
      SQL.Add(' EXEC usp_Item @Option = :Option, @CustomerID = :CustomerID ');
      ParamByName('Option').AsString      := '1';
//      ParamByName('CDivision').AsString   := CustomerDivision;
      ParamByName('CustomerID').AsInteger := CustomrID;
      Open;
    end;
  end;
end;

procedure TItemModalForm.cxBtn_SelectionClick(Sender: TObject);
begin
  inherited;

  ModalResult := MrOk;
end;

procedure TItemModalForm.cxRGroupSearchTypePropertiesChange(Sender: TObject);
begin
  inherited;

  cxBtn_SearchListClick(self);
end;

end.
