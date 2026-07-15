unit HaccpStandardReportUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxRadioGroup, cxTextEdit, cxLabel, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxMemo, cxCalendar, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.IOUtils, cxSplitter,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, MemDS, DBAccess, Uni;

type
  THaccpStandardReportForm = class(TBaseChildForm)
    DS_List: TDataSource;
    DS_Menu: TDataSource;
    cxGBoxLeft: TcxGroupBox;
    cxGBoxCustomerSearch: TcxGroupBox;
    cxGrid_Menu: TcxGrid;
    cxGridDBTv_Menu: TcxGridDBTableView;
    cxGridLv_Menu: TcxGridLevel;
    cxSplitter: TcxSplitter;
    cxGBoxSearch: TcxGroupBox;
    cxGBox_Input: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    cxDEdit_Date: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxEdit_FileName: TcxTextEdit;
    cxBtn_filesave: TcxButton;
    cxBtn_fileopen: TcxButton;
    cxMemo_Remark: TcxMemo;
    cxCEdit_RevNo: TcxCurrencyEdit;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridDBTv_List_Date: TcxGridDBColumn;
    cxGridDBTv_List_RevNo: TcxGridDBColumn;
    cxGridDBTv_List_Menu: TcxGridDBColumn;
    cxGridDBTv_List_FileName1: TcxGridDBColumn;
    cxGridDBTv_List_Remark: TcxGridDBColumn;
    cxGridDBTv_List_no: TcxGridDBColumn;
    cxGridLv_List: TcxGridLevel;
    cxGridDBTv_MenuListID: TcxGridDBColumn;
    cxGridDBTv_MenuFormName: TcxGridDBColumn;
    cxGridDBTv_Listrevision: TcxGridDBColumn;
    cxGridDBTv_ListMenuID: TcxGridDBColumn;
    cxEdit_FormName: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxMemo_revision: TcxMemo;
    cxBtnSearchList: TcxButton;
    cxGridDBTv_Menu_FormCode: TcxGridDBColumn;
    UniQuery_List: TUniQuery;
    UniQuery_Menu: TUniQuery;
    FDQuery_comm: TUniQuery;
    cxEdit_ListID: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridDBTv_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtn_filesaveClick(Sender: TObject);
    procedure cxBtn_fileopenClick(Sender: TObject);
    procedure cxGridDBTv_MenuCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure DataListSearch;
  public
    { Public declarations }
  end;

var
  HaccpStandardReportForm: THaccpStandardReportForm;

  SaveMode : string;

implementation

uses DataModule, MainUnit;

{$R *.dfm}

procedure THaccpStandardReportForm.FormCreate(Sender: TObject);
var
  loopcnt: Integer;
begin
  inherited;

  //메뉴명 가져오기
  with DataModuleForm.FDQuerySetting(UniQuery_Menu) do
  begin
    SQL.Add( 'SELECT ListID, FormNo, FormName ');
    SQL.Add(' ,(SELECT ISNULL(MAX(RevNo), 0) FROM HaccpStandardReport WHERE ListID = HaccpMenu.ListID) AS RevNo ');
    SQL.Add(' FROM HaccpMenu ');
    Open;
  end;

  //data list
  cxBtn_NewClick(self);
end;

//new
procedure THaccpStandardReportForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBox_input);

  cxCEdit_RevNo.Value := 0;

  cxDEdit_Date.Date := Date;

  SaveMode := 'I';
end;

//save
procedure THaccpStandardReportForm.cxBtn_SaveClick(Sender: TObject);
  var Option : string;
