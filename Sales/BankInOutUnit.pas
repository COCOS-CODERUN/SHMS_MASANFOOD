unit BankInOutUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxTextEdit, cxCalendar,
  cxCurrencyEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxMaskEdit,
  cxDropDownEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,system.dateutils,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxSplitter, frxClass, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White, MemDS,
  DBAccess, Uni;


type
  TBankInOutForm = class(TBaseChildForm)
    cxGBoxLeft: TcxGroupBox;
    cxGBoxCustomerSearch: TcxGroupBox;
    cxGridBank: TcxGrid;
    cxGridDBTvBank: TcxGridDBTableView;
    cxGridLvBank: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxGBoxSearch: TcxGroupBox;
    cxLabel9: TcxLabel;
    cxEditCustomerName: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxBtnSearch: TcxButton;
    cxGBoxPaymentList: TcxGroupBox;
    cxGridList: TcxGrid;
    cxGridDBTvList: TcxGridDBTableView;
    cxGridLvList: TcxGridLevel;
    DsBank: TDataSource;
    cxGridDBTvBankBankID: TcxGridDBColumn;
    cxGridDBTvBankBName: TcxGridDBColumn;
    cxGridDBTvBankUName: TcxGridDBColumn;
    cxGridDBTvBankRemarks: TcxGridDBColumn;
    cxGridDBTvBankWriter: TcxGridDBColumn;
    cxGridDBTvBankWritingDateTime: TcxGridDBColumn;
    cxGridDBTvBankModifier: TcxGridDBColumn;
    cxGridDBTvBankModifiedDateTime: TcxGridDBColumn;
    cxGridDBTvBankIsUsable: TcxGridDBColumn;
    cxGridDBTvBankAccountNum: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxEditAccountNum: TcxTextEdit;
    cxCEditBankID: TcxCurrencyEdit;
    DSTransactionHistory: TDataSource;
    cxGridDBTvListTransactionHistoryID: TcxGridDBColumn;
    cxGridDBTvListTransactionDate: TcxGridDBColumn;
    cxGridDBTvListDeposit: TcxGridDBColumn;
    cxGridDBTvListWithdraw: TcxGridDBColumn;
    cxGridDBTvListBalance: TcxGridDBColumn;
    cxGridDBTvListRemark: TcxGridDBColumn;
    cxGridDBTvListRecord: TcxGridDBColumn;
    cxGridDBTvListPoint: TcxGridDBColumn;
    cxGridDBTvListBankID: TcxGridDBColumn;
    cxGridDBTvListCustomerID: TcxGridDBColumn;
    cxGridDBTvListPartnerID: TcxGridDBColumn;
    cxGridDBTvListOrder: TcxGridDBColumn;
    cxDEditSearchStart: TcxDateEdit;
    cxDEditSearchEnd: TcxDateEdit;
    cxGridDBTvListNAME: TcxGridDBColumn;
    cxSplitter: TcxSplitter;
    cxButton1: TcxButton;
    cxBtnUpdate: TcxButton;
    frxReport2: TfrxReport;
    cxBtnRegisterSelf: TcxButton;
    cxButton2: TcxButton;
    cxGridDBTvListBalance2: TcxGridDBColumn;
    cxGridDBTvBankBalance: TcxGridDBColumn;
    cxGridDBTvListAccountBankID: TcxGridDBColumn;
    cxBtnBarcode: TcxButton;
    cxBtnRegister: TcxButton;
    FDSpBank: TUniStoredProc;
    FDSpTransactionHistory: TUniStoredProc;
    procedure cxGridDBTvBankOrderGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxBtnRegisterClick(Sender: TObject);
    procedure cxGridDBTvBankCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTvListOrderGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxBtnSearchClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxBtnUpdateClick(Sender: TObject);
    procedure cxBtnRegisterSelfClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure SearchBank;
    procedure SearchTransactionHistory(BankID: integer);
    function DeleteTransactionHistory: Boolean;
    procedure ReUpdate(CusID: integer; InOutDate: TDate);
  public
    { Public declarations }
  end;

var
  BankInOutForm: TBankInOutForm;

implementation

{$R *.dfm}

uses DataModule, TransactionHistoryUnit, TransactionHistory2Unit;

