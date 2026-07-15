unit HaccpHandWritingUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxCalendar, cxCheckBox,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxSplitter, cxDBEdit, cxDropDownEdit,
  cxImage, cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, cxButtons, cxGroupBox, ShellAPI,
  System.IOUtils,IdGlobal, cxMemo, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, MemDS, DBAccess, Uni;

type
  THaccpHandWritingForm = class(TBaseChildForm)
    DS_L: TDataSource;
    OpenDialog: TOpenDialog;
    DS_Menu: TDataSource;
    cxGBoxLeft: TcxGroupBox;
    cxGBoxCustomerSearch: TcxGroupBox;
    cxGridFormName: TcxGrid;
    cxGridDBTvFormName: TcxGridDBTableView;
    cxGridDBTvFormNameListID: TcxGridDBColumn;
    cxGridDBTvFormNameDivision: TcxGridDBColumn;
    cxGridDBTvFormNameFormName: TcxGridDBColumn;
    cxGridLvFormName: TcxGridLevel;
    cxSplitter: TcxSplitter;
    cxGroupBox2: TcxGroupBox;
    cxGBoxSearch: TcxGroupBox;
    cxGBox_list: TcxGroupBox;
    cxGrid_list: TcxGrid;
    cxGridDBTV_list: TcxGridDBTableView;
    cxGridLv_list: TcxGridLevel;
    cxGBox_Report: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDEdit_Date: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxEdit_writer: TcxTextEdit;
    cxEdit_FormName: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxEdit_FileName: TcxTextEdit;
    cxBtn_filesave: TcxButton;
    cxBtn_fileopen: TcxButton;
    cxLabel5: TcxLabel;
    cxMemo_Remark: TcxMemo;
    cxLabel4: TcxLabel;
    cxImage: TcxImage;
    cxGridDBTV_list_ListID: TcxGridDBColumn;
    cxGridDBTV_list_FileName: TcxGridDBColumn;
    cxGridDBTV_list_date: TcxGridDBColumn;
    cxGridDBTV_list_Remarks: TcxGridDBColumn;
    cxGridDBTV_list_FormName: TcxGridDBColumn;
    UniQuery_List: TUniQuery;
    UniQuery_Menu: TUniQuery;
    cxEdit_ListID: TcxTextEdit;
    cxGridDBTV_list_Writer: TcxGridDBColumn;
    procedure cxBtn_searchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_filesaveClick(Sender: TObject);
    procedure cxBtn_fileopenClick(Sender: TObject);
    procedure cxGridDBTvFormNameCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxGridDBTV_listCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HaccpHandWritingForm: THaccpHandWritingForm;

  SaveFlag : string;

implementation

{$R *.dfm}
uses MainUnit, DataModule;

//폼 이벤트 ====================================================================
procedure THaccpHandWritingForm.FormCreate(Sender: TObject);
begin
  inherited;

  //메뉴명 가져오기
  with DataModuleForm.FDQuerySetting(UniQuery_Menu) do
  begin
    sql.Add(' SELECT * FROM HaccpMenu ');
    open;
  end;

  cxBtn_NewClick(Self);

//  cxBtn_searchClick(self);
end;

//버튼 이벤트 ==================================================================
//new
procedure THaccpHandWritingForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Report);

  cxDEdit_date.Date := Date;
  cxEdit_writer.Text := LoginUserName;
  SaveFlag := 'I';
end;

//save
procedure THaccpHandWritingForm.cxBtn_SaveClick(Sender: TObject);
  var Option : string;
begin
  inherited;

  EssentialItem(cxDEdit_Date, '등록일자');
  EssentialItem(cxEdit_FileName, '첨부파일');


  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpHandWriting', SaveFlag) do
  begin
    ParamByName('@ListID').AsString   := cxEDit_ListID.Text;
    ParamByName('@RDate').AsString    := cxDEdit_Date.Text;
    ParamByName('@FormName').AsString := cxEdit_FormName.Text;
    ParamByName('@FileName').AsString := cxEdit_FileName.Text;
    ParamByName('@Writer').AsString   := cxEdit_writer.Text;
    ParamByName('@Remarks').AsString  := cxMemo_Remark.Text;
    ParamByName('@HWImage').Value     := cxImage.EditValue;

    try
      ExecProc;
    except
      ShowMessage(MessageToError);
      exit;
    end;
  end;

  //ftp file upload
  if OpenFileName <> '' then
  begin
    DataModuleForm.PutFileToFtp(FtpDir, OpenFileName, cxEdit_filename.Text, True);
  end;

  ShowMessage(MessageToSave);
  cxBtn_NewClick(self);
  UniQuery_List.Refresh;
end;

//delete
procedure THaccpHandWritingForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpHandWriting', 'D') do
    begin
      ParamByName('@ListID').AsString := cxEdit_ListID.Text;
      ParamByName('@Rdate').AsString  := cxDEdit_Date.Text;
      ExecProc;
    end;

    DataModuleForm.DeleteFileInFtp(FtpDir, cxEdit_filename.Text);
  end;
  UniQuery_List.Refresh;
  cxBtn_NewClick(self);
end;

procedure THaccpHandWritingForm.cxBtn_fileopenClick(Sender: TObject);
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
    DataModuleForm.OpenFileFromFtp(Ftpdir, FileName, FileDir, FileName);
  end;
end;

procedure THaccpHandWritingForm.cxBtn_filesaveClick(Sender: TObject);
  var
  FileExt, FileName, FileNameToSave: string;
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

procedure THaccpHandWritingForm.cxBtn_searchClick(Sender: TObject);
begin
  with DataModuleForm.FDQuerySetting(UniQuery_List) do
  begin
    SQL.Add(' SELECT * FROM HaccpHandWriting ');
    open;
  end;
end;

//그리드 이벤트 ================================================================
//클릭 하면 첨부 문서 조회
procedure THaccpHandWritingForm.cxGridDBTvFormNameCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  with UniQuery_Menu do
  begin
    cxEdit_ListID.Text   := FieldByName('ListID').AsString;
    cxEdit_FormName.Text := FieldByName('FormName').AsString;
  end;

  //data list
  with DataModuleForm.FDQuerySetting(UniQuery_List) do
  begin
    close;
    sql.Clear;
    Connection := DataModuleForm.FDConnection;
    sql.Add(' EXEC usp_HaccpHandWriting @option = :option ,@ListID = :ListID ');
    ParamByName('option').AsString := 'L';
    ParamByName('ListID').AsString := cxEdit_ListID.Text;
    open;
  end;
end;

procedure THaccpHandWritingForm.cxGridDBTV_listCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with UniQuery_List do
  begin
    cxEdit_ListID.Text   := FieldByName('ListID').AsString;
    cxEdit_FormName.Text := FieldByName('FormName').AsString;
    cxDEdit_date.Text    := FieldByName('Rdate').AsString;
    cxEdit_fileName.Text := FieldByName('FileName').AsString;
    cxEdit_writer.Text   := FieldByName('Writer').AsString;
    cxMemo_Remark.Text   := FieldByName('Remarks').AsString;
    cxImage.EditValue    := FieldByName('HWImage').Value;
  end;

  SaveFlag := 'U';
end;


end.
