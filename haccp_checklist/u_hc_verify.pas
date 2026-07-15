unit u_hc_verify;

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
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxTextEdit, cxDropDownEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxCalendar, cxLabel,
  MemDS, DBAccess, Uni, cxBlobEdit, cxEditRepositoryItems, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  Tf_hc_verify = class(TForm)
    ds_d: TDataSource;
    cxER: TcxEditRepository;
    cxERText: TcxEditRepositoryTextItem;
    cxERRG_yn: TcxEditRepositoryRadioGroupItem;
    uq_d: TUniQuery;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDEdit_Date: TcxDateEdit;
    cxEdit_Writer: TcxTextEdit;
    cxGD: TcxGrid;
    cxGDLv: TcxGridLevel;
    cxGDTv_: TcxGridTableView;
    cxGDTv_d_id: TcxGridColumn;
    cxGDTv_div: TcxGridColumn;
    cxGDTv_d_text: TcxGridColumn;
    cxGDTv_d_state: TcxGridColumn;
    cxGDTv_check_yn: TcxGridColumn;
    uq: TUniQuery;
    uq_list: TUniQuery;
    cxGBox_Out: TcxGroupBox;
    cxGOut: TcxGrid;
    cxGOutDBTv_: TcxGridDBTableView;
    cxGOutDBTv_h_id: TcxGridDBColumn;
    cxGOutDBTv_outid: TcxGridDBColumn;
    cxGOutDBTv_details: TcxGridDBColumn;
    cxGOutDBTv_results: TcxGridDBColumn;
    cxGOutDBTv_writer: TcxGridDBColumn;
    cxGOutDBTv_reviewer: TcxGridDBColumn;
    cxGOutLv: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxBtn_AddOut: TcxButton;
    cxBtn_DelOut: TcxButton;
    uq_out: TUniQuery;
    ds_out: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_AddOutClick(Sender: TObject);
    procedure cxBtn_DelOutClick(Sender: TObject);
    procedure cxGDTv_check_ynGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
  private
    { Private declarations }
    ldc : TcxGridDataController;
    odc : TcxDBDataController;
    h_id : Integer;
    vNew : Boolean;
    procedure Srch_D();
    procedure Srch_Out();
  public
    { Public declarations }
    procedure ClearProc();
    procedure SaveProc();
    procedure DeleteProc();
    procedure GridListSetting;
    procedure DataBindingToGrid;
  end;

var
  f_hc_verify: Tf_hc_verify;

implementation

{$R *.dfm}

uses DataModule;

procedure Tf_hc_verify.FormCreate(Sender: TObject);
begin
  ldc := cxGDTv_.DataController;
  odc := cxGOutDBTv_.DataController;

  vNew := False;
end;

procedure Tf_hc_verify.cxBtn_AddOutClick(Sender: TObject);
begin
  // 이탈목록 추가
  With DataModuleForm.FDQuerySetting(uq_out) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('h_id').AsInteger := h_id;
    Open;
  end;
  // 레코드 추가
  uq_out.Append;
  uq_out.FieldByName('h_id').AsInteger    := h_id;
  uq_out.FieldByName('details').AsString  := '';
  uq_out.FieldByName('results').AsString  := '';
  uq_out.FieldByName('writer').AsString   := '';
  uq_out.FieldByName('reviewer').AsString := '';
end;

procedure Tf_hc_verify.cxBtn_DelOutClick(Sender: TObject);
begin
  // 이탈목록 삭제
  if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    if StrToIntDef(VarToStr(odc.Values[odc.FocusedRecordIndex, cxGOutDBTv_outid.Index]), 0) = 0 then
    begin
      odc.DeleteRecord(odc.FocusedRecordIndex);  // 레코드만 삭제
    end
    else
    begin
      With DataModuleForm.FDQuerySetting(uq) do
      begin
        SQL.Add(SQLRecCount.Text);
        ParamByName('outid').AsInteger := odc.Values[odc.FocusedRecordIndex, cxGOutDBTv_outid.Index];
        ExecSQL;
      end;
    end;
  end;
end;

procedure Tf_hc_verify.cxGDTv_check_ynGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  // d_state = 1 → 기록가능 레코드 → 라디오 그룹
  if ldc.Values[ARecord.RecordIndex, cxGDTv_d_state.Index] = True then
  begin
    AProperties := cxERRG_yn.Properties;
  end
  else
  begin
    AProperties := cxERText.Properties;
  end;
end;

procedure Tf_hc_verify.Srch_D;
var
  i: Integer;
