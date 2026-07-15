unit PBoxUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxLabel, cxCurrencyEdit, cxTextEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxSplitter, cxGroupBox, cxRadioGroup, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,system.DateUtils, frxClass,
  frxDBSet, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, Uni, MemDS, DBAccess;

type
  TPBoxForm = class(TBaseChildForm)
    DS_Cus: TDataSource;
    DS_PBox: TDataSource;
    cxGBoxRight: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGBoxPBox: TcxGroupBox;
    cxGrid_Cus: TcxGrid;
    cxGridDBTv_Cus: TcxGridDBTableView;
    cxGridLv_Cus: TcxGridLevel;
    cxGBoxInfo: TcxGroupBox;
    cxEdit_CusName: TcxTextEdit;
    cxEdit_WDT: TcxTextEdit;
    cxEdit_Writer: TcxTextEdit;
    cxEdit_Modifier: TcxTextEdit;
    cxEdit_MDT: TcxTextEdit;
    cxLbl7: TcxLabel;
    cxLbl11: TcxLabel;
    cxLbl8: TcxLabel;
    cxLbl6: TcxLabel;
    cxLbl13: TcxLabel;
    cxLbl14: TcxLabel;
    cxLb14: TcxLabel;
    cxLbl3: TcxLabel;
    cxCEdit_CusID: TcxCurrencyEdit;
    cxGBoxDetail: TcxGroupBox;
    cxSplitter: TcxSplitter;
    cxGrid_PBox: TcxGrid;
    cxGridDBTv_PBox: TcxGridDBTableView;
    cxGridLv_PBox: TcxGridLevel;
    cxGridDBTv_Cus_CusID: TcxGridDBColumn;
    cxGridDBTv_Cus_Name: TcxGridDBColumn;
    cxGridDBTv_Cus_Pbox: TcxGridDBColumn;
    cxGridDBTv_PBox_PBoxID: TcxGridDBColumn;
    cxGridDBTv_PBox_CusID: TcxGridDBColumn;
    cxGridDBTv_PBox_Name: TcxGridDBColumn;
    cxGridDBTv_PBox_PBoxDate: TcxGridDBColumn;
    cxGridDBTv_PBox_PBoxIn: TcxGridDBColumn;
    cxGridDBTv_PBox_PBoxOut: TcxGridDBColumn;
    cxGridDBTv_PBox_Pbox: TcxGridDBColumn;
    cxDEdit_date: TcxDateEdit;
    cxCEdit_PBoxID: TcxCurrencyEdit;
    cxCEdit_PBoxIn: TcxCurrencyEdit;
    cxCEdit_PBoxOut: TcxCurrencyEdit;
    cxGBoxPurchaseSearch: TcxGroupBox;
    cxLabel17: TcxLabel;
    cxRGroup_Type: TcxRadioGroup;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxDEdit_sdate: TcxDateEdit;
    cxDEdit_edate: TcxDateEdit;
    cxBtnSearchList: TcxButton;
    cxGridDBTv_PBox_Driver: TcxGridDBColumn;
    cxGridDBTv_PBox_Remarks: TcxGridDBColumn;
    cxEdit_driver: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxEdit_Remarks: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxGridDBTv_PBox_PBoxStock: TcxGridDBColumn;
    frxReport_Pbox: TfrxReport;
    fds_Pbox: TfrxDBDataset;
    fuds_Pbox: TfrxUserDataSet;
    UniSP_Cus: TUniStoredProc;
    UniSP_PBox: TUniStoredProc;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTv_PBoxCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTv_CusCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxBtnSearchListClick(Sender: TObject);
    procedure fuds_PboxGetValue(const VarName: string; var Value: Variant);
    procedure cxBtnPrintClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxRGroup_TypePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure SearchCustomerPBox;
    procedure SearchPartnerPBox;
    procedure SearchPBoxList;
    procedure SearchPBoxListPartner;
    procedure SetPBoxEdit;
    function SavePBox: Boolean;
    function DeletePBox: Boolean;
    function PBoxLeft: Double;
    function SaveCustomerPBox(PBoxLeft: Double): Boolean;
    procedure ReUpdate;


  public
    { Public declarations }
  end;

