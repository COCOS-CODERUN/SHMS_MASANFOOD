unit HaccpRecallUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCurrencyEdit, cxMemo, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.ExtCtrls, cxGroupBox;

type
  THaccpRecallForm = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxCEditNonQty: TcxCurrencyEdit;
    cxCEditOrderQty: TcxCurrencyEdit;
    cxCEditOutQty: TcxCurrencyEdit;
    cxCEditProdQty: TcxCurrencyEdit;
    cxCEditRate: TcxCurrencyEdit;
    cxCEditRecallQty: TcxCurrencyEdit;
    cxCEditReNonQty: TcxCurrencyEdit;
    cxCEditReOrderQty: TcxCurrencyEdit;
    cxCEditReOutQty: TcxCurrencyEdit;
    cxCEditReProdQty: TcxCurrencyEdit;
    cxCEditReRate: TcxCurrencyEdit;
    cxCEditReRecallQty: TcxCurrencyEdit;
    cxDEditDate: TcxDateEdit;
    cxDEditProdDate: TcxDateEdit;
    cxEditExpDate: TcxTextEdit;
    cxEditManger: TcxTextEdit;
    cxEditProdName: TcxTextEdit;
    cxEditReason: TcxTextEdit;
    cxLabel26: TcxLabel;
    cxLabel39: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel47: TcxLabel;
    cxLabel48: TcxLabel;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    cxLabel56: TcxLabel;
    cxLabel57: TcxLabel;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxLabel63: TcxLabel;
    cxLbl98: TcxLabel;
    cxMemoReCallPlan: TcxMemo;
    cxMemoReCall: TcxMemo;
    cxMemoResultPlan: TcxMemo;
    cxMemoResult: TcxMemo;
    cxCEditCode: TcxCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearProc;
    procedure SaveProc;
    procedure DeleteProc;
    procedure GridListSetting;
    procedure DataBindingToGrid;
  end;

var
  HaccpRecallForm: THaccpRecallForm;

implementation

{$R *.dfm}

uses DataModule, HaccpGeneralUnit;

{ THaccpRecallForm }

procedure THaccpRecallForm.ClearProc;
begin
  datamoduleform.ClearEditIncxGroupBox(cxGroupBox1);
end;

procedure THaccpRecallForm.DataBindingToGrid;
var
  loopcnt : integer;
begin

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    close;
    sql.Clear;
    sql.Add(' exec usp_HaccpRecall @option = :option, @CheckDate = :CheckDate ');
    ParamByName('option').AsString := 'B';
    ParamByName('CheckDate').AsString := DataModule.HaccpSelected_Date;
    open;

    if RecordCount > 0 then
    begin
      cxCEditCode.text         := VarToStr(FieldByName('RecallID').value);
      cxDEditDate.Text         := FieldByName('CheckDate').AsString;
      cxEditProdName.Text      := FieldByName('ProdName').AsString;
      cxEditExpDate.Text       := FieldByName('ExpDate').AsString;
      cxDEditProdDate.Text     := FieldByName('ProdDate').AsString;
      cxEditManger.Text        := FieldByName('Manager').AsString;
      cxEditReason.Text        := FieldByName('Reason').AsString;
      cxCEditProdQty.Text      := VarToStr(FieldByName('RecallProdQty').Value);
      cxCEditOrderQty.Text     := VarToStr(FieldByName('RecallOrderQty').Value);
      cxCEditOutQty.Text       := VarToStr(FieldByName('RecallOutQty').Value);
      cxCEditRecallQty.Text    := VarToStr(FieldByName('RecallQty').Value);
      cxCEditRate.Text         := VarToStr(FieldByName('RecallRate').Value);
      cxCEditNonQty.Text       := VarToStr(FieldByName('RecallNotQty').Value);
      cxMemoReCall.Text        := FieldByName('RecallRemark').AsString;
      cxMemoReCallPlan.Text    := FieldByName('RecallPlan').AsString;
      cxCEditReProdQty.Text    := VarToStr(FieldByName('ResultProdQty').Value);
      cxCEditReOrderQty.Text   := VarToStr(FieldByName('ResultOrderQty').Value);
      cxCEditReOutQty.Text     := VarToStr(FieldByName('ResultOutQty').Value);
      cxCEditReRecallQty.Text  := VarToStr(FieldByName('ResultQty').Value);
      cxCEditReRate.Text       := VarToStr(FieldByName('ResultRate').Value);
      cxCEditReNonQty.Text     := VarToStr(FieldByName('ResultNotQty').Value);
      cxMemoResult.Text        := FieldByName('ResultRemark').AsString;
      cxMemoResultPlan.Text    := FieldByName('NextPlan').AsString;
    end
    else
    begin
      ClearProc;
    end;
  end;
end;


procedure THaccpRecallForm.DeleteProc;
begin
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpRecall', 'C') do
    begin
      ParamByName('@RecallID').Value := ROUND(cxCEditCode.value);
      try
        ExecProc;
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

procedure THaccpRecallForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  HaccpRecallForm := nil;
  Action := CaFree;
end;

procedure THaccpRecallForm.FormCreate(Sender: TObject);
begin
   ClearProc;
end;

procedure THaccpRecallForm.GridListSetting;
begin

end;

procedure THaccpRecallForm.SaveProc;
begin

  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpRecall', 'A') do
  begin
    parambyname('@RecallID').value := cxCEditCode.value;
    parambyname('@CheckDate').value := cxDEditDate.Text;
    parambyname('@ProdName').value := cxEditProdName.Text;
    parambyname('@ExpDate').value := cxEditExpDate.Text;
    parambyname('@ProdDate').value := cxDEditProdDate.Text;
    parambyname('@Manager').value := cxEditManger.Text;
    parambyname('@Reason').value := cxEditReason.Text;
    parambyname('@RecallProdQty').value := (cxCEditProdQty.value);
    parambyname('@RecallOrderQty').value := cxCEditOrderQty.value;
    parambyname('@RecallOutQty').value := cxCEditOutQty.value;
    parambyname('@RecallQty').value := cxCEditRecallQty.value;
    parambyname('@RecallRate').value := cxCEditRate.value;
    parambyname('@RecallNotQty').value := cxCEditNonQty.value;
    parambyname('@RecallRemark').value := cxMemoReCall.text;
    parambyname('@RecallPlan').value := cxMemoReCallPlan.Text;
    parambyname('@ResultProdQty').value := cxCEditReProdQty.value;
    parambyname('@ResultOrderQty').value := cxCEditReOrderQty.value;
    parambyname('@ResultOutQty').value := cxCEditReOutQty.value;
    parambyname('@ResultQty').value := cxCEditReRecallQty.value;
    parambyname('@ResultRate').value := cxCEditReRate.value;
    parambyname('@ResultNotQty').value := cxCEditReNonQty.value;
    parambyname('@ResultRemark').value := cxMemoResult.Text;
    parambyname('@NextPlan').value := cxMemoResultPlan.Text;
    ParamByName('@Writer').AsString   := LoginUserName;
    ParamByName('@Modifier').AsString := LoginUserName;

    try
      ExecProc;
    except
      SaveToError := True;
    end;
  end;
end;

end.
