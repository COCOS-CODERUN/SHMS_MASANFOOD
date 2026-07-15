unit PurchaseInOutUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxGridLevel,
  ShellAPI,System.IOUtils, cxGridExportLink,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSplitter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxTextEdit, cxCheckBox,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, System.DateUtils,
  cxRadioGroup, cxMemo, frxClass, frxDBSet, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.ODBC, FireDAC.Phys.ODBCDef,
  FireDAC.VCLUI.Wait, ComObj, Uni, MemDS, DBAccess;

type
  TPurchaseInOutForm = class(TBaseChildForm)
    cxGBox_ComList: TcxGroupBox;
    cxGrid_com: TcxGrid;
    cxGridDBTv_com: TcxGridDBTableView;
    cxGridDBTv_com_seq: TcxGridDBColumn;
    cxGridDBTv_com_name: TcxGridDBColumn;
    cxGridLv_com: TcxGridLevel;
    cxSplitter_List: TcxSplitter;
    DS_C: TDataSource;
    cxGBox_Input: TcxGroupBox;
    cxGBox_Search: TcxGroupBox;
    cxLabel9: TcxLabel;
    cxEdit_CustomerName: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxDEdit_sdate: TcxDateEdit;
    cxDEdit_Edate: TcxDateEdit;
    cxGBoxPaymentList: TcxGroupBox;
    cxGrid_List: TcxGrid;
    cxGridLv_List: TcxGridLevel;
    cxCEdit_CustomerID: TcxCurrencyEdit;
    cxGBox_Detail: TcxGroupBox;
    cxSplitter_Detail: TcxSplitter;
    cxGridLv_Detail: TcxGridLevel;
    cxGrid_Detail: TcxGrid;
    cxGridTv_Detail: TcxGridTableView;
    cxGridTv_Detail_seq: TcxGridColumn;
    cxGridTv_Detail_name: TcxGridColumn;
    cxGridTv_Detail_standard: TcxGridColumn;
    cxGridTv_Detail_qty: TcxGridColumn;
    cxGridTv_Detail_unitPrice: TcxGridColumn;
    cxGridTv_Detail_Amount: TcxGridColumn;
    cxGridTv_Detail_tax: TcxGridColumn;
    cxGridTv_Detail_TotalPrice: TcxGridColumn;
    cxGridTv_Detail_remark: TcxGridColumn;
    PopupMenu_detail: TPopupMenu;
    Line_Add: TMenuItem;
    Line_Del: TMenuItem;
    cxGridTv_Detail_code: TcxGridColumn;
    cxGridTv_Detail_ItemID: TcxGridColumn;
    cxGridTv_Detail_TaxCheck: TcxGridColumn;
    cxGridTv_Detail_InOutID: TcxGridColumn;
    cxCEdit_InOutID: TcxCurrencyEdit;
    DS_L: TDataSource;
    cxGBox_InputDetail: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxButton1: TcxButton;
    N2: TMenuItem;
    DsBank: TDataSource;
    cxGBox_Payment: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxDEdit_Pdate: TcxDateEdit;
    cxLCBBox_Bank: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxCEdit_payment: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxCEdit_Balance: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    cxEdit_contents: TcxTextEdit;
    cxBtn_pay: TcxButton;
    cxBtn_save2: TcxButton;
    cxBtn_cancel2: TcxButton;
    cxGridTv_Detail_ID: TcxGridColumn;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_Division: TcxGridColumn;
    cxGridTv_List_InOutDate: TcxGridColumn;
    cxGridTv_List_ItemName: TcxGridColumn;
    cxGridTv_List_Cost: TcxGridColumn;
    cxGridTv_List_Tax: TcxGridColumn;
    cxGridTv_List_Amount: TcxGridColumn;
    cxGridTv_List_Charge: TcxGridColumn;
    cxGridTv_List_Balance: TcxGridColumn;
    cxGridTv_List_ID: TcxGridColumn;
    cxGridTv_List_check: TcxGridColumn;
    PopupMenu_Head: TPopupMenu;
    Head_Add: TMenuItem;
    cxLabel8: TcxLabel;
    cxLCBBox_Kind: TcxLookupComboBox;
    DS_Kind: TDataSource;
    cxLabel10: TcxLabel;
    cxRGroup_Type: TcxRadioGroup;
    cxRGroup_Division: TcxRadioGroup;
    cxLabel11: TcxLabel;
    cxGridTv_List_OutCharge: TcxGridColumn;
    cxGridTv_Detail_InOutCharge: TcxGridColumn;
    cxGBox_History: TcxGroupBox;
    cxGridDBTv_history: TcxGridDBTableView;
    cxGridLv_history: TcxGridLevel;
    cxGrid_history: TcxGrid;
    cxGridDBTv_history_date: TcxGridDBColumn;
    cxGridDBTv_history_price: TcxGridDBColumn;
    DS_H: TDataSource;
    cxLabel_memo: TcxLabel;
    cxLabel15: TcxLabel;
    cxMemo_CusRemark: TcxMemo;
    N1: TMenuItem;
    Data_Copy: TMenuItem;
    cxGridDBTv_com_Division: TcxGridDBColumn;
    cxButton2: TcxButton;
    frxReport_List: TfrxReport;
    fds_List: TfrxDBDataset;
    fuds_Data: TfrxUserDataSet;
    cxBtn_Upload: TcxButton;
    FDConnection2: TFDConnection;
    OpenDialog1: TOpenDialog;
    frxReport_Daily: TfrxReport;
    fds_Daily: TfrxDBDataset;
    FDSP_list: TUniStoredProc;
    FDSpBank: TUniStoredProc;
    FDSP_INPUT: TUniStoredProc;
    FDSP_H: TUniStoredProc;
    FDSp_Temp: TUniStoredProc;
    FDQuery_com: TUniQuery;
    FDQuery_Kind: TUniQuery;
    UniQuery_comm: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTv_com_seqGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cxGridDBTv_comCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Line_AddClick(Sender: TObject);
    procedure cxGridTv_Detail_codePropertiesEditValueChanged(Sender: TObject);
    procedure cxGridTv_Detail_qtyPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridTv_DetailEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure Line_DelClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxBtn_cancel2Click(Sender: TObject);
    procedure cxBtn_save2Click(Sender: TObject);
    procedure cxBtn_payClick(Sender: TObject);
    procedure cxGridTv_ListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridTv_List_DivisionCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Head_AddClick(Sender: TObject);
    procedure cxGridTv_ListEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxCEdit_paymentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridTv_DetailCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxMemo_CusRemarkPropertiesEditValueChanged(Sender: TObject);
    procedure Data_CopyClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxBtn_PrintClick(Sender: TObject);
    procedure fuds_DataGetValue(const VarName: string; var Value: Variant);
    procedure cxBtn_UploadClick(Sender: TObject);
    procedure cxGridTv_Detail_taxPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure CalPriceOfDetailGrid(RecordIndex: Integer);
    procedure SearchDetailList;
    function GeneralSave : Boolean;
    function HeadLineAddSave : Boolean;
    procedure BalanceCalculation(CusID : Integer; InputDate : string);
  public
    { Public declarations }
  end;

