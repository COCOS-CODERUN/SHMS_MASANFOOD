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
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
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
  dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCore,
  dxSpreadSheetCoreFormulas, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles,
  dxSpreadSheetCoreStrs, dxSpreadSheetConditionalFormatting,
  dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses,
  dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks,
  dxSpreadSheetFunctions, dxSpreadSheetStyles, dxSpreadSheetGraphics,
  dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils,
  dxSpreadSheetFormattedTextUtils, dxSpreadSheet, dxSpreadSheetFormulaBar,
  cxLabel, cxTreeView, System.UITypes, FireDAC.Stan.Param, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxStyles,
  cxClasses, WinInet, cxCurrencyEdit, system.IniFiles, System.IOUtils, System.Hash,
  CommCtrl, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxBarBuiltInMenu, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
  FireDAC.VCLUI.Wait, System.Notification, MemDS, DBAccess, Uni;

type
  TMainForm = class(TForm)
    cxGBox_Main: TcxGroupBox;
    cxGBox_Menu: TcxGroupBox;
    cxImageMain: TcxImage;
    cxPageControl1: TcxPageControl;
    cxImageList1: TcxImageList;
    cxGBox_Category: TcxGroupBox;
    Category: TCategoryButtons;
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
    cxImage8: TcxImage;
    cxImage7: TcxImage;
    cxImage6: TcxImage;
    cxImage5: TcxImage;
    cxImage4: TcxImage;
    cxImage3: TcxImage;
    cxImage2: TcxImage;
    cxImage1: TcxImage;
    cxImage9: TcxImage;
    cxImageCOCOS: TcxImage;
    StatusBar: TStatusBar;
    PopupTabClose: TPopupMenu;
    TabClose: TMenuItem;
    AllTabClose: TMenuItem;
    PopupMenuImage: TPopupMenu;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_InputQty: TcxStyle;
    cxStyle_InCome: TcxStyle;
    cxStyle_BlueDuck: TcxStyle;
    cxStyle_Center: TcxStyle;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle_Red2: TcxStyle;
    cxStyle_Blue2: TcxStyle;
    cxImage10: TcxImage;
    cxStyle_SendFont: TcxStyle;
    NotificationCenter: TNotificationCenter;
    cxSplitter1: TcxSplitter;
    FDQuery_HighMemu: TUniQuery;
    FDqVersion: TUniQuery;
    FDQuery_LowMenu: TUniQuery;
    FDQuery_Authority: TUniQuery;
    Query_comm: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure CategoryButtonClicked(Sender: TObject; const Button: TButtonItem);
    procedure cxGBox_CategoryDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxImage1Click(Sender: TObject);
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
    procedure cxPageControl1StartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure cxPageControl1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxPageControl1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
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

    procedure CreateCategory;
    function CategoryCheck(const FormName: string): TcxTabSheet;
    procedure OpenForm(FormName,FormCaption: String);
    procedure SelectAuthority;
    function CheckAuthorityRead(FormName:String):Boolean;
    procedure InsertWorkLog(WindowID:Integer);
    procedure ShowNotification(NotificationName, NotificationTitle, NotificationAlertBody: string);

  end;

Type
  TIndex = Record
    FormName: String;
    WindowID:Integer;
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

implementation

//각 폼 Visile False, FormCation 빈값 필요
//관리자 외 테스트 계정(권한 확인용) ID:testid, PW:qwe

uses DataModule                 // 데이터 모듈

    ,BaseChild
    ,UserUnit                   // 시스템관리 - 유저관리
    ,UserPowerUnit              // 시스템관리 - 유저 권한 관리
    ,AuthorityGroupUnit         // 시스템관리 - 그룹 권한 관리
    ,UserLoginUnit              // 시스템관리 - 유저 로그인 관리