begin
  // h_id로 상세 정보 조회
  With DataModuleForm.FDQuerySetting(uq_d) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('new').AsBoolean  := vNew;
    ParamByName('h_id').AsInteger := h_id;
    Open;

    ldc.RecordCount := 0;

    ldc.BeginUpdate;
    for i := 0 to uq_d.RecordCount - 1 do
    begin
      ldc.AppendRecord;

      ldc.Values[i, cxGDTv_d_id.Index]     := FieldByName('d_id').AsInteger;
      ldc.Values[i, cxGDTv_div.Index]      := FieldByName('div').AsString;
      ldc.Values[i, cxGDTv_d_text.Index]   := FieldByName('d_text').AsString;
      ldc.Values[i, cxGDTv_d_state.Index]  := FieldByName('d_state').AsString;
      ldc.Values[i, cxGDTv_check_yn.Index] := FieldByName('check_yn').AsString;

      uq_d.Next;
    end;
    ldc.EndUpdate;
  end;
end;

procedure Tf_hc_verify.Srch_Out;
begin
  // h_id로 이탈정보 조회
  With DataModuleForm.FDQuerySetting(uq_out) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('h_id').AsInteger := h_id;
    Open;
  end;
end;

procedure Tf_hc_verify.ClearProc;
var
  i : Integer;
begin
  cxDEdit_Date.Date  := Date;
  cxEdit_Writer.Text := LoginUserName;
  // h_id로 상세 정보 조회
  vNew := True;
  Srch_D;
  // h_id로 이탈정보 조회
  h_id := 0;
  Srch_Out;
end;

procedure Tf_hc_verify.SaveProc;
var
  i : Integer;
begin
  // Save Head
  With DataModuleForm.FDQuerySetting(uq) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('h_id').AsInteger     := h_id;
    ParamByName('checkdate').AsString := cxDEdit_Date.Text;
    ParamByName('writer').AsString    := cxEdit_Writer.Text;
    ExecSQL;
    // 최초등록 시 Identity 저장
    if h_id = 0 then
    begin
      h_id := FieldByName('h_id').AsInteger;
    end;
  end;
  // Save Detail
  for i := 0 to ldc.RecordCount - 1 do
  begin
    With DataModuleForm.FDQuerySetting(uq) do
    begin
      SQL.Add(SQLUpdate.Text);
      ParamByName('d_id').AsInteger    := ldc.Values[i, cxGDTv_d_id.Index];
      ParamByName('h_id').AsInteger    := h_id;
      ParamByName('div').AsString      := ldc.Values[i, cxGDTv_div.Index];
      ParamByName('d_text').AsString   := ldc.Values[i, cxGDTv_d_text.Index];
      ParamByName('d_state').AsString  := ldc.Values[i, cxGDTv_d_state.Index];
      ParamByName('check_yn').AsString := ldc.Values[i, cxGDTv_check_yn.Index];
      ExecSQL;
    end;
  end;
  // Save Out
  for i := 0 to odc.RecordCount - 1 do
  begin
    With DataModuleForm.FDQuerySetting(uq) do
    begin
      SQL.Add(SQLLock.Text);
      ParamByName('outid').AsInteger   := StrToIntDef(VarToStr(odc.Values[i, cxGOutDBTv_outid.Index]), 0);
      ParamByName('h_id').AsInteger    := h_id;
      ParamByName('details').AsString  := odc.Values[i, cxGOutDBTv_details.Index];
      ParamByName('results').AsString  := odc.Values[i, cxGOutDBTv_results.Index];
      ParamByName('writer').AsString   := odc.Values[i, cxGOutDBTv_writer.Index];
      ParamByName('reviewer').AsString := odc.Values[i, cxGOutDBTv_reviewer.Index];
      ExecSQL;
    end;
  end;
  // h_id 초기화(다시 신규 저장 가능하도록(초기값 설정))
  h_id := 0;
end;

procedure Tf_hc_verify.DeleteProc;
begin
  // 상세 목록 삭제
  if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    With DataModuleForm.FDQuerySetting(uq) do
    begin
      SQL.Add(SQLDelete.Text);
      ParamByName('h_id').AsInteger := h_id;
      ExecSQL;
    end;
  end;
  // h_id 초기화(다시 신규 저장 가능하도록(초기값 설정))
  h_id := 0;
end;

procedure Tf_hc_verify.GridListSetting;
begin
  //
end;

procedure Tf_hc_verify.DataBindingToGrid;
begin
  // 점검 목록 조회
  With DataModuleForm.FDQuerySetting(uq_list) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('checkdate').AsString := DataModule.HaccpSelected_Date;
    Open;

    cxDEdit_Date.Text  := FieldByName('checkdate').AsString;
    cxEdit_Writer.Text := FieldByName('writer').AsString;
    h_id               := FieldByName('h_id').AsInteger;
  end;
  // h_id로 상세 정보 조회
  vNew := False;
  Srch_D;
  // h_id로 이탈정보 조회
  Srch_Out;
end;

initialization
  RegisterClass(Tf_hc_verify);

finalization
  UnRegisterClass(Tf_hc_verify);

end.