var
  PurchaseInOutForm: TPurchaseInOutForm;

  loopcnt : Integer;
  Last_FocusedIndex : Integer;
  Search_Flag : Boolean;
  Save_Flag : string;
  division: string;

implementation

{$R *.dfm}

uses DataModule, ItemModalUnit;

//auto seq
procedure TPurchaseInOutForm.cxGridDBTv_com_seqGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;

  AText := IntToStr(ARecord.Index +1);
end;

//form create
procedure TPurchaseInOutForm.FormCreate(Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDSpSetting(FDSpBank, 'usp_Bank','A') do
  begin
    Open;
  end;

  DataModuleForm.SearchCode('결재 방법', FDQuery_Kind);

  with DataModuleForm.FDQuerySetting(FDQuery_com) do
  begin
    SQL.Add(' SELECT *, dbo.GetBCDName(SubDivision) As SubDivisionTxT ');
    SQL.Add(' FROM MasterCustomer                                     ');
    SQL.Add(' WHERE IsUsable = 1 AND CustomerDivision in(''BD002'', ''BD022'')  ');
    Open;
  end;

  cxDEdit_date.Date  := Date;
  cxDEdit_sdate.Date := StartOfTheYear(Date);
  cxDEdit_edate.Date := Date;

  Last_FocusedIndex := -1;

  cxBtn_NewClick(self);
end;

//form key down
procedure TPurchaseInOutForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = VK_F9 then
  begin
    Line_AddClick(Self);
  end;
end;

procedure TPurchaseInOutForm.FormShow(Sender: TObject);
begin
  inherited;

  {$IFDEF DEBUG}
    cxCEdit_InOutID.Visible           := True;
    cxCEdit_CustomerID.Visible        := True;
    cxGridTv_List_ID.Visible          := True;
    cxGridTv_List_check.Visible       := True;
    cxGridTv_Detail_ItemID.Visible    := True;
    cxGridTv_Detail_InOutID.Visible   := True;
    cxGridTv_Detail_ID.Visible        := True;
    cxGridTv_Detail_TaxCheck.Visible  := True;
  {$ELSE}
    cxCEdit_InOutID.Visible           := False;
    cxCEdit_CustomerID.Visible        := False;
    cxGridTv_List_ID.Visible          := False;
    cxGridTv_List_check.Visible       := False;
    cxGridTv_Detail_ItemID.Visible    := False;
    cxGridTv_Detail_InOutID.Visible   := False;
    cxGridTv_Detail_ID.Visible        := False;
    cxGridTv_Detail_TaxCheck.Visible  := False;
  {$ENDIF}
  cxGBox_Payment.Left := 400;
  cxGBox_Payment.Top  := 100;
end;

procedure TPurchaseInOutForm.fuds_DataGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  with DataModuleForm.FDSpSetting(FDSP_Temp,'usp_monitoring','D') do
  begin
    ParamByName('@SDate').AsString :=  cxDEdit_Sdate.Text;
    ParamByName('@EDate').AsString :=  cxDEdit_Edate.Text;
    ParambyName('@Checked').Value := 2;
    ParamByName('@CustomerID').Value := ROUND(cxCEdit_CustomerID.Value);
    open;
  end;

  if CompareText(VarName, 'TDate') = 0 then
  begin
    Value := Formatdatetime('YYYY-MM-DD hh:mm:ss',now);
  end
  else if CompareText(VarName, 'SDate') = 0 then
  begin
    Value := cxDEdit_Sdate.Text;
  end
  else if CompareText(VarName, 'EDate') = 0 then
  begin
    Value := cxDEdit_Edate.Text;
  end
  else if CompareText(VarName, 'CustomerName') = 0 then
  begin
    Value := cxEdit_CustomerName.Text;
  end
  else if CompareText(VarName, 'IpGm') = 0 then
  begin
    Value := FDSP_Temp.FieldByName('IpGm').Value;
  end
  else if CompareText(VarName, 'IpGo') = 0 then
  begin
    Value := FDSP_Temp.FieldByName('IpGo').Value;
  end
  else if CompareText(VarName, 'CGm') = 0 then
  begin
    Value := FDSP_Temp.FieldByName('CGm').Value;
  end
  else if CompareText(VarName, 'BC') = 0 then
  begin
    Value := FDSP_Temp.FieldByName('BC').Value;
  end
  else if CompareText(VarName, 'TotalSum') = 0 then
  begin
    Value := strtointdef(vartostr(FDSP_Temp.FieldByName('IpGm').Value),0) + strtointdef(vartostr(FDSP_Temp.FieldByName('IpGo').Value),0)
             - strtointdef(vartostr(FDSP_Temp.FieldByName('BC').Value),0);
  end;

end;

//new
procedure TPurchaseInOutForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  cxGridTv_Detail.DataController.RecordCount := 0;
  cxCEdit_InOutID.Value := 0;
  cxDEdit_Date.Date := Date;
//  cxCEdit_CustomerID.Value := 0;
//  cxEdit_CustomerName.Clear;

  Search_Flag := False;
  Save_Flag := '';
  division := '';
  cxGBox_Payment.Visible := False;
  Line_AddClick(self);
end;

//save
procedure TPurchaseInOutForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  EssentialItem(cxEdit_CustomerName, '매입처');

  if cxGridTv_Detail.DataController.RecordCount = 0 then
  begin
    if Save_Flag = '' then
    begin
      exit;
    end;
  end;

  if Save_Flag = '' then //일반적인 저장
  begin
    try
      GeneralSave;
    except
      Showmessage(MessageToError);
      exit;
    end;
  end
  else begin
    try
      HeadLineAddSave;
      Save_Flag := '';
    except
      Showmessage(MessageToError);
      exit;
    end;
  end;

  //잔액 재계산
  BalanceCalculation(Round(cxCEdit_CustomerID.Value), cxDEdit_date.Text);

  Showmessage(MessageToSave);
  cxBtn_SearchClick(self);
end;

//검색
procedure TPurchaseInOutForm.cxBtn_SearchClick(Sender: TObject);
begin
  inherited;

  if cxCEdit_CustomerID.Value = 0 then
  begin
    ShowMessage('매입처를 먼저 선택하세요.');
    exit;
  end;

  with DataModuleForm.FDSpSetting(FDSP_list, 'usp_PurchaseInOut', 'C') do
  begin
    ParamByName('@sdate').AsString := cxDEdit_sdate.Text;
    ParamByName('@edate').AsString := cxDEdit_edate.Text;
    ParamByName('@customerID').AsInteger := Round(cxCEdit_CustomerID.Value);
    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.BeginUpdate;
    cxGridTv_List.DataController.RecordCount := FDSP_list.RecordCount;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Division.Index,  FieldByName('Division').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_InOutDate.Index, FieldByName('InOutDate').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ItemName.Index,  FieldByName('ItemName').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Cost.Index,      FieldByName('Cost').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Tax.Index,       FieldByName('Tax').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Amount.Index,    FieldByName('Amount').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Charge.Index,    FieldByName('Charge').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_OutCharge.Index, FieldByName('OutCharge').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Balance.Index,   FieldByName('Balance').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ID.Index,        FieldByName('InOutID').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Check.Index,     '');

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;

  end;

  if cxGridTv_List.DataController.RecordCount > 0 then
  begin
    Last_FocusedIndex := cxGridTv_List.DataController.RecordCount -1;
    cxGridTv_List.DataController.FocusedRecordIndex := Last_FocusedIndex;
    Division := cxGridTv_List_Division.EditValue;
  end;

  SearchDetailList;
