unit u_hc_ccp4p;

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
  cxDBData, cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxSplitter,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxLabel, cxGroupBox, MemDS, DBAccess, Uni,
  cxBlobEdit, cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView,
  System.DateUtils;

type
  Tf_hc_ccp4p = class(TForm)
    cxGBox_Input: TcxGroupBox;
    cxGBox_Info: TcxGroupBox;
    cxGInfo: TcxGrid;
    cxGInfoDBBTv_: TcxGridDBBandedTableView;
    cxGInfoDBBTv_ccp4p_hid: TcxGridDBBandedColumn;
    cxGInfoDBBTv_checkdate: TcxGridDBBandedColumn;
    cxGInfoDBBTv_cycle1: TcxGridDBBandedColumn;
    cxGInfoDBBTv_cycle2: TcxGridDBBandedColumn;
    cxGInfoDBBTv_cycle3: TcxGridDBBandedColumn;
    cxGInfoDBBTv_cycle4: TcxGridDBBandedColumn;
    cxGInfoDBBTv_Std: TcxGridDBBandedColumn;
    cxGInfoDBBTv_way: TcxGridDBBandedColumn;
    cxGInfoDBBTv_betterway: TcxGridDBBandedColumn;
    cxGInfoDBBTv_writer: TcxGridDBBandedColumn;
    cxGInfoLv: TcxGridLevel;
    cxGBox_Out: TcxGroupBox;
    cxGOut: TcxGrid;
    cxGOutDBTv_: TcxGridDBTableView;
    cxGOutDBTv_ccp4p_outid: TcxGridDBColumn;
    cxGOutDBTv_ccp4p_hid: TcxGridDBColumn;
    cxGOutDBTv_details: TcxGridDBColumn;
    cxGOutDBTv_results: TcxGridDBColumn;
    cxGOutDBTv_writer: TcxGridDBColumn;
    cxGOutDBTv_reviewer: TcxGridDBColumn;
    cxGOutDBTv_wdt: TcxGridDBColumn;
    cxGOutDBTv_modifier: TcxGridDBColumn;
    cxGOutDBTv_mdt: TcxGridDBColumn;
    cxGOutLv: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxBtn_AddD2: TcxButton;
    cxBtn_AddD: TcxButton;
    cxEdit_hid: TcxTextEdit;
    cxBtn_DelD: TcxButton;
    cxBtn_DelOut: TcxButton;
    cxBtn_AddOut: TcxButton;
    cxBtn_DelD2: TcxButton;
    cxGBox_D: TcxGroupBox;
    cxGD: TcxGrid;
    cxGDDBTv_: TcxGridDBTableView;
    cxGDDBTv_ccp4p_did: TcxGridDBColumn;
    cxGDDBTv_ccp4p_hid: TcxGridDBColumn;
    cxGDDBTv_f_no: TcxGridDBColumn;
    cxGDDBTv_itemname: TcxGridDBColumn;
    cxGDDBTv_checktime: TcxGridDBColumn;
    cxGDDBTv_pass_fe: TcxGridDBColumn;
    cxGDDBTv_pass_sus: TcxGridDBColumn;
    cxGDDBTv_pass_item: TcxGridDBColumn;
    cxGDDBTv_pass_feitem: TcxGridDBColumn;
    cxGDDBTv_pass_susitem: TcxGridDBColumn;
    cxGDLv: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGD2: TcxGrid;
    cxGD2DBTv_: TcxGridDBTableView;
    cxGD2DBTv_ccp4p_d2id: TcxGridDBColumn;
    cxGD2DBTv_ccp4p_hid: TcxGridDBColumn;
    cxGD2DBTv_f_no: TcxGridDBColumn;
    cxGD2DBTv_Qty: TcxGridDBColumn;
    cxGD2DBTv_detection: TcxGridDBColumn;
    cxGD2DBTv_remark: TcxGridDBColumn;
    cxGD2Lv: TcxGridLevel;
    uq_insert: TUniQuery;
    uq_delete: TUniQuery;
    uq_info: TUniQuery;
    ds_info: TDataSource;
    uq_d: TUniQuery;
    ds_d: TDataSource;
    uq_d2: TUniQuery;
    ds_d2: TDataSource;
    uq_out: TUniQuery;
    ds_out: TDataSource;
    uq_list: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_AddDClick(Sender: TObject);
    procedure cxBtn_AddD2Click(Sender: TObject);
    procedure cxBtn_AddOutClick(Sender: TObject);
    procedure cxBtn_DelDClick(Sender: TObject);
    procedure cxBtn_DelD2Click(Sender: TObject);
    procedure cxBtn_DelOutClick(Sender: TObject);
  private
    { Private declarations }
    idc, ddc, d2dc, odc: TcxDBDataController;
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
  f_hc_ccp4p: Tf_hc_ccp4p;

