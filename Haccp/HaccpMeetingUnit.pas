unit HaccpMeetingUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxImage, cxMemo,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxGroupBox;

type
  THaccpMeetingForm = class(TForm)
    cxGBox_top: TcxGroupBox;
    cxGBox_right: TcxGroupBox;
    cxLbl100: TcxLabel;
    cxDEditDateT17: TcxDateEdit;
    cxEditCodeT17: TcxTextEdit;
    cxEditTitleT17: TcxTextEdit;
    cxLabel28: TcxLabel;
    cxLbl99: TcxLabel;
    cxGBox_main: TcxGroupBox;
    cxLabel30: TcxLabel;
    cxImageMeeting: TcxImage;
    cxLabel29: TcxLabel;
    cxMemoContentsT17: TcxMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
  HaccpMeetingForm: THaccpMeetingForm;

implementation

uses DataModule, HaccpGeneralUnit, MainUnit;

{$R *.dfm}

procedure THaccpMeetingForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HaccpMeetingForm := nil;
  Action := caFree;
end;

procedure THaccpMeetingForm.FormCreate(Sender: TObject);
begin
  ClearProc;
end;

procedure THaccpMeetingForm.ClearProc;
begin
  cxEditCodeT17.Clear;
  cxDEditDateT17.Clear;
  cxEditTitleT17.Clear;
  cxMemoContentsT17.Clear;
  cxImageMeeting.Clear;
end;

procedure THaccpMeetingForm.SaveProc;
begin
  if cxDEditDateT17.Text = '' then
  begin
    ShowMessage('일자를 입력하세요.');
    exit;
  end;

  if cxEditTitleT17.Text = '' then
  begin
    ShowMessage('제목을 입력하세요.');
    exit;
  end;

  if cxMemoContentsT17.Text = '' then
  begin
    ShowMessage('회의 내용을 입력하세요.');
    exit;
  end;

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    SQL.Add(' Exec usp_HaccpMeeting           ');
    SQL.Add('   @option       = :option,      ');
    SQL.Add('   @MeetingID    = :MeetingID,   ');
    SQL.Add('   @CheckDate    = :CheckDate, ');
    SQL.Add('   @Title        = :Title,       ');
    SQL.Add('   @Contents     = :Contents,    ');
    if not (cxImageMeeting.EditingValue = NULL) then
    begin
      SQL.Add('   @AddFile      = :AddFile,   ');
      ParamByName('AddFile'   ).Value     := cxImageMeeting.EditingValue;
    end;
    SQL.Add('   @Reviewer     = :Reviewer,    ');
    SQL.Add('   @Confirmer    = :Confirmer,    ');
    SQL.Add('   @HaccpOK      = :HaccpOK,     ');
    SQL.Add('   @Writer       = :Writer,      ');
    SQL.Add('   @Modifier     = :Modifier     ');
    ParamByName('option'      ).AsString  := 'A';
    ParamByName('MeetingID'   ).AsString  := cxEditCodeT17.Text;
    ParamByName('CheckDate'   ).AsString  := cxDEditDateT17.Text;
    ParamByName('Title'       ).AsString  := cxEditTitleT17.Text;
    ParamByName('Contents'    ).AsString  := cxMemoContentsT17.Text;
    ParamByName('Reviewer'    ).Value     := '';
    ParamByName('Confirmer'   ).Value     := '';
    ParamByName('HaccpOK'     ).AsString  := '';
    ParamByName('Writer'      ).AsString  := LoginUserName;
    ParamByName('Modifier'    ).AsString  := LoginUserName;
    Open;

    cxEditCodeT17.Text := FieldByName('MeetingID').AsString;
  end;
end;

procedure THaccpMeetingForm.DeleteProc;
begin
  if cxEditCodeT17.Text = '' then
  begin
    showmessage('삭제 가능한 상태가 아닙니다.');
    exit;
  end;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDQuerySetting(nil) do
     begin
      close;
      sql.Clear;
      sql.Add(' exec usp_HaccpMeeting @option = :option ,@MeetingID = :MeetingID ');
      ParamByName('option').AsString    := 'B';
      ParamByName('MeetingID').AsString  := cxEditCodeT17.Text;
      ExecSQL;
    end;
  end;
end;

procedure THaccpMeetingForm.GridListSetting;
begin

end;

procedure THaccpMeetingForm.DataBindingToGrid;
begin
  with DataModuleForm.FDQuerySetting(nil) do
  begin
    close;
    sql.Clear;
    sql.Add(' exec usp_HaccpMeeting @option = :option, @CheckDate = :CheckDate ');
    ParamByName('option').AsString := 'C';
    ParamByName('CheckDate').AsString := DataModule.HaccpSelected_Date;
    open;

    if RecordCount = 0 then
    begin
      ClearProc;
    end
    else begin
      cxEditCodeT17.Text        := FieldByName('MeetingID').AsString;
      cxDEditDateT17.Text       := FieldByName('CheckDate').AsString;
      cxEditTitleT17.Text       := FieldByName('Title').AsString;
      cxMemoContentsT17.Text    := FieldByName('Contents').AsString;
      cxImageMeeting.EditValue  := FieldByName('AddFile').Value;
//      cxEditQAOKT17.Text        := FieldByName('QAOK').AsString;
//      cxEditManagerOKT17.Text   := FieldByName('ManagerOK').AsString;
//      cxEditHaccpOKT17.Text     := FieldByName('HaccpOK').AsString;
    end;
  end;
end;


end.
