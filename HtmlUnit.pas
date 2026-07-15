unit HtmlUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvCustomControl, AdvWebBrowser,
  Data.DB, MemDS, DBAccess, Uni, UniProvider, SQLServerUniProvider, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  THtmlForm = class(TForm)
    AdvWebBrowser1: TAdvWebBrowser;
    UniQuery_ex: TUniQuery;
    Timer_ex: TTimer;
    cxGridLv_list: TcxGridLevel;
    cxGrid_list: TcxGrid;
    cxGridTv_list: TcxGridTableView;
    cxGridTv_listColumn1: TcxGridColumn;
    cxGridTv_listColumn2: TcxGridColumn;
    cxGridTv_listColumn3: TcxGridColumn;
    cxGridTv_listColumn4: TcxGridColumn;
    cxGridTv_listColumn5: TcxGridColumn;
    cxGridTv_listColumn6: TcxGridColumn;
    cxGridTv_listColumn7: TcxGridColumn;
    cxGridTv_listColumn8: TcxGridColumn;
    procedure FormShow(Sender: TObject);
    procedure Timer_exTimer(Sender: TObject);
  private
    { Private declarations }
    A: boolean;
  public
    { Public declarations }
  end;

var
  HtmlForm: THtmlForm;

implementation

{$R *.dfm}

uses DataModule;

procedure THtmlForm.FormShow(Sender: TObject);
begin
  AdvWebBrowser1.URL := 'C:\ProgramData\SHMS_BMFARM\sterilizer_monitor.html';  // html 로드
end;

procedure THtmlForm.Timer_exTimer(Sender: TObject); // 예제
var
  i, appendindex : integer;
  js: string;
begin
  // updateData 함수 파라미터:
  // updateData(
  //   MachineName,  // 살균기명
  //   temp,         // 현재 온도
  //   status,       // 현상태
  //   product,      // 제품명
  //   startTime,    // 시작시간
  //   elapsedTime,  // 경과시간
  //   centerTemp,   // 중심온도 (92)
  //   rangeTemp     // 편차 (5)

  cxGridTv_List.DataController.RecordCount := 0;
  cxGridTv_List.DataController.BeginUpdate;
  for I := 1 to 3 do    // 3행까지 순서대로 세팅
  begin
    with DataModuleForm.FDQuerySetting(UniQuery_ex) do
    begin
      CLOSE;
      SQL.Clear;
      SQL.Add(' EXEC usp_ccp_heat_chk @option = :option, @dt = :dt, @GroupIndex = :GroupIndex ');
      ParamByName('option').AsString := 'F';
      ParamByName('dt').AsString := DateToStr(Now);
      ParamByName('GroupIndex').AsInteger := i;
      open;

      appendindex := cxGridTv_List.DataController.AppendRecord;
      cxGridTv_List.DataController.SetValue(appendindex, cxGridTv_listColumn1.Index, FieldByName('MachineName').AsString);
      cxGridTv_List.DataController.SetValue(appendindex, cxGridTv_listColumn2.Index, FieldByName('temp').AsString);
      cxGridTv_List.DataController.SetValue(appendindex, cxGridTv_listColumn3.Index, FieldByName('status').AsString);
      cxGridTv_List.DataController.SetValue(appendindex, cxGridTv_listColumn4.Index, FieldByName('product').AsString);
      cxGridTv_List.DataController.SetValue(appendindex, cxGridTv_listColumn5.Index, FieldByName('startTime').AsString);
      cxGridTv_List.DataController.SetValue(appendindex, cxGridTv_listColumn6.Index, FieldByName('elapsedTime').AsString);
      cxGridTv_List.DataController.SetValue(appendindex, cxGridTv_listColumn7.Index, FieldByName('centerTemp').AsInteger);
      cxGridTv_List.DataController.SetValue(appendindex, cxGridTv_listColumn8.Index, FieldByName('rangeTemp').AsInteger);
    end;
  end;
  cxGridTv_List.DataController.EndUpdate;

  for I := 0 to cxGridTv_List.DataController.RecordCount -1 do
  begin
    js := Format('updateData("%s", "%s", "%s", "%s", "%s", "%s", %d, %d);',  // html로 넘겨줄 데이터
      [
        cxGridTv_List.DataController.Values[i, cxGridTv_listColumn1.Index],
        cxGridTv_List.DataController.Values[i, cxGridTv_listColumn2.Index],
        cxGridTv_List.DataController.Values[i, cxGridTv_listColumn3.Index],
        cxGridTv_List.DataController.Values[i, cxGridTv_listColumn4.Index],
        cxGridTv_List.DataController.Values[i, cxGridTv_listColumn5.Index],
        cxGridTv_List.DataController.Values[i, cxGridTv_listColumn6.Index],
        StrToInt(cxGridTv_List.DataController.Values[i, cxGridTv_listColumn7.Index]),
        StrToInt(cxGridTv_List.DataController.Values[i, cxGridTv_listColumn8.Index])

//        UniQuery_ex.FieldByName('MachineName').AsString,
//        StringReplace(varToStr(UniQuery_ex.FieldByName('Temp').AsFloat), ',', '.', []),  // 소수점은 문자로 변환
//        UniQuery_ex.FieldByName('Status').AsString,
//        UniQuery_ex.FieldByName('Product').AsString,
//        UniQuery_ex.FieldByName('StartTime').AsString,
//        UniQuery_ex.FieldByName('Elapsed').AsString,
//        UniQuery_ex.FieldByName('centerTemp').AsInteger,
//        UniQuery_ex.FieldByName('rangeTemp').AsInteger


      ]);
      AdvWebBrowser1.ExecuteJavascript(js);     // html로 넘김
    UniQuery_ex.Next;
  end;

end;

end.
