unit CustomerUnit;

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
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxRadioGroup, cxCurrencyEdit, cxTextEdit, System.UITypes, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxMemo,
  MemDS, DBAccess, Uni;

type
  TCustomerForm = class(TBaseChildForm)
    cxGBoxCustomer: TcxGroupBox;
    cxEdit_BusinessType: TcxTextEdit;
    cxEdit_Writer: TcxTextEdit;
    cxEdit_Modifier: TcxTextEdit;
    cxEdit_MDT: TcxTextEdit;
    cxEdit_BusinessItem: TcxTextEdit;
    cxEdit_CustomerName: TcxTextEdit;
    cxCEdit_CustomerID: TcxCurrencyEdit;
    cxEdit_BusinessNo: TcxTextEdit;
    cxEdit_Address: TcxTextEdit;
    cxEdit_Fax: TcxTextEdit;
    cxEdit_MailAddress: TcxTextEdit;
    cxEdit_ManagerName: TcxTextEdit;
    cxEdit_ManagerTel: TcxTextEdit;
    cxEdit_Tel: TcxTextEdit;
    cxEdit_CeoName: TcxTextEdit;
    cxEdit_CeoPhoneNumber: TcxTextEdit;
    cxEdit_ZipCode: TcxTextEdit;
    cxRGroup_IsUsable: TcxRadioGroup;
    cxLbl17: TcxLabel;
    cxLabel6: TcxLabel;
    cxLbl11: TcxLabel;
    cxLbl5: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel7: TcxLabel;
    cxLbl14: TcxLabel;
    labFax: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel1: TcxLabel;
    cxLbl15: TcxLabel;
    cxLbl12: TcxLabel;
    cxGBoxList: TcxGroupBox;
    cxGrid_Customer: TcxGrid;
    cxGridDBTv_Customer: TcxGridDBTableView;
    cxGridDBTv_Customer_Order: TcxGridDBColumn;
    cxGridDBTv_Customer_ID: TcxGridDBColumn;
    cxGridDBTv_Customer_Name: TcxGridDBColumn;
    cxGridDBTv_Customer_BusinessNo: TcxGridDBColumn;
    cxGridDBTv_Customer_BusinessType: TcxGridDBColumn;
    cxGridDBTv_Customer_BusinessItem: TcxGridDBColumn;
    cxGridDBTv_Customer_Tel: TcxGridDBColumn;
    cxGridDBTv_Customer_Fax: TcxGridDBColumn;
    cxGridDBTv_Customer_Address: TcxGridDBColumn;
    cxGridDBTv_Customer_MailAddress: TcxGridDBColumn;
    cxGridDBTv_Customer_ZipCode: TcxGridDBColumn;
    cxGridDBTv_Customer_CeoName: TcxGridDBColumn;
    cxGridDBTv_Customer_CeoPhoneNumber: TcxGridDBColumn;
    cxGridDBTv_Customer_ManagerName: TcxGridDBColumn;
    cxGridDBTv_Customer_ManagerPhoneNumber: TcxGridDBColumn;
    cxGridDBTv_Customer_IsUsable: TcxGridDBColumn;
    cxGridLv_Customer: TcxGridLevel;
    DsCustomerList: TDataSource;
    DsCustomerDivision: TDataSource;
    cxLabel15: TcxLabel;
    cxGridDBTv_Customer_Division: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxLabel11: TcxLabel;
    DsSCustomerDivision: TDataSource;
    cxLCBBoxCDivision: TcxLookupComboBox;
    cxLCBBoxSearchCDivision: TcxLookupComboBox;
    cxLabel12: TcxLabel;
    cxEdit_WDT: TcxTextEdit;
    cxRGroupPBoxYn: TcxRadioGroup;
    cxLabel19: TcxLabel;
    cxLabel2: TcxLabel;
    cxMemo_Remark: TcxMemo;
    cxMemo_Remark2: TcxMemo;
    cxLabel14: TcxLabel;
    cxEdit_AccountNo: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxLCBBoxSubDivision: TcxLookupComboBox;
    cxLabel16: TcxLabel;
    DS_S: TDataSource;
    cxGridDBTv_Customer_SubDivision: TcxGridDBColumn;
    FDqCustomerDivision: TUniQuery;
    FDqSCustomerDivision: TUniQuery;
    FDQuerySubDivision: TUniQuery;
    FDSpCustomerList: TUniStoredProc;
    procedure FormShow(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridDBTv_CustomerCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTv_Customer_OrderGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SearchCustomerList;
    procedure SetCustomerEdit;
    function SaveCustomer: Boolean;
    function DeleteCustomer: Boolean;
  public
    { Public declarations }
  end;

var
  CustomerForm: TCustomerForm;
  First: Boolean;

implementation

{$R *.dfm}

uses DataModule;

// 폼 이벤트 ===================================================================
procedure TCustomerForm.FormCreate(Sender: TObject);
begin
  inherited;
  DataModuleForm.SearchCode('거래처 구분', FDqSCustomerDivision);
  DataModuleForm.SearchCode('거래처 구분', FDqCustomerDivision);
  DataModuleForm.SearchCode('거래처 상세', FDQuerySubDivision);
  DataModuleForm.ClearEditIncxGroupBox(cxGBoxCustomer);
  cxRGroupPBoxYn.ItemIndex := 1;
end;

procedure TCustomerForm.FormShow(Sender: TObject);
begin
  inherited;
  First := True;
  SearchCustomerList;
  First := False;
end;

// 버튼 이벤트 =================================================================
// 신규 버튼
procedure TCustomerForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBoxCustomer);
  cxRGroupPBoxYn.ItemIndex := 1;
  cxRGroup_IsUsable.EditValue := True;
  cxEdit_CustomerName.SetFocus;
