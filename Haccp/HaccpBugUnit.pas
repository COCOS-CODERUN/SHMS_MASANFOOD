unit HaccpBugUnit;

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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxGroupBox, cxMemo, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGrid, Data.DB, MemDS,
  DBAccess, Uni, cxSplitter;

type
  THaccpBugForm = class(TForm)
    cxGBox_top: TcxGroupBox;
    cxLabel64: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxGBox_bottom: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxMemo_remark1: TcxMemo;
    cxLabel1: TcxLabel;
    cxMemo_remark2: TcxMemo;
    cxLabel2: TcxLabel;
    cxMemo_remark3: TcxMemo;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    UniQuery_comm: TUniQuery;
    cxGBox_fly: TcxGroupBox;
    cxGBox_walk: TcxGroupBox;
    cxLabel15: TcxLabel;
    cxGrid_fly: TcxGrid;
    cxGridTv_fly: TcxGridTableView;
    cxGridTv_fly_Location1: TcxGridColumn;
    cxGridTv_fly_Location2: TcxGridColumn;
    cxGridTv_fly_Location3: TcxGridColumn;
    cxGridTv_fly_Bug1: TcxGridColumn;
    cxGridTv_fly_Bug2: TcxGridColumn;
    cxGridTv_fly_Bug3: TcxGridColumn;
    cxGridTv_fly_Bug4: TcxGridColumn;
    cxGridTv_fly_total: TcxGridColumn;
    cxGridTv_fly_ID: TcxGridColumn;
    cxGridLv_fly: TcxGridLevel;
    cxLabel14: TcxLabel;
    cxGrid_walk: TcxGrid;
    cxGridTv_walk: TcxGridTableView;
    cxGridTv_walk_Location1: TcxGridColumn;
    cxGridTv_walk_Location2: TcxGridColumn;
    cxGridTv_walk_Location3: TcxGridColumn;
    cxGridTv_walk_Bug1: TcxGridColumn;
    cxGridTv_walk_Bug2: TcxGridColumn;
    cxGridTv_walk_Bug3: TcxGridColumn;
    cxGridTv_walk_Bug4: TcxGridColumn;
    cxGridTv_walk_total: TcxGridColumn;
    cxGridTv_walk_ID: TcxGridColumn;
    cxGridLv_walk: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    procedure FormCreate(Sender: TObject);
    procedure cxGridTv_fly_Bug1PropertiesEditValueChanged(Sender: TObject);
    procedure cxGridTv_walk_Bug1PropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  HaccpBugForm: THaccpBugForm;

  loopcnt : Integer;

implementation

{$R *.dfm}

uses DataModule, HaccpGeneralUnit;

procedure THaccpBugForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  HaccpBugForm := nil;
  Action := CaFree;
end;

procedure THaccpBugForm.FormCreate(Sender: TObject);
begin
  ClearProc;
end;

procedure THaccpBugForm.FormShow(Sender: TObject);
begin
  {$IFDEF DEBUG}
    cxGridTv_fly_ID.Visible := True;
    cxGridTv_walk_ID.Visible := True;
  {$ELSE}
    cxGridTv_fly_ID.Visible := False;
    cxGridTv_walk_ID.Visible := True;
  {$ENDIF}
end;

procedure THaccpBugForm.ClearProc;
begin
  cxDEdit_date.Clear;
  cxMemo_remark1.Clear;
  cxMemo_remark2.Clear;
  cxMemo_remark3.Clear;


  GridListSetting;
end;

procedure THaccpBugForm.GridListSetting;
begin
  //1. 비래해충 세팅
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin

    sql.Add(' SELECT * FROM HaccpBasic   ');
    sql.Add(' WHERE MenuName = :MenuName ');
    sql.Add(' AND   Level1   = :Level1   ');
    ParambyName('MenuName').AsString := '방충구서계획점검대장';
    ParambyName('Level1').AsString := '방충관리';
    open;

    cxGridTv_fly.DataController.RecordCount := 0;
    cxGridTv_fly.DataController.RecordCount := UniQuery_comm.RecordCount;
    cxGridTv_fly.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Location1.Index, FieldByName('Level1').AsString);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Location2.Index, FieldByName('Level2').AsString);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Location3.Index, FieldByName('Level3').AsString);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Bug1.Index,      0);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Bug2.Index,      0);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Bug3.Index,      0);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Bug4.Index,      0);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_total.Index,     0);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_ID.Index,        0);

      Next;
    end;
    cxGridTv_fly.DataController.EndUpdate;
  end;

  //2. 보행해충 세팅
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' SELECT * FROM HaccpBasic   ');
    sql.Add(' WHERE MenuName = :MenuName ');
    sql.Add(' AND   Level1   = :Level1   ');
    ParambyName('MenuName').AsString := '방충구서계획점검대장';
    ParambyName('Level1').AsString := '방서관리';
    open;

    cxGridTv_walk.DataController.RecordCount := 0;
    cxGridTv_walk.DataController.RecordCount := UniQuery_comm.RecordCount;
    cxGridTv_walk.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Location1.Index, FieldByName('Level1').AsString);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Location2.Index, FieldByName('Level2').AsString);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Location3.Index, FieldByName('Level3').AsString);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Bug1.Index,      0);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Bug2.Index,      0);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Bug3.Index,      0);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Bug4.Index,      0);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_total.Index,     0);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_ID.Index,        0);

      Next;
    end;
    cxGridTv_walk.DataController.EndUpdate;
  end;