//    ,WorkLogUnit                // 시스템관리 - 작업 로그 관리
//    ,MenuUnit                   // 시스템관리 - 메뉴 관리


    ,BasicCodeUnit              // 기준정보관리 - 기초코드관리
    ,CustomerUnit               // 기준정보관리 - 매출처 관리
    ,ProductUnit                // 기준정보관리 - 품목관리

    {
//    ,PartnerUnit                // 기준정보관리 - 매입처 관리

//    ,MaterialUnit               // 기준정보관리   - 원재료정보관리

//    ,ConsumableUnit             // 기준정보관리   - 소모품정보관리

    ,HaccpCCP                   // Haccp CCP 관리
    ,HaccpQA                    // Haccp QA팀 관리
    ,HaccpProduct               // Haccp 생산팀 관리
    ,HaccpProductUnit2          // Haccp 생산팀 관리
    ,HaccpHaccp                 // Haccp HACCP팀 관리
    ,HaccpBasic                 // Haccp 기준 관리
    ,HaccpManagementList        // Haccp 대장 관리
    ,HaccpData                  // Haccp 데이터 관리
    ,CCPMetalCheckUnit          //금속검출기
    ,CCPTempCheckUnit           //냉장냉동 온도 관리
    ,HaccpStandardReportUnit
    ,HaccpActionUnit            // HACCP관리    - HACCP 조치 관리
    ,HaccpHandWritingUnit       // HACCP관리    - 수기기록물 관리
    ,HaccpCPUnit
    ,HaccpFileModalUnit
    ,HaccpTestMetalModalUnit
    ,Handwriting_Fm
    ,CCPListUnit
    ,HaccpGeneralCheckUnit
    ,HaccpCarTempCheckUnit2

    ,EstimateUnit               //영업관리 - 견적관리
    ,SalesInOutUnit             //영업관리 - 수주관리/출하관리
    ,SalesInOutStateUnit        //영업관리 - 수주현황
    ,CustomerInOutUnit          //영업관리 - 수주관리/출하관리
    ,BankInOutUnit              //영업관리 - 은행 입출고
    ,BankInOutStateUnit         //영업관리 - 매출현황
    ,PBoxUnit                   //영업관리 - PBOX 관리
    ,SalesSearchUnit            //영업관리 - 수주집계

    ,SalesSendMemoUnit          //생산관리 - 주문접수(모니터)
    ,WorkPlanUnit               //생산관리 - 생산계획관리
    ,WorkInstructionUnit        //생산관리 - 작업지시관리
    ,WorkUnit                   //생산관리 - 생산실적관리
    ,WorkMonitoringUnit         //생산관리 - 생산실적현황
    ,FOURMStateUnit             //생산관리 - 4M 관리 현황

    ,MaterialCheckUnit          //품질관리 - 수입검사관리
    ,MaterialCheckListUnit      //품질관리 - 수입검사현황
    ,GoodsCheckUnit             //품질관리 - 제품검사관리
    ,GoodsCheckListUnit         //품질관리 - 제품검사현황
    ,ClaimUnit                  //품질관리 - 클레임관리
    ,ClaimListUnit              //품질관리 - 클레임현황

    ,PurchaseInOutUnit          //구매관리 - 발주관리/구매입고관리
    ,PurchaseInOutListUnit      //구매관리 - 발주현황
    ,StockInOutListUnit         //구매관리 - 입고처리현황
    ,OriginalReportUnit         //구매관리 - 원산지 확인서 관리

    ,StockItemUnit              //재고관리 - 재고 실사/조정 관리
    ,StockInOutUnit             //재고관리 - 입출고관리
    ,StockItemStateUnit         //재고관리 - 품목별재고현황


    ,FacilityInfoUnit2          //설비관리 - 설비정보관리
    ,FacilityCheckUnit          //설비관리 - 설비점검이력관리
    ,FacilityRepairUnit         //설비관리 - 설비수리이력관리
    ,FacilityCheckStatusUnit    //설비관리 - 설비점검이력현황
    ,FacilityRepairStatusUnit   //설비관리 - 설비수리이력현황

    ,DailyWorkMonitoringUnit    //모니터링 - 일일업무현황
    ,FacilityOperationUnit      //모니터링 - 설비가동현황
    ,WorkProgressMonitoringUnit //모니터링 - 생산진척현황
    ,KPIMonitoringUnit          //모니터링 - KPI 현황
    ,InOutMonitoringUnit        //모니터링 - 매입매출 현황

    }
    ;

