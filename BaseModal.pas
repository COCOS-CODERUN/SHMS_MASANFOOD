unit BaseModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxGroupBox, System.UITypes, System.DateUtils, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TBaseModalForm = class(TForm)
    cxGBoxForm: TcxGroupBox;
    cxBtn_Save: TcxButton;
    cxBtn_Delete: TcxButton;
    cxBtn_Print: TcxButton;
    cxBtn_Excel: TcxButton;
    cxBtn_Close: TcxButton;
    cxBtn_Barcode: TcxButton;
    cxBtn_Selection: TcxButton;
    cxBtn_Cancel: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxBtn_CloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseModalForm: TBaseModalForm;

implementation

{$R *.dfm}

uses DataModule;

procedure TBaseModalForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TBaseModalForm.FormShow(Sender: TObject);
begin
  // 사용자별 개별 스킨 적용
  DataModuleForm.StyleChangecxGroupBox(Self,DataModuleForm.UserSkin);
  DataModuleForm.StyleChangecxButton(Self,DataModuleForm.BtnSkin);
end;

procedure TBaseModalForm.cxBtn_CloseClick(Sender: TObject);
begin
  Close;
end;

end.
