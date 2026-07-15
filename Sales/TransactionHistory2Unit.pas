unit TransactionHistory2Unit;

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
  ,ComObj,OleCtrls, cxCalendar, cxTextEdit, cxCurrencyEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  cxDBLookupComboBox, Uni, MemDS, DBAccess;

type
  TTransactionHistory2ModalForm = class(TBaseModalForm)
    DsCustomer: TDataSource;
    cxGBoxLeft: TcxGroupBox;
    cxGBoxCustomerSearch: TcxGroupBox;
    cxGBoxPurchaseSearch: TcxGroupBox;
    cxLabel17: TcxLabel;
    cxRGroupType: TcxRadioGroup;
    DsPartner: TDataSource;
    cxGBoxPaymentList: TcxGroupBox;
    cxSplitter: TcxSplitter;
    cxGBoxSearch: TcxGroupBox;
    cxGridTransactionhistory: TcxGrid;
    cxGridTvTransactionhistory: TcxGridTableView;
    cxGridLvTransactionhistory: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxBtnAddItem: TcxButton;
    cxBtnExcelUpload: TcxButton;
    OpenDialog1: TOpenDialog;
    cxStyleRepository: TcxStyleRepository;
    cxStyle_InputQty: TcxStyle;
    cxStyle_InCome: TcxStyle;
    cxStyle_BlueDuck: TcxStyle;
    cxStyle_Center: TcxStyle;
    cxStyleSelect: TcxStyle;
    cxCEditBankID: TcxCurrencyEdit;
    cxLabel9: TcxLabel;
    cxEditCustomerName: TcxTextEdit;
    cxEditAccountNum: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxGridTvTransactionhistoryColumn1: TcxGridColumn;
    cxGridTvTransactionhistoryColumn2: TcxGridColumn;
    cxGridTvTransactionhistoryColumn3: TcxGridColumn;
    cxGridTvTransactionhistoryColumn4: TcxGridColumn;
    cxGridTvTransactionhistoryColumn5: TcxGridColumn;
    cxGridTvTransactionhistoryColumn6: TcxGridColumn;
    cxGridTvTransactionhistoryColumn7: TcxGridColumn;
    cxGridTvTransactionhistoryColumn8: TcxGridColumn;
    cxGridTvTransactionhistoryColumn9: TcxGridColumn;
    cxGridTvTransactionhistoryColumn10: TcxGridColumn;
    cxGridTvTransactionhistoryColumn11: TcxGridColumn;
    cxGridTvTransactionhistoryColumn12: TcxGridColumn;
    cxGridTvTransactionhistoryColumn13: TcxGridColumn;
    cxGridTvTransactionhistoryColumn14: TcxGridColumn;
    cxGridTvTransactionhistoryColumn15: TcxGridColumn;
    cxGridTvTransactionhistoryColumn16: TcxGridColumn;
    cxGridTvTransactionhistoryColumn17: TcxGridColumn;
    cxGridTvTransactionhistoryColumn18: TcxGridColumn;
    cxGridTvTransactionhistoryColumn19: TcxGridColumn;
    cxGridTvTransactionhistoryColumn20: TcxGridColumn;
    cxGridTvTransactionhistoryOrder: TcxGridColumn;
    cxGridTvTransactionhistoryCName: TcxGridColumn;
    cxGridTvTransactionhistoryCustomerID: TcxGridColumn;
    cxGridTvTransactionhistoryPartnerID: TcxGridColumn;
    cxGroupBox2: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel10: TcxLabel;
    cxDEditCheckDate: TcxDateEdit;
    DsBank: TDataSource;
    cxGridTvTransactionhistoryBankID: TcxGridColumn;
    cxDEditTemp: TcxDateEdit;
    DsAccount: TDataSource;
    cxButton1: TcxButton;
    cxGridCustomer: TcxGrid;
    cxGridDBTvCustomer: TcxGridDBTableView;
    cxGridDBTvCustomerOrders: TcxGridDBColumn;
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
    FDqCustomer: TUniQuery;
    FDqPartner: TUniQuery;
    FDSpBank: TUniStoredProc;
    FDSpAccount: TUniStoredProc;
    procedure cxRGroupTypePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTvPartnerColumn1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxBtnAddItemClick(Sender: TObject);
    procedure cxBtnExcelUploadClick(Sender: TObject);
    procedure cxGridTvTransactionhistoryCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTvCustomerOrdersGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGridDBTvCustomerCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridTvTransactionhistoryOrderGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxBtnSaveClick(Sender: TObject);
    procedure cxBtnRegisterClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SearchCustomer;
    procedure SearchPartner;
    function TransactionHistory: Boolean;
    procedure SearchBank;
    procedure ReUpdate(CusID: integer; InOutDate: TDate);
    procedure SearchAccount;
  public
    { Public declarations }
  end;

