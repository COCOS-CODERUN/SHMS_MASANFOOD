unit MetalTestUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni, cxContainer, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxCurrencyEdit;

type
  TMetalTestForm = class(TForm)
    cxGrid_MetalCheck: TcxGrid;
    cxGridTv_MetalCheck: TcxGridTableView;
    cxGridTv_MetalCheck_fe: TcxGridColumn;
    cxGridTv_MetalCheck_FeGoods: TcxGridColumn;
    cxGridTv_MetalCheck_sus: TcxGridColumn;
    cxGridTv_MetalCheck_SusGoods: TcxGridColumn;
    cxGridTv_MetalCheck_goods: TcxGridColumn;
    cxGridLv_MetalCheck: TcxGridLevel;
    cxBtn_MetalCheck: TcxButton;
    Timer_check: TTimer;
    Panel1: TPanel;
    cxBtn_finish: TcxButton;
    cxBtn_Non: TcxButton;
    Panel_Title: TPanel;
    cxButton1: TcxButton;
    Panel2: TPanel;
    DS_Facility: TDataSource;
    FDQuery_facility: TUniQuery;
    cxLbl1: TcxLabel;
    cxLkCBBox_Facility: TcxLookupComboBox;
    cxLbl2: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxBtn_Goods: TcxButton;
    cxEdit_ItemName: TcxTextEdit;
    cxEdit_ItemID: TcxTextEdit;
    UniQuery_Temp: TUniQuery;
    Label_Cnt: TLabel;
    cxCEdit_Cnt: TcxCurrencyEdit;
    Label1: TLabel;
    procedure Timer_checkTimer(Sender: TObject);
    procedure cxBtn_MetalCheckClick(Sender: TObject);
    procedure cxBtn_finishClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxBtn_NonClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxBtn_GoodsClick(Sender: TObject);
    procedure cxGridTv_MetalCheck_feCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridTv_MetalCheck_susCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridTv_MetalCheck_goodsCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridTv_MetalCheck_FeGoodsCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridTv_MetalCheck_SusGoodsCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxLkCBBox_FacilityPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MetalNo : Integer;
    MetalName, Writer : String;
    MetalDate : TDate;
    Finish : boolean;
    ReturnValue : integer;
  end;

  const
  TestMetalScenario: array[0..4] of string =
    ('Fe Only Pass',
     'Sus Only Pass',
     'Goods',
     'Fe And Goods Pass',
     'Sus And Goods Pass'
     );

  TestLabelCaption : array [0..5] of string =
    ( 'Fe만 통과시켜 주세요 !!!',
      'Sus만 통과시켜 주세요 !!!',
      '제품만 통과시켜 주세요 !!!',
      'Fe + 제품만 통과시켜 주세요 !!!',
      'Sus + 제품만 통과시켜 주세요 !!!',
      '시편 테스트 완료 !!!'
    );

var
  MetalTestForm: TMetalTestForm;
  SearchDateTime: TDateTime;
  MetalCheck_Ready : string = '';
  ResultFlg : string = '';
  CheckTime : TDateTime;
  SaveCheck_Flag : Boolean;
  ToDayTotalCount : Integer = 0;
  TimeCnt : integer;
implementation

{$R *.dfm}

uses DataModule, CCPMetalCheckUnit, ItemModalUnit, ItemSelectModelUnit,
  MainUnit;

procedure TMetalTestForm.cxBtn_finishClick(Sender: TObject);
var
  loopcnt : integer;
  t : tcxdatacontroller;
