unit CCPListUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseChild, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, cxLabel,
  cxStyles, cxCustomData, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxGridChartView,
  cxGridDBChartView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Vcl.ExtCtrls,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxCheckBox, cxSplitter, MemDS, DBAccess, Uni,
  cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TCCPListForm = class(TBaseChildForm)
    DS_TC: TDataSource;
    Timer_check: TTimer;
    DS_List: TDataSource;
    DS_metal: TDataSource;
    cxGBox_Left: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGBox_input: TcxGroupBox;
    cxLbl2: TcxLabel;
    cxDEdit_EDate: TcxDateEdit;
    cxGrid_TempList: TcxGrid;
    cxGridDBTv_TempList: TcxGridDBTableView;
    cxGridLv_TempList: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxl_metal: TcxLabel;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridDBTv_List_datetime: TcxGridDBColumn;
    cxGridDBTv_List_name: TcxGridDBColumn;
    cxGridDBTv_List_result: TcxGridDBColumn;
    cxGridDBTv_List_Contents: TcxGridDBColumn;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_time: TcxGridColumn;
    cxGridTv_List_name: TcxGridColumn;
    cxGridTv_List_result: TcxGridColumn;
    cxGridTv_List_contents: TcxGridColumn;
    cxGridTv_List_no: TcxGridColumn;
    cxGridLv_List: TcxGridLevel;
    cxSplitter_Left: TcxSplitter;
    cxGridLv_Fridge: TcxGridLevel;
    cxGrid_Fridge: TcxGrid;
    cxGridTv_Fridge: TcxGridTableView;
    cxGridTv_Fridge_Name: TcxGridColumn;
    cxGridTv_Fridge_Yn: TcxGridColumn;
    cxGridTv_Fridge_ID: TcxGridColumn;
    cxGridTv_TempList: TcxGridTableView;
    cxBtn_apply: TcxButton;
    UniQuery_TC: TUniQuery;
    UniQuery_List: TUniQuery;
    UniQuery_metal: TUniQuery;
    UniQuery_comm: TUniQuery;
    cxBtnSearchMetal: TcxButton;
    cxbtn_auto: TcxButton;
    autoTimer: TTimer;
    cxDEdit_SDate: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLCBox_Gubun: TcxLookupComboBox;
    ds_gubun: TDataSource;
    uq_gubun: TUniQuery;
    cxGridDBTv_List_Reason: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_searchClick(Sender: TObject);
    procedure Timer_checkTimer(Sender: TObject);
    procedure cxBtn_applyClick(Sender: TObject);
    procedure cxbtn_autoClick(Sender: TObject);
    procedure autoTimerTimer(Sender: TObject);
  private
    { Private declarations }        
  public
    { Public declarations }
    procedure MetalCheckDataList(timer: string);
    procedure SetFridgeHeader;
    procedure WaterCheckDataList(timer: string);
  end;

var
  CCPListForm: TCCPListForm;

  loopcnt : Integer; 

  HeaderCnt : array[0..30] of Integer;    

implementation

uses MainUnit, DataModule;

{$R *.dfm}

procedure TCCPListForm.FormCreate(Sender: TObject);
begin
  inherited;
  // 설비구분
  With DataModuleForm.FDQuerySetting(uq_gubun) do
  begin
    SQL.Add(SQLInsert.Text);
    Open;
  end;
  cxLCBox_Gubun.ItemIndex := 0;

  cxGBoxForm.Visible := False;

  cxDEdit_SDate.Date := Date;
  cxDEdit_EDate.Date := Date;

//    cxDEdit_date.Text := '2024-01-11';

  cxSplitter_Left.CloseSplitter;

  cxBtn_searchClick(self);

//  SetFridgeHeader;

//  Timer_checkTimer(self);
end;

procedure TCCPListForm.cxbtn_autoClick(Sender: TObject);
begin
  inherited;
  if cxbtn_auto.Caption = '모니터링시작' then
  begin
    cxbtn_auto.Caption := '모니터링중';
    cxl_metal.Caption := DateToStr(Date)+'일 금속검출기 현황';
    autoTimer.Enabled := True;
  end
  else
  begin
    cxbtn_auto.Caption := '모니터링시작';
    cxl_metal.Caption := '금속검출기 현황';
    autoTimer.Enabled := False;
  end;
end;

procedure TCCPListForm.cxBtn_searchClick(Sender: TObject);
begin
  inherited;
  //온도 그리드 chart
//  with DataModuleForm.FDQuerySetting(UniQuery_TC) do
//  begin
//    sql.Add(' EXEC usp_CCPCheckTemp @OPTION = :option, @t_datetime = :t_datetime ');
//    ParamByName('option').AsString     := '1';
//    ParamByName('t_datetime').AsString := cxDEdit_date.Text;
//    open;
//  end;
  cxbtn_auto.Caption := '모니터링시작';
  autoTimer.Enabled := False;
  cxl_metal.Caption := cxDEdit_SDate.Text+' ~ '+cxDEdit_EDate.Text+'일 금속검출기 현황';
  //금속검출기 데이터
  MetalCheckDataList('OFF');