var
  PBoxForm: TPBoxForm;
  OldIn,OldOut: Double;
implementation

{$R *.dfm}

uses DataModule, MainUnit;
// 폼 이벤트
procedure TPBoxForm.FormCreate(Sender: TObject);
begin
  inherited;

  cxDEdit_sdate.Date := StartOfTheYear(Date);;
  cxDEdit_edate.Date := Date;
end;

procedure TPBoxForm.FormResize(Sender: TObject);
begin
  inherited;
  cxGBoxPBox.Height := ClientHeight div 3;
end;

procedure TPBoxForm.FormShow(Sender: TObject);
begin
  inherited;

  SearchCustomerPBox;
  SearchPBoxList;
  cxBtn_NewClick(self);
end;

//search
procedure TPBoxForm.cxBtnSearchListClick(Sender: TObject);
begin
  inherited;
  OldIn := 0;
  OldOut := 0;
  if cxRGroup_Type.ItemIndex = 0 then
  begin
    SearchPBoxList;
  end
  else if cxRGroup_Type.ItemIndex = 1 then
  begin
    SearchPBoxListPartner;
  end;
end;

//new
procedure TPBoxForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBoxInfo);
  cxDEdit_date.Date := Date;;
end;

//save
procedure TPBoxForm.cxBtn_SaveClick(Sender: TObject);
var
  PBoxLeftResult: Double;
begin
  inherited;

  EssentialItem(cxEDit_CusName, '매출처');

  if SavePBox then
  begin
    SearchPBoxList;

//    if cxRGroup_Type.ItemIndex = 0 then
//    begin
//      SearchPBoxList;
//    end
//    else if cxRGroup_Type.ItemIndex = 1 then
//    begin
//      SearchPBoxListPartner;
//    end;

    UniSP_Cus.Refresh;
    showmessage(DataModule.MessageToSave);
    OldIn := cxCEdit_PBoxIn.Value;
    OldOut := cxCEdit_PBoxOut.Value;
  end;
end;

//delete
procedure TPBoxForm.cxBtn_DeleteClick(Sender: TObject);
var
  SRecordIndex: Integer;
  PBoxLeftResult: Double;
begin
  inherited;
  if (cxCEdit_PBoxID.Text <> '')
  and (MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes) then
  begin
    if DeletePBox then
    begin
      if cxRGroup_Type.ItemIndex = 0 then
      begin
        SearchPBoxList;
      end
      else if cxRGroup_Type.ItemIndex = 1 then
      begin
        SearchPBoxListPartner;
      end;

      DataModuleForm.ClearEditIncxGroupBox(cxGBoxInfo);
      UniSP_Cus.Refresh;
    end;
  end;
end;

// 고객 목록 조회
procedure TPBoxForm.SearchCustomerPBox;
begin
  With DataModuleForm.FDSpSetting(UniSP_Cus,'usp_Pbox','F') do
  begin
    Open;
  end;
end;

// PBox 목록 조회
procedure TPBoxForm.SearchPartnerPBox;
begin
  With DataModuleForm.FDSpSetting(UniSP_Cus,'usp_Pbox','G') do
  begin
    Open;
  end;
end;

procedure TPBoxForm.SearchPBoxList;
var
  SearchStartDate, SearchEndDate: TDateTime;
begin
  inherited;
  // 검색 기간
  if cxDEdit_sdate.Text = '' then
  begin
    SearchStartDate := StrToDate('1900-01-01');
  end else
  begin
    SearchStartDate := cxDEdit_sdate.Date;
  end;

  if cxDEdit_edate.Text = '' then
  begin
    SearchEndDate := StrToDate('2099-12-31');
  end else
  begin
    SearchEndDate := cxDEdit_edate.Date;
  end;

  With DataModuleForm.FDSpSetting(UniSP_PBox,'usp_Pbox','C') do
  begin
    Close;
    ParamByName('@CustomerID').AsInteger := Round(cxCEdit_CusID.Value);
    ParamByName('@SearchStartDate').AsDate := SearchStartDate;
    ParamByName('@SearchEndDate').AsDate := SearchEndDate;
    Open;
  end;
  ReUpdate;
