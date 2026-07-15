unit HaccpHealthUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, System.IOUtils,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
  cxDropDownEdit, Vcl.StdCtrls, cxButtons, cxLabel, cxMaskEdit, cxCalendar,
  cxTextEdit, cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxMemo,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  MemDS, DBAccess, Uni, System.DateUtils;

type
  THaccpHealthForm = class(TForm)
    cxGBox_Input: TcxGroupBox;
    cxEdit_Name: TcxTextEdit;
    cxDEdit_NextDate: TcxDateEdit;
    cxDEdit_CheckDate: TcxDateEdit;
    cxEdit_FileName: TcxTextEdit;
    cxLabel114: TcxLabel;
    cxLabel115: TcxLabel;
    cxLabel113: TcxLabel;
    cxLabel111: TcxLabel;
    cxLabel112: TcxLabel;
    cxLabel110: TcxLabel;
    cxBtn_FileDel: TcxButton;
    cxCBBox_Department: TcxComboBox;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridDBTv_List_Seq: TcxGridDBColumn;
    cxGridDBTv_List_Department: TcxGridDBColumn;
    cxGridDBTv_List_Name: TcxGridDBColumn;
    cxGridDBTv_List_CheckDate: TcxGridDBColumn;
    cxGridDBTv_List_NextDate: TcxGridDBColumn;
    cxGridDBTv_List_RestDay: TcxGridDBColumn;
    cxGridDBTv_List_FileName: TcxGridDBColumn;
    cxGridDBTv_List_Remark: TcxGridDBColumn;
    cxGridDBTv_List_Code: TcxGridDBColumn;
    cxGridLv_List: TcxGridLevel;
    cxBtn_Load: TcxButton;
    cxBtn_open: TcxButton;
    cxMemo_Remark: TcxMemo;
    cxCEdit_ID: TcxCurrencyEdit;
    DS_L: TDataSource;
    cxGridDBTv_List_Writer: TcxGridDBColumn;
    cxGridDBTv_List_Reviewer: TcxGridDBColumn;
    cxGridDBTv_List_Confirmer: TcxGridDBColumn;
    UniSP_L: TUniStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTv_List_SeqGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cxGridDBTv_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtn_LoadClick(Sender: TObject);
    procedure cxBtn_openClick(Sender: TObject);
    procedure cxBtn_FileDelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDEdit_CheckDatePropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBTv_List_RestDayCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearProc;
    procedure SaveProc;
    procedure DeleteProc;
    procedure GridListSetting;
    procedure DataBindingToGrid;
    procedure ApprovalUpdate(ApprovalKind: string);
  end;

var
  HaccpHealthForm: THaccpHealthForm;

implementation

{$R *.dfm}

uses DataModule, MainUnit, HaccpGeneralUnit;

procedure THaccpHealthForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  HaccpHealthForm := nil;
  Action := CaFree;
end;

procedure THaccpHealthForm.FormCreate(Sender: TObject);
  var i : Integer;
begin

  //부서명
  with DataModuleForm.FDQuerySetting(nil) do
  begin
    SQL.Add(' SELECT DISTINCT Department FROM HaccpHealth ');
    open;

    cxCBBox_Department.Clear;
    for i := 0 to RecordCount -1 do
    begin
      cxCBBox_Department.Properties.Items.Add(FieldByName('Department').AsString);

      Next;
    end;
  end;

  ClearProc;
  GridListSetting;
end;

procedure THaccpHealthForm.cxGridDBTv_List_RestDayCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  // 잔여일 30일 이하면 색상 표시
  if AViewInfo.GridRecord.Values[cxGridDBTv_List_RestDay.Index] <= 30 then
  begin
    ACanvas.Brush.Color := MainForm.cxStyle_SkyRed.Color;
    ACanvas.Font.Color  := clBlack;
  end;
end;

procedure THaccpHealthForm.cxGridDBTv_List_SeqGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(ARecord.Index +1);
end;

procedure THaccpHealthForm.ClearProc;
begin
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Input);

  cxCEdit_ID.Value := 0;
end;

procedure THaccpHealthForm.SaveProc;
begin
  if cxEdit_Name.Text = '' then
  begin
    showmessage('셩명을 입력하세요.');
    exit;
  end;

  if cxDEdit_CheckDate.Text = '' then
  begin
    showmessage('검진일을 입력하세요.');
    exit;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpHealth', 'A') do
  begin
    ParamByName('@HealthID').Value    := Round(cxCEdit_ID.Value);
    ParamByName('@Department').Value  := cxCBBox_Department.Text;
    ParamByName('@StaffName').Value   := cxEdit_Name.Text;
    ParamByName('@CheckDate').Value   := cxDEdit_CheckDate.Text;
    ParamByName('@NextDate').Value    := cxDEdit_NextDate.Text;
    ParamByName('@FileName').Value    := cxEdit_FileName.Text;
    ParamByName('@Remark').Value      := cxMemo_Remark.Text;
    ParamByName('@Writer').Value      := LoginUserName;
    ParamByName('@Modifier').Value    := LoginUserName;
    try
      ExecProc;
    except
      SaveToError := True;
    end;
  end;

  GridListSetting;