//  Timer_checkTimer(self);
end;

procedure TCCPListForm.Timer_checkTimer(Sender: TObject);
begin
  inherited;

  for loopcnt := 0 to Length(HeaderCnt) -1 do
  begin
    with DataModuleForm.FDQuerySetting(UniQuery_List) do
    begin
      connection := datamoduleform.FDConnection;
      sql.Add(' SELECT TOP 1 Temp FROM TempCheck ');
      sql.Add(' WHERE FridgeNo = :FridgeNo      ');
      sql.Add(' ORDER BY CheckDate DESC         ');
      ParamByName('FridgeNo').AsInteger := HeaderCnt[loopcnt];
      open;

      if HeaderCnt[loopcnt] > 0 then
      begin
        cxGridTv_TempList.DataController.Values[0, loopcnt] := UniQuery_List.FieldByName('Temp').AsString;
      end;
    end;
  end;
    
  {
  //온도계 추가하면 해당 온도계 번호만 추가해주면 됨
  with FDQuery_List do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT                               ');
    sql.Add('	(SELECT TOP 1 Temp FROM TempCheck   ');
    sql.Add('	WHERE FridgeNo = 1                  ');
    sql.Add('	ORDER BY CheckDate DESC) As Temp1   ');
    sql.Add('	,(SELECT TOP 1 Temp FROM TempCheck  ');
    sql.Add('	WHERE FridgeNo = 3                  ');
    sql.Add('	ORDER BY CheckDate DESC) As Temp2   ');
    open;
  end;
  }

//  MetalCheckDataList;
end;

procedure TCCPListForm.WaterCheckDataList(timer: String);
begin

end;

procedure TCCPListForm.MetalCheckDataList(timer: String);
begin
  // 250911 김동현 : 조회 속도 개선
  DataModuleForm.FDConnection.StartTransaction;
  try
    with UniQuery_metal do
    begin
      connection := datamoduleform.FDConnection;
      Close;
      SQL.Clear;
      SQL.Add(' select convert(CHAR(19), a.CheckDate, 20) as "CheckDate"                                                    ');
      SQL.Add('       ,a.MetalNo                                                                                            ');
      SQL.Add('       ,b.Name as "MetalName"                                                                                ');
      SQL.Add('       ,(case when (Note is null) or (Note = ''Goods'') then ''검출'' else ''시편'' end) as "MetalResult"    ');
      SQL.Add('       ,C.MetalBasicReason                                                                                   ');
      SQL.Add('       ,C.MetalActionContents                                                                                ');
      SQL.Add(' from MetalCheck a                                                                                           ');
      SQL.Add(' inner join Metal b on a.MetalNo = b.MetalNo                                                                 ');
      SQL.Add(' left join CCPMetalActionContents c on convert(CHAR(19), a.CheckDate, 20) = c.MetalDatetime                  ');
      if timer = 'ON' then
      begin
        SQL.Add('	where CONVERT(CHAR(10), a.CheckDate, 23) = CONVERT(CHAR(10), getdate(), 23)                               ');
        SQL.Add(' and a.MetalNo = case :MetalNo when 0 then a.MetalNo else :MetalNo end                                     ');
        SQL.Add(' order by a.CheckDate desc                                                                                 ');
      end
      else
      begin
        SQL.Add('	where CONVERT(CHAR(10), a.CheckDate, 23) between :SDate and :EDate                                        ');
        SQL.Add(' and a.MetalNo = case :MetalNo when 0 then a.MetalNo else :MetalNo end                                     ');
        SQL.Add(' order by a.CheckDate desc                                                                                 ');
        ParamByName('SDate').AsString    := cxDEdit_SDate.Text;
        ParamByName('EDate').AsString    := cxDEdit_EDate.Text;
      end;
      ParamByName('MetalNo').AsInteger := StrToIntDef(VarToStr(cxLCBox_Gubun.EditValue), 0);
      open;
    end;
  except
    on e: Exception do
    begin
      DataModuleForm.FDConnection.Rollback;
      ShowMessage(E.Message);
      Exit;
    end;
  end;
  DataModuleForm.FDConnection.Commit;


  //해당월에 금속제품기 제품 통과 정보