begin
  // 타이머 종료
  Timer_check.Enabled := false;

  MetalCheck_Ready := 'Finish';
  t := cxGridTv_MetalCheck.DataController;

  //제품까지 금속검출기 데이터가 다 들어오면 데이터 저장 함
  if SaveCheck_Flag = True then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_CCPMetalCheck', 'I')  do
    begin
      ParamByName('@MetalNo').AsInteger         := MetalNo;
      ParamByName('@MetalCheckTime').AsString   := FormatDateTime('yyyy-MM-dd HH:nn:ss',CheckTime);
      ParamByName('@MetalName').AsString        := MetalName;
      ParamByName('@MetalWriter').AsString      := datamodule.LoginUserName;
      if vartostr(t.Values[0, cxGridTv_MetalCheck_fe.index]) = '검출' then
      begin
        ParamByName('@MetalFe').AsBoolean       := True;
      end
      else if vartostr(t.Values[0, cxGridTv_MetalCheck_fe.index]) = '미검출'  then
      begin
        ParamByName('@MetalFe').AsBoolean       := False;
      end
      else
      begin
        ParamByName('@MetalFe').value           := NULL;
      end;

      if vartostr(t.Values[0, cxGridTv_MetalCheck_FeGoods.index]) = '검출' then
      begin
        ParamByName('@MetalFeGoods').AsBoolean  := True;
      end
      else if vartostr(t.Values[0, cxGridTv_MetalCheck_FeGoods.index]) = '미검출' then
      begin
        ParamByName('@MetalFeGoods').AsBoolean  := False;
      end
      else
      begin
        ParamByName('@MetalFeGoods').value       := NULL;
      end;

      if vartostr(t.Values[0, cxGridTv_MetalCheck_sus.index]) = '검출' then
      begin
        ParamByName('@MetalSus').AsBoolean       := True;
      end
      else if vartostr(t.Values[0, cxGridTv_MetalCheck_sus.index]) = '미검출' then
      begin
        ParamByName('@MetalSus').AsBoolean       := False;
      end
      else
      begin
        ParamByName('@MetalSus').value           := NULL;
      end;

      if vartostr(t.Values[0, cxGridTv_MetalCheck_SusGoods.index]) = '검출' then
      begin
        ParamByName('@MetalSusGoods').AsBoolean  := True;
      end
      else if vartostr(t.Values[0, cxGridTv_MetalCheck_SusGoods.index]) = '미검출' then
      begin
        ParamByName('@MetalSusGoods').AsBoolean  := False;
      end
      else
      begin
        ParamByName('@MetalSusGoods').value      := NULL;
      end;

      if vartostr(t.Values[0, cxGridTv_MetalCheck_Goods.index]) = '검출' then
      begin
        ParamByName('@MetalGoods').AsBoolean    := True;
      end
      else if vartostr(t.Values[0, cxGridTv_MetalCheck_Goods.index]) = '미검출' then
      begin
        ParamByName('@MetalGoods').AsBoolean    := False;
      end
      else
      begin
        ParamByName('@MetalGoods').value    := NULL;
      end;

      ParamByName('@MetalCode').value           := MetalNo;
      ParamByName('@MetalDate').AsString        := formatdatetime('yyyy-MM-dd',MetalDate);
      ParamByName('@R_Flag').AsString           := 'N';
      ParamByName('@C_Flag').AsString           := 'N';
      ParamByName('@MetalReviewer').AsString    := '';
      ParamByName('@MetalConfirmer').AsString   := '';

      ExecProc;
    end;

    // 결재정보 생성  -  확인필요
    DataModuleForm.InsertHaccpApproval(FormatDateTime('yyyy-MM-dd',SearchDateTime), '금속검출', '');

//    showmessage('시편테스트 등록 완료');
    Finish := True;
    cxButton1Click(self);
    cxBtn_NonClick(self);
  end;
end;

procedure TMetalTestForm.cxBtn_GoodsClick(Sender: TObject);
var
  Arr : Array of integer;
begin
  inherited;
  Division := 'Metal';
  ItemSelectModelForm := TItemSelectModelForm.Create(self);
  ItemSelectModelForm.cxGridDBTv_Item.OptionsSelection.MultiSelect := false;
  ItemSelectModelForm.cxGridDBTv_Item.OptionsSelection.CheckBoxVisibility := [];

  if ItemSelectModelForm.showModal = mrOk then
  begin
    with ItemSelectModelForm do
    begin
      cxEdit_ItemName.text := cxGridDBTv_Item.Controller.SelectedRows[0].Values[cxGridDBTv_Item_Name.index];
      cxEdit_ItemID.Text   := cxGridDBTv_Item.Controller.SelectedRows[0].Values[cxGridDBTv_Item_ID.index];

      UniQuery_Temp.Connection := datamoduleform.FDConnection;
      UniQuery_Temp.Close;
      UniQuery_Temp.SQL.Clear;
      UniQuery_Temp.SQL.Add(' UPDATE MetalItem SET ItemID = :ItemID ');
      UniQuery_Temp.SQL.Add(' WHERE MetalNo = :MetalNo ');
      UniQuery_Temp.ParamByName('ItemID').Value := cxEdit_ItemID.Text;
      UniQuery_Temp.ParamByName('MetalNo').Value := cxLkCBBox_Facility.EditValue;
      UniQuery_Temp.ExecSQL;
    end;
  end;

end;

procedure TMetalTestForm.cxBtn_MetalCheckClick(Sender: TObject);
var
  UniQuery_Temp : TUniQuery;