implementation

{$R *.dfm}

uses DataModule;

procedure Tf_hc_ccp4p.FormCreate(Sender: TObject);
begin
  idc  := cxGInfoDBBTv_.DataController;
  ddc  := cxGDDBTv_.DataController;
  d2dc := cxGD2DBTv_.DataController;
  odc  := cxGOutDBTv_.DataController;
  // 신규 초기값
  vNew := True;
end;

procedure Tf_hc_ccp4p.cxBtn_AddDClick(Sender: TObject);
begin
  // 감도 모니터링 신규추가
  srch_D(uq_d, hid);
  // 레코드 추가
  uq_d.Append;
  uq_d.FieldByName('ccp4p_hid').AsInteger   := hid;
  uq_d.FieldByName('f_no').AsString         := '';
  uq_d.FieldByName('itemname').AsString     := '';
  uq_d.FieldByName('checktime').AsDateTime  := Date;
end;

procedure Tf_hc_ccp4p.cxBtn_AddD2Click(Sender: TObject);
begin
  // 감도 모니터링 신규추가
  srch_D(uq_d2, hid);
  // 레코드 추가
  uq_d2.Append;
  uq_d2.FieldByName('ccp4p_hid').AsInteger   := hid;
  uq_d2.FieldByName('f_no').AsString         := '';
  uq_d2.FieldByName('Qty').AsCurrency        := 0;
  uq_d2.FieldByName('detection').AsCurrency  := 0;
  uq_d2.FieldByName('remark').AsString       := '';
end;

procedure Tf_hc_ccp4p.cxBtn_AddOutClick(Sender: TObject);
begin
  // 이탈 목록 신규추가
  srch_D(uq_out, hid);
  // 레코드 추가
  uq_out.Append;
  uq_out.FieldByName('ccp4p_hid').AsInteger := hid;
  uq_out.FieldByName('details').AsString  := '';
  uq_out.FieldByName('results').AsString  := '';
  uq_out.FieldByName('writer').AsString   := '';
  uq_out.FieldByName('reviewer').AsString := '';
end;

procedure Tf_hc_ccp4p.cxBtn_DelDClick(Sender: TObject);
begin
  // 감도 모니터링 삭제
  if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    if StrToIntDef(VarToStr(ddc.Values[ddc.FocusedRecordIndex, cxGDDBTv_ccp4p_did.Index]), 0) = 0 then
    begin
      ddc.DeleteRecord(ddc.FocusedRecordIndex);  // 레코드만 삭제
    end
    else
    begin
      With DataModuleForm.FDQuerySetting(uq_delete) do
      begin
        SQL.Add(SQLInsert.Text);
        ParamByName('ccp4p_did').AsInteger := ddc.Values[ddc.FocusedRecordIndex, cxGDDBTv_ccp4p_did.Index];
        ExecSQL;

        srch_D(uq_d, hid);
      end;
    end;
  end;
end;

procedure Tf_hc_ccp4p.cxBtn_DelD2Click(Sender: TObject);
begin
  // 제품통과 삭제
  if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    if StrToIntDef(VarToStr(d2dc.Values[d2dc.FocusedRecordIndex, cxGD2DBTv_ccp4p_d2id.Index]), 0) = 0 then
    begin
      d2dc.DeleteRecord(d2dc.FocusedRecordIndex);  // 레코드만 삭제
    end
    else
    begin
      With DataModuleForm.FDQuerySetting(uq_delete) do
      begin
        SQL.Add(SQLUpdate.Text);
        ParamByName('ccp4p_d2id').AsInteger := d2dc.Values[d2dc.FocusedRecordIndex, cxGD2DBTv_ccp4p_d2id.Index];
        ExecSQL;

        srch_D(uq_d2, hid);
      end;
    end;
  end;
end;

