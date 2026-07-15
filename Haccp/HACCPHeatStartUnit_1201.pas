unit HACCPHeatStartUnit;

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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,        cxDBData,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, Vcl.ExtCtrls, cxGroupBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGrid,
  cxExtEditRepositoryItems, cxEditRepositoryItems, cxButtonEdit, cxRadioGroup,
  cxGridDBTableView, System.DateUtils, cxGridChartView, cxGridDBChartView;

type
  THACCPHeatStartForm = class(TForm)
    cxGBox_Approval: TcxGroupBox;
    cxLbl1: TcxLabel;
    cxLkCBBox_Facility: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxTEdit_ItemName: TcxTextEdit;
    cxTEdit_ItemID: TcxTextEdit;
    cxButton1: TcxButton;
    cxBtn_Save: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGrid_List: TcxGrid;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_Delete: TcxGridColumn;
    cxGridTv_List_LineName: TcxGridColumn;
    cxGridTv_List_ItemName: TcxGridColumn;
    cxGridTv_List_HeatTimeText: TcxGridColumn;
    cxGridTv_List_Finish: TcxGridColumn;
    cxGridTv_List_CCPHeatID: TcxGridColumn;
    cxGridTv_List_FridgeNo: TcxGridColumn;
    cxGridTv_List_HeatTime: TcxGridColumn;
    cxGridLv_List: TcxGridLevel;
    UniQuery_Fridge: TUniQuery;
    DS_Fridge: TDataSource;
    US_List: TUniStoredProc;
    Timer1: TTimer;
    cxGroupBox2: TcxGroupBox;
    cxGridTv_List_WorkTime: TcxGridColumn;
    cxGridTv_List_StartTime: TcxGridColumn;
    cxGridTv_List_ItemID: TcxGridColumn;
    uq_temp: TUniQuery;
    cxGTemp: TcxGrid;
    cxGTempLv: TcxGridLevel;
    cxGTempDBTv_: TcxGridDBTableView;
    ds_temp: TDataSource;
    cxGridTv_List_State: TcxGridColumn;
    cxGTempDBTv_FridgeNo: TcxGridDBColumn;
    cxGTempDBTv_DBColumn1: TcxGridDBColumn;
    cxGTempDBTv_DBColumn2: TcxGridDBColumn;
    cxGTempDBTv_DBColumn3: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    uq_T1: TUniQuery;
    DS_T1: TDataSource;
    cxGrid_TempChart: TcxGrid;
    cxGridDBTv_TempChart: TcxGridDBChartView;
    cxGridDBTv_TempChartSeries1: TcxGridDBChartSeries;
    cxGridLv_TempChart: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBChartView1: TcxGridDBChartView;
    cxGridDBChartSeries1: TcxGridDBChartSeries;
    cxGridLevel1: TcxGridLevel;
    uq_T2: TUniQuery;
    DS_T2: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBChartView2: TcxGridDBChartView;
    cxGridDBChartSeries2: TcxGridDBChartSeries;
    cxGridLevel2: TcxGridLevel;
    uq_T3: TUniQuery;
    DS_T3: TDataSource;
    Timer2: TTimer;
    cxGridTv_List_RCount: TcxGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxBtn_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridTv_List_FinishPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridTv_List_DeletePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridTv_ListCanFocusRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure cxGridTv_List_StateCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
    t : TcxDBDataController;
    y : TcxDataController;
    FridgeNo, Number, Check, Rcount : Integer;
    CCPHeatID, ItemID,FridgeCode, Temp, Start : String;
    GETDATE : String;
    procedure SearchHeat;
    procedure SearchTemp;
    function DeleteCCPHeat(FridgeNo : integer) : boolean;
    function FinishHeat(CCPHeatID:string; FridgeNo : integer) : boolean;    
  public
    { Public declarations }
  end;

var
  HACCPHeatStartForm: THACCPHeatStartForm;

implementation

{$R *.dfm}

uses DataModule, ItemModalUnit, ItemSelectModelUnit, MainUnit;

procedure THACCPHeatStartForm.cxBtn_CloseClick(Sender: TObject);
begin
  HACCPHeatStartForm.Close;
  HACCPHeatStartForm := nil;
end;

procedure THACCPHeatStartForm.cxBtn_SaveClick(Sender: TObject);
var
  Check : integer;