begin
  inherited;

  EssentialItem(cxEdit_FormName, 'HACCP 대장');
  EssentialItem(cxDEdit_date, '등록일자');

  if SaveMode = 'I' then
  begin
    Option := 'I';
  end
  else begin
    Option := 'U';
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpStandardReport', Option) do
  begin
    ParamByName('@ListID').AsString     := cxEdit_ListID.Text;
    ParamByName('@RevNo').AsInteger     := Round(cxCEdit_RevNo.Value);
    ParamByName('@RDate').AsString      := cxDEdit_Date.Text;
    ParamByName('@MenuName').AsString   := cxEdit_FormName.Text;
    ParamByName('@FileName').AsString   := cxEdit_FileName.Text;
    ParamByName('@Revision').AsString   := cxMemo_revision.Text;
    ParamByName('@Remarks').AsString    := cxMemo_Remark.Text;
    ExecProc;
  end;

  //ftp file upload
  if OpenFileName <> '' then
  begin
    DataModuleForm.PutFileToFtp(FtpDir, OpenFileName, cxEdit_filename.Text, True);
  end;

  ShowMessage(DataModule.MessageToSave);
  cxBtn_NewClick(self);
  UniQuery_List.Refresh;
end;

//delete
procedure THaccpStandardReportForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpStandardReport', 'D') do
    begin
      ParamByName('@ListID').AsString := cxEdit_ListID.Text;
      ParamByName('@RevNo').AsInteger := Round(cxCEdit_RevNo.Value);
      ExecProc;
    end;

    DataModuleForm.DeleteFileInFtp(FtpDir, cxEdit_filename.Text);

    cxBtn_NewClick(self);
    DataListSearch;
  end;
end;

//gird list double click
procedure THaccpStandardReportForm.cxGridDBTv_MenuCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with UniQuery_Menu do
  begin
    cxEdit_ListID.Text   := FieldByName('ListID').AsString;
    cxEdit_FormName.Text := FieldByName('FormName').AsString;
    cxCEdit_RevNo.Value  := FieldByName('RevNo').AsInteger;
  end;

  DataListSearch;
end;

procedure THaccpStandardReportForm.DataListSearch;
begin
  with DataModuleForm.FDQuerySetting(UniQuery_List) do
  begin
    sql.Add(' EXEC usp_HaccpStandardReport @option = :option, @ListID = :ListID ');
    ParamByName('option').AsString := 'L';
    ParamByName('ListID').AsString := cxEdit_ListID.Text;
    open;
  end;
end;

procedure THaccpStandardReportForm.cxGridDBTv_ListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with UniQuery_List do
  begin
    cxDEdit_Date.Text     := FieldByName('RDate').AsString;
    cxCEdit_RevNo.Value   := FieldByName('RevNo').AsInteger;
    cxEdit_FormName.Text  := FieldByName('MenuName').AsString;
    cxEdit_FileName.Text  := FieldByName('FileName').AsString;
    cxMemo_revision.Text  := FieldByName('Revision').AsString;
    cxMemo_Remark.Text    := FieldByName('Remarks').AsString;
    cxEdit_ListID.Text    := FieldByName('ListID').AsString;
  end;

    SaveMode := 'U';
end;

//file load 1
procedure THaccpStandardReportForm.cxBtn_filesaveClick(Sender: TObject);
  var FileExt, FileName, FileNameToSave: string;
begin
  inherited;

  if cxEdit_filename.Text <> '' then
  begin
    ShowMessage('이미 등록한 파일이 있습니다.');
    Exit;
  end;

  if DataModuleForm.OpenDialog.Execute then
  begin
    FileExt := ExtractFileExt(DataModuleForm.OpenDialog.FileName);
    FileName := ExtractFileName(DataModuleForm.OpenDialog.FileName);
    OpenFileName := DataModuleForm.OpenDialog.FileName;

    FileNameToSave := Copy(FileName, 1, Pos('.', FileName)-1) + '_' + FormatDateTime('yyyymmddhhnn', Now) + FileExt;

    cxEdit_filename.Text :=  FileNameToSave;
  end;
end;

//file view 1
procedure THaccpStandardReportForm.cxBtn_fileopenClick(Sender: TObject);
  var FileName, FileDir: string;
begin
  inherited;

  if cxEdit_filename.Text = '' then
  begin
    exit;
  end;

  FileName := cxEdit_filename.Text;
  if FileName <> '' then
  begin
    FileDir := TPath.GetDocumentsPath;
    DataModuleForm.OpenFileFromFtp(FtpDir, FileName, FileDir, FileName);
  end;
end;

end.