end;

procedure TPBoxForm.SearchPBoxListPartner;
var
  SearchStartDate, SearchEndDate: TDateTime;
begin
  inherited;
  // 검색 기간
  if cxDEdit_sdate.Text = '' then
  begin
    SearchStartDate := StrToDate('1900-01-01');
  end else
  begin
    SearchStartDate := cxDEdit_sdate.Date;
  end;

  if cxDEdit_edate.Text = '' then
  begin
    SearchEndDate := StrToDate('2099-12-31');
  end else
  begin
    SearchEndDate := cxDEdit_edate.Date;
  end;

  With DataModuleForm.FDSpSetting(UniSP_PBox,'usp_Pbox','H') do
  begin
    ParamByName('@PartnerID').AsInteger := Round(cxCEdit_CusID.Value);
    ParamByName('@SearchStartDate').AsDate := SearchStartDate;
    ParamByName('@SearchEndDate').AsDate := SearchEndDate;
    Open;
  end;

  ReUpdate;
end;

// 그리드 이벤트
// Customer 목록 원 클릭 -> PBox 목록 조회
procedure TPBoxForm.cxGridDBTv_CusCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBoxInfo);
  OldIn := 0;
  OldOut := 0;
  cxEdit_CusName.Text := UniSP_Cus.FieldByName('Name').AsString;
  cxCEdit_CusID.Value := UniSP_Cus.FieldByName('CustomerID').AsInteger;

  SearchPBoxList;

//  if cxRGroup_Type.ItemIndex = 0 then
//  begin
//    cxCEdit_CusID.Value := UniSP_Cus.FieldByName('CustomerID').AsInteger;
//    SearchPBoxList;
//  end
//  else
//  begin
//    cxCEdit_CusID.Value := UniSP_Cus.FieldByName('PartnerID').AsInteger;
//    SearchPBoxListPartner;
//  end;

  cxDEdit_date.Date := Date;
end;

// PBox 목록 원 클릭 -> PBox정보 Edit Set
procedure TPBoxForm.cxGridDBTv_PBoxCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  SetPBoxEdit;
end;

procedure TPBoxForm.cxRGroup_TypePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  SearchCustomerPBox;
  SearchPBoxList;

  DataModuleForm.ClearEditIncxGroupBox(cxGBoxInfo);
  cxDEdit_date.Date := Date
end;

// PBox정보 Edit Set
procedure TPBoxForm.SetPBoxEdit;
begin
  with UniSP_PBox do
  begin
    if (Active) and (RecordCount > 0) then
    begin
      cxCEdit_CusID.Value   := FieldByName('CustomerID').AsInteger;
      cxCEdit_PBoxID.Value  := FieldByName('PBoxID').AsInteger;
      cxEdit_CusName.Text   := FieldByName('Name').AsString;
      cxDEdit_date.Text     := FieldByName('PBoxDate').AsString;
      cxCEdit_PBoxIn.Value  := FieldByName('PBoxIn').AsCurrency;
      cxCEdit_PBoxOut.Value := FieldByName('PBoxOut').AsCurrency;
      cxEdit_Writer.Text    := FieldByName('Writer').AsString;
      cxEdit_Modifier.Text  := FieldByName('Modifier').AsString;
      cxEdit_WDT.Text       := FieldByName('WDT').AsString;
      cxEdit_MDT.Text       := FieldByName('MDT').AsString;
      cxEdit_Driver.Text    := FieldByName('Driver').AsString;
      cxEdit_Remarks.Text   := FieldByName('Remarks').AsString;
      OldIn  := FieldByName('PBoxIn').AsCurrency;
      OldOut := FieldByName('PBoxOut').AsCurrency;
    end;
  end;
end;

//PBox 잔여수량 계산
function TPBoxForm.PBoxLeft: Double;
var
  PBoxLeft: Double;