end;

procedure TPurchaseInOutForm.cxButton2Click(Sender: TObject);
var
  names : String;
  sPath : String;
begin
  inherited;
  if MessageDlg('엑셀로 출력하시겠습니까?'
      , mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    // EXCEL
    sPath := TPath.Combine(TPath.GetDocumentsPath,  '');
    sPath := sPath + '\출력';
    if not DirectoryExists(sPath) then
    begin
      ForceDirectories(sPath);
    end;

    names := cxGridTv_List.DataController.Values[cxGridTv_List.DataController.FocusedRecordIndex, cxGridTv_List_ItemName.Index];

    sPath := sPath +'\'+names + FormatDateTime('yyyymmddhhnnss',Now) +'.xls';
    ExportGridToExcel(sPath, cxGrid_Detail, true, true, false, 'xls');
    Application.ProcessMessages;
    ShellExecute(self.Handle,PChar('OPEN'),PChar(sPath),nil,nil,SW_SHOWMAXIMIZED);
    Application.ProcessMessages;
  end;
end;

//comList CellClick
procedure TPurchaseInOutForm.cxGridDBTv_comCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  cxCEdit_InoutID.Value := 0;

  // 매출처명 가져오기
  with FDQuery_com do
  begin
    // 검색 매출처명
    cxCEdit_CustomerID.Value    := FieldByName('CustomerID').AsInteger;
    cxEdit_CustomerName.Text    := FieldByName('CustomerName').AsString;
  end;
  BalanceCalculation(Round(cxCEdit_CustomerID.Value), '1999-01-01');
  cxBtn_SearchClick(self);

  //고객별 메모 가져오기
  with DataModuleForm.FDSpSetting(nil, 'usp_Customer', 'G') do
  begin
    ParamByName('@InOutType').Value  := '매입';
    ParamByName('@CustomerID').Value := Round(cxCEdit_CustomerID.Value);
    open;

    cxMemo_CusRemark.Text := FieldByName('Remark').AsString;
  end;
end;

//상단 목록cell click
procedure TPurchaseInOutForm.cxGridTv_ListCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  cxDEdit_date.Text := //FDSP_list.FieldByName('InoutDate').AsString;
  cxGridTv_List.DataController.Values[cxGridTv_List.DataController.FocusedRecordIndex, cxGridTv_List_InOutDate.Index];
  Division := cxGridTv_List_Division.EditValue;

  SearchDetailList;

  Last_FocusedIndex := cxGridTv_List.DataController.FocusedRecordIndex;
end;

//상단 라인 추가
procedure TPurchaseInOutForm.Head_AddClick(Sender: TObject);
  var Insert_Date : string;
      Insert_Index : Integer;
begin
  inherited;

  EssentialItem(cxCEdit_CustomerID, '매입처');

  if cxGridTv_List.DataController.FocusedRecordIndex = -1 then
  begin
    exit;
  end;

  Insert_Index := cxGridTv_List.DataController.FocusedRecordIndex + 1;
  cxGridTv_List.DataController.InsertRecord(Insert_Index);
  Insert_Date := cxGridTv_List.DataController.Values[cxGridTv_List.DataController.FocusedRecordIndex, cxGridTv_List_InOutDate.Index];

  cxGridTv_List.DataController.SetValue(Insert_Index, cxGridTv_List_Division.Index,  '메모');
  cxGridTv_List.DataController.SetValue(Insert_Index, cxGridTv_List_InOutDate.Index, Insert_Date);
  cxGridTv_List.DataController.SetValue(Insert_Index, cxGridTv_List_ItemName.Index,  '');
  cxGridTv_List.DataController.SetValue(Insert_Index, cxGridTv_List_Cost.Index,      0);
  cxGridTv_List.DataController.SetValue(Insert_Index, cxGridTv_List_Tax.Index,       0);
  cxGridTv_List.DataController.SetValue(Insert_Index, cxGridTv_List_Amount.Index,    0);
  cxGridTv_List.DataController.SetValue(Insert_Index, cxGridTv_List_Charge.Index,    0);
  cxGridTv_List.DataController.SetValue(Insert_Index, cxGridTv_List_OutCharge.Index, 0);
  cxGridTv_List.DataController.SetValue(Insert_Index, cxGridTv_List_Balance.Index,   0);
  cxGridTv_List.DataController.SetValue(Insert_Index, cxGridTv_List_ID.Index,        0);
  cxGridTv_List.DataController.SetValue(Insert_Index, cxGridTv_List_Check.Index,     'A');

  Save_Flag := 'Head';
end;

//추가 등록
procedure TPurchaseInOutForm.Line_AddClick(Sender: TObject);
  var Append_Index : Integer;
begin
  inherited;

  if cxCEdit_CustomerID.Value = 0 then
  begin
    exit;
  end;
  if Division = '입금' then
  begin
    exit;
  end;
  if Division = '출금' then
  begin
    exit;
  end;


  with cxGridTv_Detail.DataController do
  begin
    Append_Index := AppendRecord;
    SetValue(Append_Index, cxGridTv_Detail_code.Index,        '');
    SetValue(Append_Index, cxGridTv_Detail_name.Index,        '');
    SetValue(Append_Index, cxGridTv_Detail_standard.Index,    '');
    SetValue(Append_Index, cxGridTv_Detail_qty.Index,         0);
    SetValue(Append_Index, cxGridTv_Detail_unitPrice.Index,   0);
    SetValue(Append_Index, cxGridTv_Detail_amount.Index,      0);
    SetValue(Append_Index, cxGridTv_Detail_tax.Index,         0);
    SetValue(Append_Index, cxGridTv_Detail_totalprice.Index,  0);
    SetValue(Append_Index, cxGridTv_Detail_InOutCharge.Index, 0);
    SetValue(Append_Index, cxGridTv_Detail_remark.Index,      '');
    SetValue(Append_Index, cxGridTv_Detail_ItemID.Index,      '');
    SetValue(Append_Index, cxGridTv_Detail_InOutID.Index,     0);
    SetValue(Append_Index, cxGridTv_Detail_ID.Index,          0);
    SetValue(Append_Index, cxGridTv_Detail_TaxCheck.Index,    0);
  end;

  for loopcnt := cxGridTv_Detail.DataController.RecordCount -1 downto 0 do
  begin
    if VarToStr(cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_name.Index]) <> '' then
    begin
      cxGridTv_Detail.DataController.FocusedRecordIndex := loopcnt+1;
      cxGridTv_Detail.Controller.FocusedItemIndex       := cxGridTv_Detail_code.Index;

      Break;
    end;
  end;

  cxGrid_Detail.SetFocus;
  cxGridTv_Detail.Controller.FocusedRecordIndex := Append_Index;
  cxGridTv_Detail.Controller.FocusedColumnIndex := cxGridTv_Detail_code.VisibleIndex;