{$R *.dfm}

type
  TmyDragObject = class(TcxDragControlObject)
  private
    FTab: TcxTabSheet;
  protected
    property Tab: TcxTabSheet read FTab write FTab;
  end;

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

  {
  // 커넥션 풀 전부 해제
    FConnectionPool.Free;
  }
  Action := caFree;
  MainForm := nil;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  TSERVER, TDB, TUNAME, TPW : string;
  DefName : string;
  DriverName : string;
begin
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

  // 폼 클래스 등록
  RegisterFormClass;

end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  // 메인폼 캡션(로그인유저명 표기)
  {$IFDEF DEBUG}
    MainForm.Caption := MainForm.Caption + ' [TEST Server - '  +DataModule.LoginUserName+']';
  {$ELSE}
    MainForm.Caption := MainForm.Caption + ' [LIVE Server - '  +DataModule.LoginUserName+']';
  {$ENDIF}


  // 기준정보관리 조회
  cxImage1Click(cxImage1);
end;

// 버전 정보 Ini파일에서 불러오기
procedure TMainForm.GetVersionInfoFromIniFile;
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

// 메뉴 관련 기능 ==============================================================
// 폼 클래스 등록
procedure TMainForm.RegisterFormClass;
begin
  // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  RegisterClass(TBaseChildForm);              // 테스트폼

  RegisterClass(TUserForm);                   // 시스템관리 - 유저관리
  RegisterClass(TUserPowerForm);              // 시스템관리 - 유저 권한 관리
  RegisterClass(TAuthorityGroupForm);         // 시스템관리 - 그룹 권한 관리
  RegisterClass(TUserLoginForm);              // 시스템관리 - 유저 로그인 관리