end;

// 저장 버튼
procedure TCustomerForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;
  //권한 확인
  if Not CheckAuthoritySave
    (CanInput, CanAlter, Round(cxCEdit_CustomerID.Value), 1) then Exit;

  // Null 체크
  EssentialItem(cxEdit_CustomerName, '거래처명');
  EssentialItem(cxLCBBoxCDivision, '거래처 구분');

  if SaveCustomer then
  begin
    showmessage(DataModule.MessageToSave);
    FDqSCustomerDivision.Refresh;
    FDqCustomerDivision.Refresh;
    SearchCustomerList;
  end;
end;

procedure TCustomerForm.cxBtn_SearchClick(Sender: TObject);
begin
  inherited;

  SearchCustomerList;
end;

// 삭제 버튼
procedure TCustomerForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  //삭제 권한 확인
  if Not CheckAuthorityDelete(CanDelete) then Exit;

  if (cxCEdit_CustomerID.Text <> '')
  and (MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes) then
  begin
    if DeleteCustomer then begin
      DataModuleForm.ClearEditIncxGroupBox(cxGBoxCustomer);
      cxRGroup_IsUsable.EditValue := True;
      SearchCustomerList;
    end;
  end;
end;

// 그리드 이벤트 ===============================================================
// 매출처 목록 더블 클릭 -> 매출처정보 Edit Set
procedure TCustomerForm.cxGridDBTv_CustomerCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBoxCustomer);
  SetCustomerEdit;
  cxEdit_CustomerName.SetFocus;
end;

// 그리드 매출처 목록 순번
procedure TCustomerForm.cxGridDBTv_Customer_OrderGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index + 1);
end;

// 매출처목록 관련 기능 ==========================================================
// 매출처목록 조회
procedure TCustomerForm.SearchCustomerList;
var
  CustomerIdToFocus: string;
  RecordIndexToFocus: Integer;
begin
  CustomerIdToFocus := cxCEdit_CustomerID.Text;

  with DataModuleForm.FDSpSetting(FDSpCustomerList, 'usp_Customer', 'A') do
  begin
    if cxLCBBoxSearchCDivision.Text = '' then
    begin
      ParamByName('@CustomerDivision').Value  := '';
    end
    else begin
      ParamByName('@CustomerDivision').Value  := cxLCBBoxSearchCDivision.EditValue;
    end;

    Open;
  end;

  with cxGridDBTv_Customer.DataController do
  begin
    RecordIndexToFocus :=
      FindRecordIndexByText(0, cxGridDBTv_Customer_ID.Index, CustomerIdToFocus, False, False, True);
    if RecordIndexToFocus > 0 then
    begin
      FocusedRecordIndex := RecordIndexToFocus;
    end;
  end;
end;

