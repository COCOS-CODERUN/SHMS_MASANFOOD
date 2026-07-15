unit HaccpEducationUnit;

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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxMemo,
  Vcl.StdCtrls, cxButtons, cxGroupBox, cxRadioGroup, cxLabel, cxImage,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit;

type
  THaccpEducationForm = class(TForm)
    cxGBox_input: TcxGroupBox;
    cxDEdit_EduDate: TcxDateEdit;
    cxEdit_Attendee: TcxTextEdit;
    cxEdit_Count: TcxTextEdit;
    cxEdit_EduTime: TcxTextEdit;
    cxEdit_Instructor: TcxTextEdit;
    cxEdit_NonCount: TcxTextEdit;
    cxImg_Edu1: TcxImage;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel86: TcxLabel;
    cxRGroup_Type: TcxRadioGroup;
    cxLabel88: TcxLabel;
    cxLabel89: TcxLabel;
    cxEdit_EduFileName: TcxTextEdit;
    cxEdit_SignFileName: TcxTextEdit;
    cxImg_Edu2: TcxImage;
    cxMemo_EduContents: TcxMemo;
    cxMemo_Absentee: TcxMemo;
    cxMemo_Reason: TcxMemo;
    cxMemo_Conduct: TcxMemo;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxBtn_Load2: TcxButton;
    cxBtn_open2: TcxButton;
    cxBtn_FileDel2: TcxButton;
    cxBtn_Load1: TcxButton;
    cxBtn_open1: TcxButton;
    cxBtn_FileDel1: TcxButton;
    cxCEdit_ID: TcxCurrencyEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_Load1Click(Sender: TObject);
    procedure cxBtn_open1Click(Sender: TObject);
    procedure cxBtn_FileDel1Click(Sender: TObject);
    procedure cxBtn_Load2Click(Sender: TObject);
    procedure cxBtn_open2Click(Sender: TObject);
    procedure cxBtn_FileDel2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure ClearProc;
    procedure SaveProc;
    procedure DeleteProc;
    procedure GridListSetting;
    procedure DataBindingToGrid;
  end;

var
  HaccpEducationForm: THaccpEducationForm;

implementation

{$R *.dfm}

uses DataModule, MainUnit, HaccpGeneralUnit;

procedure THaccpEducationForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HaccpEducationForm := nil;
  Action := CaFree;
end;

procedure THaccpEducationForm.FormCreate(Sender: TObject);
begin
  ClearProc;
end;

procedure THaccpEducationForm.ClearProc;
begin
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Input);

  cxCEdit_ID.Value := 0;
end;

procedure THaccpEducationForm.SaveProc;
begin
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpEducation', 'A') do
  begin
    ParamByName('@EducationID' ).Value  := Round(cxCEdit_ID.Value);
    ParamByName('@Division'    ).Value  := cxRGroup_Type.EditValue;
    ParamByName('@Instructor'  ).Value  := cxEdit_Instructor.Text;
    ParamByName('@CheckDate'   ).Value  := cxDEdit_EduDate.Text;
    ParamByName('@EduTime'     ).Value  := cxEdit_EduTime.Text;
    ParamByName('@Attendee'    ).Value  := cxEdit_Attendee.Text;
    ParamByName('@EduCount'    ).Value  := cxEdit_Count.Text;
    ParamByName('@EduNonCount' ).Value  := cxEdit_NonCount.Text;
    ParamByName('@Contents'    ).Value  := cxMemo_EduContents.Text;
    ParamByName('@Writer'      ).Value  := LoginUserName;
    ParamByName('@Modifier'    ).Value  := LoginUserName;
    ParamByName('@EduFileName' ).Value  := cxEdit_EduFileName.Text;
    ParamByName('@SignFileName').Value  := cxEdit_SignFileName.Text;
    ParamByName('@Absentee'    ).Value  := cxMemo_Absentee.Text;
    ParamByName('@Reason'      ).Value  := cxMemo_Reason.Text;
    ParamByName('@Conduct'     ).Value  := cxMemo_Conduct.Text;
    if not (cxImg_Edu1.EditingValue = null) then
    begin
      ParamByName('@EduImage1' ).Value := cxImg_Edu1.EditingValue;
    end;
    if not (cxImg_Edu2.EditingValue = null) then
    begin
      ParamByName('@EduImage2' ).Value := cxImg_Edu2.EditingValue;
    end;
    ExecProc;
  end;
end;

procedure THaccpEducationForm.DeleteProc;
begin
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpEducation', 'B') do
    begin
      ParamByName('@EducationID').Value := Round(cxCEdit_ID.Value);
      ExecProc;
    end;

    DataModuleForm.DeleteFileInFtp(FtpDir, cxEdit_EduFileName.Text);
    DataModuleForm.DeleteFileInFtp(FtpDir, cxEdit_SignFileName.Text);
  end;
end;