procedure TBankInOutForm.cxBtnRegisterClick(Sender: TObject);
begin
  inherited;
  if cxCEditBankID.Text = '' then
  begin
    ShowMessage('계좌를 선택해 주세요.');
    Exit;
  end;

  TransactionHistory2ModalForm := TTransactionHistory2ModalForm.Create(self);
  TransactionHistory2ModalForm.cxCEditBankID.Value := cxCEditBankID.Value;
  TransactionHistory2ModalForm.cxEditCustomerName.Text := cxEditCustomerName.Text;
  TransactionHistory2ModalForm.cxEditAccountNum.Text := cxEditAccountNum.Text;
  if TransactionHistory2ModalForm.ShowModal = mrok then
  begin
    FDSpBank.Refresh;
    cxBtnSearchClick(self);
  end;
end;

procedure TBankInOutForm.cxBtnRegisterSelfClick(Sender: TObject);
begin
  inherited;
  if cxCEditBankID.Text = '' then
  begin
    ShowMessage('계좌를 선택해 주세요.');
    Exit;
  end;

  TransactionHistoryModalForm := TTransactionHistoryModalForm.Create(self);
  TransactionHistoryModalForm.cxCEditBankID.Value := cxCEditBankID.Value;
  TransactionHistoryModalForm.cxEditCustomerName.Text := cxEditCustomerName.Text;
  TransactionHistoryModalForm.cxEditAccountNum.Text := cxEditAccountNum.Text;
  if TransactionHistoryModalForm.ShowModal = mrok then
  begin
    FDSpBank.Refresh;
    cxBtnSearchClick(self);
  end;
end;

procedure TBankInOutForm.cxBtnSearchClick(Sender: TObject);
begin
  inherited;
  SearchTransactionHistory(Round(cxCEditBankID.Value));
end;

procedure TBankInOutForm.cxBtnUpdateClick(Sender: TObject);
begin
  inherited;
  if cxGridDBTvList.Controller.SelectedRecordCount = 0 then
  begin
    ShowMessage('수저할 거래내역을 선택해 주세요.');
    Exit;
  end;
  TransactionHistoryModalForm := TTransactionHistoryModalForm.Create(self);
  TransactionHistoryModalForm.cxCEditBankID.Value := cxCEditBankID.Value;
//  TransactionHistoryModalForm.cxBtnExcelUpload.Visible := false;
  TransactionHistoryModalForm.cxBtnAddItem.Visible := false;
  TransactionHistoryModalForm.cxEditCustomerName.Text := cxEditCustomerName.Text;
  TransactionHistoryModalForm.cxEditAccountNum.Text := cxEditAccountNum.Text;
  with TransactionHistoryModalForm.cxGridTvTransactionhistory.DataController do
  begin
    RecordCount := 1;
    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryTransactionDate.Index]
      := FDSpTransactionHistory.FieldByName('TransactionDate').AsDateTime;
    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryDeposit.Index]
      := FDSpTransactionHistory.FieldByName('Deposit').AsCurrency;
    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryWithdraw.Index]
      := FDSpTransactionHistory.FieldByName('Withdraw').AsCurrency;
    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryBalance.Index]
      := FDSpTransactionHistory.FieldByName('Balance').AsCurrency;
    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryRemark.Index]
      := FDSpTransactionHistory.FieldByName('Remark').AsString;
    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryRecord.Index]
      := FDSpTransactionHistory.FieldByName('Record').AsString;
    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryPoint.Index]
      := FDSpTransactionHistory.FieldByName('Point').AsString;
    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryCustomerID.Index]
      := FDSpTransactionHistory.FieldByName('CustomerID').AsInteger;

    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryPartnerID.Index]
      := FDSpTransactionHistory.FieldByName('PartnerID').AsInteger;

    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryBankID.Index]
      := FDSpTransactionHistory.FieldByName('AccountBankID').AsInteger;
    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryTransactionHistoryID.Index]
      := FDSpTransactionHistory.FieldByName('TransactionHistoryID').AsInteger;
    Values[0,TransactionHistoryModalForm.cxGridTvTransactionhistoryCName.Index]
      := FDSpTransactionHistory.FieldByName('NAME').AsString;
  end;
  if TransactionHistoryModalForm.ShowModal = mrok then
  begin
    FDSpTransactionHistory.Refresh;
  end;
end;