begin
  PBoxLeft := cxCEdit_PBoxOut.Value - cxCEdit_PBoxIn.Value;
  Result := PBoxLeft;
end;

procedure TPBoxForm.ReUpdate;
begin
  with DataModuleForm.FDSpSetting(nil, 'usp_PBox', 'S') do
  begin
    ParamByName('@Option').AsString         := 'S';
    ParamByName('@PBoxDate').AsDate         := StrToDate('1900-01-01');
    ParamByName('@PBoxID').AsInteger        := Round(cxCEdit_PBoxID.Value);
    ParamByName('@CustomerID').AsInteger   := Round(cxCEdit_CusID.Value);
    ParamByName('@AccountCHECK').AsInteger := 1;

//    if cxRGroupType.ItemIndex =0 then
//    begin
//      ParamByName('@CustomerID').AsInteger   := Round(cxCEdit_CusID.Value);
//      ParamByName('@PartnerID').AsInteger    := 0;
//      ParamByName('@AccountCHECK').AsInteger := 1;
//
//    end
//    else begin
//      ParamByName('@CustomerID').AsInteger   := 0;
//      ParamByName('@PartnerID').AsInteger    := Round(cxCEditCustomerID.Value);
//      ParamByName('@AccountCHECK').AsInteger := 2;
//    end;
    ExecProc;
  end;
end;

// CustomerPBox 저장
function TPBoxForm.SaveCustomerPBox(PBoxLeft: Double): Boolean;
begin
  Result := False;

  with DataModuleForm.FDSpSetting(nil, 'usp_PBox', 'B') do
  begin
    ParamByName('@CustomerID').AsInteger    := Round(cxCEdit_CusID.Value);
    ParamByName('@PBox').AsCurrency         := PBoxLeft;
    ParamByName('@Modifier').AsString       := DataModule.LoginUserName;
    ExecProc;

    cxCEdit_PBoxID.Value  := ParamByName('@PBoxID').AsInteger;
    cxEdit_Writer.Text    := ParamByName('@Writer').AsString;
    cxEdit_WDT.Text       := ParamByName('@WDT').AsString;
    cxEdit_Modifier.Text  := ParamByName('@Modifier').AsString;
    cxEdit_MDT.Text       := ParamByName('@MDT').AsString;

    Result := True;
  end;
end;

// PBox 저장
function TPBoxForm.SavePBox: Boolean;
begin
  Result := False;

  with DataModuleForm.FDSpSetting(nil, 'usp_PBox', 'D') do
  begin
//    if cxRGroupType.ItemIndex =0 then
//    begin
//      ParamByName('@CustomerID').AsInteger   := Round(cxCEditCustomerID.Value);
//      ParamByName('@PartnerID').AsInteger    := 0;
//    end
//    else begin
//      ParamByName('@CustomerID').AsInteger   := 0;
//      ParamByName('@PartnerID').AsInteger    := Round(cxCEditCustomerID.Value);
//    end;

    ParamByName('@CustomerID').AsInteger    := Round(cxCEdit_CusID.Value);
    ParamByName('@PBoxID').AsInteger        := Round(cxCEdit_PBoxID.Value);
    ParamByName('@PBoxDate').AsDate         := cxDEdit_date.Date ;
    ParamByName('@PBoxIn').AsInteger        := Round(cxCEdit_PBoxIn.Value);
    ParamByName('@PBoxOut').AsInteger       := Round(cxCEdit_PBoxOut.Value);
    ParamByName('@Writer').AsString         := DataModule.LoginUserName;
    ParamByName('@Modifier').AsString       := DataModule.LoginUserName;
    ParamByName('@InPBox').AsCurrency       := cxCEdit_PBoxIn.Value;
    ParamByName('@OutPBox').AsCurrency      := cxCEdit_PBoxOut.Value;
    ParamByName('@OldInPBox').AsCurrency    := OldIn;
    ParamByName('@OldOutPBox').AsCurrency   := OldOut;
    ParamByName('@Driver').AsString         := cxEdit_Driver.Text;
    ParamByName('@Remarks').AsString        := cxEdit_Remarks.Text;

    try
      ExecProc;
    except
      SaveToError := True;
      showmessage(MessageToError);
      exit;
    end;

    cxCEdit_PBoxID.Value  := ParamByName('@PBoxID').AsInteger;
    cxEdit_Writer.Text    := ParamByName('@Writer').AsString;
    cxEdit_WDT.Text       := ParamByName('@WDT').AsString;
    cxEdit_Modifier.Text  := ParamByName('@Modifier').AsString;
    cxEdit_MDT.Text       := ParamByName('@MDT').AsString;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_PBox', 'S') do
  begin
    ParamByName('@PBoxDate').AsDate      := cxDEdit_date.Date ;
    ParamByName('@PBoxID').AsInteger     := Round(cxCEdit_PBoxID.Value);
    ParamByName('@CustomerID').AsInteger := Round(cxCEdit_CusID.Value);
    try
      ExecProc;
    except
      SaveToError := True;
      showmessage(MessageToError);
      exit;
    end;

