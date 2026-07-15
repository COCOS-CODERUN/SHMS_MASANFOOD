unit TransactionHistoryUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, cxButtons, cxGroupBox, cxRadioGroup, cxSplitter,System.IOUtils
  ,ComObj,OleCtrls, cxCalendar, cxTextEdit, cxCurrencyEdit,System.DateUtils,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White, Uni,
  MemDS, DBAccess;

type
  TTransactionHistoryModalForm = class(TBaseModalForm)
    DsCustomer: TDataSource;
    cxGBoxLeft: TcxGroupBox;
    cxGBoxCustomerSearch: TcxGroupBox;
    cxGBoxPurchaseSearch: TcxGroupBox;
    cxLabel17: TcxLabel;
    DsPartner: TDataSource;
    cxGBoxPaymentList: TcxGroupBox;
    cxSplitter: TcxSplitter;
    cxGBoxSearch: TcxGroupBox;
    cxGridTransactionhistory: TcxGrid;
    cxGridTvTransactionhistory: TcxGridTableView;
    cxGridTvTransactionhistoryOrder: TcxGridColumn;
    cxGridTvTransactionhistoryTransactionDate: TcxGridColumn;
    cxGridTvTransactionhistoryWithdraw: TcxGridColumn;
    cxGridTvTransactionhistoryDeposit: TcxGridColumn;
    cxGridTvTransactionhistoryBalance: TcxGridColumn;
    cxGridTvTransactionhistoryRemark: TcxGridColumn;
    cxGridTvTransactionhistoryRecord: TcxGridColumn;
    cxGridTvTransactionhistoryPoint: TcxGridColumn;
    cxGridTvTransactionhistoryCustomerID: TcxGridColumn;
    cxGridTvTransactionhistoryPartnerID: TcxGridColumn;
    cxGridLvTransactionhistory: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxBtnAddItem: TcxButton;
    OpenDialog1: TOpenDialog;
    cxStyleRepository: TcxStyleRepository;
    cxStyle_InputQty: TcxStyle;
    cxStyle_InCome: TcxStyle;
    cxStyle_BlueDuck: TcxStyle;
    cxStyle_Center: TcxStyle;
    cxStyleSelect: TcxStyle;
    cxCEditBankID: TcxCurrencyEdit;
    cxGridTvTransactionhistoryCName: TcxGridColumn;
    cxGridTvTransactionhistoryTransactionHistoryID: TcxGridColumn;
    cxLabel9: TcxLabel;
    cxEditCustomerName: TcxTextEdit;
    cxEditAccountNum: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxDEditCheckDate: TcxDateEdit;
    DsBank: TDataSource;
    cxRGroupType: TcxRadioGroup;
    cxGridTvTransactionhistoryBankID: TcxGridColumn;
    cxGridCustomer: TcxGrid;
    cxGridDBTvCustomer: TcxGridDBTableView;
    cxGridDBTvCustomer_Division: TcxGridDBColumn;
    cxGridDBTvCustomerName: TcxGridDBColumn;
    cxGridDBTvPartner: TcxGridDBTableView;
    cxGridDBTvPartnerColumn1: TcxGridDBColumn;
    cxGridDBTvPartnerPartnerID: TcxGridDBColumn;
    cxGridDBTvPartner_Division: TcxGridDBColumn;
    cxGridDBTvPartnerName: TcxGridDBColumn;
    cxGridDBTvPartnerIstax: TcxGridDBColumn;
    cxGridDBTvBank: TcxGridDBTableView;
    cxGridDBTvBankBankID: TcxGridDBColumn;
    cxGridDBTvBankBName: TcxGridDBColumn;
    cxGridDBTvBankAccountNum: TcxGridDBColumn;
    cxGridDBTvBankBalance: TcxGridDBColumn;
    cxGridDBTvBankUName: TcxGridDBColumn;
    cxGridLvCustomer: TcxGridLevel;
    cxGridDBTvCustomerCeoName: TcxGridDBColumn;
    cxGridDBTvPartnerCeoName: TcxGridDBColumn;
    FDSpBank: TUniStoredProc;
    FDqCustomer: TUniQuery;
    FDqPartner: TUniQuery;
    cxGridDBTvCustomerSeq: TcxGridDBColumn;
    procedure cxRGroupTypePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxBtnAddItemClick(Sender: TObject);
    procedure cxBtnExcelUploadClick(Sender: TObject);
    procedure cxGridTvTransactionhistoryCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTvCustomerCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtnSaveClick(Sender: TObject);
    procedure cxGridDBTvCustomerSeqGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
  private
    { Private declarations }
    procedure SearchCustomer;
    procedure SearchPartner;
    function TransactionHistory: Boolean;
    procedure SearchBank;
    procedure ReUpdate(CusID: integer; InOutDate: TDate);
  public
    { Public declarations }
  end;