procedure TBankInOutForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  if (MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes) then
  begin
    if DeleteTransactionHistory then
    begin
      cxBtnSearchClick(self);
      FDSpBank.Refresh;
    end;
  end;
end;

procedure TBankInOutForm.cxButton2Click(Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDSpSetting(NIL, 'usp_TransactionHistory', 'E') do
  begin
    ParamByName('@TransactionDate').AsString  := cxDEditSearchStart.Text ;
    ParamByName('@BankID').AsInteger          := Round(cxCEditBankID.Value);
    ExecProc;
  end;
end;

procedure TBankInOutForm.cxGridDBTvBankCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  with FDSpBank do
  begin
    cxEditCustomerName.Text := FieldByName('BName').AsString;
    cxCEditBankID.Value     := FieldByName('BankID').AsInteger;
    cxEditAccountNum.Text   := FieldByName('AccNo').AsString;
    SearchTransactionHistory(FieldByName('BankID').AsInteger);
  end;

end;

procedure TBankInOutForm.cxGridDBTvBankOrderGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index + 1);
end;

procedure TBankInOutForm.cxGridDBTvListOrderGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index + 1);
end;

function TBankInOutForm.DeleteTransactionHistory: Boolean;
var
 CheckDate : String;
begin
  result := False;

  with DataModuleForm.FDSpSetting(nil, 'usp_TransactionHistory', 'C') do
  begin
    ParamByName('@Option').AsString := 'C';
    ParamByName('@TransactionHistoryID').AsInteger := fdspTransactionHistory.FieldByName('TransactionHistoryID').AsInteger;
    ExecProc;
  end;
  CheckDate := fdspTransactionHistory.FieldByName('TransactionDate').AsString;

  with DataModuleForm.FDSpSetting(nil, 'usp_TransactionHistory', 'E') do
  begin
    ParamByName('@TransactionDate').AsString  := CheckDate;
    ParamByName('@BankID').AsInteger          := Round(cxCEditBankID.Value);
    ExecProc;
  end;
  ReUpdate(fdspTransactionHistory.FieldByName('CustomerID').AsInteger,fdspTransactionHistory.FieldByName('TransactionDate').AsDateTime);
  result := True;
end;

procedure TBankInOutForm.FormActivate(Sender: TObject);
begin
  inherited;
  SearchBank;
end;

procedure TBankInOutForm.FormShow(Sender: TObject);
begin
  inherited;
  SearchBank;
  cxDEditSearchStart.Date := StartOfTheYear(Date);
  cxDEditSearchEnd.Date := today;
end;

procedure TBankInOutForm.ReUpdate(CusID: integer; InOutDate: TDate);
begin
  DataModuleForm.FDSpTemp.Close;
  DataModuleForm.SetFDSpTemp('');

  with DataModuleForm.FDSpSetting(nil, 'usp_TotalPayment', 'E') do
  begin
    ParamByName('@InoutDate').AsDate      := InOutDate;
    ParamByName('@CustomerID').AsInteger  := CusID;
    ExecProc;
  end;
end;

procedure TBankInOutForm.SearchBank;
begin
  with DataModuleForm.FDSpSetting(FDSpBank,'usp_Bank','A') do
  begin
    close;
    Connection := DataModuleForm.FDConnection;
    ParamByName('@Option').AsString := 'A';
    open;
  end;
end;



procedure TBankInOutForm.SearchTransactionHistory(BankID: integer);
var
  SearchStartDate, SearchEndDate: TDateTime;
begin
  inherited;
  // 검색 기간
  if cxDEditSearchStart.Text = '' then
  begin
    SearchStartDate := StrToDate('1900-01-01');
  end else
  begin
    SearchStartDate := cxDEditSearchStart.Date;
  end;

  if cxDEditSearchEnd.Text = '' then
  begin
    SearchEndDate := StrToDate('2099-12-31');
  end else
  begin
    SearchEndDate := cxDEditSearchEnd.Date;
  end;

  with  DataModuleForm.FDSpSetting(FDSpTransactionHistory,'usp_TransactionHistory','A')  do
  begin
    close;
    Connection := DataModuleForm.FDConnection;
    ParamByName('@BankID').AsInteger := BankID;
    ParamByName('@SearchStartDate').AsDate := SearchStartDate;
    ParamByName('@SearchEndDate').AsDate := SearchEndDate;
    open;
  end;
end;

end.