end;

procedure TPurchaseInOutForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  if MessageDlg('선택 항목 전체를 삭제 하시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDQuerySetting(nil) do
    begin
      close;
      sql.Clear;
      sql.Add(' EXEC usp_PurchaseInOut @option = :option, @InOutID = :InOutID ');
      ParamByName('option').AsString   := 'F';
      ParamByName('InOutID').AsInteger := Round(cxCEdit_InOutID.Value);
      ExecSQL;
    end;

    BalanceCalculation(Round(cxCEdit_CustomerID.Value), cxDEdit_date.Text);
    cxBtn_SearchClick(self);
  end;
end;

//출금등록
procedure TPurchaseInOutForm.cxBtn_payClick(Sender: TObject);
begin
  inherited;

  if cxCEdit_CustomerID.Value = 0 then
  begin
    exit;
  end;

  cxGBox_Payment.Visible := True;
  cxDEdit_Pdate.Date := Date;
  cxLCBBox_Bank.ItemIndex := -1;
  cxEdit_contents.Clear;
  cxCEdit_payment.Clear;
  cxCEdit_Balance.Clear;
end;

procedure TPurchaseInOutForm.cxBtn_PrintClick(Sender: TObject);
begin
  inherited;
//  frxReport_List.ShowReport(True);


end;

//등록
procedure TPurchaseInOutForm.cxBtn_save2Click(Sender: TObject);
begin
  inherited;

//  with DataModuleForm.FDSpSetting(FDSP_INPUT, 'usp_PurchaseInOut', 'G') do
//  begin
//    ParamByName('@InOutID').Value      := 0;
//    ParamByName('@CustomerID').Value   := cxCEdit_CustomerID.Value;
//    ParamByName('@Division').Value     := cxRGroup_Type.EditValue;
//    ParamByName('@InOutDate').Value    := cxDEdit_Pdate.Text;
//    ParamByName('@ItemName').Value     := cxEdit_contents.Text;
//    if cxRGroup_Type.ItemIndex = 0 then //출금
//    begin
//      ParamByName('@Cost').Value         := 0;
//      ParamByName('@Tax').Value          := 0;
//      ParamByName('@Amount').Value       := 0;
//      ParamByName('@Charge').Value       := 0;
//      ParamByName('@OutCharge').Value    := cxCEdit_payment.Value;
//    end
//    else begin                           //입금
//      ParamByName('@Cost').Value         := 0;
//      ParamByName('@Tax').Value          := 0;
//      ParamByName('@Amount').Value       := 0;
//      ParamByName('@Charge').Value       := cxCEdit_payment.Value;
//      ParamByName('@OutCharge').Value    := 0;
//
//    end;
//    ParamByName('@InOutCharge').Value  := cxCEdit_payment.Value;
//    ParamByName('@Balance').Value      := 0;
//    ParamByName('@DisplayIndex').Value := 3;
//    ParamByName('@Writer').Value       := LoginUserName;
//    ExecProc;
//  end;

  with DataModuleForm.FDSpSetting(FDSP_INPUT, 'usp_TransactionHistory', 'B') do
  begin
    ParamByName('@TransactionDate').AsString := cxDEdit_Pdate.Text;
    ParamByName('@TransactionHistoryID').AsInteger := 0;
    if cxRGroup_Type.ItemIndex = 0 then //출금
    begin
      ParamByName('@Deposit').AsCurrency  := 0;
      ParamByName('@Withdraw').AsCurrency := cxCEdit_payment.Value;
    end
    else begin
      ParamByName('@Deposit').AsCurrency  := cxCEdit_payment.Value;
      ParamByName('@Withdraw').AsCurrency := 0;
    end;
    ParamByName('@Balance').AsCurrency      := 0;
    ParamByName('@Remark').AsString         := '';
    ParamByName('@Record').AsString         := cxEdit_contents.Text;
    ParamByName('@Point').AsString          := '';
    ParamByName('@BankID').AsInteger        := cxLCBBox_Bank.EditValue;
    ParamByName('@CustomerID').AsInteger    := 0;
    ParamByName('@PartnerID').AsInteger     := Round(cxCEdit_CustomerID.Value);
    ParamByName('@AccountBankID').AsInteger := 0;
    ParamByName('@ItemName').Value          := '';
    ExecProc;
  end;

  BalanceCalculation(Round(cxCEdit_CustomerID.Value), cxDEdit_Pdate.Text);

  cxBtn_cancel2Click(self);
  cxBtn_SearchClick(self);
end;

//취소
procedure TPurchaseInOutForm.cxBtn_cancel2Click(Sender: TObject);
begin
  inherited;

  cxGBox_Payment.Visible := False;
  cxDEdit_Pdate.Date := Date;
  cxLCBBox_Bank.ItemIndex := -1;
  cxEdit_contents.Clear;
  cxCEdit_payment.Clear;
  cxCEdit_Balance.Clear;
end;


//선택 삭제
procedure TPurchaseInOutForm.Line_DelClick(Sender: TObject);
  var Focused_Index : Integer;
      ItemName : string;
begin
  inherited;

  Focused_Index := cxGridTv_Detail.DataController.FocusedRecordIndex;

  if MessageDlg('선택 항목을 삭제 하시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDQuerySetting(nil) do
    begin
      close;
      sql.Clear;
      sql.Add(' EXEC usp_PurchaseInOut @option = :option, @InOutID = :InOutID, @ItemID = :ItemID, @DetailID = :DetailID ');
      ParamByName('option').AsString    := 'E';
      ParamByName('InOutID').AsInteger  := cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_InOutID.Index];
      ParamByName('ItemID').AsString    := cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_ItemID.Index];
      ParamByName('DetailID').AsInteger := cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_ID.Index];
      ExecSQL;

      cxGridTv_Detail.DataController.DeleteRecord(Focused_Index);
    end;

    GeneralSave;

    BalanceCalculation(Round(cxCEdit_CustomerID.Value), cxDEdit_date.Text);

    cxBtn_SearchClick(self);
  end;
