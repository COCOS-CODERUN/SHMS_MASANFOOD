unit OriginalReportUnit;

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
  Vcl.ComCtrls, dxCore, cxDateUtils, cxRadioGroup, cxCurrencyEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxLabel, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxButtonEdit, cxGridCustomTableView, cxGridTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, System.DateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.IOUtils, frxClass, frxBarcode;

type
  TOriginalReportForm = class(TBaseChildForm)
    cxGBox_Search: TcxGroupBox;
    cxGridLv_List: TcxGridLevel;
    cxGrid_List: TcxGrid;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_date: TcxGridColumn;
    cxGridTv_List_name: TcxGridColumn;
    cxGridTv_List_file1: TcxGridColumn;
    cxGridTv_List_file2: TcxGridColumn;
    cxGridTv_List_InoutID: TcxGridColumn;
    cxGridTv_List_DetailID: TcxGridColumn;
    cxGridTv_List_ItemID: TcxGridColumn;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxDEdit_sdate: TcxDateEdit;
    cxDEdit_Edate: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxEdit_file1: TcxTextEdit;
    cxEdit_file2: TcxTextEdit;
    cxBtn_Load1: TcxButton;
    cxBtn_Load2: TcxButton;
    cxBtn_open1: TcxButton;
    cxBtn_open2: TcxButton;
    cxGridTv_List_qty: TcxGridColumn;
    cxGridTv_List_standard: TcxGridColumn;
    frxReport_qrcode: TfrxReport;
    cxGridTv_List_QR: TcxGridColumn;
    fuds_QR: TfrxUserDataSet;
    cxGridTv_List_remark: TcxGridColumn;
    frxReport_qrcode2: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure cxBtn_Load1Click(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxGridTv_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtn_Load2Click(Sender: TObject);
    procedure cxBtn_open1Click(Sender: TObject);
    procedure cxBtn_open2Click(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_BarcodeClick(Sender: TObject);
    procedure fuds_QRCheckEOF(Sender: TObject; var Eof: Boolean);
    procedure fuds_QRFirst(Sender: TObject);
    procedure fuds_QRGetValue(const VarName: string; var Value: Variant);
    procedure fuds_QRNext(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OriginalReportForm: TOriginalReportForm;

  loopcnt : Integer;
  PrintCnt : Integer;

implementation

{$R *.dfm}

uses DataModule;



procedure TOriginalReportForm.FormCreate(Sender: TObject);
begin
  inherited;

  cxDEdit_sdate.Date := Date - 30;
  cxDEdit_edate.Date := Date;

  cxBtn_SearchClick(self);
end;

procedure TOriginalReportForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  cxEdit_file1.Clear;
  cxEdit_file2.Clear;
end;

procedure TOriginalReportForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  if (cxEdit_file1.Text = '') and (cxEdit_file2.Text = '') then
  begin
    Showmessage('등록된 파일이 없습니다.');
    exit;
  end;

  for loopcnt := 0 to cxGridTv_List.Controller.SelectedRecordCount -1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_PurchaseInOut', 'K') do
    begin
      ParamByName('@InOutID').Value :=
        cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_InoutID.Index];
      ParamByName('@DetailID').Value :=
        cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_DetailID.Index];
      ParamByName('@ItemID').Value :=
        cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_ItemID.Index];
      ParamByName('@FileName1').Value := cxEdit_file1.Text;
      ParamByName('@FileName2').Value := cxEdit_file2.Text;
      try
        ExecProc;
      except
        SaveToError := True;
        break;
      end;
    end;
  end;

  if SaveToError then
  begin
    ShowMessage(MessageToError);
  end
  else begin
    ShowMessage(MessageToSave);
    cxBtn_SearchClick(SELF);
  end;
end;