//  with DataModuleForm.FDQuerySetting(UniQuery_metal) do
//  begin
//  with UniQuery_metal do
//  begin
//    connection := datamoduleform.FDConnection;
//    Close;
//    SQL.Clear;
////    sql.Add(' exec usp_CCPMetalCheck @option = :option, @MetalDate = :MetalDate ');
////    ParamByName('option').AsString := '3';
//    sql.Add('	SELECT FORMAT(CheckDate, '''+'yyyy-MM-dd HH:mm:ss'+''') as CheckDate                                   ');
//    sql.Add('		,MetalNo                                                                                     ');
//    sql.Add('		,(SELECT Name FROM Metal WHERE MetalCheck.MetalNo = MetalNo) AS MetalName                    ');
//    sql.Add('		,(CASE WHEN (NOTE IS NULL) OR (NOTE = '''+'Goods'+''') THEN '''+'검출'+''' ELSE '''+'시편'+''' END) AS MetalResult   ');
//    sql.Add('		,ISNULL((SELECT MetalActionContents FROM CCPMetalActionContents                              ');
//    sql.Add('				WHERE FORMAT(CheckDate, '''+'yyyy-MM-dd HH:mm:ss'+''') = MetalDatetime), '''+''+''') AS ActionContents   ');
//    sql.Add('	FROM MetalCheck                                                                                ');
//    if timer = 'ON' then
//      sql.Add('	WHERE Convert(char(10), checkdate, 23) = :MetalDate                    ')
//    else
//      sql.Add('	WHERE substring(Convert(char(10), checkdate, 23),1,7) = LEFT(:MetalDate, 7)                    ');
//    sql.Add('	ORDER BY CheckDate DESC                                                                        ');
//    ParamByName('MetalDate').AsString := cxDEdit_date.Text;
//    open;
//  end;
end;

procedure TCCPListForm.SetFridgeHeader;
  var HCnt : Integer;
begin
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    connection := datamoduleform.FDConnection;
    sql.Add(' SELECT FridgeNo, Name, DisplayYn FROM Fridge ');
    open;

    FillChar(HeaderCnt, SizeOf(HeaderCnt), 0);
    cxGridTv_Fridge.DataController.BeginUpdate;
    HCnt := 0;
    cxGridTv_Fridge.DataController.RecordCount := 0;
    for loopcnt := 0 to UniQuery_comm.RecordCount -1 do
    begin
      cxGridTv_Fridge.DataController.AppendRecord;
      cxGridTv_Fridge.DataController.SetValue(loopcnt, cxGridTv_Fridge_Name.Index,  FieldByName('Name').Value);
      cxGridTv_Fridge.DataController.SetValue(loopcnt, cxGridTv_Fridge_Yn.Index,    FieldByName('DisplayYn').Value);
      cxGridTv_Fridge.DataController.SetValue(loopcnt, cxGridTv_Fridge_ID.Index,    FieldByName('FridgeNo').Value);
            
      if FieldByName('DisplayYn').Value = True then
      begin
        cxGridTv_TempList.CreateColumn;
        cxGridTv_TempList.Columns[HCnt].Caption := FieldByName('Name').AsString;
        cxGridTv_TempList.Columns[HCnt].HeaderAlignmentHorz := taCenter;

        cxGridTv_TempList.Columns[HCnt].PropertiesClass := TcxTextEditProperties;
        cxGridTv_TempList.Columns[HCnt].Properties.Alignment.Horz := taCenter;

        //cxGridTv_TempList.Columns[loopcnt].DataBinding.FieldName := 'Temp' + IntToStr(loopcnt+1);

        HeaderCnt[HCnt] := FieldByName('FridgeNo').AsInteger;
        Inc(HCnt);
      end;

      Next;
    end;
    cxGridTv_Fridge.DataController.EndUpdate;
  end;

  cxGridTv_TempList.DataController.RecordCount := 0;
  cxGridTv_TempList.DataController.RecordCount := 1;
end;

procedure TCCPListForm.autoTimerTimer(Sender: TObject);
begin
  inherited;
  //금속검출기 데이터
  MetalCheckDataList('ON');
end;

procedure TCCPListForm.cxBtn_applyClick(Sender: TObject);
begin
  inherited;

  for loopcnt := 0 to cxGridTv_Fridge.DataController.RecordCount -1 do
  begin
    with DataModuleForm.FDQuerySetting(Uniquery_comm) do
    begin
      connection := datamoduleform.FDConnection;
      sql.Add(' UPDATE Fridge SET ');
      sql.Add('  DisplayYn = :DisplayYn ');
      sql.Add(' WHERE FridgeNo = :FridgeNo ');
      ParamByName('FridgeNo').AsInteger := cxGridTv_Fridge.DataController.Values[loopcnt, cxGridTv_Fridge_ID.Index]; 
      ParamByName('DisplayYn').AsBoolean := cxGridTv_Fridge.DataController.Values[loopcnt, cxGridTv_Fridge_Yn.Index];
      ExecSQL;
    end;
  end;

  cxGridTv_TempList.ClearItems;

  SetFridgeHeader;   
  Timer_checkTimer(self);
end;

end.