end;

//detail Grid next cell move
procedure TPurchaseInOutForm.cxGridTv_DetailEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if cxGridTv_Detail.Controller.FocusedColumnIndex > 1 then //품번이 아니면
  begin
    if ((key = VK_RETURN) or (key = VK_TAB)) then
    begin
      cxGridTv_Detail.Controller.FocusNextCell(True);
    end;
  end
  else if cxGridTv_Detail.Controller.FocusedColumnIndex = 1 then
  begin
    if key = VK_TAB then
    begin
      cxGridTv_Detail.Controller.FocusNextCell(True);
    end
    else if key = VK_RETURN then
    begin
      Search_Flag := True;
      cxGridTv_Detail_codePropertiesEditValueChanged(self);
    end;
  end;
end;

//품번 입력시 해당 품번 찾아오기
procedure TPurchaseInOutForm.cxGridTv_Detail_codePropertiesEditValueChanged(
  Sender: TObject);
  var Focused_Index :Integer;
      RemainCnt : Integer;
      Find_Text : string;
begin
  inherited;

  TcxTextEdit(cxGridTv_Detail.Controller.EditingController.Edit).PostEditValue;

  if Search_Flag = False then
  begin
    exit;
  end;

  Focused_Index := cxGridTv_Detail.DataController.FocusedRecordIndex;

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    close;
    sql.Clear;
    sql.Add(' SELECT ItemID, ItemName, ItemUPrice, ISNULL(ItemTax, 0) as  TaxCheck ');
    sql.Add(' FROM  MasterItem                                         ');
    sql.Add(' WHERE ItemMCode = :Code                                  ');
    sql.Add(' AND   ItemYn = 1                                         ');
    ParamByName('Code').AsString   := VarToStr(cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_code.Index]);
    open;

    if RecordCount = 1 then
    begin
      cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_name.Index]     := FieldByName('ItemName').AsString;
      cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_unitPrice.Index]:= FieldByName('ItemUPrice').AsCurrency;
      cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_ItemID.Index]   := FieldByName('ItemID').AsString;
      cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_TaxCheck.Index] := FieldByName('TaxCheck').AsBoolean;
    end
    //item 이 1나 이상이면 팝업 띄운다
    else begin
      Find_Text := VarToStr(cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_code.Index]);

      ItemModalForm := TItemModalForm.Create(Application);
//      ItemModalForm.cxGridDBTv_Item.DataController.FindCriteria.Text := Find_Text;
      ItemModalForm.CustomrID := Round(cxCEdit_CustomerID.Value);
      ItemModalForm.cxRGroup_ItemType.ItemIndex := 2;
      if ItemModalForm.ShowModal = mrOk then
      begin
        RemainCnt := cxGridTv_Detail.DataController.RecordCount - Focused_Index;
        if RemainCnt < ItemModalForm.cxGridDBTv_Item.Controller.SelectedRecordCount then
        begin
          ShowMessagE('선택한 아이템의 행이 많습니다. 라인을 더 추가한 후 실행하세요.');
          Exit;
        end;

        for loopcnt := 0 to ItemModalForm.cxGridDBTv_Item.Controller.SelectedRecordCount -1 do
        begin
          //품번
          cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_Code.Index]     :=
            ItemModalForm.cxGridDBTv_Item.DataController.Values[
            ItemModalForm.cxGridDBTv_Item.Controller.SelectedRecords[loopcnt].RecordIndex, ItemModalForm.cxGridDBTv_Item_Category.Index];
          //품명
          cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_name.Index]     :=
            ItemModalForm.cxGridDBTv_Item.DataController.Values[
            ItemModalForm.cxGridDBTv_Item.Controller.SelectedRecords[loopcnt].RecordIndex, ItemModalForm.cxGridDBTv_Item_Name.Index];
          //단가
          cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_unitPrice.Index]     :=
            ItemModalForm.cxGridDBTv_Item.DataController.Values[
            ItemModalForm.cxGridDBTv_Item.Controller.SelectedRecords[loopcnt].RecordIndex, ItemModalForm.cxGridDBTv_Item_UPOP.Index];
          //Item ID
          cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_ItemID.Index]       :=
            ItemModalForm.cxGridDBTv_Item.DataController.Values[
            ItemModalForm.cxGridDBTv_Item.Controller.SelectedRecords[loopcnt].RecordIndex, ItemModalForm.cxGridDBTv_Item_ID.Index];
          //Tax Check
          cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_TaxCheck.Index] :=
            ItemModalForm.cxGridDBTv_Item.DataController.Values[
            ItemModalForm.cxGridDBTv_Item.Controller.SelectedRecords[loopcnt].RecordIndex, ItemModalForm.cxGridDBTv_Item_TaxCheck.Index];
          //InOut ID
          cxGridTv_Detail.DataController.Values[Focused_Index, cxGridTv_Detail_InOutID.Index] := 0;

          Inc(Focused_Index);
        end;

        Search_Flag := False;