end;

procedure THaccpBugForm.SaveProc;
begin
  if cxDEdit_date.Text = '' then
  begin
    showmessage('점검일자를 입력하세요.');
    exit;
  end;

  //비래해충 저장
  for loopcnt := 0 to cxGridTv_fly.DataController.RecordCount -1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpBug', 'A') do
    begin
      ParamByName('@BugID').Value     := cxGridTv_fly.DataController.Values[loopcnt, cxGridTv_fly_ID.Index];
      ParamByName('@CheckDate').Value := cxDEdit_date.Text;
      ParamByName('@BugKind').Value   := '방충';
      ParamByName('@Location1').Value := cxGridTv_fly.DataController.Values[loopcnt, cxGridTv_fly_Location1.Index];
      ParamByName('@Location2').Value := cxGridTv_fly.DataController.Values[loopcnt, cxGridTv_fly_Location2.Index];
      ParamByName('@Location3').Value := cxGridTv_fly.DataController.Values[loopcnt, cxGridTv_fly_Location3.Index];
      ParamByName('@BugQty1').Value   := cxGridTv_fly.DataController.Values[loopcnt, cxGridTv_fly_Bug1.Index];
      ParamByName('@BugQty2').Value   := cxGridTv_fly.DataController.Values[loopcnt, cxGridTv_fly_Bug2.Index];
      ParamByName('@BugQty3').Value   := cxGridTv_fly.DataController.Values[loopcnt, cxGridTv_fly_Bug3.Index];
      ParamByName('@BugQty4').Value   := cxGridTv_fly.DataController.Values[loopcnt, cxGridTv_fly_Bug4.Index];
      ParamByName('@BugTotal').Value  := cxGridTv_fly.DataController.Values[loopcnt, cxGridTv_fly_total.Index];
      ParamByName('@Remark1').Value   := cxMemo_Remark1.Text;
      ParamByName('@Remark2').Value   := cxMemo_Remark2.Text;
      ParamByName('@Remark3').Value   := cxMemo_Remark3.Text;
      ParamByName('@Writer').Value    := LoginUserName;
      ParamByName('@Reviewer').Value  := '';
      ParamByName('@Confirmer').Value := '';
      try
        ExecProc;
      except
        SaveToError := True;
      end;

      if cxGridTv_fly.DataController.Values[loopcnt, cxGridTv_fly_ID.Index] = 0 then
      begin
        cxGridTv_fly.DataController.Values[loopcnt, cxGridTv_fly_ID.Index]
        := ParamByName('@BugID').Value
      end;
    end;
  end;

  //보행해충 저장
  for loopcnt := 0 to cxGridTv_walk.DataController.RecordCount -1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpBug', 'A') do
    begin
      ParamByName('@BugID').Value     := cxGridTv_walk.DataController.Values[loopcnt, cxGridTv_walk_ID.Index];
      ParamByName('@CheckDate').Value := cxDEdit_date.Text;
      ParamByName('@BugKind').Value   := '방서';
      ParamByName('@Location1').Value := cxGridTv_walk.DataController.Values[loopcnt, cxGridTv_walk_Location1.Index];
      ParamByName('@Location2').Value := cxGridTv_walk.DataController.Values[loopcnt, cxGridTv_walk_Location2.Index];
      ParamByName('@Location3').Value := cxGridTv_walk.DataController.Values[loopcnt, cxGridTv_walk_Location3.Index];
      ParamByName('@BugQty1').Value   := cxGridTv_walk.DataController.Values[loopcnt, cxGridTv_walk_Bug1.Index];
      ParamByName('@BugQty2').Value   := cxGridTv_walk.DataController.Values[loopcnt, cxGridTv_walk_Bug2.Index];
      ParamByName('@BugQty3').Value   := cxGridTv_walk.DataController.Values[loopcnt, cxGridTv_walk_Bug3.Index];
      ParamByName('@BugQty4').Value   := cxGridTv_walk.DataController.Values[loopcnt, cxGridTv_walk_Bug4.Index];
      ParamByName('@BugTotal').Value  := cxGridTv_walk.DataController.Values[loopcnt, cxGridTv_walk_total.Index];
      ParamByName('@Remark1').Value   := cxMemo_Remark1.Text;
      ParamByName('@Remark2').Value   := cxMemo_Remark2.Text;
      ParamByName('@Remark3').Value   := cxMemo_Remark3.Text;
      ParamByName('@Writer').Value    := LoginUserName;
      ParamByName('@Reviewer').Value  := '';
      ParamByName('@Confirmer').Value := '';
      try
        ExecProc;
      except
        SaveToError := True;
      end;

      if cxGridTv_walk.DataController.Values[loopcnt, cxGridTv_walk_ID.Index] = 0 then
      begin
        cxGridTv_walk.DataController.Values[loopcnt, cxGridTv_walk_ID.Index]
        := ParamByName('@BugID').Value
      end;
    end;
  end;

  if SaveToError then
  begin
    ShowMessage(MessageToError);
  end;