var
  TransactionHistoryModalForm: TTransactionHistoryModalForm;

implementation

{$R *.dfm}

uses DataModule;

{ TBaseModalForm1 }

procedure TTransactionHistoryModalForm.cxBtnAddItemClick(Sender: TObject);
begin
  inherited;
  cxGridTvTransactionhistory.DataController.AppendRecord;
end;

procedure TTransactionHistoryModalForm.cxBtnExcelUploadClick(Sender: TObject);
var
    ExcelApp, ExcelBook, ExcelSheet : Variant;
    i, j,loopcnt,intcheck: Integer; // 순환변수
    Nullcnt,ExelTypeNo: integer;
begin
  inherited;
   try
    //엑셀을 실행
    ExcelApp := CreateOLEObject('Excel.Application');
   except
     ShowMessage('Excel이 설치되어 있지 않습니다!!!');
     Exit;
   end;

  Try
    ExcelApp.Visible := False;
    ExcelApp.DisplayAlerts := False;
    //엑셀 통합문서 열기
    if OpenDialog1.Execute then
    begin
      ExcelBook := ExcelApp.WorkBooks.Open(OpenDialog1.FileName);
      ExcelBook := ExcelApp.WorkBooks.item[1]; //워크 쉬트 설정
      //일단 개별문서는 sheet1으로 고정
      ExcelSheet := ExcelBook.Worksheets.Item[1];

      cxGridTvTransactionhistory.DataController.BeginUpdate;

      for i := 9 to ExcelSheet.UsedRange.Rows.count do begin
        if TryStrToInt(VarToStr(ExcelSheet.Cells[i,1]),intcheck) = false then
        begin
          Continue;
        end;
        loopcnt := cxGridTvTransactionhistory.DataController.AppendRecord;
        cxGridTvTransactionhistory.DataController.Values[loopcnt, cxGridTvTransactionhistoryOrder.Index]            := VarToStr(ExcelSheet.Cells[i,1]);
        cxGridTvTransactionhistory.DataController.Values[loopcnt, cxGridTvTransactionhistoryTransactionDate.Index]  := VarToStr(ExcelSheet.Cells[i,3]);
        cxGridTvTransactionhistory.DataController.Values[loopcnt, cxGridTvTransactionhistoryWithdraw.Index]         := VarToStr(ExcelSheet.Cells[i,5]);
        cxGridTvTransactionhistory.DataController.Values[loopcnt, cxGridTvTransactionhistoryDeposit.Index]          := VarToStr(ExcelSheet.Cells[i,6]);
        cxGridTvTransactionhistory.DataController.Values[loopcnt, cxGridTvTransactionhistoryBalance.Index]          := VarToStr(ExcelSheet.Cells[i,7]);
        cxGridTvTransactionhistory.DataController.Values[loopcnt, cxGridTvTransactionhistoryRemark.Index]           := VarToStr(ExcelSheet.Cells[i,9]);
        cxGridTvTransactionhistory.DataController.Values[loopcnt, cxGridTvTransactionhistoryRecord.Index]           := VarToStr(ExcelSheet.Cells[i,11]);
        cxGridTvTransactionhistory.DataController.Values[loopcnt, cxGridTvTransactionhistoryPoint.Index]            := VarToStr(ExcelSheet.Cells[i,13]);
      end;
      cxGridTvTransactionhistory.DataController.EndUpdate;

      ExcelApp.WorkBooks.Close;
      ExcelApp.quit;
      ExcelApp := unassigned;
    end;
  Except
    on err:exception do
    begin
      ExcelApp.WorkBooks.Close;
      ExcelApp.quit;
      ExcelApp := unassigned;
      ShowMessage('작업이 취소되었습니다. Data확인요망-'+err.message);
    end;
  end;