begin
  if cxLkCBBox_Facility.Text = '' then
  begin
    showmessage('설비를 선택해주세요');
    cxLkCBBox_Facility.SetFocus;
    exit;
  end;

  if cxTEdit_ItemName.Text = '' then
  begin
    showmessage('품목을 선택해주세요');
    cxButton1Click(self);
    exit;
  end;

  // 등록 여부 조회
  with datamoduleform.FDQuerySetting(nil) do
  begin
    sql.Add('  select COUNT(*) as Cnt from CCPHeatItem            ');
    sql.Add('  where FridgeNo = :FridgeNo and itemID is not null  ');   // CCPHEATID 미사용
//    sql.Add('  where FridgeNo = :FridgeNo and CCPHeatID is not null  ');
    ParamByName('FridgeNo').Value := cxLkCBBox_Facility.EditValue;
    open;
    Check := FieldByName('Cnt').AsInteger;
  end;

  if Check <> 0 then
  begin
    showmessage('이미 작업 등록된 라인이라 등록할 수 없습니다');
    Exit;
  end;

  // 250801 김동현 : 신규 프로시저 사용(구이등록)
  Check := 10;
  Timer1.Enabled := False;
  with datamoduleform.FDSpSetting(nil,'usp_ccp_heat_chk','A') do
  begin
    ParamByName('@GroupIndex').Value := cxLkCBBox_Facility.EditValue;
    ParamByName('@Division').Value   := cxLkCBBox_Facility.text;
    ParamByName('@ItemID').Value     := cxTEdit_ItemID.text;
    ParamByName('@writer').Value     := datamodule.LoginUserName;
    Execute;

    ItemID := cxTEdit_ItemID.text;
    Number := ParamByName('@Number').value;
//    CCPHeatID := vartostr(ParamByName('@h_id').Value);
    GETDATE := vartostr(ParamByName('@getdate').Value);
  end;

  cxTEdit_ItemID.Text     := '';
  cxLkCBBox_Facility.Text := '';
  cxTEdit_ItemName.Text   := '';

  SearchHeat;
  Timer1.Enabled := True;
end;

procedure THACCPHeatStartForm.cxButton1Click(Sender: TObject);
var
  t : TcxDBDataController;
begin
  inherited;
  Division := 'Heat';
  ItemSelectModelForm := TItemSelectModelForm.Create(self);
  t := ItemSelectModelForm.cxGridDBTv_Item.datacontroller;

  if ItemSelectModelForm.showModal = mrOk then
  begin
    cxTEdit_ItemName.Text := t.values[t.FocusedRecordIndex, ItemSelectModelForm.cxGridDBTv_Item_Name.index];
    cxTEdit_ItemID.Text   := t.values[t.FocusedRecordIndex, ItemSelectModelForm.cxGridDBTv_Item_ID.index];
  end;
end;

procedure THACCPHeatStartForm.cxGridTv_ListCanFocusRecord(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  var AAllow: Boolean);
begin
  cxGrid_List.SetFocus;
end;

