unit uNowMetal;                                                          // 다른곳은 200.200임
                       // 200.111 = 금오 1층 / 222.222 = 금오 2층 안쪽
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Win.ScktComp, Vcl.StdCtrls,
  Vcl.ExtCtrls, System.IOUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, ShellApi, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxTextEdit, cxLabel, System.IniFiles;

type
  TNowMetalForm = class(TForm)
    ClientSocket1: TClientSocket;
    MemoLog: TMemo;
    TimerConnecting: TTimer;
    TimerRead: TTimer;
    TimerEnd: TTimer;
    FDQueryTemp: TFDQuery;
    FDConnection: TFDConnection;
    Panel1: TPanel;
    Button1: TButton;
    TimerClose: TTimer;
    TimerReStart: TTimer;
    TimerStart: TTimer;
    TimerReadError: TTimer;
    FDQuerySumAdd: TFDQuery;
    TimerServerState: TTimer;
    FDQueryServerState: TFDQuery;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Edit_IP: TcxTextEdit;
    Edit_MetalNo: TcxTextEdit;
    Btn_Set: TButton;
    procedure ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
    procedure TimerConnectingTimer(Sender: TObject);
    procedure ClientSocket1Connecting(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure TimerReadTimer(Sender: TObject);
    procedure TimerEndTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function HexToInt(sHex:String):Integer;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerReStartTimer(Sender: TObject);
    procedure TimerStartTimer(Sender: TObject);
    procedure TimerReadErrorTimer(Sender: TObject);
    procedure setiniinfo;
    procedure getiniinfo;
    procedure Btn_SetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ConnectingFalg : Boolean;
    FRecive : String;
    DelayCount : Integer;
    ReStartCount : Integer;
    ZeroCheck : Boolean;
    ConnectFirst : Boolean;
  end;

var
  NowMetalForm: TNowMetalForm;
  ConnectingCount : integer;
  ExeNumber : Integer;
  MetalCount, NoneCount : Integer;
  FirstCheck : Boolean;

implementation

{$R *.dfm}

procedure TNowMetalForm.Btn_SetClick(Sender: TObject);
begin
  setiniinfo;
end;

procedure TNowMetalForm.Button1Click(Sender: TObject);
begin
  Button1.Enabled := False;
  ClientSocket1.Host := Edit_IP.Text;
  if not ConnectingFalg then
  begin
    if not ClientSocket1.Active then
    begin
      try
        ClientSocket1.Active := True;
      except

      end;
    end else
    begin
      TimerConnecting.Enabled := False;
    end;
  end;
  TimerConnecting.Enabled := True;
end;

procedure TNowMetalForm.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  MemoLog.Lines.Add('연결성공!');
  ConnectingFalg := False;
  TimerConnecting.Enabled := False;
  TimerRead.Enabled := True;
  ConnectFirst := True;
end;

procedure TNowMetalForm.ClientSocket1Connecting(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  ConnectingCount := ConnectingCount + 1;
  ConnectingFalg := True;
  MemoLog.Lines.Add('Connecting...');
  ConnectFirst := False;
end;

procedure TNowMetalForm.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  TimerConnecting.Enabled := True;
  TimerRead.Enabled := False;
  ConnectingFalg := False;
end;

procedure TNowMetalForm.ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
var
  FullExePath: string;
begin
  MemoLog.Lines.Add(FormatDateTime('yyyy-mm-dd hh:nn:ss', Now) + ' [Error] ' + ErrorCode.ToString);
  ClientSocket1.Active := False;
  ErrorCode := 0;
  ConnectingFalg := False;
  TimerConnecting.Enabled := True;
  if ConnectingCount > 10 then
  begin
    FullExePath := ParamStr(0);
    ShellExecute(0, 'open', PChar(FullExePath), nil, nil, SW_SHOWNORMAL);
    sleep(100);
    Application.Terminate;
  end;
end;

procedure TNowMetalForm.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
var
  receive_count, i : integer;
  ReceiveBuffer	: array[0..1000] of Char;
  TempS : String;
begin
  try
    FillChar(ReceiveBuffer,1000,#0);
    receive_count := Socket.ReceiveBuf(ReceiveBuffer,1000);
    for i := 0 to 20 do
    begin
      try
        TempS := IntToHex(integer(ReceiveBuffer[i]),4);
        FRecive := FRecive + Copy(TempS,3,2) + Copy(TempS,1,2);
      except
        break;
      end;
    end;
    TimerReadError.Enabled := False;
    TimerEnd.Enabled := True;
  Except

  end;
end;

procedure TNowMetalForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TNowMetalForm.FormShow(Sender: TObject);
begin
  ConnectingCount := 0;
  FRecive := '';
  DelayCount := 21;
  FirstCheck := True;
  getiniinfo;
end;

function TNowMetalForm.HexToInt(sHex: String): Integer;
var
  i:Integer;
  sWork:String;
begin
  Result := 0;
  sWork := UpperCase(sHex);
  for i := 1 to Length(sWork) do
  begin
    // 16진수의 문자열인가 체크
     if (Ord(sWork[i]) in [0..47, 58..64, 71..255]) then
      begin
          Result := -1;
          Break;
      end;
  end;
  // 16진수 문자열을 정수형으로 변환
  try
    if (Result = 0) then Result := StrToInt('$' + sHex);
  except
    Result := 0;
  end;
end;

procedure TNowMetalForm.setiniinfo;
var
  Ini: TIniFile;
  IniPath: string;
begin
  IniPath := ExtractFilePath(ParamStr(0));
  if not DirectoryExists(IniPath) then ForceDirectories(IniPath);
  IniPath := TPath.Combine(IniPath, 'metalconfig_'+Edit_MetalNo.Text+'.ini');
  Ini := TIniFile.Create(IniPath);
  try
    with Ini do
    begin
      WriteString('datacheck','IP',Edit_IP.Text);
      WriteString('datacheck','MetalNo',Edit_MetalNo.Text);
    end;
    Ini.UpdateFile;
  finally
    Ini.Free;
  end;
end;

procedure TNowMetalForm.getiniinfo;
var
  Ini: TIniFile;
  IniPath, MetalNo: string;
begin
  IniPath := ExtractFilePath(ParamStr(0));
  //금속검출기 한대당 ini, prg 1:1 매칭임, 3대의 금속검출기 사용시 프로그램 3개 사용 _1 ... _2 ... _3 <- 프로그램명칭수정
  MetalNo := copy(ChangeFileExt(ExtractFileName(ParamStr(0)), ''),11,1);
  MemoLog.Lines.Add('금속검출기: '+MetalNo);
  NowMetalForm.Caption := '나우금속검출기_'+MetalNo;
  IniPath := TPath.Combine(IniPath, 'metalconfig_'+MetalNo+'.ini');
  if TFile.Exists(IniPath) then
  begin
    Ini := TIniFile.Create(IniPath);
    try
      with Ini do
      begin
        Edit_IP.Text := ReadString('datacheck','IP','');
        Edit_MetalNo.Text := ReadString('datacheck','MetalNo','');
      end;
    finally
      Ini.Free;
    end;
  end;
end;

procedure TNowMetalForm.TimerConnectingTimer(Sender: TObject);
begin
  if not ConnectingFalg then
  begin
    if not ClientSocket1.Active then
    begin
      try
        ClientSocket1.Active := True;
      except on e:Exception do
        begin
          MemoLog.Lines.Add(e.Message);
        end;
      end;
    end else
    begin
      TimerConnecting.Enabled := False;
    end;
  end;
end;

procedure TNowMetalForm.TimerEndTimer(Sender: TObject);
var
  PlusIndex, MetalIndex, ProIndex : Integer;
  CurrentProCount, CurrentMetalCount : Integer;
  ItemNo, vMetalNo : Integer;
  hexcode : String;
  JudgementStr, ConveyrunStr : String;
  ShouldLog : Boolean;
begin
  PlusIndex := 0; //NMD500 = -4, NMD580 = 0, NAD4000 = 8
  MetalIndex := 29 + PlusIndex;
  ProIndex := 21 + PlusIndex;
  vMetalNo := strtoint(Edit_MetalNo.Text);
  TimerEnd.Enabled := False;
  ShouldLog := False;
  try
    ItemNo := HexToInt(Copy(FRecive,10,1));

    // 현재 패킷에서 들어온 생산수량과 검출수량 파싱
    CurrentProCount := HexToInt(Copy(FRecive, ProIndex, 8));
    CurrentMetalCount := HexToInt(Copy(FRecive, MetalIndex, 4));

    // 첫 신호 수신 시 기준값 설정 (이 때는 로그를 뿌리지 않거나 필요시 출력)
    if (MetalCount = 0) and (NoneCount = 0) then
    begin
      NoneCount := CurrentProCount;
      MetalCount := CurrentMetalCount;
      ShouldLog := True;
    end else
    begin
      hexcode := Copy(FRecive,0,99);
      // 1. 생산 수량이 증가했을 때 (정상 통과 이벤트)
      if NoneCount <> CurrentProCount then
      begin
        with FDQueryTemp do
        begin
          Close;
          SQL.Clear;
          SQL.Add('Insert Into MetalCheckNone(CheckDate, MetalNo, ItemNo, hexcode)');
          SQL.Add('Values(GetDate(), :MetalNo, (select Top(1) ItemID from MetalItem), :hexcode);');
          ParamByName('hexcode').AsString := hexcode;
          ParamByName('MetalNo').AsInteger := vMetalNo;
          JudgementStr := '미검출';
        end;
        NoneCount := CurrentProCount;
        ShouldLog := True; // 로그 출력 트리거
      end;
      // 2. 검출 수량이 증가했을 때 (금속 검출 이벤트)
      if MetalCount <> CurrentMetalCount then
      begin
        with FDQueryTemp do
        begin
          Close;
          SQL.Clear;
          SQL.Add('Insert Into MetalCheck(CheckDate, MetalNo, ItemNo, hexcode)');
          SQL.Add('Values(GetDate(), :MetalNo, (select Top(1) ItemID from MetalItem), :hexcode);');
          ParamByName('hexcode').AsString := hexcode;
          ParamByName('MetalNo').AsInteger := vMetalNo;
          JudgementStr := '검출';
        end;
        // 데이터 정합성을 위해 두 수량 모두 업데이트
        NoneCount := CurrentProCount;
        MetalCount := CurrentMetalCount;
        ShouldLog := True; // 로그 출력 트리거
      end;
    end;
    if ShouldLog then
    begin
      FDQueryTemp.ExecSQL;

      MemoLog.Lines.Add('Rx: '+ Copy(FRecive,0,99));
      MemoLog.Lines.Add(
        '['+FormatDateTime('yyyy-mm-dd hh:nn:ss',Now)+']'+
        '----['+Copy(FRecive,MetalIndex,4)+']검출:'+MetalCount.ToString+
        '----['+Copy(FRecive,ProIndex,8)+']생산:'+NoneCount.ToString+
        '----상태:' + JudgementStr
      );
      MemoLog.Lines.Add('----------------------------------------------------------------------------------------------------');
    end;
  except on e:Exception do
    begin
      MemoLog.Lines.Add(e.Message);
    end;
  end;
  FRecive := '';
end;

{*
procedure TNowMetalForm.TimerEndTimer(Sender: TObject);
var
  PlusIndex : Integer;
  MetalIndex, ProIndex : Integer;
  hexcode : String;
begin
  PlusIndex := 0; //NMD500 = -4, NMD580 = 0, NAD4000 = 8
  MetalIndex := 29 + PlusIndex;
  ProIndex := 21 + PlusIndex;

  TimerEnd.Enabled := False;

  try
    MemoLog.Lines.Add('['+FormatDateTime('yyyy-mm-dd hh:nn:ss',Now)+']'+ FRecive);
    MemoLog.Lines.Add(Copy(FRecive,ProIndex,8) + ' : ' +HexToInt(Copy(FRecive,ProIndex,8)).ToString);
//    MemoLog.Lines.Add(Copy(FRecive,ProIndex,4) + ' : ' +HexToInt(Copy(FRecive,ProIndex,4)).ToString);
    MemoLog.Lines.Add(Copy(FRecive,MetalIndex,4) + ' : ' +HexToInt(Copy(FRecive,MetalIndex,4)).ToString);

    if FirstCheck then
    begin
      NoneCount := HexToInt(Copy(FRecive,ProIndex,8));
//      NoneCount := HexToInt(Copy(FRecive,ProIndex,4));
      MetalCount := HexToInt(Copy(FRecive,MetalIndex,4));
      FirstCheck := False;
    end else
    begin
      hexcode := Copy(FRecive,0,99);
      if MetalCount <> HexToInt(Copy(FRecive,MetalIndex,4)) then
      begin
        FDQueryTemp.Close;
        FDQueryTemp.SQL.Clear;
        FDQueryTemp.SQL.Add('Insert Into MetalCheck(CheckDate, MetalNo, ItemNo, hexcode)');
        FDQueryTemp.SQL.Add('Values(GetDate(), 1, (select Top(1) ItemID from MetalItem), '''+hexcode+''' )');
        FDQueryTemp.ExecSQL;
        NoneCount := HexToInt(Copy(FRecive,ProIndex,8));
//        NoneCount := HexToInt(Copy(FRecive,ProIndex,4));
        MetalCount := HexToInt(Copy(FRecive,MetalIndex,4));
      end;
//      end else if NoneCount <> HexToInt(Copy(FRecive,ProIndex,8)) then
      if NoneCount <> HexToInt(Copy(FRecive,ProIndex,8)) then
      begin
        FDQueryTemp.Close;
        FDQueryTemp.SQL.Clear;
        FDQueryTemp.SQL.Add('Insert Into MetalCheckNone(CheckDate, MetalNo, ItemNo, hexcode)');
//        FDQueryTemp.SQL.Add('Values(GetDate(), 1)'); // 금오 안쪽3 // 1)');
        FDQueryTemp.SQL.Add('Values(GetDate(), 1, (select Top(1) ItemID from MetalItem), '''+hexcode+''' )');
        FDQueryTemp.ExecSQL;
        NoneCount := HexToInt(Copy(FRecive,ProIndex,8));
//        NoneCount := HexToInt(Copy(FRecive,ProIndex,4));
      end;
    end;
  except on e:Exception do
    begin
      MemoLog.Lines.Add(e.Message);
    end;
  end;

  FRecive := '';

  TimerRead.Enabled := True;
end;
*}

procedure TNowMetalForm.TimerReadErrorTimer(Sender: TObject);
begin
  TimerReStart.Enabled := True;
end;

procedure TNowMetalForm.TimerReadTimer(Sender: TObject);
begin
  with FDQueryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select onoff_flag from Metal where MetalNo = :MetalNo');
    ParamByName('MetalNo').AsInteger := strtoint(Edit_MetalNo.Text);
    Open;
    if FieldByName('onoff_flag').AsString = 'N' then
    begin
      MemoLog.Lines.Add('해당 금속검출기 통신이 OFF되어있습니다.'+#10#13+'통신프로그램제어에서 ON으로 수정 후 사용바랍니다.');
      Abort;
    end;
  end;

  try
    if ClientSocket1.Active then
    begin
      TimerRead.Enabled := False;
      ClientSocket1.Socket.SendText(AnsiChar(#$02)+AnsiChar(#$00)+AnsiChar(#$06)+AnsiChar(#$33)+AnsiChar(#$03));
      MemoLog.Lines.Add('데이터요청!');
//      TimerReadError.Enabled := True;
    end;
  except on e:Exception do
    begin
      MemoLog.Lines.Add(e.Message);
    end;
  end;
end;

procedure TNowMetalForm.TimerReStartTimer(Sender: TObject);
var
  exePath : String;
  sPath : String;
begin
  TimerReStart.Enabled := False;
end;

procedure TNowMetalForm.TimerStartTimer(Sender: TObject);
begin
  TimerStart.Enabled := False;
  Button1.Click;
end;

end.