//        ItemModalForm.Close;
      end;
    end;

    cxGridTv_Detail.Controller.FocusedItemIndex := cxGridTv_Detail_qty.Index;
  end;

  with DataModuleForm.FDSpSetting(FDSP_H, 'usp_PurchaseInOut', 'R') do
  begin
    ParamByName('@CustomerID').Value := Round(cxCEdit_CustomerID.Value);
    ParamByName('@ItemID').Value     :=
      cxGridTv_Detail.DataController.Values[cxGridTv_Detail.DataController.FocusedRecordIndex, cxGridTv_Detail_ItemID.Index];
    open;
  end;

end;

//수량, 단가 입력 시 금액 계산
procedure TPurchaseInOutForm.cxGridTv_Detail_qtyPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  TcxCurrencyEdit(cxGridTv_Detail.Controller.EditingController.Edit).PostEditValue;

  CalPriceOfDetailGrid(cxGridTv_Detail.Controller.FocusedRecordIndex);
end;

procedure TPurchaseInOutForm.cxGridTv_Detail_taxPropertiesEditValueChanged(
  Sender: TObject);
var
  Amount : Double;
  Tax : integer;
begin
  inherited;
  TcxCurrencyEdit(cxGridTv_Detail.Controller.EditingController.Edit).PostEditValue;
  with cxGridTv_Detail.DataController do
  begin
    BeginUpdate;

    Amount := StrToFloatDef(VarToStr(Values[FocusedRecordIndex, cxGridTv_Detail_Amount.Index]), 0);
    tax := Round(Values[FocusedRecordIndex, cxGridTv_Detail_tax.Index]);
    Values[FocusedRecordIndex, cxGridTv_Detail_TotalPrice.Index] := Amount + Tax;  //거래금액

    EndUpdate;
  end;
end;

procedure TPurchaseInOutForm.CalPriceOfDetailGrid(RecordIndex: Integer);
var
  Qty, UnitPrice, Amount: double;
  Tax: Integer;
begin
  with cxGridTv_Detail.DataController do
  begin
    Qty       := StrToFloatDef(VarToStr(Values[RecordIndex, cxGridTv_Detail_qty.Index]), 0);
    UnitPrice := Round(Values[RecordIndex, cxGridTv_Detail_unitPrice.Index]);

//    Amount    := Qty*UnitPrice;
//    Tax       := Round(Amount) - Round(Amount/1.1);

    if Values[RecordIndex, cxGridTv_Detail_TaxCheck.Index] = True then
    begin
      Amount := ROUND((Qty*UnitPrice)/1.1);
      Tax := Round(Amount / 10);
    end
    else begin
      Amount := Qty*UnitPrice;
      Tax := 0;
    end;

    Values[RecordIndex, cxGridTv_Detail_Amount.Index]     := Amount;        //공금가액
    Values[RecordIndex, cxGridTv_Detail_tax.Index]        := Tax;           //부가세
    Values[RecordIndex, cxGridTv_Detail_TotalPrice.Index] := Amount + Tax;  //거래금액
  end;
end;

//detail list setting
procedure TPurchaseInOutForm.SearchDetailList;
begin
  if cxGridTv_List.DataController.RecordCount = 0 then
  begin
    cxBtn_NewClick(self);
    exit;
  end;

  cxCEdit_InOutID.Value := //FDSP_list.FieldByName('InOutID').AsInteger;
  cxGridTv_List.DataController.Values[cxGridTv_List.DataController.FocusedRecordIndex, cxGridTv_List_ID.Index];

  with DataModuleForm.FDQuerySetting(nil)  do
  begin
    close;
    sql.Clear;
    sql.Add(' EXEC usp_PurchaseInOut @option = :option, @InOutID = :InOutID ');
    ParamByName('option').AsString      := 'D';
    ParamByName('InOutID').AsInteger    := Round(cxCEdit_InOutID.Value);
    open;

    cxGridTv_Detail.DataController.RecordCount := 0;
    cxGridTv_Detail.DataController.RecordCount := RecordCount;
    cxGridTv_Detail.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_code.Index,         FieldByName('ManageCode').AsString);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_name.Index,         FieldByName('ItemName').AsString);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_standard.Index,     FieldByName('Standard').AsString);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_qty.Index,          FieldByName('InOutQty').AsFloat);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_unitPrice.Index,    FieldByName('UnitPrice').AsCurrency);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_amount.Index,       FieldByName('Amount').AsCurrency);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_tax.Index,          FieldByName('Tax').AsCurrency);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_totalprice.Index,   FieldByName('TotalPrice').AsCurrency);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_InOutCharge.Index,  FieldByName('InOutCharge').AsCurrency);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_remark.Index,       FieldByName('Reamrk').AsString);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_ItemID.Index,       FieldByName('ItemID').AsString);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_InOutID.Index,      FieldByName('InOutID').AsInteger);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_ID.Index,           FieldByName('DetailID').AsInteger);
      cxGridTv_Detail.DataController.SetValue(loopcnt, cxGridTv_Detail_TaxCheck.Index,     FieldByName('TaxCheck').AsBoolean);

      Next;
    end;
    cxGridTv_Detail.DataController.EndUpdate;
  end;
end;

procedure TPurchaseInOutForm.cxGridTv_List_DivisionCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

  if AViewInfo.GridRecord.Values[cxGridTv_List_Division.Index] = '입고' then
  begin
    if AViewInfo.Item.Index = cxGridTv_List_Division.Index then
    begin
      ACanvas.Brush.Color := $00FF4242; //clBlue;
      ACanvas.Font.Color  := clWhite;
    end;
  end
  else if AViewInfo.GridRecord.Values[cxGridTv_List_Division.Index] = '반출' then
  begin
    if AViewInfo.Item.Index = cxGridTv_List_Division.Index then
    begin
      ACanvas.Brush.Color := $006899FF; //clGreen;
      ACanvas.Font.Color  := clWhite;
    end;
  end
  else if AViewInfo.GridRecord.Values[cxGridTv_List_Division.Index] = '메모' then
  begin
    if AViewInfo.Item.Index = cxGridTv_List_Division.Index then
    begin
      ACanvas.Brush.Color := clGreen;
      ACanvas.Font.Color  := clWhite;
    end;
  end
  else //  if AViewInfo.GridRecord.Values[cxGridTv_List_Division.Index] = '출금' then
  begin
    if AViewInfo.Item.Index = cxGridTv_List_Division.Index then
    begin
      ACanvas.Brush.Color := $006060FF; //clRed;
      ACanvas.Font.Color  := clWhite;
    end;
  end;