procedure TOriginalReportForm.cxBtn_SearchClick(Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDSpSetting(nil, 'usp_PurchaseInOut', 'J') do
  begin
    ParamByName('sdate').AsString  := cxDEdit_sdate.Text;
    ParamByName('edate').AsString  := cxDEdit_edate.Text;
    ParamByName('TypeNum').AsString := 'BD006';
    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.BeginUpdate;
    cxGridTv_List.DataController.RecordCount := RecordCount;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_date.Index,      FieldByName('InOutDate').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_name.Index,      FieldByName('ItemName').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_standard.Index,  FieldByName('Standard').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_qty.Index,       FieldByName('InOutQty').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_remark.Index,    FieldByName('Reamrk').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_file1.Index,     FieldByName('FileName1').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_file2.Index,     FieldByName('FileName2').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_InoutID.Index,   FieldByName('InOutID').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_DetailID.Index,  FieldByName('DetailID').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ItemID.Index,    FieldByName('ItemID').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_QR.Index,        FieldByName('MaterialQRCode').Value);

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

procedure TOriginalReportForm.cxBtn_Load1Click(Sender: TObject);
  var FileExt, FileName, FileNameToSave, OpenFileName : string;
begin
  inherited;

  if DataModuleForm.OpenDialog.Execute then
  begin
    FileExt := ExtractFileExt(DataModuleForm.OpenDialog.FileName);
    FileName := ExtractFileName(DataModuleForm.OpenDialog.FileName);
    OpenFileName := DataModuleForm.OpenDialog.FileName;

    if FileExt = '.exe' then
    begin
      showmessage('실행파일은 등록할 수 없습니다.');
      exit;
    end;

    FileNameToSave := Copy(FileName, 1, Pos('.', FileName)-1) + '_' + FormatDateTime('yyyymmddhhnn', Now) + FileExt;
    cxEdit_file1.Text :=  FileNameToSave;
  end;

  //ftp file upload
  if OpenFileName <> '' then
  begin
    DataModuleForm.PutFileToFtp(FtpDir, DataModuleForm.OpenDialog.FileName, FileNameToSave, True);
  end;
end;

procedure TOriginalReportForm.cxBtn_Load2Click(Sender: TObject);
  var FileExt, FileName, FileNameToSave, OpenFileName : string;
begin
  inherited;

  if DataModuleForm.OpenDialog.Execute then
  begin
    FileExt := ExtractFileExt(DataModuleForm.OpenDialog.FileName);
    FileName := ExtractFileName(DataModuleForm.OpenDialog.FileName);
    OpenFileName := DataModuleForm.OpenDialog.FileName;

    if FileExt = '.exe' then
    begin
      showmessage('실행파일은 등록할 수 없습니다.');
      exit;
    end;

    FileNameToSave := Copy(FileName, 1, Pos('.', FileName)-1) + '_' + FormatDateTime('yyyymmddhhnn', Now) + FileExt;
    cxEdit_file2.Text :=  FileNameToSave;
  end;

  //ftp file upload
  if OpenFileName <> '' then
  begin
    DataModuleForm.PutFileToFtp(FtpDir, DataModuleForm.OpenDialog.FileName, FileNameToSave, True);
  end;
end;

procedure TOriginalReportForm.cxGridTv_ListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  cxEdit_file1.Text := cxGridTv_List.DataController.Values[cxGridTv_List.DataController.FocusedRecordIndex, cxGridTv_List_file1.Index];
  cxEdit_file2.Text := cxGridTv_List.DataController.Values[cxGridTv_List.DataController.FocusedRecordIndex, cxGridTv_List_file2.Index];
end;

procedure TOriginalReportForm.cxBtn_open1Click(Sender: TObject);
 var FileName, FileDir: string;
begin
  inherited;

  if cxEdit_file1.Text = '' then
  begin
    exit;
  end;

  FileName := cxEdit_file1.Text;
  if FileName <> '' then
  begin
    FileDir := TPath.GetDocumentsPath;
    DataModuleForm.OpenFileFromFtp(FtpDir, FileName, FileDir, FileName);
  end;
end;

procedure TOriginalReportForm.cxBtn_open2Click(Sender: TObject);
 var FileName, FileDir: string;
begin
  inherited;

  if cxEdit_file2.Text = '' then
  begin
    exit;
  end;

  FileName := cxEdit_file2.Text;
  if FileName <> '' then
  begin
    FileDir := TPath.GetDocumentsPath;
    DataModuleForm.OpenFileFromFtp(FtpDir, FileName, FileDir, FileName);
  end;
