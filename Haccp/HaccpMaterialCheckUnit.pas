unit HaccpMaterialCheckUnit;

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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxMemo, cxCurrencyEdit,
  cxGroupBox, cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons, system.IOUtils;

type
  THaccpMaterialCheckForm = class(TForm)
    cxGBox_Input: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxDEdit_mdate: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxDEdit_Killdate: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxEdit_KillPlace: TcxTextEdit;
    cxRGroup_Car: TcxRadioGroup;
    cxRGroup_GTest: TcxRadioGroup;
    cxRGroup_ETest: TcxRadioGroup;
    cxCEdit_InComeQty: TcxCurrencyEdit;
    cxCEdit_Temp: TcxCurrencyEdit;
    cxRGroup_Decision: TcxRadioGroup;
    cxRGroup_File: TcxRadioGroup;
    cxLabel32: TcxLabel;
    cxMemo_content: TcxMemo;
    cxCEdit_ID: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cxEdit_filename: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxRGroup_PTest: TcxRadioGroup;
    cxRGroup_DTest: TcxRadioGroup;
    cxBtn_Load: TcxButton;
    cxBtn_open: TcxButton;
    cxBtn_FileDel: TcxButton;
    cxLabel3: TcxLabel;
    cxEdit_CusName: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxEdit_Origin: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxBtn_LoadClick(Sender: TObject);
    procedure cxBtn_openClick(Sender: TObject);
    procedure cxBtn_FileDelClick(Sender: TObject);
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
  HaccpMaterialCheckForm: THaccpMaterialCheckForm;

implementation

{$R *.dfm}

uses DataModule, MainUnit, HaccpGeneralUnit;

procedure THaccpMaterialCheckForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HaccpMaterialCheckForm := nil;
  Action := CaFree;
end;

procedure THaccpMaterialCheckForm.FormCreate(Sender: TObject);
begin
  ClearProc;
end;

procedure THaccpMaterialCheckForm.ClearProc;
begin
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Input);
  cxCEdit_ID.Value := 0;
  cxRGroup_Car.ItemIndex := 0;
  cxRGroup_Decision.ItemIndex := 0;
  cxRGroup_File.ItemIndex := 0;
  cxRGroup_GTest.ItemIndex := 0;
  cxRGroup_ETest.ItemIndex := 0;
end;

procedure THaccpMaterialCheckForm.SaveProc;
begin
  if cxDEdit_mdate.Text = '' then
  begin
    showmessage('입고일을 입력 하세요.');
    exit;
  end;

//  if cxDEdit_mdate.Date < cxDEdit_Killdate.Date then
//  begin
//    showmessage('입고일과 도축일을 다시 한번 확인하세요.');
//    exit;
//  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpMaterialCheck', 'A') do begin
    ParamByName('@CheckID').AsInteger       := Round(cxCEdit_ID.Value);
    ParamByName('@CheckDate').AsString      := cxDEdit_mdate.Text;
    ParamByName('@KillDate').AsString       := cxDEdit_Killdate.Text;
    ParamByName('@KillPlace').AsString      := cxEdit_KillPlace.Text;
    ParamByName('@Origin').AsString         := cxEdit_Origin.Text;
    ParamByName('@CusName').AsString        := cxEdit_CusName.Text;
    ParamByName('@InComeQty').AsInteger     := Round(cxCEdit_InComeQty.Value);
    ParamByName('@RelationFile').AsBoolean  := cxRGroup_File.EditValue;
    ParamByName('@FileName').AsString       := cxEdit_filename.Text;
    ParamByName('@MaterialTemp').Value      := cxCEdit_Temp.Value;
    ParamByName('@ShippingCar').AsBoolean   := cxRGroup_Car.EditValue;
    ParamByName('@PTest').AsBoolean         := cxRGroup_PTest.EditValue;
    ParamByName('@GTest').AsBoolean         := cxRGroup_GTest.EditValue;
    ParamByName('@ETest').AsBoolean         := cxRGroup_ETest.EditValue;
    ParamByName('@DTest').AsBoolean         := cxRGroup_DTest.EditValue;
    ParamByName('@Decision').AsBoolean      := cxRGroup_Decision.EditValue;
    ParamByName('@Writer').AsString         := LoginUserName;
    ParamByName('@Modifier').AsString       := LoginUserName;
    ParamByName('@Remark').AsString         := cxMemo_content.Text;
    ExecProc;
  end;
end;

procedure THaccpMaterialCheckForm.DeleteProc;
begin
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpMaterialCheck', 'C') do
    begin
      ParamByName('@CheckID').AsInteger   := Round(cxCEdit_ID.Value);
      ExecProc;
    end;
  end;
end;

procedure THaccpMaterialCheckForm.GridListSetting;
begin

end;

procedure THaccpMaterialCheckForm.DataBindingToGrid;
  var CheckID : Integer;
begin
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpMaterialCheck', 'B') do
  begin

    CheckID := Pos(':', DataModule.HaccpSelected_Division );
    CheckID := StrToInt(Copy(DataModule.HaccpSelected_Division, CheckID+2, 10));

    ParamByName('@CheckDate').Value  := DataModule.HaccpSelected_Date;
    ParamByName('@CheckID').Value    := CheckID;  //StrToInt(DataModule.HaccpSelected_Division);

    open;

    cxCEdit_ID.Value            := FieldByName('CheckID').Value;
    cxDEdit_mdate.Text          := FieldByName('CheckDate').AsString;
    cxDEdit_Killdate.Text       := FieldByName('KillDate').AsString;
    cxEdit_KillPlace.Text       := FieldByName('KillPlace').AsString;
    cxRGroup_Car.EditValue      := FieldByName('ShippingCar').AsBoolean;
    cxEdit_Origin.Text          := FieldByName('Origin').AsString;
    cxEdit_CusName.Text         := FieldByName('CusName').AsString;
    cxCEdit_InComeQty.Value     := FieldByName('InComeQty').Value;
    cxCEdit_Temp.Value          := FieldByName('MaterialTemp').Value;
    cxRGroup_PTest.EditValue    := FieldByName('PTest').AsBoolean;
    cxRGroup_GTest.EditValue    := FieldByName('GTest').AsBoolean;
    cxRGroup_ETest.EditValue    := FieldByName('ETest').AsBoolean;
    cxRGroup_DTest.EditValue    := FieldByName('DTest').AsBoolean;
    cxRGroup_Decision.EditValue := FieldByName('Decision').AsBoolean;
    cxRGroup_File.EditValue     := FieldByName('RelationFile').AsBoolean;
    cxEdit_filename.Text        := FieldByName('FileName').AsString;
    cxMemo_content.Text         := FieldByName('Remark').AsString;
  end;
end;

//FILE LOAD
procedure THaccpMaterialCheckForm.cxBtn_LoadClick(Sender: TObject);
  var FileExt, FileNameToSave: string;
begin
  if DataModuleForm.OpenDialog.Execute then
  begin
    FileExt := ExtractFileExt(DataModuleForm.OpenDialog.FileName);
    FileNameToSave := '원료입고검사파일_' + FormatDateTime('yyyymmddhhnnss', Now) + FileExt;

    // FTP 파일 등록
    if DataModuleForm.PutFileToFtp(FtpDir, DataModuleForm.OpenDialog.FileName, FileNameToSave, True) then
    begin
      cxEdit_FileName.Text := FileNameToSave;
    end;
  end;
end;

//file open
procedure THaccpMaterialCheckForm.cxBtn_openClick(Sender: TObject);
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

//fiel delete
procedure THaccpMaterialCheckForm.cxBtn_FileDelClick(Sender: TObject);
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


end.