end;

procedure TTransactionHistoryModalForm.cxBtnSaveClick(Sender: TObject);
begin
  inherited;
  if TransactionHistory then
  begin
    FDSpBank.Refresh;
    ShowMessage(MessageToSave);
    TransactionHistoryModalForm.ModalResult := mrOk;
  end;
end;

procedure TTransactionHistoryModalForm.cxGridDBTvCustomerCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  i: integer;
begin
  inherited;

  with cxGridTvTransactionhistory do
  begin
    for I := 0 to Controller.SelectedRecordCount -1 do
    begin
      if cxRGroupType.ItemIndex = 0 then
      begin
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCustomerID.Index] := FDqCustomer.FieldByName('CustomerID').AsInteger;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryPartnerID.Index]  := 0;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCName.Index]      := FDqCustomer.FieldByName('CustomerName').AsString;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryBankID.Index]     := 0;
      end
      else if cxRGroupType.ItemIndex = 1 then
      begin
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryPartnerID.Index]  := FDqPartner.FieldByName('CustomerID').AsInteger;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCustomerID.Index] := 0;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCName.Index]      := FDqPartner.FieldByName('CustomerName').AsString;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryBankID.Index]     := 0;
      end
      else if cxRGroupType.ItemIndex = 2 then
      begin
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryBankID.Index]     := FDSpBank.FieldByName('BankID').AsInteger;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCustomerID.Index] := 0;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryPartnerID.Index]  := 0;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCName.Index]      := FDSpBank.FieldByName('AccountNum').AsString;
      end;
    end;
  end;
end;

procedure TTransactionHistoryModalForm.cxGridDBTvCustomerSeqGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;

  AText := IntToStr(ARecord.Index + 1);
end;

procedure TTransactionHistoryModalForm.cxGridTvTransactionhistoryCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
//  if (cxGridTvTransactionhistory.DataController.RecordCount = 0)  then
//  begin
//    EXIT;
//  end;


  if (AViewInfo.GridRecord.Values[cxGridTvTransactionhistoryCustomerID.Index] = null)
  and (AViewInfo.GridRecord.Values[cxGridTvTransactionhistoryPartnerID.Index] = null)
  then
  begin
    ACanvas.Brush.Color := cxStyle_BlueDuck.Color;
  end;

  if AViewInfo.Selected then
  begin
    ACanvas.Brush.Color := cxStyleSelect.Color;
  end;
end;

procedure TTransactionHistoryModalForm.cxRGroupTypePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cxRGroupType.ItemIndex = 0 then
  begin
    cxGridLvCustomer.GridView := cxGridDBTvCustomer;
    SearchCustomer;
  end
  else if cxRGroupType.ItemIndex = 1 then
  begin
    cxGridLvCustomer.GridView := cxGridDBTvPartner;
    SearchPartner;
  end
  else if cxRGroupType.ItemIndex = 2 then
  begin
    cxGridLvCustomer.GridView := cxGridDBTvBank;
    SearchBank;
  end;
end;

procedure TTransactionHistoryModalForm.FormShow(Sender: TObject);
begin
  inherited;
  SearchCustomer;
  SearchBank;
end;

procedure TTransactionHistoryModalForm.ReUpdate(CusID: integer;
  InOutDate: TDate);
begin

  with DataModuleForm.FDSpSetting(nil, 'usp_TotalPayment', 'N') do
  begin
    ParamByName('@InoutDate').AsDate      := InOutDate;
    ParamByName('@CustomerID').AsInteger  := CusID;
    ExecProc;
  end;