procedure THaccpEducationForm.GridListSetting;
begin

end;

procedure THaccpEducationForm.DataBindingToGrid;
begin
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpEducation', 'D') do
  begin
    ParamByName('@Division').Value := DataModule.HaccpSelected_Division;
    ParamByName('@CheckDate').Value  := DataModule.HaccpSelected_Date;
    open;

    cxCEdit_ID.Value        := FieldByName('EducationID').Value;
    cxRGroup_Type.EditValue := FieldByName('Division').Value;
    cxEdit_Instructor.Text  := FieldByName('Instructor').Value;
    cxDEdit_EduDate.Text    := FieldByName('CheckDate').Value;
    cxEdit_EduTime.Text     := FieldByName('EduTime').Value;
    cxEdit_Attendee.Text    := FieldByName('Attendee').Value;
    cxEdit_Count.Text       := FieldByName('EduCount').Value;
    cxEdit_NonCount.Text    := FieldByName('EduNonCount').Value;
    cxEdit_EduFileName.Text := FieldByName('EduFileName').Value;
    cxEdit_SignFileName.Text:= FieldByName('SignFileName').Value;
    cxMemo_EduContents.Text := FieldByName('Contents').Value;
    cxImg_Edu1.EditValue    := FieldByName('EduImage1').Value;
    cxImg_Edu2.EditValue    := FieldByName('EduImage2').Value;
    cxMemo_Absentee.Text    := FieldByName('Absentee').Value;
    cxMemo_Reason.Text      := FieldByName('Reason').Value;
    cxMemo_Conduct.Text     := FieldByName('Conduct').Value;
  end;
end;

procedure THaccpEducationForm.cxBtn_Load1Click(Sender: TObject);
  var FileExt, FileNameToSave: string;
begin

  if DataModuleForm.OpenDialog.Execute then
  begin
    FileExt := ExtractFileExt(DataModuleForm.OpenDialog.FileName);
    FileNameToSave := '교육자료_' + FormatDateTime('yyyymmddhhnnss', Now) + FileExt;

    // FTP 파일 등록
    if DataModuleForm.PutFileToFtp(FtpDir, DataModuleForm.OpenDialog.FileName, FileNameToSave, True) then
    begin
      cxEdit_EduFileName.Text := FileNameToSave;
    end;
  end;
end;

procedure THaccpEducationForm.cxBtn_open1Click(Sender: TObject);
  var FileName, FileDir: string;
begin

  if cxEdit_EduFileName.Text = '' then
  begin
    exit;
  end;

  FileName := cxEdit_EduFileName.Text;
  if FileName <> '' then
  begin
    FileDir := TPath.GetDocumentsPath;
    DataModuleForm.OpenFileFromFtp(FtpDir, FileName, FileDir, FileName);
  end;
end;

procedure THaccpEducationForm.cxBtn_FileDel1Click(Sender: TObject);
  var FileName : string;
begin

  FileName := cxEdit_EduFileName.Text;
  if FileName = '' then
  begin
    Exit;
  end;

  if  (MessageDlg('등록한 파일을 삭제하시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes)
   and (DataModuleForm.DeleteFileInFtp(FtpDir, FileName)) then
  begin
    cxEdit_EduFileName.Text := '';
  end;
end;

procedure THaccpEducationForm.cxBtn_Load2Click(Sender: TObject);
  var FileExt, FileNameToSave: string;
begin

  if DataModuleForm.OpenDialog.Execute then
  begin
    FileExt := ExtractFileExt(DataModuleForm.OpenDialog.FileName);
    FileNameToSave := '서명자료_' + FormatDateTime('yyyymmddhhnnss', Now) + FileExt;

    // FTP 파일 등록
    if DataModuleForm.PutFileToFtp(FtpDir, DataModuleForm.OpenDialog.FileName, FileNameToSave, True) then
    begin
      cxEdit_SignFileName.Text := FileNameToSave;
    end;
  end;
end;

procedure THaccpEducationForm.cxBtn_open2Click(Sender: TObject);
  var FileName, FileDir: string;
begin

  if cxEdit_SignFileName.Text = '' then
  begin
    exit;
  end;

  FileName := cxEdit_SignFileName.Text;
  if FileName <> '' then
  begin
    FileDir := TPath.GetDocumentsPath;
    DataModuleForm.OpenFileFromFtp(FtpDir, FileName, FileDir, FileName);
  end;
end;

procedure THaccpEducationForm.cxBtn_FileDel2Click(Sender: TObject);
  var FileName : string;
begin

  FileName := cxEdit_SignFileName.Text;
  if FileName = '' then
  begin
    Exit;
  end;

  if  (MessageDlg('등록한 파일을 삭제하시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes)
   and (DataModuleForm.DeleteFileInFtp(FtpDir, FileName)) then
  begin
    cxEdit_SignFileName.Text := '';
  end;
end;

end.