// 매출처목록 상세 Edit Set
procedure TCustomerForm.SetCustomerEdit;
begin
  with FDSpCustomerList do
  begin
    if (Active) and (RecordCount > 0) then
    begin
      cxCEdit_CustomerID.Value       := FieldByName('CustomerID').Asinteger;
      cxLCBBoxCDivision.EditValue    := FieldByName('CustomerDivision').Value;
      cxLCBBoxSubDivision.EditValue  := FieldByName('SubDivision').Value;
      cxEdit_BusinessNo.Text         := FieldByName('BusinessNo').AsString;
      cxEdit_BusinessType.Text       := FieldByName('BusinessType').AsString;
      cxEdit_BusinessItem.Text       := FieldByName('BusinessItem').AsString;
      cxEdit_CustomerName.Text       := FieldByName('CustomerName').AsString;
      cxEdit_Tel.Text                := FieldByName('Tel').AsString;
      cxEdit_Fax.Text                := FieldByName('Fax').AsString;
      cxEdit_MailAddress.Text        := FieldByName('MailAddress').AsString;
      cxEdit_AccountNo.Text          := FieldByName('AccountNo').AsString;
      cxEdit_ZipCode.Text            := FieldByName('ZipCode').AsString;
      cxEdit_Address.Text            := FieldByName('Address').AsString;
      cxEdit_CeoName.Text            := FieldByName('CeoName').AsString;
      cxEdit_CeoPhoneNumber.Text     := FieldByName('CeoPhoneNumber').AsString;
      cxEdit_ManagerName.Text        := FieldByName('ManagerName').AsString;
      cxEdit_ManagerTel.Text         := FieldByName('ManagerTel').AsString;
      cxMemo_Remark.Text             := FieldByName('Remarks').AsString;
      cxMemo_Remark2.Text            := FieldByName('Remarks2').AsString;
      // TotalReceivable 총미수금액
      cxEdit_Writer.Text             := FieldByName('Writer').AsString;
      cxEdit_WDT.Text                := FieldByName('WDT').AsString;
      cxEdit_Modifier.Text           := FieldByName('Modifier').AsString;
      cxEdit_MDT.Text                := FieldByName('MDT').AsString;
      cxRGroup_IsUsable.EditValue    := FieldByName('IsUsable').AsBoolean;
      cxRGroupPBoxYn.EditValue       := FieldByName('PBoxYn').AsBoolean;
    end;
  end;
end;

// 거래처 저장
function TCustomerForm.SaveCustomer: Boolean;
begin
  Result := False;

  with DataModuleForm.FDSpSetting(nil, 'usp_Customer', 'B') do
  begin
    ParamByName('@CustomerID').Asinteger        := Round(cxCEdit_CustomerID.Value);
    ParamByName('@CustomerDivision').Value      := cxLCBBoxCDivision.EditValue;
    ParamByName('@SubDivision').Value           := cxLCBBoxSubDivision.EditValue;
    ParamByName('@BusinessNo').AsString         := cxEdit_BusinessNo.Text;
    ParamByName('@BusinessType').AsString       := cxEdit_BusinessType.Text;
    ParamByName('@BusinessItem').AsString       := cxEdit_BusinessItem.Text;
    ParamByName('@Name').AsString               := cxEdit_CustomerName.Text;
    ParamByName('@Tel').AsString                := cxEdit_Tel.Text;
    ParamByName('@Fax').AsString                := cxEdit_Fax.Text;
    ParamByName('@MailAddress').AsString        := cxEdit_MailAddress.Text;
    ParamByName('@AccountNo').AsString          := cxEdit_AccountNo.Text;
    ParamByName('@ZipCode').AsString            := cxEdit_ZipCode.Text;
    ParamByName('@Address').AsString            := cxEdit_Address.Text;
    ParamByName('@CeoName').AsString            := cxEdit_CeoName.Text;
    ParamByName('@CeoPhoneNumber').AsString     := cxEdit_CeoPhoneNumber.Text;
    ParamByName('@ManagerName').AsString        := cxEdit_ManagerName.Text;
    ParamByName('@ManagerTel').AsString         := cxEdit_ManagerTel.Text;
    ParamByName('@Remarks').Value               := cxMemo_Remark.Text;
    ParamByName('@Remarks2').Value              := cxMemo_Remark2.Text;
    ParamByName('@Writer').AsString             := DataModule.LoginUserName;
    ParamByName('@Modifier').AsString           := DataModule.LoginUserName;
    ParamByName('@IsUsable').AsBoolean          := cxRGroup_IsUsable.EditValue;
    ParamByName('@PBoxYn').AsBoolean            := cxRGroupPBoxYn.EditValue;
    ExecProc;

    cxCEdit_CustomerID.Value  := ParamByName('@CustomerID').AsInteger;
    cxEdit_Writer.Text        := ParamByName('@Writer').AsString;
    cxEdit_WDT.Text           := ParamByName('@WDT').AsString;
    cxEdit_Modifier.Text      := ParamByName('@Modifier').AsString;
    cxEdit_MDT.Text           := ParamByName('@MDT').AsString;
  end;

  Result := True;
end;

// 거래처 삭제
function TCustomerForm.DeleteCustomer: Boolean;
begin
  Result := False;

  with DataModuleForm.FDSpSetting(nil, 'usp_Customer', 'C') do
  begin
    ParamByName('@CustomerID').AsInteger := Round(cxCEdit_CustomerID.Value);
    ExecProc;

    if ParamByName('@RETURN_VALUE').AsInteger <> 0 then
    begin
      MessageDlg('해당 거래처는 삭제할 수 없습니다.',mtError, [mbOK], 0);
      Exit;
    end;
  end;

  Result := True;
end;

end.