//    if cxRGroupType.ItemIndex =0 then
//    begin
//      ParamByName('@CustomerID').AsInteger   := Round(cxCEditCustomerID.Value);
//      ParamByName('@PartnerID').AsInteger    := 0;
//      ParamByName('@AccountCHECK').AsInteger := 1;
//
//    end
//    else begin
//      ParamByName('@CustomerID').AsInteger   := 0;
//      ParamByName('@PartnerID').AsInteger    := Round(cxCEditCustomerID.Value);
//      ParamByName('@AccountCHECK').AsInteger := 2;
//    end;

  end;
  Result := True;
end;

// PBox 삭제
function TPBoxForm.DeletePBox: Boolean;
begin
  Result := False;

  with DataModuleForm.FDSpSetting(nil, 'usp_PBox', 'E') do
  begin
    ParamByName('@PBoxID').AsInteger       := Round(cxCEdit_PBoxID.Value);
    ParamByName('@InPBox').AsCurrency      := cxCEdit_PBoxIn.Value;
    ParamByName('@OutPBox').AsCurrency     := cxCEdit_PBoxOut.Value;
    ParamByName('@CustomerID').AsInteger   := Round(cxCEdit_CusID.Value);
    try
      ExecProc;
    except
      SaveToError := True;
      showmessage(MessageToError);
      exit;
    end;
//    if cxRGroupType.ItemIndex =0 then
//    begin
//      ParamByName('@CustomerID').AsInteger   := Round(cxCEditCustomerID.Value);
//      ParamByName('@PartnerID').AsInteger    := 0;
//      ParamByName('@AccountCHECK').AsInteger := 1;
//
//    end
//    else begin
//      ParamByName('@CustomerID').AsInteger   := 0;
//      ParamByName('@PartnerID').AsInteger    := Round(cxCEditCustomerID.Value);
//      ParamByName('@AccountCHECK').AsInteger := 2;
//    end;


//
//    if ParamByName('@RETURN_VALUE').AsInteger <> 0 then
//    begin
//      MessageDlg( MessageToErrorDelete,mtError, [mbOK], 0);
//      Exit;
//    end;
  end;
  Result := True;
end;

//print
procedure TPBoxForm.cxBtnPrintClick(Sender: TObject);
begin
  inherited;

  if cxGridDBTv_PBox.DataController.RecordCount = 0 then
  begin
    exit;
  end;

  frxReport_Pbox.ShowReport(True);
end;

procedure TPBoxForm.fuds_PboxGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;

  if CompareText(varname, 'customer') = 0 then
  begin
    value := cxEdit_CusName.Text;
  end
  else if CompareText(varname, 'sdate') = 0 then
  begin
    value := cxDEdit_sdate.Text;
  end
  else if CompareText(varname, 'edate') = 0 then
  begin
    value := cxDEdit_edate.Text;
  end
  else if CompareText(varname, 'balance') = 0 then
  begin
    value := cxGridDBTv_PBox.DataController.Values[cxGridDBTv_PBox.DataController.RecordCount-1, cxGridDBTv_PBox_PBoxStock.Index];
  end;
end;

end.