end;

procedure TOriginalReportForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  if MessageDlg('선택 항목의 파일을 삭제 하시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    for loopcnt := 0 to cxGridTv_List.Controller.SelectedRecordCount -1 do
    begin
      with DataModuleForm.FDSpSetting(nil, 'usp_PurchaseInOut', 'K') do
      begin
        ParamByName('@InOutID').Value :=
          cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_InoutID.Index];
        ParamByName('@DetailID').Value :=
          cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_DetailID.Index];
        ParamByName('@ItemID').Value :=
          cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_ItemID.Index];
        ParamByName('@FileName1').Value := '';
        ParamByName('@FileName2').Value := '';
        ExecProc;
      end;

      DataModuleForm.DeleteFileInFtp(FtpDir, cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_file1.Index]);
      DataModuleForm.DeleteFileInFtp(FtpDir, cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_file2.Index]);
    end;

    cxEdit_file1.Clear;
    cxEdit_file2.Clear;
    cxBtn_SearchClick(SELF);
  end;
end;

procedure TOriginalReportForm.cxBtn_BarcodeClick(Sender: TObject);
begin
  inherited;

  if cxGridTv_List.Controller.SelectedRecordCount = 0 then
  begin
    exit;
  end;

  //선택한 원재료들 QR코드 먼저 DB에 업데이트 하고 QR CODE 출력 해 줌
  for loopcnt := 0 to cxGridTv_List.Controller.SelectedRecordCount -1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_PurchaseInOut' , 'L') do
    begin
      ParamByName('@InOutID').Value :=
        cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_InoutID.Index];
      ParamByName('@DetailID').Value :=
        cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_DetailID.Index];
      ParamByName('@ItemID').Value :=
        cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_ItemID.Index];
      ParamByName('@InOutDate').Value :=
        cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_date.Index];
      ParamByName('@MaterialQRCode').Value :=
        cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_QR.Index];

      ExecProc;

      if cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_QR.Index] = '' then
      begin
        cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[loopcnt].RecordIndex, cxGridTv_List_QR.Index]
        := ParamByName('@MaterialQRCode').AsString;
      end;
    end;
  end;

//  frxReport_qrcode.ShowReport(True);
  frxReport_qrcode2.ShowReport(True);

//  frxReport_qrcode.PrepareReport;
//  frxReport_qrcode.PrintOptions.ShowDialog := False;
//  frxReport_qrcode.Print;
end;

procedure TOriginalReportForm.fuds_QRCheckEOF(Sender: TObject;
  var Eof: Boolean);
begin
  inherited;

  EOF := PrintCnt >= cxGridTv_List.Controller.SelectedRecordCount ;
end;

procedure TOriginalReportForm.fuds_QRFirst(Sender: TObject);
begin
  inherited;

  PrintCnt := 0;
end;

procedure TOriginalReportForm.fuds_QRGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;

  if CompareText(VarName, 'InOutDate') = 0 then
  begin
    Value := cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[PrintCnt].RecordIndex, cxGridTv_List_date.Index];
  end
  else if CompareText(VarName, 'ItemName') = 0 then
  begin
    Value := cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[PrintCnt].RecordIndex, cxGridTv_List_name.Index];
  end
  else if CompareText(VarName, 'Standard') = 0 then
  begin
    Value := cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[PrintCnt].RecordIndex, cxGridTv_List_standard.Index];
  end
  else if CompareText(VarName, 'Qty') = 0 then
  begin
    Value := cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[PrintCnt].RecordIndex, cxGridTv_List_qty.Index];
  end
  else if CompareText(VarName, 'Remark') = 0 then
  begin
    Value := cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[PrintCnt].RecordIndex, cxGridTv_List_remark.Index];
  end
  else if CompareText(VarName, 'QRCodeText') = 0 then
  begin
    Value := cxGridTv_List.DataController.Values[cxGridTv_List.Controller.SelectedRecords[PrintCnt].RecordIndex, cxGridTv_List_qr.Index];
  end;
end;

procedure TOriginalReportForm.fuds_QRNext(Sender: TObject);
begin
  inherited;

  Inc(PrintCnt);
end;

end.