procedure THACCPHeatStartForm.cxGridTv_List_DeletePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if AButtonIndex = 0 then
  begin
    if y.Values[y.FocusedRecordIndex, cxGridTv_List_State.Index] = null then Exit;
    if y.Values[y.FocusedRecordIndex, cxGridTv_List_State.Index] = 'Start' then
    begin
      ShowMessage('상태가 Start일 땐 취소할 수 없습니다'+#10#13+'작업종료만 가능합니다.'
      +#10#13+'[취소시 : 종료 -> 취소]');
      Exit;
    end;

    cxGrid_List.SetFocus;  
    if MessageDlg('등록 취소하시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes then
    begin
       if VarToStr(y.Values[y.FocusedRecordIndex, cxGridTv_List_State.Index]) = '' then Exit;

      if DeleteCCPHeat(y.Values[y.FocusedRecordIndex, cxGridTv_List_FridgeNo.Index]) then
      begin
//        showmessage('취소 완료');
        SearchHeat;
      end;
    end;
  end;
end;

procedure THACCPHeatStartForm.cxGridTv_List_FinishPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if AButtonIndex = 0 then
  begin
//    if y.Values[y.FocusedRecordIndex, cxGridTv_List_State.Index] = '' then Exit;
    // 250801 김동현 : 빈칸 → 적정온도값이 들어오면 빈칸 처리
    // 등록된 작업정보가 없으면 건너뛰기
    if y.Values[y.FocusedRecordIndex, cxGridTv_List_ItemID.Index] = '' then
    begin
      Exit;
    end;
    if y.Values[y.FocusedRecordIndex, cxGridTv_List_State.Index] = 'Wait' then
    begin
      ShowMessage('상태가 Wait일 땐 종료할 수 없습니다.'+#10#13+'작업취소만 가능합니다.');
      Exit;
    end;

    cxGrid_List.SetFocus;
    if MessageDlg('완료 하시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes then
    begin
      // 타이머 일시정지 및 초기화
      Check := 10;
      Timer1.Enabled := False;
      // 250801 김동현 : 신규 프로시저 사용(작업 완료 처리)
      With DataModuleForm.FDSpSetting(nil, 'usp_ccp_heat_chk', 'C') do
      begin
//        ParamByName('@h_id').AsString        := y.Values[y.FocusedRecordIndex, cxGridTv_List_CCPHeatID.Index];
        ParamByName('@GroupIndex').AsInteger := y.Values[y.FocusedRecordIndex, cxGridTv_List_FridgeNo.Index];
        ParamByName('@ItemID').AsString      := y.Values[y.FocusedRecordIndex, cxGridTv_List_ItemID.Index];
        ParamByName('@RCount').AsInteger     := y.Values[y.FocusedRecordIndex, cxGridTv_List_RCount.Index];
        ParamByName('@writer').AsString      := datamodule.LoginUserName;
        Execute;

        ItemID    := cxTEdit_ItemID.text;
        Number    := ParamByName('@Number').value;
//        CCPHeatID := vartostr(ParamByName('@h_id').Value);
        GETDATE   := vartostr(ParamByName('@GETDATE').Value);
      end;

      SearchHeat;
      Timer1.Enabled := True;
    end;
  end;
end;

procedure THACCPHeatStartForm.cxGridTv_List_StateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[cxGridTv_List_State.Index] = 'Wait' then
  begin
    ACanvas.Brush.Color := clWebYellow;
    ACanvas.font.Color := clBlack;
  end
  else if AViewInfo.GridRecord.Values[cxGridTv_List_State.Index] = 'Start' then
  begin
    ACanvas.Brush.Color := clWebLime;
    ACanvas.font.Color := clBlack;
  end
  else if AViewInfo.GridRecord.Values[cxGridTv_List_State.Index] = 'Finish' then
  begin
    ACanvas.Brush.Color := clWebGray;
    ACanvas.font.Color := clBlack;
  end
  else if AViewInfo.GridRecord.Values[cxGridTv_List_State.Index] = 'Out' then
  begin
    ACanvas.Brush.Color := clWebRed;
    ACanvas.font.Color := clWhite;
  end
  else
  begin
    //빈값 맞음.
  end;
end;

function THACCPHeatStartForm.DeleteCCPHeat(FridgeNo: integer): boolean;
var
//  cnt : integer;
//  vdate, vItemID: string;
//  vLine: integer;
//  vStartDate: TDateTime;
  cnt : Integer;
  h_date, ItemID : string;
  GroupIndex : Integer;
  InsertTime : TDateTime;
  RCount : Integer;
begin
  result := false;

  // 250801 김동현 : 테이블 ccp_heat_chk 적용
  with datamoduleform.FDQuerySetting(nil) do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' select h_date              ');
    SQL.Add('       ,ItemID              ');
    SQL.Add('       ,InsertTime          ');
    SQL.Add('       ,GroupIndex          ');
    SQL.Add('       ,RCount              ');
    SQL.Add(' from CCP_heat_chk          ');
    SQL.Add(' where h_date = :h_date     ');
    SQL.Add(' and itemID = :itemID       ');
    SQL.Add(' and GroupIndex = :FridgeNo ');
    SQL.Add(' and RCount = :RCount       ');
    SQL.Add(' and h_type = ''Wait''      ');
    Parambyname('h_date').AsString    := DateToStr(Date);
    Parambyname('itemID').AsString    := y.Values[y.FocusedRecordIndex, cxGridTv_List_ItemID.Index];
    Parambyname('FridgeNo').AsInteger := FridgeNo;
    Parambyname('RCount').AsString    := y.Values[y.FocusedRecordIndex, cxGridTv_List_RCount.Index];
    Open;
    h_date     := FieldByName('h_date').AsString;
    ItemID     := FieldByName('ItemID').AsString;
    GroupIndex := FieldByName('GroupIndex').AsInteger;
    InsertTime := FieldByName('InsertTime').AsDateTime;
    RCount     := FieldByName('RCount').AsInteger;

    Close;
    SQL.Clear;
    // 구이 공정 삭제
    SQL.add(' delete from CCP_heat_chk   ');
    SQL.Add(' where h_date = :h_date     ');
    SQL.Add(' and itemID = :itemID       ');
    SQL.Add(' and GroupIndex = :FridgeNo ');
    SQL.Add(' and RCount = :RCount       ');
    // 온도 삭제
    SQL.Add(' delete from TempCheck       ');
    SQL.Add(' where ItemID = :ItemID      ');
    SQL.Add(' and FridgeNo = :Line        ');
    SQL.Add(' and CheckDate <= getdate()  ');
    SQL.Add(' and CheckDate >= :StartDate ');
//    // 속도 삭제
//    SQL.Add(' delete from SpeedCheck                                                 ');
//    SQL.Add(' where ItemID = :ItemID                                                 ');
//    SQL.Add(' and Line = :Line                                                       ');
//    SQL.Add(' and CheckDate <= getdate()                                             ');
//    SQL.Add(' and CheckDate >= :StartDate                                            ');
    // CCPHeatItem 초기화
    SQL.add(' update CCPHeatItem                                                     ');
    SQL.add(' set    ItemID    = null                                                ');
    SQL.add('       ,Number    = null                                                ');
    SQL.add('       ,Start     = null                                                ');
    SQL.add('       ,HeatTime  = null                                                ');
//    SQL.add('       ,CCPHeatID = null                                                ');
    SQL.add('       ,Writer    = null                                                ');
    SQL.add(' where FridgeNo = :FridgeNo                                             ');
//    Parambyname('h_id').asString        := CCPHeatID;
    Parambyname('h_date').AsString      := h_date;
    Parambyname('FridgeNo').asInteger   := FridgeNo;
    ParamByName('ItemID').AsString      := ItemID;
    ParamByName('RCount').asInteger     := RCount;
    ParamByName('Line').AsInteger       := GroupIndex;
    ParamByName('StartDate').AsDateTime := InsertTime; //  StrToDateTime(y.Values[y.FocusedRecordIndex, cxGridTv_List_WorkTime.Index]);
    ExecSQL;

    Close;
    SQL.Clear;
    SQL.Add(' select count(*) as "Cnt" ');
    SQL.Add(' from ccp_heat_chk        ');
    SQL.Add(' where h_date = :h_date   ');
    ParamByName('h_date').AsString := h_date; //당일 지우지않고 그다음날 작업을 지울수도 있기때문에 now는 안됨
    open;

    Cnt := FieldByName('Cnt').AsInteger;

    if Cnt = 0 then
    begin
      SQL.Clear;
      SQL.Add(' delete from HaccpApproval    ');
      SQL.Add(' where WriteDate = :CheckDate ');
      SQL.Add(' and MenuName = ''구이''      ');
      ParamByName('CheckDate').AsDate := StrToDate(h_date); //위와 마찬가지
      ExecSQL;
    end;
  end;

  result := True;
end;

function THACCPHeatStartForm.FinishHeat(CCPHeatID: string;
  FridgeNo: integer): boolean;
var
  temp1, temp2, temp3, temp4, speed : String;
  i : integer;
  CCPHeatID2, Writer, Number, ItemID : String;
  StartTime, CheckDate : TDateTime;
begin
  result := false;
//  with datamoduleform.FDQuerySetting(nil) do
//  begin
//    CheckDate := now;
//    for I := 1 to 4 do
//    begin
//      // 실시간 온도 조회
//      sql.Add('     SELECT top(1) CheckDate, Temp                                               ');
//      sql.Add('       FROM TempCheck                                                            ');
//      sql.Add('      WHERE FridgeNo = :FridgeNo                                                 ');
//      sql.Add('            and CheckDate Between dateadd(Minute,-1,:CheckDate) and :CheckDate   ');
//      sql.Add('   ORDER BY Checkdate DESC                                                       ');
//      ParamByName('CheckDate').Value := formatdatetime('yyyy-MM-dd HH:nn:dd', now);
//      ParamByName('FridgeNo').Value := FridgeNo * 4 - ( 4 - i );
//      Open;
//
//      case I of
//       1 : temp1 := fieldbyname('temp').AsString;
//       2 : temp2 := fieldbyname('temp').AsString;
//       3 : temp3 := fieldbyname('temp').AsString;
//       4 : temp4 := fieldbyname('temp').AsString;
//      end;
//    end;
//
//    sql.Clear;
//    sql.Add('  SELECT top 1 speed from SpeedCheck          ');
//    sql.Add('  where Line = :Line Order BY CheckDate desc  ');
//    ParamByName('Line').Value := FridgeNo;
//    open;
//
//    speed := FieldByName('speed').AsString;
//
//    sql.clear;
////    sql.add(' UPDATE CCPHeatCheck2          ');
////    sql.add('    SET FinishTime = getdate() ');
////    sql.add('       ,FinishTemp1 = :Temp1   ');
////    sql.Add('       ,FinishTemp2 = :Temp2   ');
////    sql.Add('       ,FinishTemp3 = :Temp3   ');
////    sql.Add('       ,FinishTemp4 = :Temp4   ');
////    sql.Add('       ,FinishSpeed = :Speed   ');
////    sql.add('  WHERE CCPHeatID = :CCPHeatID ');
//
//    // CCPHeatCheck2에 종료시 온도 등록
//    sql.Add('  SELECT ''H''+format(MAX(cast(right(CCPHeatID,6) as int))+1,''D6'') as CCPHeatID FROM CCPHeatCheck2   ');
//    open;
//    CCPHeatID2 := FieldByName('CCPHeatID').AsString;
//
//    sql.clear;
//
//    sql.Add('  SELECT * FROM CCPHeatCheck2 WHERE CCPHeatID = :CCPHeatID');
//    ParamByName('CCPHeatID').AsString := CCPHeatID;
//    open;
//    Writer := FieldByName('Writer').AsString;
//    StartTime := FieldByName('StartTime').AsDateTime;
//    Number := FieldByName('Number').AsString;
//    ItemID := FieldByName('ItemID').AsString;
//
//    sql.Add('  INSERT INTO CCPHeatCheck2 (CCPHeatID,CheckDate,State,Number,Line,ItemID,                      ');
//    sql.Add('                             StartTime, HeatTime,Temp1,Temp2,Temp3,Temp4,Speed,Writer)          ');
//    sql.Add('                     VALUES (:CCPHeatID,:CheckDate,:State,:Number,:Line,:ItemID,                ');
//    sql.Add('                             :StartTime, :HeatTime,:Temp1,:Temp2,:Temp3,:Temp4,:Speed,:Writer)  ');
//    sql.add(' UPDATE CCPHeatItem            ');
//    sql.add('    SET Start     = NULL       ');
//    sql.add('       ,ItemID    = NULL       ');
//    sql.add('       ,HeatTime  = NULL       ');
//    sql.add('       ,CCPHeatID = NULL       ');
//    sql.add('       ,Number    = NULL       ');
//    sql.add('       ,Writer    = NULL       ');
//    sql.add('  WHERE FridgeNo = :FridgeNo   ');
//    ParamByName('CCPHeatID').value := CCPHeatID2;
//    ParamByName('CheckDate').Value := formatdatetime('yyyy-MM-dd', now);
//    ParamByName('FridgeNo').value  := FridgeNo;
//    ParamByName('Line').value      := FridgeNo;
//    ParamByName('Temp1').AsString  := Temp1;
//    ParamByName('Temp2').AsString  := Temp2;
//    ParamByName('Temp3').AsString  := Temp3;
//    ParamByName('Temp4').AsString  := Temp4;
//    ParamByName('Speed').AsString  := Speed;
//    ParamByName('State').value     := 'Finish';
//    ParamByName('StartTime').value := formatdatetime('yyyy-MM-dd HH:nn:ss', StartTime);
//    ParamByName('HeatTime').value  := formatdatetime('yyyy-MM-dd HH:nn:ss', now);
//    ParamByName('Writer').AsString := Writer;
//    ParamByName('Number').AsString := Number;
//    ParamByName('ItemID').AsString := ItemID;
//
//    Execute;
//  end;
  result := True;
end;

procedure THACCPHeatStartForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  HACCPHeatStartForm := nil;
end;

procedure THACCPHeatStartForm.FormCreate(Sender: TObject);
begin
  check := 10;
  Timer2Timer(self);
end;

procedure THACCPHeatStartForm.FormShow(Sender: TObject);
begin
  with datamoduleform.FDQuerySetting(Uniquery_Fridge) do
  begin
    close;
    sql.Clear;
    SQL.Add(' select a.GroupIndex as "Line"                        ');
    SQL.Add('       ,b.BCDName                                     ');
    SQL.Add(' from Fridge a                                        ');
    SQL.Add(' inner join BasicCodeDetail b on a.LineName = b.BCDID ');
    SQL.Add(' where a.FridgeCode like ''%CH%''                     ');
//    sql.Add('    with test as (                                                      ');
//    sql.Add('      select distinct a.GroupIndex as Line,b.BCDName,                   ');
//    sql.Add('             division = case when left(b.BCDName,1) = ''3'' then 0      ');
//    sql.Add('                             when left(b.BCDName,1) = ''4'' then 1 end  ');
//    sql.Add('        from Fridge a                                                   ');
//    sql.Add('  inner join BasicCodeDetail b  on a.LineName = b.BCDID                 ');
//    sql.Add('   where FridgeCode like ''CH%''  )                                     ');
//    sql.Add('    select * from test                                                  ');
//    sql.add('     where division = case when :division = 0 then 0 else 1 end         ');
//    sql.Add('   order by BCDName                                                     ');
    Open;
  end;
  SearchHeat;
  SearchTemp;
end;

procedure THACCPHeatStartForm.SearchHeat;
var
  i, AppendIndex : integer;
begin
  y := cxGridTv_List.DataController;
  // 250801 김동현 : 신규 프로시저 적용(구이등록 작업정보 조회)
  with datamoduleform.FDSpSetting(US_List,'usp_ccp_heat_chk', 'B') do
  begin
    Open;

    y.RecordCount := 0;
    y.BeginUpdate;
    for I := 0 to recordcount -1 do
    begin
      AppendIndex := y.AppendRecord;
//      y.Values[AppendIndex, cxGridTv_List_CCPHeatID.Index]    := Fieldbyname('CCPHeatID').AsString;
      if Fieldbyname('h_type').AsString = 'Finish' then
      begin
        y.Values[AppendIndex, cxGridTv_List_ItemID.Index]       := '';
        y.Values[AppendIndex, cxGridTv_List_FridgeNo.Index]     := '';
        y.Values[AppendIndex, cxGridTv_List_RCount.Index]       := '';
        y.Values[AppendIndex, cxGridTv_List_HeatTime.Index]     := '';
        y.Values[AppendIndex, cxGridTv_List_HeatTimetext.Index] := '';
        y.Values[AppendIndex, cxGridTv_List_LineName.Index]     := Fieldbyname('LineName').AsString;
        y.Values[AppendIndex, cxGridTv_List_ItemName.Index]     := '';
        y.Values[AppendIndex, cxGridTv_List_State.Index]        := '';
        y.Values[AppendIndex, cxGridTv_List_WorkTime.Index]     := '';
      end
      else begin
        y.Values[AppendIndex, cxGridTv_List_ItemID.Index]       := Fieldbyname('ItemID').AsString;
        y.Values[AppendIndex, cxGridTv_List_FridgeNo.Index]     := Fieldbyname('FridgeNo').AsString;
        y.Values[AppendIndex, cxGridTv_List_RCount.Index]       := Fieldbyname('RCount').AsString;
        y.Values[AppendIndex, cxGridTv_List_HeatTime.Index]     := Fieldbyname('HeatTime').AsString;
        y.Values[AppendIndex, cxGridTv_List_HeatTimetext.Index] := Fieldbyname('Start').AsString;
        y.Values[AppendIndex, cxGridTv_List_LineName.Index]     := Fieldbyname('LineName').AsString;
        y.Values[AppendIndex, cxGridTv_List_ItemName.Index]     := Fieldbyname('ItemName').AsString;
        y.Values[AppendIndex, cxGridTv_List_State.Index]        := Fieldbyname('h_type').AsString;

        if (VarToStr(y.Values[AppendIndex, cxGridTv_List_State.Index]) = 'Wait') or (VarToStr(y.Values[AppendIndex, cxGridTv_List_State.Index]) = '')then
        begin
          y.Values[AppendIndex, cxGridTv_List_WorkTime.Index]   := '';
        end
        else begin
          y.Values[AppendIndex, cxGridTv_List_WorkTime.Index]   := formatdatetime('HH:nn:ss',(Fieldbyname('NowTime').AsDateTime));
        end;
      end;

      next;
    end;
    y.EndUpdate;
  end;

  Timer2.Enabled := True;
end;

procedure THACCPHeatStartForm.SearchTemp;
var
  i, j : integer;
begin
  With DataModuleForm.FDQuerySetting(uq_temp) do
  begin
    SQL.Add(SQLInsert.Text);
    Open;
  end;
end;

procedure THACCPHeatStartForm.Timer1Timer(Sender: TObject);
var
  Index : integer;
  HeatTime : TTime;
begin
  for Index := 0 to cxGridTv_List.DataController.RecordCount -1 do
  begin
    if (VarToStr(y.Values[Index, cxGridTv_List_WorkTime.Index]) <> '') and (VarToStr(y.Values[Index, cxGridTv_List_ItemName.Index]) <> '') then
    begin
      HeatTime := StrToTime(formatdatetime('HH:nn:ss' ,Now)) - StrToTime(cxGridTv_List.DataController.Values[Index, cxGridTv_List_WorkTime.Index]);

      cxGridTv_List.DataController.Values[Index, cxGridTv_List_HeatTime.Index] := formatdatetime('HH:nn:ss', HeatTime);
    end;
  end;



  {
    y.BeginUpdate;
    for Index := 0 to US_List.RecordCount -1 do
    begin
      if vartostr(y.Values[Index, cxGridTv_List_HeatTime.Index]) <> '' then
      begin
        HeatTime := strtodatetime(vartostr(y.Values[Index, cxGridTv_List_HeatTime.Index]));

        y.Values[Index,cxGridTv_List_WorkTime.Index] := formatdatetime('HH:nn:ss',now-HeatTime);
      end;
    end;
    y.EndUpdate;
  end;
    }

  Dec(Check);
  cxGroupBox2.caption := '라인별 온도 현황 (10초마다 자동 조회됩니다)  - ' + Check.ToString;
  if Check = 0 then
  begin
    SearchHeat;
    SearchTemp;
    check := 10;
  end;
end;


procedure THACCPHeatStartForm.Timer2Timer(Sender: TObject);
  var loopcnt : integer;
      UniQuery_T : TUniQuery;
begin

  for loopcnt := 1 to 3 do
  begin
    if loopcnt = 1 then
    begin
       UniQuery_T := uq_T1;
    end
    else if loopcnt = 2 then
    begin
       UniQuery_T := uq_T2;
    end
    else if loopcnt = 3 then
    begin
       UniQuery_T := uq_T3;
    end;

//    if VarToStr(cxGridTv_List.DataController.Values[loopcnt-1, cxGridTv_List_ItemName.Index]) = '' then
//    begin
      with datamoduleform.FDQuerySetting(UniQuery_T) do
      begin
        close;
        SQL.Clear;

        SQL.Add(' select ISNULL(max(Rcount), 0) AS RCNT from ccp_heat_chk ');
        SQL.ADD(' where h_date = :h_date                                   ');
        SQL.ADD(' and GroupIndex = :GroupIndex                             ');
        ParamByName('h_date').AsString      := DateToStr(Now);
        ParamByName('GroupIndex').AsInteger := loopcnt;
        open;

        Rcount := FieldByName('RCNT').AsInteger;

        close;
        SQL.Clear;
        SQL.ADD(' select distinct T1 as temp, format(InsertTime, ''HH:mm'') as WTIME ');
        SQL.ADD(' from ccp_heat_chk                                          ');
        SQL.ADD(' where h_date = :h_date                                     ');
        SQL.ADD(' and GroupIndex = :GroupIndex                               ');
        SQL.ADD(' and Rcount = :Rcount                                       ');
  //      SQL.ADD(' and h_type <> ''Wait''                                     ');
        SQL.ADD(' order by format(InsertTime, ''HH:mm'')                     ');
        ParamByName('h_date').AsString      := DateToStr(Now);
        ParamByName('GroupIndex').AsInteger := loopcnt;
        ParamByName('Rcount').AsInteger := Rcount;
        open;
      end;
//    end;
  end;
end;

end.