var
  TransactionHistory2ModalForm: TTransactionHistory2ModalForm;

implementation

{$R *.dfm}

uses DataModule;

{ TBaseModalForm1 }

procedure TTransactionHistory2ModalForm.cxBtnAddItemClick(Sender: TObject);
begin
  inherited;
  cxGridTvTransactionhistory.DataController.AppendRecord;
end;

procedure TTransactionHistory2ModalForm.cxBtnExcelUploadClick(Sender: TObject);
var
    ExcelApp, ExcelBook, ExcelSheet : Variant;
    i, j,k,loopcnt,intcheck: Integer; // 순환변수
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
    K := 1;
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
        for i := 1 to ExcelSheet.UsedRange.Rows.count do
        begin
          cxGridTvTransactionhistory.DataController.AppendRecord;
//          for j := 1 to ExcelSheet.UsedRange.columns.count do
//          begin
          cxGridTvTransactionhistory.DataController.Values[i-1,3-K] := VarToStr(ExcelSheet.Cells[i,4]);
          cxGridTvTransactionhistory.DataController.Values[i-1,4-K] := VarToStr(ExcelSheet.Cells[i,6]);
          cxGridTvTransactionhistory.DataController.Values[i-1,5-K] := VarToStr(ExcelSheet.Cells[i,7]);
          cxGridTvTransactionhistory.DataController.Values[i-1,6-K] := VarToStr(ExcelSheet.Cells[i,8]);
          cxGridTvTransactionhistory.DataController.Values[i-1,7-K] := VarToStr(ExcelSheet.Cells[i,10]);
          cxGridTvTransactionhistory.DataController.Values[i-1,8-K] := VarToStr(ExcelSheet.Cells[i,12]);
          cxGridTvTransactionhistory.DataController.Values[i-1,9-K] := VarToStr(ExcelSheet.Cells[i,14]);
//          end;
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

procedure TTransactionHistory2ModalForm.cxBtnRegisterClick(Sender: TObject);
begin
  inherited;
  if TransactionHistory then
  begin
    ShowMessage(MessageToSave);
    TransactionHistory2ModalForm.ModalResult := mrOk;
  end;
end;

procedure TTransactionHistory2ModalForm.cxBtnSaveClick(Sender: TObject);
begin
  inherited;
  if TransactionHistory then
  begin
    ShowMessage(MessageToSave);
    TransactionHistory2ModalForm.ModalResult := mrOk;
  end;
end;

procedure TTransactionHistory2ModalForm.cxButton1Click(Sender: TObject);
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
        for i := 1 to ExcelSheet.UsedRange.Rows.count do
        begin
          cxGridTvTransactionhistory.DataController.AppendRecord;
          for j := 1 to ExcelSheet.UsedRange.columns.count do
          begin
            cxGridTvTransactionhistory.DataController.Values[i-1,j + 1] := VarToStr(ExcelSheet.Cells[i,j]);
          end;
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