procedure Tf_hc_ccp4p.cxBtn_DelOutClick(Sender: TObject);
begin
  // 이탈 목록 삭제
  if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    if StrToIntDef(VarToStr(odc.Values[odc.FocusedRecordIndex, cxGOutDBTv_ccp4p_outid.Index]), 0) = 0 then
    begin
      odc.DeleteRecord(odc.FocusedRecordIndex);  // 레코드만 삭제
    end
    else
    begin
      With DataModuleForm.FDQuerySetting(uq_delete) do
      begin
        SQL.Add(SQLDelete.Text);
        ParamByName('ccp4p_outid').AsInteger := odc.Values[odc.FocusedRecordIndex, cxGOutDBTv_ccp4p_outid.Index];
        ExecSQL;

        srch_D(uq_out, hid);
      end;
    end;
  end;
end;

procedure Tf_hc_ccp4p.Srch_D(uq: TUniQuery; val: Integer);
begin
  With DataModuleForm.FDQuerySetting(uq) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('ccp4p_hid').AsInteger := val;
    Open;
  end;
end;

procedure Tf_hc_ccp4p.Clear_All;
begin
  // CCP-4P Head
  Srch_D(uq_info, hid);
  // CCP-4P Detail
  Srch_D(uq_d, hid);
  // CCP-4P Detail2
  Srch_D(uq_d2, hid);
  // CCP-4P Out
  Srch_D(uq_out, hid);
end;

procedure Tf_hc_ccp4p.ClearProc;
begin
  // 신규
  vNew := True;
  // CCP-4P Head
  hid := 0;
  With DataModuleForm.FDQuerySetting(uq_Info) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('new').AsBoolean        := vNew;
    ParamByName('checkdate').AsDateTime := Date;
    ParamByName('writer').AsString      := LoginUserName;
    ParamByName('ccp4p_hid').AsInteger  := hid;
    Open;
  end;
//  // 쿼리 오픈
//  hid := 0;
//  srch_D(uq_info, hid);
//  // 레코드 추가
//  uq_info.Append;
//  uq_info.FieldByName('checkdate').AsDateTime := Date;
//  uq_info.FieldByName('writer').AsString      := LoginUserName;
//  uq_info.FieldByName('Std').AsString         := '';
//  uq_info.FieldByName('cycle1').AsString      := '';
//  uq_info.FieldByName('cycle2').AsString      := '';
//  uq_info.FieldByName('cycle3').AsString      := '';
//  uq_info.FieldByName('cycle4').AsString      := '';
//  uq_info.FieldByName('way').AsString         := '';
//  uq_info.FieldByName('betterway').AsString   := '';
end;

procedure Tf_hc_ccp4p.SaveProc;
var
  i, idx : Integer;