end;

procedure TPurchaseInOutForm.cxGridTv_ListEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;

  AAllow := False;

  if Sender.DataController.Values[Sender.DataController.FocusedRecordIndex, cxGridTv_List_check.Index] = 'A' then
  begin
    if AItem.Index < cxGridTv_List_ID.Index then
    begin
      AAllow := True;
    end;
  end;
end;

function TPurchaseInOutForm.GeneralSave : Boolean;
  var ItemName : string;
      ItemCount : Integer;
begin
  Result := False;

  ItemName := '';
  if cxGridTv_Detail.DataController.RecordCount > 1 then
  begin
    ItemCount := 0;
    for loopcnt := 0 to cxGridTv_Detail.DataController.RecordCount -1 do
    begin
      if VarToStr(cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_name.Index]) <> '' then
      begin
        Inc(ItemCount);
      end;
    end;

    ItemName := cxGridTv_Detail.DataController.Values[0, cxGridTv_Detail_name.Index] + ' 외 ' +  IntToStr(ItemCount-1);
  end
  else begin
    ItemName := cxGridTv_Detail.DataController.Values[0, cxGridTv_Detail_name.Index];
  end;

  //head 먼저 저장
  with DataModuleForm.FDSpSetting(FDSP_INPUT, 'usp_PurchaseInOut', 'A') do
  begin
    ParamByName('@InOutID').Value      := Round(cxCEdit_InOutID.Value);
    ParamByName('@CustomerID').Value   := Round(cxCEdit_CustomerID.Value);
    if cxCEdit_InOutID.Value = 0 then
    begin
      ParamByName('@Division').Value     := cxRGroup_Division.EditValue;
      ParamByName('@Amount').Value       := cxGridTv_Detail.DataController.Summary.FooterSummaryValues[2];
      ParamByName('@Charge').Value       := 0;
      ParamByName('@OutCharge').Value    := 0;
    end
    else begin
      ParamByName('@Division').Value     :=
      cxGridTv_List.DataController.Values[cxGridTv_List.DataController.FocusedRecordIndex, cxGridTv_List_Division.Index];
      if cxGridTv_List.DataController.Values[cxGridTv_List.DataController.FocusedRecordIndex, cxGridTv_List_Division.Index] = '출금' then
      begin
        ParamByName('@Amount').Value       := 0;
        ParamByName('@Charge').Value       := 0;
        ParamByName('@OutCharge').Value    := cxGridTv_Detail.DataController.Summary.FooterSummaryValues[3];
      end
      else if cxGridTv_List.DataController.Values[cxGridTv_List.DataController.FocusedRecordIndex, cxGridTv_List_Division.Index] = '입금' then
      begin
        ParamByName('@Amount').Value       := 0;
        ParamByName('@Charge').Value       := cxGridTv_Detail.DataController.Summary.FooterSummaryValues[3];
        ParamByName('@OutCharge').Value    := 0;
      end
      else begin
        ParamByName('@Amount').Value       := cxGridTv_Detail.DataController.Summary.FooterSummaryValues[2];
        ParamByName('@Charge').Value       := 0;
        ParamByName('@OutCharge').Value    := 0;
      end;
    end;
    ParamByName('@InOutDate').Value    := cxDEdit_date.Text;
    ParamByName('@ItemName').Value     := ItemName;
    ParamByName('@Cost').Value         := cxGridTv_Detail.DataController.Summary.FooterSummaryValues[0];
    ParamByName('@Tax').Value          := cxGridTv_Detail.DataController.Summary.FooterSummaryValues[1];
//    ParamByName('@Amount').Value       := cxGridTv_Detail.DataController.Summary.FooterSummaryValues[2];
//    ParamByName('@Charge').Value       := 0;
    ParamByName('@Balance').Value      := 0;
    ParamByName('@DisplayIndex').Value := 0;
    ParamByName('@Writer').Value       := LoginUserName;
    ParamByName('@Modifier').Value     := LoginUserName;

    ExecProc;

    if cxCEdit_InOutID.Value = 0 then
    begin
      cxCEdit_InOutID.Value := ParamByName('@InOutID').AsInteger;
    end;
  end;

  for loopcnt := 0 to cxGridTv_Detail.DataController.RecordCount -1 do
  begin
    with DataModuleForm.FDSpSetting(FDSP_INPUT, 'usp_PurchaseInOut', 'B') do
    begin
      if VarToStr(cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_name.Index]) <> '' then
      begin
        ParamByName('@InOutID').AsInteger     := Round(cxCEdit_InOutID.Value);
        ParamByName('@ItemID').AsString       := cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_ItemID.Index];
        ParamByName('@DetailID').AsInteger    := cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_ID.Index];
        ParamByName('@ManageCode').AsString   := VarToStr(cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_code.Index]);
        ParamByName('@DItemName').AsString    := VarToStr(cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_name.Index]);
        ParamByName('@Standard').AsString     := VarToStr(cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_standard.Index]);
        ParamByName('@InOutQty').Value        := cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_qty.Index];
        ParamByName('@UnitPrice').AsCurrency  := cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_unitPrice.Index];
        ParamByName('@Amount').AsCurrency     := cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_amount.Index];
        ParamByName('@Tax').AsCurrency        := cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_Tax.Index];
        ParamByName('@TotalPrice').AsCurrency := cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_TotalPrice.Index];
        ParamByName('@InOutCharge').AsCurrency:= cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_InOutCharge.Index];
        ParamByName('@Reamrk').AsString       := VarToStr(cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_remark.Index]);
        ExecProc;

        if cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_InOutID.Index] = 0 then
        begin
          cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_InOutID.Index] := cxCEdit_InOutID.Value;
        end;

        if cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_ID.Index] = 0 then
        begin
          cxGridTv_Detail.DataController.Values[loopcnt, cxGridTv_Detail_ID.Index] := ParamByName('@DetailID').AsInteger;
        end;
      end;
    end;
  end;

  Result := True;
end;