//  RegisterClass(TWorkLogForm);                // 시스템관리 - 작업 Log 관리
//  RegisterClass(TMenuForm);                   // 시스템관리 - 메뉴 관리

  RegisterClass(TBasicCodeForm);              // 기준정보관리 - 기초코드관리
  RegisterClass(TCustomerForm);               // 기준정보관리  - 거래처 관리
  RegisterClass(TProductForm);                  // 시스템관리   - 제품정보관리
{
//  RegisterClass(TPartnerForm);                 // 기준정보관리 - 거래처 관리
  RegisterClass(TItemForm);                   // 기준정보관리 - 품목관리
//  RegisterClass(TMaterialForm);                 // 시스템관리   - 원재료정보관리

//  RegisterClass(TConsumableForm);               // 시스템관리   - 소모품정보관리

  RegisterClass(THaccpCCPForm);                   // Haccp CCP 관리
  RegisterClass(THaccpQAForm);                    // Haccp QA팀 관리
//  RegisterClass(THaccpProductForm);               // Haccp 생산팀 관리
  RegisterClass(THaccpProductForm2);               // Haccp 생산팀 관리
  RegisterClass(THaccpHaccpForm);                 // Haccp HACCP팀 관리
  RegisterClass(THaccpBasicForm);                 // Haccp 기준 관리
  RegisterClass(THaccpManagementListForm);        // Haccp 대장 관리
  RegisterClass(THaccpDataForm);                  // Haccp 데이터 관리
  RegisterClass(TCCPMetalCheckForm);              // 금속검출기
  RegisterClass(TCCPTempCheckForm);               // 냉장냉동 온도 관리
  RegisterClass(THaccpStandardReportForm);
  RegisterClass(THaccpActionForm);                // HACCP관리    - HACCP 조치 관리
  RegisterClass(THaccpHandWritingForm);           // HACCP관리    - 수기기록물 관리
  RegisterClass(THaccpCPForm);
  RegisterClass(THaccpFileModalForm);
  RegisterClass(THaccpTestMetalModalForm);
  RegisterClass(THandwriting_Form);
  RegisterClass(TCCPListForm);
  RegisterClass(THaccpGeneralCheckForm);
  RegisterClass(THaccpCarTempCheckForm2);

  RegisterClass(TEstimateForm);
  RegisterClass(TSalesInOutForm);
  RegisterClass(TSalesInOutStateForm);
  RegisterClass(TCustomerInOut);                       // 영업관리 - 수주관리/출하관리
  RegisterClass(TBankInOutForm);
  RegisterClass(TBankInOutStateForm);
  RegisterClass(TPboxForm);
  RegisterClass(TSalesSearchForm);                    // 영업관리 - 수주집계

  RegisterClass(TSalesSendMemoForm);                  // 생산관리 - 주문접수(모니터)
  RegisterClass(TWorkPlanForm);                       // 생산관리 - 생산계획관리
  RegisterClass(TWorkInstructionForm);                // 생산관리 - 작업지시관리
  RegisterClass(TWorkForm);                           // 생산관리 - 생산실적관리
  RegisterClass(TWorkMonitoringForm);                 // 생산관리 - 생산실적현황
  RegisterClass(TFOURMStateForm);                     // 생산관리 - 4M 관리 현황

  RegisterClass(TMaterialCheckForm);                  // 품질관리 - 수입검사관리
  RegisterClass(TMaterialCheckListForm);              // 품질관리 - 수입검사현황
  RegisterClass(TGoodsCheckForm);                     // 품질관리 - 제품검사관리
  RegisterClass(TGoodsCheckListForm);                 // 품질관리 - 제품검사현황
  RegisterClass(TClaimForm);                          // 품질관리 - 클레임관리
  RegisterClass(TClaimListForm);                      // 품질관리 - 클레임현황



  RegisterClass(TPurchaseInOutForm);                  // 구매관리 - 발주관리/입고관리
  RegisterClass(TPurchaseInOutListForm);              // 구매관리 - 발주현황
  RegisterClass(TStockInOutListForm);                 // 구매관리 - 입고처리현황
  RegisterClass(TOriginalReportForm);                 // 구매관리 - 원산지 확인서 관리


  RegisterClass(TStockItemForm);                      // 재고관리 - 재고 실사/조정관리
  RegisterClass(TStockInOutForm);                     // 재고관리 - 입출고관리
  REgisterClass(TStockItemStateForm);                 // 재고관리 = 품목별재고현황


  RegisterClass(TFacilityInfoForm2);                  // 설비관리 - 설비정보관리
  RegisterClass(TFacilityCheckForm);                  // 설비관리 - 설비수리이력관리
  RegisterClass(TFacilityRepairForm);                 // 설비관리 - 설비수리이력관리
  RegisterClass(TFacilityCheckStatusForm);            // 설비관리 - 설비수리이력현황
  RegisterClass(TFacilityRepairStatusForm);           // 설비관리 - 설비수리이력현황


  RegisterClass(TDailyWorkMonitoringForm);            // 모니터링 - 일일업무현황
  RegisterClass(TFacilityOperationForm);              // 모니터링 - 설비가동현황
  RegisterClass(TWorkProgressMonitoringForm);         // 모니터링 - 생산진척현황
  RegisterClass(TKPIMonitoringForm);                  // 모니터링 - KPI 현황
  RegisterClass(TInOutMonitoringForm);                // 모니터링 - 매입매출 현황
   }
end;

// 메뉴 목록 조회 & 메뉴 생성
procedure TMainForm.CreateCategory;
var
  Index, MenuIndex: Integer;
begin
  SetLength(Authority, LOW(Authority));
  Category.Categories.BeginUpdate;
  Category.Categories.Clear;

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

    for MenuIndex := 0 to FDQuery_HighMemu.RecordCount - 1 do
    begin
      // 카테고리
      with Category do
      begin
        Categories.Add;

        Categories[Category.Categories.Count - 1].Color := $00EDEDED;
        Categories[Category.Categories.Count - 1].Caption   := FDQuery_HighMemu.FieldByName('MENUNAME').AsString;
        Categories[Category.Categories.Count - 1].Collapsed := False;
      end;

      FDQuery_HighMemu.Next;
    end;
  end;