begin
  // 점검정보 저장
  With DataModuleForm.FDQuerySetting(uq_Insert) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('ccp4p_hid').AsInteger := StrToIntDef(VarToStr(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_ccp4p_hid.Index]), 0);
    ParamByName('checkdate').AsString  := VartoStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_checkdate.Index], '');
    ParamByName('writer').AsString     := VartoStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_writer.Index], '');
    ParamByName('Std').AsString        := VartoStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_Std.Index], '');
    ParamByName('cycle1').AsString     := VartoStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_cycle1.Index], '');
    ParamByName('cycle2').AsString     := VartoStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_cycle2.Index], '');
    ParamByName('cycle3').AsString     := VartoStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_cycle3.Index], '');
    ParamByName('cycle4').AsString     := VartoStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_cycle4.Index], '');
    ParamByName('way').AsString        := VartoStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_way.Index], '');
    ParamByName('betterway').AsString  := VartoStrDef(idc.Values[idc.FocusedRecordIndex, cxGInfoDBBTv_betterway.Index], '');
    ExecSQL;

    idx := FieldByName('index').AsInteger;
  end;
  // 감도 모니터링 저장
  for i := 0 to ddc.RecordCount - 1 do
  begin
    With DataModuleForm.FDQuerySetting(uq_Insert) do
    begin
      SQL.Add(SQLUpdate.Text);
      ParamByName('ccp4p_did').AsInteger   := StrToIntDef(VarToStr(ddc.Values[i, cxGDDBTv_ccp4p_did.Index]), 0);
      ParamByName('ccp4p_hid').AsInteger   := idx;
      ParamByName('f_no').AsString         := VarToStrDef(ddc.Values[i, cxGDDBTv_f_no.Index], '');
      ParamByName('itemname').AsString     := VarToStrDef(ddc.Values[i, cxGDDBTv_itemname.Index], '');
      ParamByName('checktime').AsString    := VarToStrDef(ddc.Values[i, cxGDDBTv_checktime.Index], '');
      ParamByName('pass_fe').AsString      := VarToStrDef(ddc.Values[i, cxGDDBTv_pass_fe.Index], '');
      ParamByName('pass_sus').AsString     := VarToStrDef(ddc.Values[i, cxGDDBTv_pass_sus.Index], '');
      ParamByName('pass_item').AsString    := VarToStrDef(ddc.Values[i, cxGDDBTv_pass_item.Index], '');
      ParamByName('pass_feitem').AsString  := VarToStrDef(ddc.Values[i, cxGDDBTv_pass_feitem.Index], '');
      ParamByName('pass_susitem').AsString := VarToStrDef(ddc.Values[i, cxGDDBTv_pass_susitem.Index], '');
      ParamByName('writer').AsString       := LoginUserName;
      ExecSQL;
    end;
  end;
  // 제품통과 저장
  for i := 0 to d2dc.RecordCount - 1 do
  begin
    With DataModuleForm.FDQuerySetting(uq_Insert) do
    begin
      SQL.Add(SQLDelete.Text);
      ParamByName('ccp4p_d2id').AsInteger := StrToIntDef(VarToStr(d2dc.Values[i, cxGD2DBTv_ccp4p_d2id.Index]), 0);
      ParamByName('ccp4p_hid').AsInteger  := idx;
      ParamByName('f_no').AsString        := VarToStrDef(d2dc.Values[i, cxGD2DBTv_f_no.Index], '');
      ParamByName('Qty').AsCurrency       := StrToIntDef(VarToStr(d2dc.Values[i, cxGD2DBTv_Qty.Index]), 0);
      ParamByName('detection').AsCurrency := StrToIntDef(VarToStr(d2dc.Values[i, cxGD2DBTv_detection.Index]), 0);
      ParamByName('remark').AsString      := VarToStrDef(d2dc.Values[i, cxGD2DBTv_remark.Index], '');
      ExecSQL;
    end;
  end;
  // 점검 이탈목록 저장
  for i := 0 to odc.RecordCount - 1 do
  begin
    With DataModuleForm.FDQuerySetting(uq_Insert) do
    begin
      SQL.Add(SQLLock.Text);
      ParamByName('ccp4p_outid').AsInteger := StrToIntDef(VarToStr(odc.Values[i, cxGOutDBTv_ccp4p_outid.Index]), 0);
      ParamByName('ccp4p_hid').AsInteger   := idx;
      ParamByName('details').AsString      := VarToStrDef(odc.Values[i, cxGOutDBTv_details.Index], '');
      ParamByName('results').AsString      := VarToStrDef(odc.Values[i, cxGOutDBTv_results.Index], '');
      ParamByName('writer').AsString       := LoginUserName;
      ParamByName('reviewer').AsString     := VarToStrDef(odc.Values[i, cxGOutDBTv_reviewer.Index], '');
      ExecSQL;
    end;
  end;
  Clear_All;
end;

procedure Tf_hc_ccp4p.DeleteProc;
begin
  // 점검 목록 삭제
  if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    With DataModuleForm.FDQuerySetting(uq_delete) do
    begin
      SQL.Add(SQLLock.Text);
      ParamByName('ccp4p_hid').AsInteger := hid;
      ExecSQL;
    end;
  end;
  Clear_All;
end;

procedure Tf_hc_ccp4p.GridListSetting;
begin
  //
end;

procedure Tf_hc_ccp4p.DataBindingToGrid;
begin
  // 목록 선택
  vNew := False;
  // CCP-4P List
  With DataModuleForm.FDQuerySetting(uq_list) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('checkdate').AsString := DataModule.HaccpSelected_Date;
    Open;

    hid := uq_list.FieldByName('ccp4p_hid').AsInteger;
  end;
  Clear_All;
end;

initialization
  RegisterClass(Tf_hc_ccp4p);

finalization
  UnRegisterClass(Tf_hc_ccp4p);

end.
