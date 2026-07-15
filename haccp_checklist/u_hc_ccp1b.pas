unit u_hc_ccp1b;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxLabel, cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxGroupBox, cxSplitter, MemDS, DBAccess, Uni,
  cxGridBandedTableView, cxGridDBBandedTableView, cxBlobEdit, System.DateUtils;

type
  Tf_hc_ccp1b = class(TForm)
    cxGBox_Input: TcxGroupBox;
    cxGBox_Info: TcxGroupBox;
    cxGInfo: TcxGrid;
    cxGInfoLv: TcxGridLevel;
    uq_info: TUniQuery;
    ds_info: TDataSource;
    uq: TUniQuery;
    cxGInfoDBBTv_: TcxGridDBBandedTableView;
    cxGInfoDBBTv_ccp1b_hid: TcxGridDBBandedColumn;
    cxGInfoDBBTv_checkdate: TcxGridDBBandedColumn;
    cxGInfoDBBTv_temp1: TcxGridDBBandedColumn;
    cxGInfoDBBTv_temp2: TcxGridDBBandedColumn;
    cxGInfoDBBTv_temp3: TcxGridDBBandedColumn;
    cxGInfoDBBTv_speed: TcxGridDBBandedColumn;
    cxGInfoDBBTv_cycle: TcxGridDBBandedColumn;
    cxGInfoDBBTv_way: TcxGridDBBandedColumn;
    cxGInfoDBBTv_betterway: TcxGridDBBandedColumn;
    cxGInfoDBBTv_writer: TcxGridDBBandedColumn;
    cxGBox_Out: TcxGroupBox;
    cxGOut: TcxGrid;
    cxGOutLv: TcxGridLevel;
    cxGOutDBTv_: TcxGridDBTableView;
    ds_out: TDataSource;
    uq_out: TUniQuery;
    cxGOutDBTv_ccp1b_hid: TcxGridDBColumn;
    cxGOutDBTv_ccp1b_outid: TcxGridDBColumn;
    cxGOutDBTv_details: TcxGridDBColumn;
    cxGOutDBTv_results: TcxGridDBColumn;
    cxGOutDBTv_writer: TcxGridDBColumn;
    cxGOutDBTv_reviewer: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxBtn_AddOut: TcxButton;
    cxBtn_AddD: TcxButton;
    cxGBox_D: TcxGroupBox;
    cxGD: TcxGrid;
    cxGDDBTv_: TcxGridDBTableView;
    cxGDLv: TcxGridLevel;
    ds_d: TDataSource;
    uq_d: TUniQuery;
    cxGDDBTv_ccp1b_did: TcxGridDBColumn;
    cxGDDBTv_ccp1b_hid: TcxGridDBColumn;
    cxGDDBTv_f_no: TcxGridDBColumn;
    cxGDDBTv_itemname: TcxGridDBColumn;
    cxGDDBTv_checktime: TcxGridDBColumn;
    cxGDDBTv_temp1: TcxGridDBColumn;
    cxGDDBTv_temp2: TcxGridDBColumn;
    cxGDDBTv_temp3: TcxGridDBColumn;
    cxGDDBTv_speed: TcxGridDBColumn;
    cxGDDBTv_remark: TcxGridDBColumn;
    cxEdit_hid: TcxTextEdit;
    cxBtn_DelD: TcxButton;
    cxBtn_DelOut: TcxButton;
    uq_list: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_AddDClick(Sender: TObject);
    procedure cxBtn_AddOutClick(Sender: TObject);
    procedure cxBtn_DelDClick(Sender: TObject);
    procedure cxBtn_DelOutClick(Sender: TObject);
  private
    { Private declarations }
    idc, ddc, odc: TcxDBDataController;
    hid: Integer;
    vNew : Boolean;   // 신규 작성 시 기초코드 적용
    procedure Srch_D(uq: TUniQuery; val:Integer);
    procedure Clear_All;
  public
    { Public declarations }
    procedure ClearProc();
    procedure SaveProc();
    procedure DeleteProc();
    procedure GridListSetting;
    procedure DataBindingToGrid;
  end;

var
  f_hc_ccp1b: Tf_hc_ccp1b;

implementation

{$R *.dfm}

uses DataModule;

procedure Tf_hc_ccp1b.FormCreate(Sender: TObject);
begin
  idc := cxGInfoDBBTv_.DataController;
  ddc := cxGDDBTv_.DataController;
  odc := cxGOutDBTv_.DataController;
  // 신규 초기값
  vNew := True;
end;