//  with DataModuleForm.FDQuerySetting(FDQuery_HighMemu) do
//  begin
//    SQL.Add(' EXEC usp_User @Option = :Option, @WindowName = :WindowName ');
//    ParamByName('Option').AsString      := 'A';
//    ParamByName('WindowName').AsString  := cxGBox_Category.Caption;
//    Open;
//
//    First;
//
//    for MenuIndex := 0 to FDQuery_HighMemu.RecordCount - 1 do
//    begin
//      // 카테고리
//      with Category do
//      begin
//        Categories.Add;
//
//        Categories[Category.Categories.Count - 1].Color := $00EDEDED;
//        Categories[Category.Categories.Count - 1].Caption   :=
//          FDQuery_HighMemu.FieldByName('WindowMenuName').AsString;
//        Categories[Category.Categories.Count - 1].Collapsed := False;
//      end;
//
//      FDQuery_HighMemu.Next;
//    end;
//  end;

  //하위 메뉴
  with DataModuleForm.FDQuerySetting(FDQuery_LowMenu) do
  begin
//    SQL.Add(' EXEC usp_User @Option = :Option, @WindowName = :WindowName ');
//    ParamByName('Option').AsString      := 'B';
//    ParamByName('WindowName').AsString  := cxGBox_Category.Caption;
//    Open;

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

      for MenuIndex := 0 to FDQuery_LowMenu.RecordCount - 1 do
      begin
        SetLength(Authority, High(Authority) + 2);
        index := Category.Categories.IndexOf(FDQuery_LowMenu.FieldByName('MENULV2').AsString);

        if Index <> -1 then
        begin
          Category.Categories[Index].Items.add;

          Category.Categories[Index].Items
            [Category.Categories[Index].Items.count - 1].
            Caption    := FDQuery_LowMenu.FieldByName('MENUNAME').AsString;

          Category.Categories[Index].Items
            [Category.Categories[Index].Items.count - 1].
            Hint       := FDQuery_LowMenu.FieldByName('FORMNAME').AsString;

          Category.Categories[Index].Items
            [Category.Categories[Index].Items.count - 1].
            ImageIndex := 4;

          Authority[High(Authority)].FormName := FDQuery_LowMenu.FieldByName('FORMNAME').AsString;
          Authority[High(Authority)].WindowID := FDQuery_LowMenu.FieldByName('MENUID').AsInteger;
          Authority[High(Authority)].Read     := False;
          Authority[High(Authority)].Input    := False;
          Authority[High(Authority)].Alter    := False;
          Authority[High(Authority)].Delete   := False;

        end;
        FDQuery_LowMenu.Next;
      end;
    end;
  end;
  Category.Categories.EndUpdate;

  //권한 조회
  SelectAuthority;
end;

//권한 조회
procedure TMainForm.SelectAuthority;
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
          Authority[loopcnt].WindowID := FieldByName('WindowID').AsInteger;
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

//Open Form
procedure TMainForm.OpenForm(FormName,FormCaption: String);
var
  ATabSheet: TcxTabSheet;
  index:Integer;
  MenuIndex:Integer;
  AForm: TForm;
  FClass: TFormClass;
  WindowID: Integer;
begin

  if CategoryCheck(FormName) = nil then
  begin
    //읽기 권한 확인
//    if CheckAuthorityRead(FormName) then
    begin
      //탭 추가
      ATabSheet := TcxTabSheet.Create(cxPageControl1);
      ATabSheet.Parent := cxPageControl1;

      //폼 열기
      AForm  := Application.FindComponent(FormName) AS TForm;
      FClass := TFormClass(FindClass('T' + FormName));
      AForm  := FClass.Create(MainForm);

      AForm.FormStyle   := fsMDIForm;
      AForm.Visible     := False;
      AForm.BorderStyle := bsNone;
      AForm.Parent      := AtabSheet;
      AForm.Align       := alClient;
      AForm.AutoScroll  := False;
      AForm.HorzScrollBar.Range := 1;
      AForm.VertScrollBar.Range := 1;
      AForm.Caption     := FormCaption;
      ATabSheet.Caption := FormCaption;
      ATabSheet.Hint    := FormName;

      //권한 설정
      for MenuIndex := Low(Authority) to High(Authority) do
      begin
        if Authority[MenuIndex].FormName = FormName then
        begin
          (AForm AS TBaseChildForm).canRead   := Authority[MenuIndex].Read;
          (AForm AS TBaseChildForm).canInput  := Authority[MenuIndex].Input;
          (AForm AS TBaseChildForm).canAlter  := Authority[MenuIndex].Alter;
          (AForm AS TBaseChildForm).canDelete := Authority[MenuIndex].Delete;