end;

procedure TTransactionHistoryModalForm.SearchBank;
begin
  with DataModuleForm.FDSpSetting(FDSpBank,'usp_Bank','A')  do
  begin
    open;
  end;
end;

procedure TTransactionHistoryModalForm.SearchCustomer;
begin
  with DataModuleForm.FDQuerySetting(FDqCustomer) do
  begin
    SQL.Add(' SELECT *, dbo.GetBCDName(SubDivision) As SubDivisionTxT ');
    SQL.Add(' FROM MasterCustomer                                     ');
    SQL.Add(' WHERE IsUsable = 1 AND CustomerDivision in(''BD001'', ''BD022'')  ');
    open;
  end;
end;

procedure TTransactionHistoryModalForm.SearchPartner;
begin
  with DataModuleForm.FDQuerySetting(FDqPartner) do
  begin
    SQL.Add(' SELECT *, dbo.GetBCDName(SubDivision) As SubDivisionTxT ');
    SQL.Add(' FROM MasterCustomer                                     ');
    SQL.Add(' WHERE IsUsable = 1 AND CustomerDivision in(''BD001'', ''BD022'')  ');
    Open;
  end;
end;

function TTransactionHistoryModalForm.TransactionHistory: Boolean;
var
  i: integer;
begin
  Result := False;
  for I := 0 to cxGridTvTransactionhistory.DataController.RecordCount-1 do
  begin
    if (i = 0) then
    begin
      cxDEditCheckDate.Date := StrToDate(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryTransactionDate.Index]));
      Continue
    end;

    if StrToDate(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryTransactionDate.Index])) < cxDEditCheckDate.Date then
    begin
      cxDEditCheckDate.Date := StrToDate(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryTransactionDate.Index]));
    end;
  end;

  for I := 0 to cxGridTvTransactionhistory.DataController.RecordCount-1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_TransactionHistory', 'B') do
    begin
      ParamByName('@ItemName').Value          := '';
      ParamByName('@TransactionDate').AsString :=
        cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryTransactionDate.Index];
      ParamByName('@TransactionHistoryID').AsInteger :=
        StrToIntdef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryTransactionHistoryID.Index]),0);
      ParamByName('@Deposit').AsCurrency :=
        StrToCurrdef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryDeposit.Index]),0);
      ParamByName('@Withdraw').AsCurrency :=
        StrToCurrdef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryWithdraw.Index]),0);
      ParamByName('@Balance').AsCurrency :=
        StrToCurrdef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryBalance.Index]),0);
      ParamByName('@Remark').AsString :=
        vartostrdef(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryRemark.Index],'');
      ParamByName('@Record').AsString :=
        vartostrdef(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryRecord.Index],'');
      ParamByName('@Point').AsString :=
        vartostrdef(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryPoint.Index],'');
      ParamByName('@BankID').AsInteger := Round(cxCEditBankID.Value);
      ParamByName('@CustomerID').AsInteger :=
        StrToIntDef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryCustomerID.Index]),0);
      ParamByName('@PartnerID').AsInteger :=
        StrToIntDef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryPartnerID.Index]),0);
      ParamByName('@AccountBankID').AsInteger :=
        StrToIntDef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryBankID.Index]),0);

      ExecProc;

      if StrToIntDef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryBankID.Index]),0) <> 0 then
      begin
        with DataModuleForm.FDSpSetting(nil, 'usp_TransactionHistory', 'E') do
        begin
          ParamByName('@TransactionDate').AsString  := cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryTransactionDate.Index];
          ParamByName('@BankID').AsInteger          := StrToIntDef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryBankID.Index]),0);
          ExecProc;
        end;
      end;
    end;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_TransactionHistory', 'E') do
  begin
    ParamByName('@TransactionDate').AsString  := cxDEditCheckDate.Text;
    ParamByName('@BankID').AsInteger          := Round(cxCEditBankID.Value);
    ExecProc;
  end;

  Result := True;
end;

end.