end;

procedure THaccpBugForm.DeleteProc;
begin
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpBug', 'B') do
    begin
      ParamByName('@CheckDate').Value := cxDEdit_date.Text;
      try
        ExecProc;
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

procedure THaccpBugForm.DataBindingToGrid;
begin
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpBug', 'C') do
  begin
    ParamByName('@CheckDate').AsString := DataModule.HaccpSelected_Date;
    ParamByName('@BugKind').AsString   := '방충';
    open;

    cxDEdit_date.Text := FieldByName('CheckDate').AsString;

    cxGridTv_fly.DataController.RecordCount := 0;
    cxGridTv_fly.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_fly.DataController.AppendRecord;
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Location1.Index, FieldByName('Location1').AsString);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Location2.Index, FieldByName('Location2').AsString);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Location3.Index, FieldByName('Location3').AsString);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Bug1.Index,      FieldByName('BugQty1').Value);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Bug2.Index,      FieldByName('BugQty2').Value);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Bug3.Index,      FieldByName('BugQty3').Value);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_Bug4.Index,      FieldByName('BugQty4').Value);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_total.Index,     FieldByName('BugTotal').Value);
      cxGridTv_fly.DataController.SetValue(loopcnt, cxGridTv_fly_ID.Index,        FieldByName('BugID').Value);

      next;
    end;
    cxGridTv_fly.DataController.EndUpdate;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpBug', 'C') do
  begin
    ParamByName('@CheckDate').AsString := DataModule.HaccpSelected_Date;
    ParamByName('@BugKind').AsString   := '방서';
    open;

    cxGridTv_walk.DataController.RecordCount := 0;
    cxGridTv_walk.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_walk.DataController.AppendRecord;
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Location1.Index, FieldByName('Location1').AsString);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Location2.Index, FieldByName('Location2').AsString);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Location3.Index, FieldByName('Location3').AsString);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Bug1.Index,      FieldByName('BugQty1').Value);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Bug2.Index,      FieldByName('BugQty2').Value);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Bug3.Index,      FieldByName('BugQty3').Value);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_Bug4.Index,      FieldByName('BugQty4').Value);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_total.Index,     FieldByName('BugTotal').Value);
      cxGridTv_walk.DataController.SetValue(loopcnt, cxGridTv_walk_ID.Index,        FieldByName('BugID').Value);

      next;
    end;
    cxGridTv_walk.DataController.EndUpdate;
  end;

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add('SELECT distinct remark1, remark2, remark3 FROM HaccpBug');
    sql.Add(' WHERE CheckDate = :CheckDate               ');
    ParamByName('CheckDate').AsString := DataModule.HaccpSelected_Date;
    open;

    cxMemo_remark1.Text := FieldByName('remark1').AsString;
    cxMemo_remark2.Text := FieldByName('remark2').AsString;
    cxMemo_remark3.Text := FieldByName('remark3').AsString;
  end;
end;

procedure THaccpBugForm.cxGridTv_fly_Bug1PropertiesEditValueChanged(
  Sender: TObject);
  var FocusedIdex : Integer;
begin
  cxGridTv_fly.Controller.EditingController.Edit.PostEditValue;

  FocusedIdex := cxGridTv_fly.DataController.FocusedRecordIndex;
  cxGridTv_fly.DataController.Values[FocusedIdex, cxGridTv_fly_total.Index]
  :=
  cxGridTv_fly.DataController.Values[FocusedIdex, cxGridTv_fly_bug1.Index]
  +
  cxGridTv_fly.DataController.Values[FocusedIdex, cxGridTv_fly_bug2.Index]
  +
  cxGridTv_fly.DataController.Values[FocusedIdex, cxGridTv_fly_bug3.Index]
  +
  cxGridTv_fly.DataController.Values[FocusedIdex, cxGridTv_fly_bug4.Index];
end;


procedure THaccpBugForm.cxGridTv_walk_Bug1PropertiesEditValueChanged(
  Sender: TObject);
  var FocusedIdex : Integer;
begin

  cxGridTv_walk.Controller.EditingController.Edit.PostEditValue;

  FocusedIdex := cxGridTv_walk.DataController.FocusedRecordIndex;
  cxGridTv_walk.DataController.Values[FocusedIdex, cxGridTv_walk_total.Index]
  :=
  cxGridTv_walk.DataController.Values[FocusedIdex, cxGridTv_walk_bug1.Index]
  +
  cxGridTv_walk.DataController.Values[FocusedIdex, cxGridTv_walk_bug2.Index]
  +
  cxGridTv_walk.DataController.Values[FocusedIdex, cxGridTv_walk_bug3.Index]
  +
  cxGridTv_walk.DataController.Values[FocusedIdex, cxGridTv_walk_bug4.Index];
end;

end.