procedure TTransactionHistory2ModalForm.cxGridDBTvCustomerCellDblClick(
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
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCustomerID.Index] :=
          FDqCustomer.FieldByName('CustomerID').AsInteger;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryPartnerID.Index] :=
          0;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryBankID.Index] :=
          0;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCName.Index] :=
          FDqCustomer.FieldByName('CustomerName').AsString;
      end
      else if cxRGroupType.ItemIndex = 1 then
      begin
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryPartnerID.Index] :=
          FDqPartner.FieldByName('CustomerID').AsInteger;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryBankID.Index] :=
          0;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCustomerID.Index] :=
          0;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCName.Index] :=
          FDqPartner.FieldByName('CustomerName').AsString;
      end
      else if cxRGroupType.ItemIndex = 2 then
      begin
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryBankID.Index] :=
          FDSpBank.FieldByName('BankID').AsInteger;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCustomerID.Index] :=
          0;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryPartnerID.Index] :=
          0;
        DataController.Values[Controller.SelectedRecords[i].Index,cxGridTvTransactionhistoryCName.Index] :=
          FDSpBank.FieldByName('AccountNum').AsString;
      end;
    end;
  end;
end;

procedure TTransactionHistory2ModalForm.cxGridDBTvCustomerOrdersGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index + 1);
end;

procedure TTransactionHistory2ModalForm.cxGridDBTvPartnerColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index + 1);
end;

procedure TTransactionHistory2ModalForm.cxGridTvTransactionhistoryCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (cxGridTvTransactionhistory.DataController.RecordCount = 0)  then
  begin
    EXIT;
  end;
//
//
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

procedure TTransactionHistory2ModalForm.cxGridTvTransactionhistoryOrderGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index + 1);
end;