begin
  if cxLkCBBox_Facility.Text = '' then
  begin
    showmessage('설비를 선택해주세요');
    cxLkCBBox_Facility.SetFocus;
    exit;
  end;

  if cxEdit_ItemID.text = '' then
  begin
    showmessage('품목을 선택해주세요');
    exit;
  end;

  if cxBtn_MetalCheck.Caption = 'Fe만 통과시켜 주세요 !!!' then
  begin
    CheckTime := now;
  end;

  SearchDateTime := 0;
  UniQuery_Temp := TUniQuery.create(self);
  with UniQuery_Temp do
  begin
    connection := datamoduleform.FDConnection;
    close;
    sql.clear;
    SQL.Add(' SELECT GETDATE() AS SearchDateTime ');
    open;
    SearchDateTime := FieldByName('SearchDateTime').AsDateTime;
  end;
  UniQuery_Temp.Free;
  MetalCheck_Ready := 'Ready';
  ReturnValue := 0;
  cxBtn_MetalCheck.Enabled := false;
  TimeCnt := ROUND(cxCEdit_Cnt.value);
  Timer_check.Enabled := True;

end;

procedure TMetalTestForm.cxBtn_NonClick(Sender: TObject);
begin
  MetalTestForm.Close;
  MetalTestForm := nil;
  Finish := false;
end;

procedure TMetalTestForm.cxButton1Click(Sender: TObject);
begin
  ToDayTotalCount := 0;
  MetalCheck_Ready := '';
  Label_Cnt.Caption := '';
  cxBtn_MetalCheck.Enabled := True;
  cxBtn_finish.Enabled := false;
  cxGridTv_MetalCheck.DataController.RecordCount := 0;
  cxGridTv_MetalCheck.DataController.RecordCount := 1;
end;

procedure TMetalTestForm.cxGridTv_MetalCheck_feCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Item.Index = cxGridTv_MetalCheck_fe.Index then
  begin
    if AViewInfo.GridRecord.Values[cxGridTv_MetalCheck_fe.Index] = '시간초과' then
    begin
      ACanvas.Font.Color := clBlue;
    end
    else if AViewInfo.GridRecord.Values[cxGridTv_MetalCheck_fe.Index] = '미검출' then
    begin
      ACanvas.Font.Color := clRed;
    end;
  end;
end;

procedure TMetalTestForm.cxGridTv_MetalCheck_FeGoodsCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Item.Index = cxGridTv_MetalCheck_feGoods.Index then
  begin
    if AViewInfo.GridRecord.Values[cxGridTv_MetalCheck_feGoods.Index] = '시간초과' then
    begin
      ACanvas.Font.Color := clBlue;
    end
    else if AViewInfo.GridRecord.Values[cxGridTv_MetalCheck_feGoods.Index] = '미검출' then
    begin
      ACanvas.Font.Color := clRed;
    end;
  end;
end;

procedure TMetalTestForm.cxGridTv_MetalCheck_goodsCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Item.Index = cxGridTv_MetalCheck_goods.Index then
  begin
    if AViewInfo.GridRecord.Values[cxGridTv_MetalCheck_goods.Index] = '시간초과' then
    begin
      ACanvas.Font.Color := clBlue;
    end
    else if AViewInfo.GridRecord.Values[cxGridTv_MetalCheck_goods.Index] = '검출' then
    begin
      ACanvas.Font.Color := clRed;
    end;
  end;
end;

procedure TMetalTestForm.cxGridTv_MetalCheck_susCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Item.Index = cxGridTv_MetalCheck_sus.Index then
  begin
    if AViewInfo.GridRecord.Values[cxGridTv_MetalCheck_sus.Index] = '시간초과' then
    begin
      ACanvas.Font.Color := clBlue;
    end
    else if AViewInfo.GridRecord.Values[cxGridTv_MetalCheck_sus.Index] = '미검출' then
    begin
      ACanvas.Font.Color := clRed;
    end;
  end;
end;

procedure TMetalTestForm.cxGridTv_MetalCheck_SusGoodsCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Item.Index = cxGridTv_MetalCheck_susGoods.Index then
  begin
    if AViewInfo.GridRecord.Values[cxGridTv_MetalCheck_susGoods.Index] = '시간초과' then
    begin
      ACanvas.Font.Color := clBlue;
    end
    else if AViewInfo.GridRecord.Values[cxGridTv_MetalCheck_susGoods.Index] = '미검출' then
    begin
      ACanvas.Font.Color := clRed;
    end;
  end;
end;

procedure TMetalTestForm.cxLkCBBox_FacilityPropertiesEditValueChanged(
  Sender: TObject);
begin
  with datamoduleform.FDQuerySetting(nil) do
  begin
    sql.Add('   SELECT MetalCheckTime FROM HACCPCCPBasic a            ');
    sql.Add('   INNER JOIN Metal b ON a.CCPFacilityID = b.MetalCode   ');
    sql.Add('   WHERE b.MetalNo = :MetalNo                            ');
    ParamByName('MetalNo').AsInteger := cxLkCBBox_Facility.EditValue;
    open;
    cxCEdit_Cnt.Value := FieldByName('MetalCheckTime').AsInteger;
  end;