end;

procedure THaccpHealthForm.DeleteProc;
begin
  if cxCEdit_ID.Value = 0 then
  begin
    showmessage('삭제 가능한 상태가 아닙니다.');
    exit;
  end;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpHealth', 'B') do
  begin
      ParamByName('@HealthID').Value := Round(cxCEdit_ID.Value);
      try
      ExecProc;
      except
        ShowMessage(MessageToError);
      end;
    end;

    DataModuleForm.DeleteFileInFtp(FtpDir, cxEdit_FileName.Text);

    GridListSetting;
  end;
end;

procedure THaccpHealthForm.GridListSetting;
begin
  with DataModuleForm.FDSpSetting(UniSP_L, 'usp_HaccpHealth', 'C') do
  begin
    open;
  end;
end;

procedure THaccpHealthForm.DataBindingToGrid;
begin
  with UniSP_L do
  begin
    cxCEdit_ID.Value        := FieldByName('HealthID').Value;
    cxCBBox_Department.Text := FieldByName('Department').Value;
    cxEdit_Name.Text        := FieldByName('StaffName').Value;
    cxDEdit_CheckDate.Text  := FieldByName('CheckDate').Value;
    cxDEdit_NextDate.Text   := FieldByName('NextDate').Value;
    cxEdit_FileName.Text    := FieldByName('FileName').Value;
    cxMemo_Remark.Text      := FieldByName('Remark').Value;
  end;
end;

procedure THaccpHealthForm.cxGridDBTv_ListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  DataBindingToGrid;
end;

procedure THaccpHealthForm.cxBtn_LoadClick(Sender: TObject);
  var FileExt, FileNameToSave: string;
begin

//  if cxEdit_FileName.Text <> '' then
//  begin
//    ShowMessage('이미 등록한 파일이 있습니다.');
//    Exit;
//  end;

  if DataModuleForm.OpenDialog.Execute then
  begin
    FileExt := ExtractFileExt(DataModuleForm.OpenDialog.FileName);
    // 파일명 예시 보건증_20200916111501.pdf
    FileNameToSave := cxEdit_Name.Text + '_' + FormatDateTime('yyyymmddhhnnss', Now) + FileExt;

    // FTP 파일 등록
    if DataModuleForm.PutFileToFtp(Ftpdir, DataModuleForm.OpenDialog.FileName, FileNameToSave, True) then
    begin
      cxEdit_FileName.Text := FileNameToSave;
    end;
  end;
end;

procedure THaccpHealthForm.cxBtn_openClick(Sender: TObject);
  var FileName, FileDir: string;
begin

  if cxEdit_FileName.Text = '' then
  begin
    exit;
  end;

  FileName := cxEdit_FileName.Text;
  if FileName <> '' then
  begin
    FileDir := TPath.GetDocumentsPath;
    DataModuleForm.OpenFileFromFtp(FtpDir, FileName, FileDir, FileName);
  end;
end;

procedure THaccpHealthForm.cxDEdit_CheckDatePropertiesEditValueChanged(
  Sender: TObject);
begin
  // 차기검진일 자동 1년으로 입력
  if cxDEdit_CheckDate.Text <> '' then
  begin
    cxDEdit_NextDate.Date := IncDay(cxDEdit_CheckDate.Date, 364);
  end;
end;

procedure THaccpHealthForm.cxBtn_FileDelClick(Sender: TObject);
  var FileName : string;
begin

  FileName := cxEdit_FileName.Text;
  if FileName = '' then
  begin
    Exit;
  end;

  if  (MessageDlg('등록한 파일을 삭제하시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes)
   and (DataModuleForm.DeleteFileInFtp(FtpDir, FileName)) then
  begin
    cxEdit_FileName.Text := '';
  end;
end;

procedure THaccpHealthForm.ApprovalUpdate(ApprovalKind: string);
begin
  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' UPDATE HaccpHealth SET     ');
    if ApprovalKind = 'R' then
    begin
      sql.Add('  Reviewer = :Reviewer      ');
      ParamByName('Reviewer').AsString  := LoginUserName;
    end
    else begin
      sql.Add('  Confirmer = :Confirmer    ');
      ParamByName('Confirmer').AsString := LoginUserName;
    end;
    sql.Add(' WHERE HealthID = :HealthID ');
    ParamByName('HealthID').AsInteger := Round(cxCEdit_ID.Value);

    try
      ExecSQL;
    except
      SaveToError := True;
    end;
  end;

  GridListSetting;
end;


end.