procedure TTransactionHistory2ModalForm.cxRGroupTypePropertiesEditValueChanged(
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

procedure TTransactionHistory2ModalForm.FormShow(Sender: TObject);
begin
  inherited;
  SearchCustomer;
  SearchBank;
  SearchAccount;
end;

procedure TTransactionHistory2ModalForm.ReUpdate(CusID: integer;
  InOutDate: TDate);
begin
//  DataModuleForm.FDSpTemp.Close;
//  DataModuleForm.SetFDSpTemp('usp_TotalPayment');
//
  with DataModuleForm.FDSpTemp do
  begin
//    Params.ClearValues;
//    ParamByName('@Option').AsString       := InOutListReUpdate;
    ParamByName('@InoutDate').AsDate      := InOutDate;
    ParamByName('@CustomerID').AsInteger  := CusID;
    ExecProc;
  end;
end;

procedure TTransactionHistory2ModalForm.SearchAccount;
begin
//  with DataModuleForm.FDSpSetting(FDSpAccount, 'usp_AccountSubject', 'A') do
//  begin
//    Open;
//  end;
end;

procedure TTransactionHistory2ModalForm.SearchBank;
begin
  with DataModuleForm.FDSpSetting(FDSpBank,'usp_Bank','A') do
  begin
    close;
    Connection := DataModuleForm.FDConnection;
    ParamByName('@Option').AsString := 'A';
    open;
  end;
end;

procedure TTransactionHistory2ModalForm.SearchCustomer;
begin
  with FDqCustomer do
  begin
    Close;
    Connection := DataModuleForm.FDConnection;
    SQL.Clear;
    SQL.Add(' with TempTable as (                                                                                        ');
    SQL.Add(' SELECT *, (SELECT DetailName FROM BasicCodeDetail WHERE BasicCodeDetailID = SubDivision) AS SubDivisionTxT ');
    SQL.Add(' FROM MasterCustomer                                                                                        ');
    SQL.Add(' WHERE IsUsable = 1 AND CustomerDivision in(464, 509) )                                                     ');
    SQL.Add(' select * from TempTable                                                                                    ');
    Open;
  end;
end;

procedure TTransactionHistory2ModalForm.SearchPartner;
begin
  with FDqPartner do
  begin
    Close;
    Connection := DataModuleForm.FDConnection;
    SQL.Clear;
    SQL.Add(' with TempTable as (                                                                                        ');
    SQL.Add(' SELECT *, (SELECT DetailName FROM BasicCodeDetail WHERE BasicCodeDetailID = SubDivision) AS SubDivisionTxT ');
    SQL.Add(' FROM MasterCustomer                                                                                        ');
    SQL.Add(' WHERE IsUsable = 1 AND CustomerDivision in(463, 509) )                                                     ');
    SQL.Add(' select * from TempTable                                                                                    ');
    Open;
  end;
end;

function TTransactionHistory2ModalForm.TransactionHistory: Boolean;
var
  i: integer;
  OutDate: Tdate;
begin
  Result := False;

  for I := 0 to cxGridTvTransactionhistory.DataController.RecordCount-1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_TransactionHistory', 'B') do
    begin
      DataModuleForm.FDSpTemp.ParamByName('@TransactionDate').AsString :=

      cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[2].index];

      DataModuleForm.FDSpTemp.ParamByName('@TransactionHistoryID').AsInteger := 0;
      DataModuleForm.FDSpTemp.ParamByName('@ItemName').Value          := '';
      //출금
      if cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[3].index] = ''  then
      begin
        DataModuleForm.FDSpTemp.ParamByName('@Withdraw').AsCurrency := 0;
      end
      else begin
        DataModuleForm.FDSpTemp.ParamByName('@Withdraw').AsCurrency :=
        cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[3].index];
      end;

      //입금
      if cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[4].index] = '' then
      begin
        DataModuleForm.FDSpTemp.ParamByName('@Deposit').AsCurrency := 0;
      end
      else begin
        DataModuleForm.FDSpTemp.ParamByName('@Deposit').AsCurrency :=
        cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[4].index];
      end;

      if cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[5].index] = '' then
      begin
        DataModuleForm.FDSpTemp.ParamByName('@Balance').AsCurrency := 0;
      end
      else begin
        DataModuleForm.FDSpTemp.ParamByName('@Balance').AsCurrency :=
        cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[5].index];
      end;

      if cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[6].index] = '' then
      begin
        DataModuleForm.FDSpTemp.ParamByName('@Remark').AsString := '';
      end
      else begin
        DataModuleForm.FDSpTemp.ParamByName('@Remark').AsString :=
        vartostrdef(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[6].index],'');
      end;

      if cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[7].index] = '' then
      begin
        DataModuleForm.FDSpTemp.ParamByName('@Record').AsString := '';
      end
      else begin
        DataModuleForm.FDSpTemp.ParamByName('@Record').AsString :=
        vartostrdef(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[7].index],'');
      end;
//
      if cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[8].index] = '' then
      begin
        DataModuleForm.FDSpTemp.ParamByName('@Point').AsString := '';
      end
      else begin
        DataModuleForm.FDSpTemp.ParamByName('@Point').AsString :=
        vartostrdef(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistory.Columns[8].index],'');
      end;
      DataModuleForm.FDSpTemp.ParamByName('@BankID').AsInteger :=
      Round(cxCEditBankID.Value);

      DataModuleForm.FDSpTemp.ParamByName('@CustomerID').AsInteger :=
        StrToIntDef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryCustomerID.Index]),0);
      DataModuleForm.FDSpTemp.ParamByName('@PartnerID').AsInteger :=
        StrToIntDef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryPartnerID.Index]),0);
      DataModuleForm.FDSpTemp.ParamByName('@AccountBankID').AsInteger :=
        StrToIntDef(vartostr(cxGridTvTransactionhistory.DataController.Values[I,cxGridTvTransactionhistoryBankID.Index]),0);

      DataModuleForm.FDSpTemp.ParamByName('@writer').AsString := LoginUserName;

      DataModuleForm.FDSpTemp.ExecProc;

      if (i = 0) then
      begin
        cxDEditCheckDate.Date := OutDate;
        Continue
      end;

      if OutDate < cxDEditCheckDate.Date then
      begin
        cxDEditCheckDate.Date := OutDate;
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