procedure Tf_hc_ccp1b.cxBtn_AddDClick(Sender: TObject);
begin
  // 상세 목록 신규추가
  srch_D(uq_d, hid);
  // 레코드 추가
  uq_d.Append;
  uq_d.FieldByName('ccp1b_hid').AsInteger  := hid;
  uq_d.FieldByName('f_no').AsString        := '';
  uq_d.FieldByName('itemname').AsString    := '';
  uq_d.FieldByName('checktime').AsDateTime := Date;
  uq_d.FieldByName('temp1').AsString       := '';
  uq_d.FieldByName('temp2').AsString       := '';
  uq_d.FieldByName('temp3').AsString       := '';
  uq_d.FieldByName('speed').AsString       := '';
  uq_d.FieldByName('remark').AsString      := '';
end;

procedure Tf_hc_ccp1b.cxBtn_AddOutClick(Sender: TObject);
begin
  // 이탈 목록 신규추가
  srch_D(uq_out, hid);
  // 레코드 추가
  uq_out.Append;
  uq_out.FieldByName('ccp1b_hid').AsInteger := hid;
  uq_out.FieldByName('details').AsString  := '';
  uq_out.FieldByName('results').AsString  := '';
  uq_out.FieldByName('writer').AsString   := '';
  uq_out.FieldByName('reviewer').AsString := '';
end;

procedure Tf_hc_ccp1b.cxBtn_DelDClick(Sender: TObject);
begin
  // 상세 목록 삭제
  if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    if StrToIntDef(VarToStr(ddc.Values[ddc.FocusedRecordIndex, cxGDDBTv_ccp1b_did.Index]), 0) = 0 then
    begin
      ddc.DeleteRecord(ddc.FocusedRecordIndex);  // 레코드만 삭제
    end
    else
    begin
      With DataModuleForm.FDQuerySetting(uq) do
      begin
        SQL.Add(SQLRefresh.Text);
        ParamByName('ccp1b_did').AsInteger := ddc.Values[ddc.FocusedRecordIndex, cxGDDBTv_ccp1b_did.Index];
        ExecSQL;

        srch_D(uq_d, hid);
      end;
    end;
  end;
end;

procedure Tf_hc_ccp1b.cxBtn_DelOutClick(Sender: TObject);
begin
  // 이탈 목록 삭제
  if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    if StrToIntDef(VarToStr(odc.Values[odc.FocusedRecordIndex, cxGOutDBTv_ccp1b_outid.Index]), 0) = 0 then
    begin
      odc.DeleteRecord(odc.FocusedRecordIndex);  // 레코드만 삭제
    end
    else
    begin
      With DataModuleForm.FDQuerySetting(uq) do
      begin
        SQL.Add(SQLRecCount.Text);
        ParamByName('ccp1b_outid').AsInteger := odc.Values[odc.FocusedRecordIndex, cxGOutDBTv_ccp1b_outid.Index];
        ExecSQL;

        srch_D(uq_out, hid);
      end;
    end;
  end;
end;

procedure Tf_hc_ccp1b.Srch_D(uq: TUniQuery; val: Integer);
begin
  With DataModuleForm.FDQuerySetting(uq) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('ccp1b_hid').AsInteger := val;
    Open;
  end;
end;

procedure Tf_hc_ccp1b.Clear_All;
begin
  // CCP-1B Head
  Srch_D(uq_info, hid);
  // CCP-1B Detail
  Srch_D(uq_d, hid);
  // CCP-1B Out
  Srch_D(uq_out, hid);
end;

procedure Tf_hc_ccp1b.ClearProc;
begin
  // 신규
  vNew := True;
  // CCP-1B Head
  hid := 0;
  With DataModuleForm.FDQuerySetting(uq_Info) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('new').AsBoolean        := vNew;
    ParamByName('checkdate').AsDateTime := Date;
    ParamByName('writer').AsString      := LoginUserName;
    ParamByName('ccp1b_hid').AsInteger  := hid;
    Open;
  end;
//  // 쿼리 오픈
//  hid := 0;
//  srch_D(uq_info, hid);
//  // 레코드 추가
//  uq_info.Append;
//  uq_info.FieldByName('checkdate').AsDateTime := Date;
//  uq_info.FieldByName('writer').AsString      := LoginUserName;
//  uq_info.FieldByName('temp1').AsString       := '';
//  uq_info.FieldByName('temp2').AsString       := '';
//  uq_info.FieldByName('temp3').AsString       := '';
//  uq_info.FieldByName('speed').AsString       := '';
//  uq_info.FieldByName('cycle').AsString       := '';
//  uq_info.FieldByName('way').AsString         := '';
//  uq_info.FieldByName('betterway').AsString   := '';
end;

procedure Tf_hc_ccp1b.SaveProc;
var
  i, idx : Integer;