//          (AForm AS TBaseChildForm).WindowID  := Authority[MenuIndex].WindowID;
//           WindowID                           := Authority[MenuIndex].WindowID;

//          if Not (AForm AS TBaseChildForm).canInput then
//            (AForm AS TBaseChildForm).cxBtn_New.Enabled := False;

//          if (Not ((AForm AS TBaseChildForm).canAlter)
//                AND (Not (AForm AS TBaseChildForm).canInput)) then
//            (AForm AS TBaseChildForm).cxBtn_Save.Enabled := False;

//          if Not (AForm AS TBaseChildForm).canDelete then
//            (AForm AS TBaseChildForm).cxBtn_Delete.Enabled := False;

          Break;
        end;
      end;

      //새로운 탭 열기
      AForm.Show;
      cxPageControl1.ActivePageIndex := cxPageControl1.PageCount - 1;
      InsertWorkLog(WindowID);
    end;
  end
  else
  begin
    //이미 열린 메뉴일 경우 해당 탭 활성화
    MainForm.cxPageControl1.ActivePage := MainForm.CategoryCheck(FormName);
  end;
end;

//메뉴 활성화 체크
function TMainForm.CategoryCheck(const FormName: string): TcxTabSheet;
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

//읽기 권한 확인
function TMainForm.CheckAuthorityRead(FormName:String): Boolean;
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

//상단 메뉴 버튼
procedure TMainForm.cxButton1Click(Sender: TObject);
begin
  //이미 열린 메뉴일 경우 조회하지 않음
  if cxGBox_Category.Caption <> (Sender As TcxButton).Caption then
  begin
    cxGBox_Category.Caption := (Sender As TcxButton).Caption;
    CreateCategory;
  end;
end;

//카테고리 클릭시 Collapase
procedure TMainForm.CategoryCategoryCollapase(Sender: TObject;
  const Category: TButtonCategory);
begin
  Category.Collapsed := false;
end;

//메뉴 버튼 클릭 이벤트
procedure TMainForm.CategoryButtonClicked(Sender: TObject;
  const Button: TButtonItem);
var
  FormName, Caption:String;
begin
  Caption  := Button.Caption;
  FormName := Button.Hint;

  if FormName <> '' then MainForm.OpenForm(FormName, Caption);
end;

procedure TMainForm.cxGBox_CategoryDblClick(Sender: TObject);
begin
  if toggle = 0 then
  begin
    cxGBox_Category.Caption := '◁';
    Category.Visible := false;
    cxGBox_Category.Width := 35;
    toggle := 1;
  end
  else
  begin
    cxGBox_Category.Caption := MenuName;
    cxGBox_Category.Width := 193;
    Category.Visible := true;
    toggle := 0;
  end;

end;

// 상단 이미지 클릭
procedure TMainForm.cxImage1Click(Sender: TObject);
begin
  //이미 열린 메뉴일 경우 조회하지 않음
  if cxGBox_Category.Caption <> (Sender As TcxImage).Hint then
  begin
    cxGBox_Category.Caption := (Sender As TcxImage).Hint;
    MenuName                := (Sender As TcxImage).Hint;
    CreateCategory;
  end;
end;

// 우클릭시 메뉴나오게
procedure TMainForm.cxImage1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  loopcnt, loopcnt2: Integer;
  NewItem: TMenuItem;
