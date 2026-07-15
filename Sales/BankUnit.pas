unit BankUnit;

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
  cxRadioGroup, cxCurrencyEdit, cxTextEdit, cxLabel, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  MemDS, DBAccess, Uni;

type
  TBankForm = class(TBaseChildForm)
    cxGBoxRight: TcxGroupBox;
    cxGBox_Info: TcxGroupBox;
    cxLbl8: TcxLabel;
    cxLbl6: TcxLabel;
    cxEdit_AccNo: TcxTextEdit;
    cxEdit_BName: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxEdit_AccName: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxEdit_Remarks: TcxTextEdit;
    cxCEdit_BankID: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cxRGroup_Use: TcxRadioGroup;
    cxGBoxTransactHistory: TcxGroupBox;
    cxGrid_Bank: TcxGrid;
    cxGridDBTv_Bank: TcxGridDBTableView;
    cxGridDBTv_Bank_BankID: TcxGridDBColumn;
    cxGridDBTv_Bank_BName: TcxGridDBColumn;
    cxGridDBTv_Bank_AccNo: TcxGridDBColumn;
    cxGridDBTv_Bank_AccName: TcxGridDBColumn;
    cxGridDBTv_Bank_Remarks: TcxGridDBColumn;
    cxGridLv_Bank: TcxGridLevel;
    DS_B: TDataSource;
    USP_bank: TUniStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridDBTv_BankCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure SearchBank;
  public
    { Public declarations }
  end;

var
  BankForm: TBankForm;

implementation

uses DataModule;

{$R *.dfm}

{ TBackForm }


procedure TBankForm.FormCreate(Sender: TObject);
begin
  inherited;

  cxBtn_NewClick(self);
  SearchBank;
end;

procedure TBankForm.SearchBank;
begin

  with DataModuleForm.FDSpSetting(USP_bank,'usp_Bank','A')  do
  begin
    Open;
  end;
end;

//new
procedure TBankForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Info);
  cxCEdit_BankID.Value := 0;
end;

//save
procedure TBankForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  EssentialItem(cxEdit_BName, '은행명');
  EssentialItem(cxEdit_AccNo, '계좌번호');
  EssentialItem(cxEdit_AccName, '예금주명');

  with DataModuleForm.FDSpSetting(nil, 'usp_Bank', 'B') do
  begin
    ParamByname('@BankID').AsInteger    := Round(cxCEdit_BankID.Value);
    ParamByname('@BName').AsString      := cxEdit_BName.Text;
    ParamByname('@AccNo').AsString      := cxEdit_AccNo.Text;
    ParamByname('@AccName').AsString    := cxEdit_AccName.Text;
    ParamByname('@Remarks').AsString    := cxEdit_Remarks.Text;
    ParamByname('@Balance').AsCurrency  := 0;
    ParamByname('@IsUsable').AsBoolean  := cxRGroup_Use.EditValue;
    ParamByname('@Writer').AsString     := LoginUserName;
    ParamByname('@Modifier').AsString   := LoginUserName;
    try
      ExecProc;
      ShowMessage(MessageToSave);
      SearchBank;
    except
      ShowMessage(MessageToError);
      exit;
    end;

    if cxCEdit_BankID.Value = 0 then
    begin
      cxCEdit_BankID.Value := ParamByname('@BankID').AsInteger;
    end;
  end;
end;

//delete
procedure TBankForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  if MessageDlg(MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_Bank', 'C') do
    begin
      ParamByname('@BankID').AsInteger := Round(cxCEdit_BankID.Value);
      try
        ExecProc;
        cxBtn_NewClick(self);
        SearchBank;
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

//list cell click
procedure TBankForm.cxGridDBTv_BankCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with USP_Bank do
  begin
    cxCEdit_BankID.Value   := FieldByName('BankID').AsInteger;
    cxEdit_BName.Text      := FieldByName('BName').AsString;
    cxEdit_AccNo.Text      := FieldByName('AccNo').AsString;
    cxEdit_AccName.Text    := FieldByName('AccName').AsString;
    cxRGroup_Use.EditValue := FieldByName('IsUsable').AsBoolean;
    cxEdit_Remarks.Text    := FieldByName('Remarks').AsString;
  end;
end;

end.