begin
  // 점검정보 저장
  With DataModuleForm.FDQuerySetting(uq) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('ccp1b_hid').AsInteger := StrToIntDef(VarToStr(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_ccp1b_hid.Index]), 0);
    ParamByName('checkdate').AsString  := VarToStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_checkdate.Index], '');
    ParamByName('writer').AsString     := VarToStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_writer.Index], '');
    ParamByName('temp1').AsString      := VarToStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_temp1.Index], '');
    ParamByName('temp2').AsString      := VarToStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_temp2.Index], '');
    ParamByName('temp3').AsString      := VarToStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_temp3.Index], '');
    ParamByName('speed').AsString      := VarToStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_speed.Index], '');
    ParamByName('cycle').AsString      := VarToStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_cycle.Index], '');
    ParamByName('way').AsString        := VarToStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_way.Index], '');
    ParamByName('betterway').AsString  := VarToStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_betterway.Index], '');
    ExecSQL;

    idx := FieldByName('index').AsInteger;
  end;
  // 점검 상세목록 저장
  for i := 0 to ddc.RecordCount - 1 do
  begin
    With DataModuleForm.FDQuerySetting(uq) do
    begin
      SQL.Add(SQLUpdate.Text);
      ParamByName('ccp1b_did').AsInteger := StrToIntDef(VarToStr(ddc.Values[i, cxGDDBTv_ccp1b_did.Index]), 0);
      ParamByName('ccp1b_hid').AsInteger := idx;
      ParamByName('f_no').AsString       := VarToStrDef(ddc.Values[i, cxGDDBTv_f_no.Index], '');
      ParamByName('itemname').AsString   := VarToStrDef(ddc.Values[i, cxGDDBTv_itemname.Index], '');
      ParamByName('checktime').AsString  := VarToStrDef(ddc.Values[i, cxGDDBTv_checktime.Index], '');
      ParamByName('temp1').AsString      := VarToStrDef(ddc.Values[i, cxGDDBTv_temp1.Index], '');
      ParamByName('temp2').AsString      := VarToStrDef(ddc.Values[i, cxGDDBTv_temp2.Index], '');
      ParamByName('temp3').AsString      := VarToStrDef(ddc.Values[i, cxGDDBTv_temp3.Index], '');
      ParamByName('speed').AsString      := VarToStrDef(ddc.Values[i, cxGDDBTv_speed.Index], '');
      ParamByName('remark').AsString     := VarToStrDef(ddc.Values[i, cxGDDBTv_remark.Index], '');
      ParamByName('writer').AsString     := LoginUserName;
      ExecSQL;
    end;
  end;
  // 점검 이탈목록 저장
  for i := 0 to odc.RecordCount - 1 do
  begin
    With DataModuleForm.FDQuerySetting(uq) do
    begin
      SQL.Add(SQLDelete.Text);
      ParamByName('ccp1b_outid').AsInteger := StrToIntDef(VarToStr(odc.Values[i, cxGOutDBTv_ccp1b_outid.Index]), 0);
      ParamByName('ccp1b_hid').AsInteger   := idx;
      ParamByName('details').AsString      := VarToStrDef(odc.Values[i, cxGOutDBTv_details.Index], '');
      ParamByName('results').AsString      := VarToStrDef(odc.Values[i, cxGOutDBTv_results.Index], '');
      ParamByName('writer').AsString       := LoginUserName;
      ParamByName('reviewer').AsString     := VarToStrDef(odc.Values[i, cxGOutDBTv_reviewer.Index], '');
      ExecSQL;
    end;
  end;
  Clear_All;
end;

procedure Tf_hc_ccp1b.DeleteProc;
begin
  // 점검 목록 삭제
  if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    With DataModuleForm.FDQuerySetting(uq) do
    begin
      SQL.Add(SQLLock.Text);
      ParamByName('ccp1b_hid').AsInteger := hid;
      ExecSQL;
    end;
  end;
  Clear_All;
end;

procedure Tf_hc_ccp1b.GridListSetting;
begin
  //
end;

procedure Tf_hc_ccp1b.DataBindingToGrid;
begin
  // 목록 선택
  vNew := False;
  // CCP-1B List
  With DataModuleForm.FDQuerySetting(uq_list) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('checkdate').AsString := DataModule.HaccpSelected_Date;
    Open;

    hid := uq_list.FieldByName('ccp1b_hid').AsInteger;
  end;
  Clear_All;
end;

initialization
  RegisterClass(Tf_hc_ccp1b);

finalization
  UnRegisterClass(Tf_hc_ccp1b);

end.