end;

procedure TMetalTestForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MetalTestForm := nil;
  Action := caFree;
  Finish := false;
end;

procedure TMetalTestForm.FormCreate(Sender: TObject);
begin
  cxDEdit_date.Date := date;
  CheckTime := now;
  ToDayTotalCount := 0;
  MetalCheck_Ready := '';
  cxGridTv_MetalCheck.DataController.RecordCount := 1;

  with DataModuleForm.FDQuerySetting(FDQuery_facility) do
  begin
    sql.Add(' SELECT * FROM Metal             ');
    sql.Add(' WHERE LEFT(MetalCode,2) =''CD'' ');
    open;
  end;

end;

procedure TMetalTestForm.Timer_checkTimer(Sender: TObject);
begin
  ResultFlg := '';
  MetalNo := cxLkCBBox_Facility.EditValue;
  MetalName := cxLkCBBox_Facility.Text;

  if TimeCnt > 0 then
  begin
    Label_Cnt.Caption := TimeCnt.ToString+'초 ';
  end
  else
  begin
    Label_Cnt.Caption := '';
  end;
  dec(TimeCnt);

  if TimeCnt = -1 then
  begin
    ReturnValue := 3;
  end;

  if (MetalCheck_Ready = 'Ready') then
  begin
//      with FDSP_MetalTest do
    with DataModuleForm.FDSpSetting(nil, 'usp_CCPMetalTest', 'T') do
    begin
      ParamByName('@SearchDateTime').Value := SearchDateTime;
      ParamByName('@MetalNo').Value        := MetalNo;
      ParamByName('@Note').AsString        := TestMetalScenario[ToDayTotalCount];
      ExecProc;

      if ParamByName('@RETURN_VALUE').AsInteger = 1 then
      begin
        ReturnValue := 1;
      end
      else if ParamByName('@RETURN_VALUE').AsInteger = 2 then
      begin
        ReturnValue := 2;
      end;

      //MetalCheck에 Data가 들어오면(시편테스트 데이터)
      if ReturnValue = 1 then
      begin
        SearchDateTime := ParamByName('@SearchDateTime').AsDateTime;
        cxGridTv_MetalCheck.DataController.Values[0, ToDayTotalCount] := '검출';
        if ToDayTotalCount = 4 then
        begin
          MetalCheck_Ready := 'Finish';
          SaveCheck_Flag := True;
          cxBtn_finishClick(self);
        end
        else begin
          ToDayTotalCount := ToDayTotalCount +1;
          cxBtn_MetalCheck.Caption := TestLabelCaption[ToDayTotalCount];
          cxBtn_MetalCheck.Enabled := True;
          SaveCheck_Flag := false;
        end;
        Timer_check.Enabled := false;
        MetalCheck_Ready := '';
        Label_Cnt.Caption := '';
      end;

      if ReturnValue = 2 then
      begin
        SearchDateTime := ParamByName('@SearchDateTime').AsDateTime;
        cxGridTv_MetalCheck.DataController.Values[0, ToDayTotalCount] := '미검출';
        if ToDayTotalCount = 4 then
        begin
          MetalCheck_Ready := 'Finish';
          SaveCheck_Flag := True;
          cxBtn_finishClick(self);
        end
        else begin
          ToDayTotalCount := ToDayTotalCount +1;
          cxBtn_MetalCheck.Caption := TestLabelCaption[ToDayTotalCount];
          cxBtn_MetalCheck.Enabled := True;
          SaveCheck_Flag := false;
        end;
        Timer_check.Enabled := false;
        MetalCheck_Ready := '';
        Label_Cnt.Caption := '';
      end;
      if ReturnValue = 3 then
      begin
        SearchDateTime := ParamByName('@SearchDateTime').AsDateTime;
        cxGridTv_MetalCheck.DataController.Values[0, ToDayTotalCount] := '시간초과';
        if ToDayTotalCount = 4 then
        begin
          MetalCheck_Ready := 'Finish';
          SaveCheck_Flag := True;
          cxBtn_finishClick(self);
        end
        else begin
          ToDayTotalCount := ToDayTotalCount +1;
          cxBtn_MetalCheck.Caption := TestLabelCaption[ToDayTotalCount];
          cxBtn_MetalCheck.Enabled := True;
          SaveCheck_Flag := false;
        end;
        Timer_check.Enabled := false;
        MetalCheck_Ready := '';
        Label_Cnt.Caption := '';
      end;

    end;
  end;
end;

end.