begin
  // 우클릭 했을 경우
  if Button = mbRight then
  begin
    // 이미 열린 메뉴일 경우 조회하지 않음
    if cxGBox_Category.Caption <> (Sender As TcxImage).Hint then
    begin
      // 왼쪽 라인 조회
      cxGBox_Category.Caption := (Sender As TcxImage).Hint;
      MenuName                := (Sender As TcxImage).Hint;
      CreateCategory;
    end;

    // 라인에 해당하는 팝업창을 띄운다(메뉴목록)
    PopupMenuImage.Items.Clear;
    for loopcnt := 0 to Category.Categories.Count - 1 do
    begin
      for loopcnt2 := 0 to Category.Categories[loopcnt].Items.Count - 1 do
      begin
        NewItem := TMenuItem.Create(PopupMenuImage);
        PopupMenuImage.Items.Add(NewItem);
        NewItem.Caption := Category.Categories[loopcnt].Items[loopcnt2].Caption;
        NewItem.Hint := Category.Categories[loopcnt].Items[loopcnt2].Hint;
        NewItem.OnClick := MainMenuClick;   // 우클릭시 메뉴나오는 이벤트
      end;
    end;
  end;
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

// 현재탭 제외 전체닫기
procedure TMainForm.TabCloseClick(Sender: TObject);
var
  CheckPageIndex, loopcnt: Integer;
begin
  if cxPageControl1.PageCount < 1 then Exit;

  CheckPageIndex := MainForm.cxPageControl1.ActivePageIndex;

  for loopcnt := cxPageControl1.PageCount - 1 downto 0 do
  begin
    if loopcnt <> CheckPageIndex then
      cxPageControl1.CloseTab(cxPageControl1.Pages[loopcnt].PageIndex);
  end;

//  cxPageControl1.CloseTab(MainForm.cxPageControl1.ActivePageIndex);
end;

// 탭전체닫기
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
  p.x := APageControl.Left + X;
  p.y := APageControl.Top + y;
  p := ClientToScreen(p);

  PopupTabClose.Popup(P.x, P.Y);
end;

// 탭라인에서 우클릭시 전체 닫기 메뉴나오게
procedure TMainForm.cxPageControl1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cxPageControl1.PageCount < 1 then Exit;

  if Button = mbRight then
  begin
    TabMenuPopup(MainForm.cxPageControl1, X, Y);
  end;
end;

procedure TMainForm.cxPageControl1StartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  DragObject := TmyDragObject.Create(TcxPageControl(Sender));
  TmyDragObject(DragObject).Tab := TcxPageControl(Sender).ActivePage;
end;

procedure TMainForm.cxPageControl1DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  Index: Integer;
begin
  with TcxPageControl(Sender) do
  begin
    Index := IndexOfTabAt(X, Y);
//    Pages[Index].PageIndex := TmyDragObject(Source).Tab.PageIndex;
    {위의 코드는 스위칭 되게 하기 위한 코드임}
    TmyDragObject(Source).Tab.PageIndex := Index;
  end;
end;

procedure TMainForm.cxPageControl1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
var
  Index: Integer;
begin
  with TcxPageControl(Sender) do
  begin
    Index := IndexOfTabAt(X, Y);
    Accept := (Index > - 1) and (Pages[Index] <> TmyDragObject(Source).Tab);
  end;
end;

//작업 로그 추가(메뉴 열기)
procedure TMainForm.InsertWorkLog(WindowID:Integer);
begin
//  with DataModuleForm.FDSpSetting(nil, 'usp_User', 'S') do
//  begin
//    ParamByName('@UserID').AsInteger     := DataModule.LoginId;
//    ParamByName('@WindowID').AsInteger   := WindowID;
//    ParamByName('@SystemWork').AsInteger := 0;
//    ParamByName('@Writer').AsString      := DataModule.LoginUserName;
//    ExecProc;
//  end;
end;

procedure TMainForm.ShowNotification(NotificationName, NotificationTitle,
  NotificationAlertBody: string);
var
  MyNotification: TNotification;
begin
// 윈도우 알람창
  {$IFDEF MSWINDOWS}
  if not TOSVersion.Check(6, 2) then // Windows 8
  begin
    Exit;
  end;
  {$ENDIF MSWINDOWS}

  MyNotification := NotificationCenter.CreateNotification;
  try
    MyNotification.Name := NotificationName;
    MyNotification.Title := NotificationTitle;
    MyNotification.AlertBody := NotificationAlertBody;

    NotificationCenter.PresentNotification(MyNotification);
  finally
    MyNotification.Free;
  end;

end;

end.
