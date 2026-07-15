unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,WinRT,      WinAPI.WinRT.Utils,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxSplitter, cxGroupBox, Vcl.Menus,
  ShellAPI, Vcl.StdCtrls, cxButtons, Vcl.CategoryButtons, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, cxImageList, cxPC,
  dxGDIPlusClasses, cxImage, cxTextEdit, System.Win.TaskbarCore, Vcl.Taskbar,
  dxCore, dxCoreClasses, dxHashUtils,
  cxLabel,  System.UITypes, FireDAC.Stan.Param, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles,
  cxClasses, WinInet, cxCurrencyEdit, system.IniFiles, System.IOUtils, System.Hash,
  commctrl, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, frxSVGGraphic,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxBarBuiltInMenu, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxNavBarCollns, dxNavBarBase, dxNavBar,
  dxNavBarStyles, AdvPageControl, Vcl.WinXCtrls, AdvSmoothPanel,
  AdvSmoothExpanderPanel, AdvSmoothExpanderButtonPanel, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
  DBAccess, Uni, MemDS, AdvOfficeStatusBar, cxButtonEdit;

type
  TMainForm = class(TForm)
    cxGBox_Main: TcxGroupBox;
    cxGBox_Menu: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxImageList1: TcxImageList;
    PanelMainTop: TPanel;
    cxStyleRepository: TcxStyleRepository;
    cxStyle_Green: TcxStyle;
    cxStyle_Yellow: TcxStyle;
    cxStyle_SkyBlue: TcxStyle;
    cxStyle_SkyRed: TcxStyle;
    cxStyle_Blue: TcxStyle;
    cxStyle_Pink: TcxStyle;
    cxStyle_Red: TcxStyle;
    cxStyle_Main: TcxStyle;
    cxImage5: TcxImage;
    cxImage4: TcxImage;
    cxImage3: TcxImage;
    cxImage2: TcxImage;
    cxImage1: TcxImage;
    cxImage9: TcxImage;
    cxImageCOCOS: TcxImage;
    PopupTabClose: TPopupMenu;
    TabClose: TMenuItem;
    AllTabClose: TMenuItem;
    PopupMenuImage: TPopupMenu;
    dxNavBar1: TdxNavBar;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Group2: TdxNavBarGroup;
    dxNavBar1Group3: TdxNavBarGroup;
    dxNavBar1Group4: TdxNavBarGroup;
    dxNavBar1Group5: TdxNavBarGroup;
    dxNavBar1Group6: TdxNavBarGroup;
    dxNavBar1Group7: TdxNavBarGroup;
    dxNavBar1Group8: TdxNavBarGroup;
    dxNavBar1Group9: TdxNavBarGroup;
    dxNavBar1Group10: TdxNavBarGroup;
    dxNavBar1Group11: TdxNavBarGroup;
    dxNavBar1StyleItem1: TdxNavBarStyleItem;
    dxNavBar1StyleItem2: TdxNavBarStyleItem;
    dxNavBar1Group12: TdxNavBarGroup;
    dxNavBar1Group13: TdxNavBarGroup;
    FDQuery_HighMemu: TUniQuery;
    FDqVersion: TUniQuery;
    FDQuery_LowMenu: TUniQuery;
    FDQuery_Authority: TUniQuery;
    cxStyle1: TcxStyle;
    Query_comm: TUniQuery;
    Timer_InternetCheck: TTimer;
    cxIL_InternetCheck: TcxImageList;
    uq_Note: TUniQuery;
    uq_AlarmCheck: TUniQuery;
    DS_Note: TDataSource;
    p_Alarmmain: TPanel;
    Panel2: TPanel;
    cxBtn_Minimize: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTv_Alarm: TcxGridDBTableView;
    cxGridDBTv_AlarmColumn2: TcxGridDBColumn;
    cxGridDBTv_AlarmColumn5: TcxGridDBColumn;
    cxGridDBTv_AlarmColumn4: TcxGridDBColumn;
    cxGridDBTv_AlarmColumn1: TcxGridDBColumn;
    cxGridDBTv_AlarmColumn3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label_Division: TLabel;
    Label_Time: TLabel;
    Panel3: TPanel;
    Label_Note: TLabel;
    StatusBar: TAdvOfficeStatusBar;
    cxBtn_MetalAlarm: TcxButton;
    P_MetalAlarm: TPanel;
    cxEdit_Metal: TcxTextEdit;
    cxGBox_Flag: TcxGroupBox;
    cxGFlagDBTv_: TcxGridDBTableView;
    cxGFlagLv: TcxGridLevel;
    cxGFlag: TcxGrid;
    uq_Flag: TUniQuery;
    ds_Flag: TDataSource;
    cxGFlagDBTv_t_no: TcxGridDBColumn;
    cxGFlagDBTv_t_name: TcxGridDBColumn;
    cxGFlagDBTv_t_flag1: TcxGridDBColumn;
    uq: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    function isInternetConnected: Boolean; // 인터넷 체크
    procedure CategoryButtonClicked(Sender: TObject; const Button: TButtonItem);
    procedure FormShow(Sender: TObject);
    procedure cxImage1MouseEnter(Sender: TObject);
    procedure cxImage1MouseLeave(Sender: TObject);
    procedure CategoryCategoryCollapase(Sender: TObject;
      const Category: TButtonCategory);
    procedure AllTabCloseClick(Sender: TObject);
    procedure TabCloseClick(Sender: TObject);
    procedure cxPageControl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxImage1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxImage1Click(Sender: TObject);
    procedure cxImageMainClick(Sender: TObject);
    procedure dxNavBarClick(Sender: TObject);
    procedure dxNavBar1Expanded(Sender: TObject);
    procedure dxNavBar1Collapsed(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AdvSmoothExpanderButtonPanelButtonClick(Sender: TObject;
      ButtonIndex: Integer);
    procedure cxBtn_MinimizeClick(Sender: TObject);
    procedure StatusBarPanelClick(Sender: TObject; PanelIndex: Integer);
    procedure Timer_InternetCheckTimer(Sender: TObject);
    procedure cxGridDBTv_AlarmColumn2GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxBtn_MetalAlarmClick(Sender: TObject);
    procedure cxGFlagDBTv_t_flag1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    procedure RegisterFormClass;
    procedure GetVersionInfoFromIniFile;
    procedure TabMenuPopup(APageControl: TcxPageControl; X, Y: Integer);
    procedure MainMenuClick(Sender: TObject);
  public
    { Public declarations }
//    FConnectionPool  : TJdcConnectionPool;  // 커넥션 풀
    VersionInfo: String;
    testForm : TMainForm;

    procedure CreateCategory;
    function CategoryCheck(const FormName: string): TcxTabSheet;
    function OpenForm(FormName,FormCaption: String): Boolean;
    procedure SelectAuthority;
    function CheckAuthorityRead(FormName:String):Boolean;
  end;

Type
  TIndex = Record
    FormName: String;
    Read:Boolean;
    Input:Boolean;
    Alter:Boolean;
    Delete:Boolean;
  End;
var
  MainForm: TMainForm;
  Authority: Array of TIndex;
  Toggle: Integer = 0;
  MenuName:String = '';
  CheckDate, CheckDate2 : TDateTime;
  AlarmCheck : boolean;
  MetalAlarm : Integer;
  Division : String;
implementation

//각 폼 Visible False, FormCation 빈값 필요
//관리자 외 테스트 계정(권한 확인용) ID:testid, PW:qwe

uses DataModule
    ,BaseChild
    ,BasicCodeUnit            //기초코드관리
    ,CustomerUnit             //거래처관리
    ,CompanyInfoUnit          //기업정보관리
    ,MaterialUnit             //원부자재관리
    ,ProductUnit              //품목관리
    ,BomUnit                  //bom관리

    ,UserUnit                 //사용자관리
    ,AuthorityGroupUnit       //그룹권한관리
    ,UserPowerUnit            //사용자권한관리
    ,UserLoginUnit            //사용자 로그인현황
    ,U_MenuInfo               //메뉴관리

    ,SalesInOutUnit           //매출관리
    ,PBoxUnit                 //PBOX 관리
    ,SalesListUnit            //매출현황

    ,PurchaseInOutUnit        //매입관리
    ,MaterialCheckUnit        //원재료관리
    ,OriginalReportUnit       //증명서관리
    ,PurchaseInOutListUnit    //매입현황

    ,BankUnit                 //은행관리
    ,BankInOutUnit            //은행거래내역관리
    ,InOutListUnit            //매출매입현황

    ,HaccpBasic               //HACCP 기준관리
    ,HaccpStandardReportUnit  //HACCP 기준서관리
    ,HaccpMenuUnit            //HACCP 대장관리
    ,HaccpHandWritingUnit     //수기기록관리

//    ,CCPHeatCheckUnit         //CCP 가열(팽화)공정
//    ,CCPHeatCheckUnit2        //CCP 가열(팽화)공정
    ,CCPHeatUnit              //CCP 가열 공정
    ,CCPTempCheckUnit         //CCP 냉장.냉동
    ,CCPWaterActiviyUnit      //CCP 수분활성도검사
    ,CCPMetalCheckUnit        //CCP 금속검출
    ,CCPCheckListUnit         //CCP 검증점검표
    ,MetalTestUnit            //CCP 시편테스트
    ,HACCPHeatStartUnit       //CCP 가열 등록

    ,HaccpCCPBasicUnit        //CCP 기준설정

    ,HaccpGeneralUnit         //HACCP 관리대장

    ,CCPListUnit              //CCP 모니터링
    ,HaccpActionUnit          //CCP 기준 이탈 내역
    ,CCPRowDataUnit           //CCP Raw 데이터
    ,CCPHeatRunUnit           //CCP 구이기가동현황

    ,HtmlUnit                 //CCP 모니터링

    ;

{$R *.dfm}

{ TMainForm }

// 폼 이벤트 ===================================================================
procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
begin
  for i := 0 to MDIChildCount - 1 do
  begin
    MDIChildren[i].Close;
  end;

  // 접속기록(Log) 추가
  with DataModuleForm.FDSpSetting(nil,'usp_User','R') do
  begin
    ParamByName('@UserID').Value      := DataModule.LoginId;
    ParamByName('@AccessCheck').Value := False;
    ExecProc;
  end;

  Action := caFree;
  MainForm := nil;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  TSERVER, TDB, TUNAME, TPW : string;
  DefName : string;
  DriverName : string;
begin
  CheckDate := now;
  MainForm := TMainForm(sender);
  testForm := mainform;
  VersionInfo := '';
  // 프로그램 디렉토리 이름 상수값 체크
  if (ProgramFolderName <> '') then
  begin
    // 경로 디렉토리 존재 유무 체크
    if DirectoryExists(TPath.GetPublicPath + '\' + ProgramFolderName) then
    begin
      // 경로에 파일 존재 유무 체크
      if FileExists(TPath.GetPublicPath + '\' + ProgramFolderName + '\ClientEnv.ini') then
      begin
        // 버전정보 메인 하단에 표기
        GetVersionInfoFromIniFile;
      end;
    end;
  end;

//  // 폼 클래스 등록
  RegisterFormClass;

  // DEBUG / RELEASE 체크
  {$IFDEF DEBUG}
    // 관리자 계정으로 자동 로그인
    DataModule.LoginId       := 1;
    DataModule.LoginUserId   := 'admin';
    DataModule.LoginUserName := '관리자';
  {$ENDIF}
end;

procedure TMainForm.FormResize(Sender: TObject);
begin
  cxPageControl1.Align := alClient;
  cxPageControl1.Align := alleft;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  {$IFDEF DEBUG}
   // 메인폼 캡션(로그인유저명 표기)
  MainForm.Caption := MainForm.Caption + ' - [ SERVER : TEST ] ['+DataModule.LoginUserName+']';
  {$ELSE}
    //테스트 카테고리 삭제
   // 메인폼 캡션(로그인유저명 표기)
  MainForm.Caption := MainForm.Caption + ' - [ SERVER : LIVE ] ['+DataModule.LoginUserName+']';

  {$ENDIF}
  // 250529 김동현 : 통신설비 목록 조회
  With DataModuleForm.FDQuerySetting(uq_Flag) do
  begin
    SQL.Add(SQLInsert.Text);
    Open;
  end;
  Timer_InternetCheck.Enabled := AlarmCheck;
end;

procedure TMainForm.GetVersionInfoFromIniFile;
// 버전 정보 Ini파일에서 불러오기
var
  ClientEnvIniPath: string;
  ClientEnvFile: TIniFile;
begin
  ClientEnvIniPath :=
    TPath.GetPublicPath + '\' + ProgramFolderName + '\ClientEnv.ini';
  ClientEnvFile := TIniFile.Create(ClientEnvIniPath);
  try
    VersionInfo := ClientEnvFile.ReadString('VersionInfo', 'Version', '');
  finally
    ClientEnvFile.DisposeOf;
  end;

  StatusBar.Panels[0].Text := VersionInfo;
end;

function TMainForm.isInternetConnected: Boolean;
var
  dwFlags : DWORD;
begin
  Result := InternetGetConnectedState(@dwFlags, 0);
end;

// 메뉴 관련 기능 ==============================================================
procedure TMainForm.RegisterFormClass;
// 폼 클래스 등록
  var i : Integer;
      FClass : TPersistentClass;
//      FClass : TFormClass;
      FormName : string;
begin
  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  RegisterClass(TBaseChildForm);              // 테스트폼

  RegisterClass(TUserForm);                   // 시스템관리 - 유저관리
  RegisterClass(TUserPowerForm);              // 시스템관리 - 유저 권한 관리
  RegisterClass(TAuthorityGroupForm);         // 시스템관리 - 그룹 권한 관리
  RegisterClass(TUserLoginForm);              // 시스템관리 - 유저 로그인 관리
  RegisterClass(TFrmMenuInfo);                // 시스템관리 - 메뉴관리

  RegisterClass(TBasicCodeForm);              // 기준정보관리 - 기초코드관리
  RegisterClass(TCustomerForm);               // 기준정보관리 - 거래처 관리
  RegisterClass(TCompanyInfoForm);            // 기준정보관리 - 기업정보 관리
  RegisterClass(TMaterialForm);               // 기준정보관리 - 원부자재관리
  RegisterClass(TProductForm);                // 기준정보관리 - 품목관리
  RegisterClass(TBomForm);                    // 기준정보관리 - bom관리

  RegisterClass(TSalesInOutForm);             // 매출관리 - 매출관리
  RegisterClass(TPBoxForm);                   // 장부관리 - PBOX관리
  RegisterClass(TSalesListForm);              // 매출관리 - 매출현황

  RegisterClass(TPurchaseInOutForm);          // 매입관리 - 매입관리
  RegisterClass(TMaterialCheckForm);          // 매입관리 - 원재료입고관리
  RegisterClass(TOriginalReportForm);         // 매입관리 - 증명서 관리
  RegisterClass(TPurchaseInOutListForm);      // 매입관리 - 매입현황

  RegisterClass(TBankForm);                   // 장부관리 - 은행관리
  RegisterClass(TBankInOutForm);              // 장부관리 - 은행관리
  RegisterClass(TInOutListForm);              // 장부관리 - 매출/매입현황

  RegisterClass(THaccpBasicForm);             // HACCP관리 - HACCP기준관리
  RegisterClass(THaccpStandardReportForm);    // HACCP관리 - HACC기준서관리
  RegisterClass(THaccpMenuForm);              // HACCP관리 - HACC대장관리
  RegisterClass(THaccpHandWritingForm);       // HACCP관리 - 수기기록관리

//  RegisterClass(TCCPHeatCheckForm);           // CCP관리 - 가열(팽화)공정
//  RegisterClass(TCCPHeatCheckForm2);          // CCP관리 - 가열(팽화)공정
  RegisterClass(TCCPHeatForm);                // CCP관리 - 가열 공정
  RegisterClass(TCCPTempCheckForm);           // CCP관리 - 냉장.냉동관리
  RegisterClass(TCCPWaterActiviyForm);        // CCP관리 - 수분측정
  RegisterClass(TCCPMetalCheckForm);          // CCP관리 - 금속검출
  RegisterClass(TCCPCheckListForm);           // CCP관리 - 검증점검표
  RegisterClass(TMetalTestForm);              // CCP관리 - 시편테스트

  RegisterClass(THaccpCCPBasicForm);          // CCP관리 - CCP 기준 관리

  RegisterClass(THaccpGeneralForm);           // HACCP선행요건관리 - 대장관리

  RegisterClass(TCCPListForm);                // CCP관리 - 모니터링
  RegisterClass(THaccpActionForm);            // CCP관리 - 기준이탈내역
  RegisterClass(TCCPRowDataForm);             // CCP관리 - RAW DATA 모니터링
  RegisterClass(TCCPHeatRunForm);             // CCP관리 - 구이기가동현황
end;

procedure TMainForm.CreateCategory;
// 메뉴 목록 조회 & 메뉴 생성
var
  Index, MenuIndex,i,j: Integer;
  JNAME : STRING;
begin
  SetLength(Authority, LOW(Authority));

  dxNavBar1.BeginUpdate;
  dxNavBar1.Items.Clear;
  // 메인 메뉴 목록 조회(중)
  with DataModuleForm.FDQuerySetting(FDQuery_HighMemu) do
  begin
    close;
    SQL.Clear;
    SQL.Text := ' SELECT MENUNAME FROM MENUINFO '
              + ' WHERE MENULV1 = ''' + (MenuName) + ''' '
              + ' AND   MENUTYPE = ''2'' '
              + ' AND   USEYN = ''Y'' '
              + ' ORDER BY DISINDEX ';
    open;

    First;

    for MenuIndex := 1 to 12  do
    begin
      dxNavBar1.Groups[MenuIndex].Visible := false;
    end;

    for MenuIndex := 0 to FDQuery_HighMemu.RecordCount - 1 do
    begin
      // 카테고리 생성
      dxNavBar1.Groups[MenuIndex+1].Caption := FDQuery_HighMemu.FieldByName('MENUNAME').AsString;
      dxNavBar1.Groups[MenuIndex+1].Visible := true;
      FDQuery_HighMemu.Next;
    end;
  end;

  //하위 메뉴 조회
  with DataModuleForm.FDQuerySetting(FDQuery_LowMenu) do
  begin
    close;
    sql.Clear;
    sql.Text := ' SELECT MENULV2, MENUNAME, FORMNAME, MENUID FROM MENUINFO '
              + ' WHERE MENULV1 = ''' + (MenuName) + ''' '
              + ' AND   MENUTYPE = ''M'' '
              + ' AND   USEYN = ''Y'' '
              + ' ORDER BY DISINDEX ' ;
    open;

    if FDQuery_LowMenu.RecordCount > 0 then
    begin
      FDQuery_LowMenu.First;
      j := 1;
      for MenuIndex := 0 to FDQuery_LowMenu.RecordCount - 1 do
      begin
        SetLength(Authority, High(Authority) + 2);
        // 처음이면 변수에 메뉴id 넣기
        if MenuIndex = 0 then
        begin
          JNAME := FDQuery_LowMenu.FieldByName('MENULV2').AsString;
        end;
        // 변수랑 조회한 메뉴 id 다르면
        if JNAME <> FDQuery_LowMenu.FieldByName('MENULV2').AsString then
        begin
        // 조회한 메뉴 id 넣기
           JNAME := FDQuery_LowMenu.FieldByName('MENULV2').AsString;
        // 카테고리 다음으로 넘어감
           j := j + 1;
        end;
        // 하위메뉴 생성
        with dxNavBar1 do
        begin
          Items.add;
          Items[Items.count - 1].OnClick :=  dxNavBarClick;
          // 폰트 설정
          Items[Items.count - 1].CustomStyles.Item := dxNavBar1StyleItem2;
          Items[Items.count - 1].CustomStyles.ItemDisabled := dxNavBar1StyleItem2;
          Items[Items.count - 1].CustomStyles.ItemHotTracked := dxNavBar1StyleItem2;
          Items[Items.count - 1].CustomStyles.ItemPressed := dxNavBar1StyleItem2;
          Items[Items.count - 1].Caption    := FDQuery_LowMenu.FieldByName('MENUNAME').AsString;
          Items[Items.count - 1].Hint       := FDQuery_LowMenu.FieldByName('FORMNAME').AsString;
          // 이미지 보이게
          Items[Items.count - 1].LargeImageIndex :=0;
          Items[Items.count - 1].SmallImageIndex :=0;
          // 카테고리에 하위메뉴 연결
          Groups[j].CreateLink(Items[Items.count - 1]);

          Authority[High(Authority)].FormName := FDQuery_LowMenu.FieldByName('FORMNAME').AsString;
          Authority[High(Authority)].Read     := False;
          Authority[High(Authority)].Input    := False;
          Authority[High(Authority)].Alter    := False;
          Authority[High(Authority)].Delete   := False;

          FDQuery_LowMenu.Next;
        end;
      end;
    end;
  end;

  dxNavBar1.EndUpdate;
  //권한 조회
  SelectAuthority;
end;

procedure TMainForm.SelectAuthority;
//권한 조회
var
  loopcnt, index:Integer;
begin
  with DataModuleForm.FDQuerySetting(FDQuery_Authority) do
  begin
    //그룹 권한 여부 체크
    if DataModule.GroupAuthority then
    begin
      SQL.Add(' EXEC usp_User @Option = :Option, @GroupID = :GroupID ');
      ParamByName('Option').AsString    := 'J';
      ParamByName('GroupID').AsInteger  := DataModule.GroupID;
      Open;
    end
    else
    begin
      SQL.Add(' EXEC usp_User @Option = :Option, @UserID = :UserID ');
      ParamByName('Option').AsString    := 'G';
      ParamByName('UserID').AsInteger   := DataModule.LoginId;
      Open;
    end;
    First;

    for loopcnt := Low(Authority) to High(Authority) do
    begin
      First;
      for index := 0 to RecordCount - 1 do
      begin
        if Authority[loopcnt].FormName = FieldByName('FormName').AsString then
        begin
          Authority[loopcnt].Read     := FieldByName('HasRead').AsBoolean;
          Authority[loopcnt].Input    := FieldByName('HasInput').AsBoolean;
          Authority[loopcnt].Alter    := FieldByName('HasAlter').AsBoolean;
          Authority[loopcnt].Delete   := FieldByName('HasDelete').AsBoolean;
        end;
        Next;
      end;
    end;
  end;
end;

procedure TMainForm.StatusBarPanelClick(Sender: TObject; PanelIndex: Integer);
var
  Dialog: TForm;
begin
  if PanelIndex = 3 then
  begin
    cxGBox_Flag.Visible := Not cxGBox_Flag.Visible;
    cxGBox_Flag.Left := StatusBar.Panels[0].Width + StatusBar.Panels[1].Width + StatusBar.Panels[2].Width;
    cxGBox_Flag.Top  := ClientHeight - (StatusBar.Height + cxGBox_Flag.Height);
  end
  else if PanelIndex = 4 then
  begin
    if isInternetConnected = True then
    begin
      ShowMessage('인터넷 정상');
    end
    else if isInternetConnected = False then
    begin
      ShowMessage('인터넷 연결이 끊겼습니다.');
    end;
  end
  else if PanelIndex = 6 then
  begin
    if p_Alarmmain.Visible then
    begin
      p_Alarmmain.Visible := false;
    end
    else
    begin
      p_Alarmmain.Visible := True;
    end;
  end;
end;

function TMainForm.OpenForm(FormName,FormCaption: String): Boolean;
//Open Form
var
  ATabSheet: TcxTabSheet;
  index:Integer;
  MenuIndex:Integer;
  AForm: TForm;
  FClass: TFormClass;
  FormFound: Boolean;
begin
  Result := False;
  try
    if CategoryCheck(FormName) = nil then
    begin
      //읽기 권한 확인
      if CheckAuthorityRead(FormName) then
      begin
        // 시편테스트
        if (FormName = 'MetalTestForm') then
        begin
          FormFound := False;
          for var i := 0 to Screen.FormCount - 1 do
          begin
            if Screen.Forms[i] is TMetalTestForm then
            begin
              FormFound := True;
              Screen.Forms[i].BringToFront;
              Break;
            end;
          end;

          if not FormFound then
          begin
            Application.CreateForm(TMetalTestForm, MetalTestForm);
            MetalTestForm.Caption := '시편테스트';
            MetalTestForm.BorderStyle := bsSizeable;
            MetalTestForm.MetalNo := 0;
            MetalTestForm.Show;
          end;
          Exit;
        end;

        // 가열등록
        if (FormName = 'HACCPHeatStartForm') then
        begin
          FormFound := False;
          for var i := 0 to Screen.FormCount - 1 do
          begin
            if Screen.Forms[i] is THACCPHeatStartForm then
            begin
              FormFound := True;
              Screen.Forms[i].BringToFront;
              Break;
            end;
          end;
          if not FormFound then
          begin
            Application.CreateForm(THACCPHeatStartForm, HACCPHeatStartForm);
            HACCPHeatStartForm.Caption := '구이 등록';
            HACCPHeatStartForm.BorderStyle := bsSizeable;
            HACCPHeatStartForm.Show;
          end;
          Exit;
        end;

        // ccp모니터링
        if (FormName = 'HMoniteringForm') then
        begin
          FormFound := False;
          for var i := 0 to Screen.FormCount - 1 do
          begin
            if Screen.Forms[i] is THtmlForm then
            begin
              FormFound := True;
              Screen.Forms[i].BringToFront;
              Break;
            end;
          end;
          if not FormFound then
          begin
            Application.CreateForm(THtmlForm, HtmlForm);
            HtmlForm.Caption := '';
            HtmlForm.BorderStyle := bsSizeable;
            HtmlForm.Show;
          end;
          Exit;
        end;


        //탭 추가
        ATabSheet := TcxTabSheet.Create(cxPageControl1);
        ATabSheet.Parent := cxPageControl1;

        //폼 열기
        AForm  := Application.FindComponent(FormName) AS TForm;
        FClass := TFormClass(FindClass('T' + FormName));
        AForm  := FClass.Create(MainForm);
        with AForm do
        begin
          AForm.FormStyle           := fsMDIForm;
          AForm.Visible             := False;
          AForm.BorderStyle         := bsNone;
          AForm.Parent              := AtabSheet;
          AForm.Align               := alClient;
          AForm.Caption             := FormCaption;
          AForm.AutoScroll          := False;
          AForm.HorzScrollBar.Range := 0;
          AForm.VertScrollBar.Range := 0;
          ATabSheet.Caption         := FormCaption;
          ATabSheet.Hint            := FormName;
//          OnShow := nil;
//          FormStyle := fsMDIForm;
//          Visible := False;
//          Parent := AtabSheet;
//          Align := alClient;
//          BorderStyle := bsNone;
//          Caption := FormCaption;
//          AutoScroll := False;
//          HorzScrollBar.Range := 0;
//          VertScrollBar.Range := 0;
//          Visible := True;
        end;

//        ATabSheet.Caption := FormCaption;
//        ATabSheet.Hint    := FormName;

        //권한 설정
        for MenuIndex := Low(Authority) to High(Authority) do
        begin
          if Authority[MenuIndex].FormName = FormName then
          begin
            (AForm AS TBaseChildForm).canRead   := Authority[MenuIndex].Read;
            (AForm AS TBaseChildForm).canInput  := Authority[MenuIndex].Input;
            (AForm AS TBaseChildForm).canAlter  := Authority[MenuIndex].Alter;
            (AForm AS TBaseChildForm).canDelete := Authority[MenuIndex].Delete;

            if Not (AForm AS TBaseChildForm).canInput then
              (AForm AS TBaseChildForm).cxBtn_New.Enabled := False;

            if (Not ((AForm AS TBaseChildForm).canAlter)
                  AND (Not (AForm AS TBaseChildForm).canInput)) then
              (AForm AS TBaseChildForm).cxBtn_Save.Enabled := False;

            if Not (AForm AS TBaseChildForm).canDelete then
              (AForm AS TBaseChildForm).cxBtn_Delete.Enabled := False;

            Break;
          end;
        end;

        //새로운 탭 열기
        AForm.Show;
        //새로운 탭 열기
//        if not AForm.Visible then
//        begin
//          AForm.Show;
//        end;        //
        cxPageControl1.ActivePageIndex := cxPageControl1.PageCount - 1;
      end;
    end
    else
    begin
      //이미 열린 메뉴일 경우 해당 탭 활성화
      MainForm.cxPageControl1.ActivePage := MainForm.CategoryCheck(FormName);
    end;
    Result := true;
  except
      on E: Exception  do
    begin
      ShowMessage('준비중입니다.');
      cxPageControl1.CloseTab(cxPageControl1.Pages[cxPageControl1.PageCount -1 ].PageIndex);
    end;
  end;
end;

function TMainForm.CategoryCheck(const FormName: string): TcxTabSheet;
//메뉴 활성화 체크
var
  index:Integer;
begin
  Result:= nil;

  for Index := 0 to cxPageControl1.PageCount - 1 do // 화면에 만들어진 탭 개수만큼
  begin
    if 0 <> CompareText(cxPageControl1.Pages[index].hint, FormName) then
    begin
      Continue;
    end else
    begin
      // 파라미터로 받아온 이름의 탭이 만들어져 있다면
      Result := cxPageControl1.Pages[index]; //그 탭 반환
      Exit;
    end;
  end;
end;

function TMainForm.CheckAuthorityRead(FormName:String): Boolean;
//읽기 권한 확인
var
  MenuIndex:Integer;
begin
  Result := False;

  for MenuIndex := Low(Authority) to High(Authority) do
  begin
    if (Authority[MenuIndex].FormName = FormName)
        AND (Authority[MenuIndex].Read = False) then
    begin
      if MessageDlg(MessageToCantRead, mtError, [mbOk], 0) = mrOk then
      begin
        Result := False;
        Exit;
      end;
    end
    else
    begin
      Result := True;
    end;
  end;
end;

procedure TMainForm.cxBtn_MetalAlarmClick(Sender: TObject);
begin
  P_MetalAlarm.Visible := false;
end;

procedure TMainForm.cxBtn_MinimizeClick(Sender: TObject);
begin
  p_Alarmmain.Visible := False;
end;

procedure TMainForm.cxButton1Click(Sender: TObject);
//상단 메뉴 버튼
begin
  if dxNavBar1Group1.Caption <> (Sender As TcxButton).Caption then
  begin
    dxNavBar1Group1.Caption := (Sender As TcxButton).Caption;
    CreateCategory;
  end;
end;

procedure TMainForm.cxGFlagDBTv_t_flag1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  // 설비 내 미니PC 시스템 재시작
  if MessageDlg(uq_Flag.FieldByName('t_name').AsString + '설비의 컴퓨터를 재시작하시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrNo then Exit;

  With DataModuleForm.FDQuerySetting(uq) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('t_no').AsInteger := uq_Flag.FieldByName('t_no').AsInteger;
    ExecSQL;
  end;
end;

procedure TMainForm.cxGridDBTv_AlarmColumn2GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  Atext := IntToStr(ARecord.Index + 1);
end;

procedure TMainForm.CategoryCategoryCollapase(Sender: TObject;
  const Category: TButtonCategory);
//카테고리 클릭시 Collapase
begin
  Category.Collapsed := false;
end;

procedure TMainForm.CategoryButtonClicked(Sender: TObject;
  const Button: TButtonItem);
//메뉴 버튼 클릭 이벤트
var
  FormName, Caption:String;
begin
  Caption  := Button.Caption;
  FormName := Button.Hint;

  if FormName <> '' then MainForm.OpenForm(FormName, Caption);
end;

procedure TMainForm.cxImage1Click(Sender: TObject);
// 메뉴이미지 클릭
begin
  //이미 열린 메뉴일 경우 조회하지 않음
  if dxNavBar1Group1.Caption <> (Sender As TcxImage).Hint then
  begin
    dxNavBar1Group1.Caption := (Sender As TcxImage).Hint;
    MenuName                := (Sender As TcxImage).Hint;
    CreateCategory;
  end;
end;

procedure TMainForm.cxImage1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

begin

end;

// 우클릭시 메뉴나오는 이벤트
procedure TMainForm.MainMenuClick(Sender: TObject);
begin
  if (Sender AS TMenuItem).Hint <> '' then
    MainForm.OpenForm((Sender AS TMenuItem).hint, (Sender AS TMenuItem).Caption);
end;

// 마우스가 이미지에 가져다대면 테두리보이게
procedure TMainForm.cxImage1MouseEnter(Sender: TObject);
begin
  (Sender As TcxImage).Style.BorderStyle := ebsUltraFlat;
end;

// 마우스가 이미지에서 떨어지면 원상태
procedure TMainForm.cxImage1MouseLeave(Sender: TObject);
begin
  (Sender As TcxImage).Style.BorderStyle := ebsNone;
end;

procedure TMainForm.cxImageMainClick(Sender: TObject);
begin

end;

// 현재탭 제외 전체닫기
procedure TMainForm.TabCloseClick(Sender: TObject);
var
  CheckPageIndex, loopcnt: Integer;
begin
  if cxPageControl1.PageCount > 0 then
  begin

    CheckPageIndex := MainForm.cxPageControl1.ActivePageIndex;

    for loopcnt := cxPageControl1.PageCount - 1 downto 0 do
    begin
      if loopcnt <> CheckPageIndex then
        cxPageControl1.CloseTab(cxPageControl1.Pages[loopcnt].PageIndex);
    end;
//  cxPageControl1.CloseTab(MainForm.cxPageControl1.ActivePageIndex);
  end;
end;

// 탭전체닫기
procedure TMainForm.AdvSmoothExpanderButtonPanelButtonClick(Sender: TObject;
  ButtonIndex: Integer);
begin
  if dxNavBar1Group1.Caption <> (Sender As TAdvSmoothExpanderButtonPanel).Buttons.Items[ButtonIndex].StatusCaption then
  begin
    dxNavBar1Group1.Caption := (Sender As TAdvSmoothExpanderButtonPanel).Buttons.Items[ButtonIndex].StatusCaption;
    MenuName                := (Sender As TAdvSmoothExpanderButtonPanel).Buttons.Items[ButtonIndex].StatusCaption;
    CreateCategory;
  end;
end;

procedure TMainForm.AllTabCloseClick(Sender: TObject);
var
  loopcnt: Integer;
begin
  if cxPageControl1.PageCount < 1 then Exit;

  if MessageDlg('전체 탭을 닫으시겠습니까?'
      , mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    for loopcnt := cxPageControl1.PageCount - 1 downto 0 do
    begin
      cxPageControl1.CloseTab(cxPageControl1.Pages[loopcnt].PageIndex);
    end;
  end;
end;

// 탭라인에서 우클릭시 전체 닫기 메뉴나오게
procedure TMainForm.TabMenuPopup(APageControl: TcxPageControl; X, Y: Integer);
var
  hi: TTCHitTestInfo;
  TabIndex: Integer;
  p: TPoint;
begin
  hi.pt.x := X;
  hi.pt.y := Y;
  hi.flags := 0;
  TabIndex := APageControl.Perform(TCM_HITTEST, 0, longint(@hi));
  p.x := APageControl.Left + x;
  p.y := APageControl.Top + 80;
  p := ClientToScreen(p);

  PopupTabClose.Popup(P.x, P.Y);
end;

procedure TMainForm.Timer_InternetCheckTimer(Sender: TObject);
var
  cnt, itemindex: integer;
begin
  with StatusBar do
  begin
    if isInternetConnected then
    begin
      Panels[4].ImageIndex := 0;

      {
      with datamoduleform.FDQuerySetting(nil) do
      begin
        sql.add(' select * from MetalState ');
        sql.add(' where MetalNo = :MetalNo ');
        parambyname('MetalNo').AsInteger := MetalAlarm;
        open;
        if FieldByName('State').AsInteger = 2 then
        begin
          cxEdit_Metal.text := '[' +vartostr(Fieldbyname('CheckDate').value) + ']'+ ' 통신프로그램 연결이 끊겼습니다.';
          P_MetalAlarm.Visible := True;
        end;
      end; }

      with uq_AlarmCheck do
      begin
        connection := DataModuleForm.FDConnection;
        Close;
        Open;
        cnt := recordcount;
        if cnt > 0 then
        begin
          Label_Division.Caption := vartostr(FieldByName('Division').Value);

          Label_Time.Caption := vartostr(FieldByName('CheckDate').Value);
          Label_Note.Caption := vartostr(FieldByName('Note').Value);
        end;
      end;
      if cnt > 0 then
      begin
        with uq_Note do
        begin
          connection := DataModuleForm.FDConnection;
          close;
          ParamByName('checkdate').value := CheckDate;
          Open;
        end;
        p_Alarmmain.Visible := True;
      end;

    end
    else if isInternetConnected = False then
    begin
      Panels[4].ImageIndex := 1;
      p_Alarmmain.Visible := False;
    end;
  end;
end;

// 탭라인에서 우클릭시 전체 닫기 메뉴나오게
procedure TMainForm.cxPageControl1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cxPageControl1.PageCount > 0 then
  begin
    if Button = mbRight then
    begin
      TabMenuPopup(MainForm.cxPageControl1, X, Y);
    end;
  end;
end;

procedure TMainForm.dxNavBar1Collapsed(Sender: TObject);
begin
  cxPageControl1.Align := alleft;
  cxPageControl1.Align := alClient;
  cxPageControl1.Align := alleft;
end;

procedure TMainForm.dxNavBar1Expanded(Sender: TObject);
begin
  cxPageControl1.Align := alleft;
  cxPageControl1.Align := alClient;
  cxPageControl1.Align := alleft;
end;

procedure TMainForm.dxNavBarClick(Sender: TObject);
//메뉴 버튼 클릭 이벤트
var
  FormName, Caption:String;
begin
  Caption  := TdxNavBarItem(Sender).Caption;
  FormName := TdxNavBarItem(Sender).Hint;
  if FormName <> '' then MainForm.OpenForm(FormName, Caption);
end;

end.