function TPurchaseInOutForm.HeadLineAddSave : Boolean;
begin

  Result := False;

  for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
  begin
    if cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Check.Index] = 'A' then
    begin
      with DataModuleForm.FDSpSetting(FDSP_INPUT, 'usp_PurchaseInOut', 'G') do
      begin
        ParamByName('@InOutID').Value      := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_ID.Index];
        ParamByName('@CustomerID').Value   := cxCEdit_CustomerID.Value;
        ParamByName('@Division').Value     := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Division.Index];
        ParamByName('@InOutDate').Value    := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_InOutDate.Index];
        ParamByName('@ItemName').Value     := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_ItemName.Index];
        ParamByName('@Cost').Value         := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Cost.Index];
        ParamByName('@Tax').Value          := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Tax.Index];
        ParamByName('@Amount').Value       := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Amount.Index];
        ParamByName('@Charge').Value       := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Charge.Index];
        ParamByName('@OutCharge').Value    := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_OutCharge.Index];
        ParamByName('@Balance').Value      := 0;
        ParamByName('@DisplayIndex').Value := loopcnt;
        ParamByName('@Writer').Value       := LoginUserName;
        ExecProc;

        if cxCEdit_InOutID.Value = 0 then
        begin
          cxCEdit_InOutID.Value := ParamByName('@InOutID').AsInteger;
        end;
      end;
    end;
  end;

  cxDEdit_Date.Text := cxGridTv_List.DataController.Values[0, cxGridTv_List_InOutDate.Index];

  Result := True;
end;

//잔액 계산
procedure TPurchaseInOutForm.BalanceCalculation(CusID : Integer; InputDate : string);
begin
  with DataModuleForm.FDSpSetting(FDSP_INPUT, 'usp_PurchaseInOut', 'H') do
  begin
    ParamByName('@CustomerID').Value   := CusID;
    ParamByName('@InOutDate').Value    := InputDate;
    ExecProc;
  end;
end;

procedure TPurchaseInOutForm.cxCEdit_paymentKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = VK_RETURN then
  begin
    cxBtn_save2Click(self);
  end;
end;

//단가 변동 history
procedure TPurchaseInOutForm.cxGridTv_DetailCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with DataModuleForm.FDSpSetting(FDSP_H, 'usp_PurchaseInOut', 'R') do
  begin
    ParamByName('@CustomerID').Value := Round(cxCEdit_CustomerID.Value);
    ParamByName('@ItemID').Value     :=
      cxGridTv_Detail.DataController.Values[cxGridTv_Detail.DataController.FocusedRecordIndex, cxGridTv_Detail_ItemID.Index];
    open;
  end;
end;

procedure TPurchaseInOutForm.cxMemo_CusRemarkPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  EssentialItem(cxEdit_CustomerName, '매입처');

  if cxMemo_CusRemark.Text = '' then
  begin
    exit;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_Customer', 'F') do
  begin
    ParamByName('@InOutType').Value  := '매입';
    ParamByName('@CustomerID').Value := Round(cxCEdit_CustomerID.Value);
    ParamByName('@Remarks').Value    := cxMemo_CusRemark.Text;
    ParamByName('@Writer').Value     := LoginUserName;
    ParamByName('@Modifier').Value   := LoginUserName;
    ExecProc;
  end;
end;

procedure TPurchaseInOutForm.Data_CopyClick(Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDSpSetting(FDSP_INPUT, 'usp_PurchaseInOut', 'W') do
  begin
    ParamByName('@InOutID').AsInteger    :=
      cxGridTv_List.DataController.Values[cxGridTv_List.DataController.FocusedRecordIndex, cxGridTv_List_ID.Index];
    ParamByName('@CustomerID').AsInteger := Round(cxCEdit_CustomerID.Value);
    ParamByName('@InOutDate').AsString   := DateToStr(Date);  //cxDEdit_date.Text;
    ParamByName('@Writer').AsString      := LoginUserName;

    try
      ExecProc;
    Except
      on err:exception do
      begin
        ShowMessage('작업이 취소되었습니다. 관리자에게 문의하세요.');
        exit;
      end;
    end;
  end;

  BalanceCalculation(Round(cxCEdit_CustomerID.Value), cxDEdit_date.Text);
  ShowMessage('복사가 완료되었습니다.');
  cxBtn_SearchClick(self);
end;

//카드 엑셀 업로드
procedure TPurchaseInOutForm.cxBtn_UploadClick(Sender: TObject);
  var
    ExcelFile: string;
    ExcelApp, ExcelBook, ExcelSheet : Variant;
    A: TFDQuery;
    Table: TFDTable;
begin
  inherited;

  {
  if cxEdit_CustomerName.Text = '' then
  begin
    ShowMessage('매입처명을 먼저 선택 하세요.');
    exit;
  end;

  if OpenDialog1.Execute then
  begin
    ExcelFile := OpenDialog1.FileName;

    FDConnection2.Connected := false;
    FDConnection2.Params.Values['DATABASE']  := ExcelFile;
    FDConnection2.Params.Values['ODBCAdvanced'] := 'DefaultDir='+ExtractFileDir(ExcelFile)+ ';'; //+';DriverId=1045;MaxBufferSize=2048;MaxScanRows=8;PageTimeout=5;ReadOnly=0;SafeTransactions=0;Threads=3;UserCommitSync=Yes';
    FDConnection2.Params.Values['ODBCDriver']  := 'Microsoft Excel Driver (*.xls)';
    FDConnection2.Params.Values['USER_Name']    := 'admin';
    FDConnection2.Connected := True;

    Table := TFDTable.Create(nil);
    A := TFDQuery.Create(nil);
    A.Connection := FDConnection2;
    Table.Connection := DataModuleForm.FDConnection;
    Table.TableName := 'CardExcelLoadData';
    A.Close;
    A.SQL.Clear;
    A.SQL.Text := 'SELECT  *, ' + cxCEdit_CustomerID.Text + ' AS [고객ID] FROM [Sheet1$] ';
    A.Open;

    Table.CopyDataSet(A, [coAppend]);
    Table.Active := True;
    Table.Active := false;
    Table.Free;
    A.Free;
  end;

  FDConnection2.Close;

  if ExcelFile = '' then exit;

  with FDQuery_comm do
  begin
    close;
    sql.Clear;
    sql.Add(' EXEC usp_PurchaseInOut @option = :option ');
    ParamByName('option').AsString := '1';

    try
      ExecSQL;
      ShowMessage('처리가 완료되었습니다.');;
    except
      ShowMessage('처리중 문제가 발생하였습니다. 관리자에게 문의 하세요.');
    end;
  end;

  cxBtn_SearchClick(self);
  }
end;


end.
