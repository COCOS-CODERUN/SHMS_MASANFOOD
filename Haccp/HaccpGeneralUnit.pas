unit HaccpGeneralUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseChild, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxTextEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, MemDS, DBAccess, Uni, cxSplitter, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  System.DateUtils, cxPC;

type
  THaccpGeneralForm = class(TBaseChildForm)
    cxGBox_list: TcxGroupBox;
    cxGBox_ApprovalList: TcxGroupBox;
    cxGBox_Approval: TcxGroupBox;
    cxLabel119: TcxLabel;
    cxLabel120: TcxLabel;
    cxLabel121: TcxLabel;
    cxBtn_writer: TcxButton;
    cxBtn_review: TcxButton;
    cxEdit_writer: TcxTextEdit;
    cxEdit_review: TcxTextEdit;
    cxBtn_confirm: TcxButton;
    cxEdit_confirm: TcxTextEdit;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridDBTv_List_Date: TcxGridDBColumn;
    cxGridDBTv_List_review: TcxGridDBColumn;
    cxGridDBTv_List_confirm: TcxGridDBColumn;
    cxGridDBTv_List_writer: TcxGridDBColumn;
    cxGridDBTv_List_division: TcxGridDBColumn;
    cxGridLv_List: TcxGridLevel;
    cxGBox_search: TcxGroupBox;
    cxDEdit_edate: TcxDateEdit;
    cxLabel20: TcxLabel;
    cxDEdit_sdate: TcxDateEdit;
    cxBtn_CSearch: TcxButton;
    cxGBox_category: TcxGroupBox;
    cxGridDB_Category: TcxGrid;
    cxGridDBTv_Cagtegory: TcxGridDBTableView;
    cxGridDBTv_Cagtegory_No: TcxGridDBColumn;
    cxGridDBTv_Cagtegory_Name: TcxGridDBColumn;
    cxGridDBTv_Cagtegory_NameEng: TcxGridDBColumn;
    cxGridLv_Cagtegory: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxGBox_Input: TcxGroupBox;
    UniQuery_C: TUniQuery;
    DS_C: TDataSource;
    DS_L: TDataSource;
    UniSP_L: TUniStoredProc;
    cxGridDBTv_List_id: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxBtn_CloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTv_CagtegoryCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_CSearchClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridDBTv_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtn_writerClick(Sender: TObject);

  private
    { Private declarations }
    procedure RegisterFormClass;
    procedure ClearForm;
    procedure SaveForm;
    procedure DeleteForm;
    procedure DataSearchForm;
    procedure GridListSetting;
    procedure DataBindingToGrid;
    procedure UpdateApprovalData(TBname: string; DivsionYn: Boolean);
  public
    { Public declarations }
    function OpenForm(FormName: String): Boolean;
  end;

var
  HaccpGeneralForm: THaccpGeneralForm;

  FormName: String;

  AForm: TForm;
  FClass: TFormClass;

implementation

uses DataModule
  ,HaccpPlaceAndFacilityCheckUnit //작업장및설비점검대장
  ,HaccpLightUnit                 //조도관리대장
  ,HaccpBugUnit                   //방충방서
  ,HaccpFacilityUnit              //설비관리대장
  ,HaccpDailyCheckUnit            //위생점검
  ,HaccpHealthUnit                //보건증 관리
  ,HaccpEducationUnit             //교육훈련일지
  ,HaccpActionManagerUnit         //개전조치
  ,HaccpRecallUnit                //회수관리
  ,HaccpYearEduPlanUnit           //연간교육훈련계획
  ,HaccpMeetingUnit               //HACCP 회외록
  ,HaccpMaterialCheckUnit         //육안검사 또는 원료입고검사
  ,HaccpMeasureUnit               //측정기관리대장
  ,HaccpPlaceCheckUnit            //작업장점검표(작업장/포장실및부대시설)
  ,HaccpIronPowderUnit            //쇳가루공정 일지
  ,HaccpGoodsCheckUnit            //완제품검사 일지
  ,HaccpPackingCheckUnit          //포장재입고검사표
  // 250611 김동현 : 신규선행관리
  ,u_hc_ccp1b                     // 중요관리점(CCP-1B) 모니터링일지
  ,u_hc_ccp2p                     // 중요관리점(CCP-2P) 모니터링일지
  ,u_hc_ccp3b                     // 중요관리점(CCP-3B) 모니터링일지
  ,u_hc_ccp4p                     // 중요관리점(CCP-4P) 모니터링일지
  ,u_hc_verify                    // 중요관리점(CCP) 검증점검표
  ,u_haccp_verifyresult           // 검증 결과 보고서
  ;

{$R *.dfm}

//form close
procedure THaccpGeneralForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  Action := caFree;
end;

//form create
procedure THaccpGeneralForm.FormCreate(Sender: TObject);
begin
  inherited;
  cxDEdit_sdate.Date := StartOfTheMonth(Date);
  cxDEdit_edate.Date := Date;

  cxEdit_writer.Text := LoginUserName;

  FormName := '';

  with DataModuleForm.FDQuerySetting(UniQuery_C) do
  begin
    close;
    sql.Clear;
    sql.add(' SELECT * FROM HaccpMenu  ');
    sql.Add(' WHERE IsUsable = 1       ');
    sql.Add(' AND   Listid <> ''HA22'' ');

    open;
  end;

  RegisterFormClass;
end;


//formclass
procedure THaccpGeneralForm.RegisterFormClass;
begin
  RegisterClass(THaccpPlaceAndFacilityCheckForm);
  RegisterClass(THaccpLightForm);
  RegisterClass(THaccpBugForm);
  RegisterClass(THaccpFacilityForm);
  RegisterClass(THaccpDailyCheckForm);
  RegisterClass(THaccpHealthForm);
  RegisterClass(THaccpEducationForm);
  RegisterClass(THaccpActionManagerForm);
  RegisterClass(THaccpRecallForm);
  RegisterClass(THaccpYearEduPlanForm);
  RegisterClass(THaccpMeetingForm);
  RegisterClass(THaccpMaterialCheckForm);
  RegisterClass(THaccpMeasureForm);
  RegisterClass(THaccpPlaceCheckForm);
  RegisterClass(THaccpIronPowderForm);
  RegisterClass(THaccpGoodsCheckForm);
  RegisterClass(THaccpPackingCheckForm);
end;

//close
procedure THaccpGeneralForm.cxBtn_CloseClick(Sender: TObject);
  var i : integer;
begin
  inherited;

  for i := 0 to cxGBox_Input.ControlCount - 1 do
  begin
    if (cxGBox_Input.Controls[i] is TForm) then
    begin
      (cxGBox_Input.Controls[i] as TForm).Close;
    end;
  end;

  close;
end;

//new
procedure THaccpGeneralForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  if FormName = '' then
  begin
    exit;
  end;

  cxEdit_Writer.Text := LoginUserName;
  cxEdit_review.Clear;
  cxEdit_confirm.Clear;

  ClearForm;
end;

//save
procedure THaccpGeneralForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  SaveForm;
  DataSearchForm;
  ClearForm;
end;

//delete
procedure THaccpGeneralForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  DeleteForm;
  DataSearchForm;
  ClearForm;
end;

//search
procedure THaccpGeneralForm.cxBtn_CSearchClick(Sender: TObject);
begin
  inherited;

  DataSearchForm;
end;

//대장목록 double click
procedure THaccpGeneralForm.cxGridDBTv_CagtegoryCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  cxEdit_review.Clear;
  cxEdit_confirm.Clear;

  cxGBox_Input.Caption := UniQuery_C.FieldByName('FormName').AsString;
  FormName := UniQuery_C.FieldByName('FormNameEng').AsString;
  HaccpSelected_MenuName := UniQuery_C.FieldByName('FormName').AsString;

  if FormName <> '' then
  begin
    OpenForm(FormName);
    DataSearchForm;
  end;
end;

//Open Form
function THaccpGeneralForm.OpenForm(FormName: String): Boolean;
begin
  Result := False;

  try
    //폼 열기
    AForm  := Application.FindComponent(FormName) AS TForm;
    FClass := TFormClass(FindClass('T' + FormName));

    if AForm = nil then
    begin
      AForm  := FClass.Create(cxGBox_Input);
    end;
    AForm.Parent := cxGBox_Input;
    AForm.BorderStyle := bsNone;
    AForm.Align  := alClient;
    AForm.Show;
  except
    ShowMessage(MessageToError);
  end;
end;

//clear
procedure THaccpGeneralForm.ClearForm;
  var i : Integer;
begin

 if FormName = 'HaccpPlaceAndFacilityCheckForm' then
  begin
    (AForm as THaccpPlaceAndFacilityCheckForm).ClearProc;
  end
  else if FormName = 'HaccpLightForm' then
  begin
    (AForm as THaccpLightForm).ClearProc;
  end
  else if FormName = 'HaccpBugForm' then
  begin
    (AForm as THaccpBugForm).ClearProc;
  end
  else if FormName = 'HaccpFacilityForm' then
  begin
    (AForm as THaccpFacilityForm).ClearProc;
  end
  else if FormName = 'HaccpDailyCheckForm' then
  begin
    (AForm as THaccpDailyCheckForm).ClearProc;
  end
  else if FormName = 'HaccpHealthForm' then
  begin
    (AForm as THaccpHealthForm).ClearProc;
  end
  else if FormName = 'HaccpEducationForm' then
  begin
    (AForm as THaccpEducationForm).ClearProc;
  end
  else if FormName = 'HaccpActionManagerForm' then
  begin
    (AForm as THaccpActionManagerForm).ClearProc;
  end
  else if FormName = 'HaccpRecallForm' then
  begin
    (AForm as THaccpRecallForm).ClearProc;
  end
  else if FormName = 'HaccpYearEduPlanForm' then
  begin
    (AForm as THaccpYearEduPlanForm).ClearProc;
  end
  else if FormName = 'HaccpMeetingForm' then
  begin
    (AForm as THaccpMeetingForm).ClearProc;
  end
  else if FormName = 'HaccpMaterialCheckForm' then
  begin
    (AForm as THaccpMaterialCheckForm).ClearProc;
  end
  else if FormName = 'HaccpMeasureForm' then
  begin
    (AForm as THaccpMeasureForm).ClearProc;
  end
  else if FormName = 'HaccpIronPowderForm' then
  begin
    (AForm as THaccpIronPowderForm).ClearProc;
  end
  else if FormName = 'HaccpGoodsCheckForm' then
  begin
    (AForm as THaccpGoodsCheckForm).ClearProc;
  end
  else if FormName = 'HaccpPackingCheckForm' then
  begin
    (AForm as THaccpPackingCheckForm).ClearProc;
  end
  // 250611 김동현 : 신규 선행일지 추가
  else if FormName = 'f_hc_ccp1b' then
  begin
    (AForm as Tf_hc_ccp1b).ClearProc;
  end
  else if FormName = 'f_hc_ccp2p' then
  begin
    (AForm as Tf_hc_ccp2p).ClearProc;
  end
  else if FormName = 'f_hc_ccp3b' then
  begin
    (AForm as Tf_hc_ccp3b).ClearProc;
  end
  else if FormName = 'f_hc_ccp4p' then
  begin
    (AForm as Tf_hc_ccp4p).ClearProc;
  end
  else if FormName = 'f_hc_verify' then
  begin
    (AForm as Tf_hc_verify).ClearProc;
  end
  else if FormName = 'f_haccp_verifyresult' then
  begin
    (AForm as Tf_haccp_verifyresult).ClearProc;
  end
  ;

end;

//save
procedure THaccpGeneralForm.SaveForm;
begin
  if FormName = 'HaccpPlaceAndFacilityCheckForm' then
  begin
    (AForm as THaccpPlaceAndFacilityCheckForm).SaveProc;
  end
  else if FormName = 'HaccpLightForm' then
  begin
    (AForm as THaccpLightForm).SaveProc;
  end
  else if FormName = 'HaccpBugForm' then
  begin
    (AForm as THaccpBugForm).SaveProc;
  end
  else if FormName = 'HaccpFacilityForm' then
  begin
    (AForm as THaccpFacilityForm).SaveProc;
  end
  else if FormName = 'HaccpDailyCheckForm' then
  begin
    (AForm as THaccpDailyCheckForm).SaveProc;
  end
  else if FormName = 'HaccpHealthForm' then
  begin
    (AForm as THaccpHealthForm).SaveProc;
  end
  else if FormName = 'HaccpEducationForm' then
  begin
    (AForm as THaccpEducationForm).SaveProc;
  end
  else if FormName = 'HaccpActionManagerForm' then
  begin
    (AForm as THaccpActionManagerForm).SaveProc;
  end
  else if FormName = 'HaccpRecallForm' then
  begin
    (AForm as THaccpRecallForm).SaveProc;
  end
  else if FormName = 'HaccpYearEduPlanForm' then
  begin
    (AForm as THaccpYearEduPlanForm).SaveProc;
  end
  else if FormName = 'HaccpMeetingForm' then
  begin
    (AForm as THaccpMeetingForm).SaveProc;
  end
  else if FormName = 'HaccpMaterialCheckForm' then
  begin
    (AForm as THaccpMaterialCheckForm).SaveProc;
  end
  else if FormName = 'HaccpMeasureForm' then
  begin
    (AForm as THaccpMeasureForm).SaveProc;
  end
  else if FormName = 'HaccpIronPowderForm' then
  begin
    (AForm as THaccpIronPowderForm).SaveProc;
  end
  else if FormName = 'HaccpGoodsCheckForm' then
  begin
    (AForm as THaccpGoodsCheckForm).SaveProc;
  end
  else if FormName = 'HaccpPackingCheckForm' then
  begin
    (AForm as THaccpPackingCheckForm).SaveProc;
  end
  // 250611 김동현 : 신규 선행일지 추가
  else if FormName = 'f_hc_ccp1b' then
  begin
    (AForm as Tf_hc_ccp1b).SaveProc;
  end
  else if FormName = 'f_hc_ccp2p' then
  begin
    (AForm as Tf_hc_ccp2p).SaveProc;
  end
  else if FormName = 'f_hc_ccp3b' then
  begin
    (AForm as Tf_hc_ccp3b).SaveProc;
  end
  else if FormName = 'f_hc_ccp4p' then
  begin
    (AForm as Tf_hc_ccp4p).SaveProc;
  end
  else if FormName = 'f_hc_verify' then
  begin
    (AForm as Tf_hc_verify).SaveProc;
  end
  else if FormName = 'f_haccp_verifyresult' then
  begin
    (AForm as Tf_haccp_verifyresult).SaveProc;
  end
  ;

  if SaveToError = False then
  begin
    ShowMessage(MessageToSave);
  end
  else begin
    ShowMessage(MessageToError);
  end;

  SaveToError := False;
end;

//delete
procedure THaccpGeneralForm.DeleteForm;
begin
  if FormName = 'HaccpPlaceAndFacilityCheckForm' then
  begin
    (AForm as THaccpPlaceAndFacilityCheckForm).DeleteProc;
  end
  else if FormName = 'HaccpLightForm' then
  begin
    (AForm as THaccpLightForm).DeleteProc;
  end
  else if FormName = 'HaccpBugForm' then
  begin
    (AForm as THaccpBugForm).DeleteProc;
  end
  else if FormName = 'HaccpFacilityForm' then
  begin
    (AForm as THaccpFacilityForm).DeleteProc;
  end
  else if FormName = 'HaccpDailyCheckForm' then
  begin
    (AForm as THaccpDailyCheckForm).DeleteProc;
  end
  else if FormName = 'HaccpHealthForm' then
  begin
    (AForm as THaccpHealthForm).DeleteProc;
  end
  else if FormName = 'HaccpEducationForm' then
  begin
    (AForm as THaccpEducationForm).DeleteProc;
  end
  else if FormName = 'HaccpActionManagerForm' then
  begin
    (AForm as THaccpActionManagerForm).DeleteProc;
  end
  else if FormName = 'HaccpRecallForm' then
  begin
    (AForm as THaccpRecallForm).DeleteProc;
  end
  else if FormName = 'HaccpYearEduPlanForm' then
  begin
    (AForm as THaccpYearEduPlanForm).DeleteProc;
  end
  else if FormName = 'HaccpMeetingForm' then
  begin
    (AForm as THaccpMeetingForm).DeleteProc;
  end
  else if FormName = 'HaccpMaterialCheckForm' then
  begin
    (AForm as THaccpMaterialCheckForm).DeleteProc;
  end
  else if FormName = 'HaccpMeasureForm' then
  begin
    (AForm as THaccpMeasureForm).DeleteProc;
  end
  else if FormName = 'HaccpIronPowderForm' then
  begin
    (AForm as THaccpIronPowderForm).DeleteProc;
  end
  else if FormName = 'HaccpGoodsCheckForm' then
  begin
    (AForm as THaccpGoodsCheckForm).DeleteProc;
  end
  else if FormName = 'HaccpPackingCheckForm' then
  begin
    (AForm as THaccpPackingCheckForm).DeleteProc;
  end
  // 250611 김동현 : 신규 선행일지 추가
  else if FormName = 'f_hc_ccp1b' then
  begin
    (AForm as Tf_hc_ccp1b).DeleteProc;
  end
  else if FormName = 'f_hc_ccp2p' then
  begin
    (AForm as Tf_hc_ccp2p).DeleteProc;
  end
  else if FormName = 'f_hc_ccp3b' then
  begin
    (AForm as Tf_hc_ccp3b).DeleteProc;
  end
  else if FormName = 'f_hc_ccp4p' then
  begin
    (AForm as Tf_hc_ccp4p).DeleteProc;
  end
  else if FormName = 'f_hc_verify' then
  begin
    (AForm as Tf_hc_verify).DeleteProc;
  end
  else if FormName = 'f_haccp_verifyresult' then
  begin
    (AForm as Tf_haccp_verifyresult).DeleteProc;
  end
  ;
end;

//결재 목록 더블 클릭 시
procedure THaccpGeneralForm.cxGridDBTv_ListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  cxEdit_Writer.Text  := UniSP_L.FieldByName('Writer').AsString;
  cxEdit_review.Text  := UniSP_L.FieldByName('Reviewer').AsString;
  cxEdit_confirm.Text := UniSP_L.FieldByName('Confirmer').AsString;

  DataBindingToGrid;
end;

//search
procedure THaccpGeneralForm.DataSearchForm;
  var ProcName, ProcOption : string;
begin
  ProcName := '';
  ProcOption := '';

  if FormName = 'HaccpPlaceAndFacilityCheckForm' then
  begin
    ProcName   := 'usp_HaccpPlaceAndFacilityCheck';
    ProcOption := 'D';
  end
  else if FormName = 'HaccpLightForm' then
  begin
    ProcName   := 'usp_HaccpLightingValue';
    ProcOption := 'F';
  end
  else if FormName = 'HaccpBugForm' then
  begin
    ProcName   := 'usp_HaccpBug';
    ProcOption := 'D';
  end
  else if FormName = 'HaccpDailyCheckForm' then
  begin
    ProcName   := 'usp_HaccpDailyCheck';
    ProcOption := 'D';
  end
  else if FormName = 'HaccpEducationForm' then
  begin
    ProcName   := 'usp_HaccpEducation';
    ProcOption := 'H';
  end
  else if FormName = 'HaccpActionManagerForm' then
  begin
    ProcName   := 'usp_HaccpActionManager';
    ProcOption := 'D';
    cxGridDBTv_List_id.DataBinding.FieldName := 'ACtionID';
  end
  else if FormName = 'HaccpRecallForm' then
  begin
    ProcName   := 'usp_HaccpRecall';
    ProcOption := 'E';
  end
  else if FormName = 'HaccpMeetingForm' then
  begin
    ProcName   := 'usp_HaccpMeeting';
    ProcOption := 'D';
  end
  else if FormName = 'HaccpMaterialCheckForm' then
  begin
    ProcName   := 'usp_HaccpMaterialCheck';
    ProcOption := 'D';
  end
  else if FormName = 'HaccpIronPowderForm' then
  begin
    ProcName   := 'usp_HaccpDataSearch';
    ProcOption := 'A';
  end
  else if FormName = 'HaccpGoodsCheckForm' then
  begin
    ProcName   := 'usp_HaccpGoodsCheck';
    ProcOption := 'D';
  end
  // 250611 김동현 : 신규 선행일지 추가
  else if FormName = 'f_hc_ccp1b' then
  begin
    ProcName   := 'usp_hc_ccp';
    ProcOption := 'AA';
  end
  else if FormName = 'f_hc_ccp2p' then
  begin
    ProcName   := 'usp_hc_ccp';
    ProcOption := 'AB';
  end
  else if FormName = 'f_hc_ccp3b' then
  begin
    ProcName   := 'usp_hc_ccp';
    ProcOption := 'AC';
  end
  else if FormName = 'f_hc_ccp4p' then
  begin
    ProcName   := 'usp_hc_ccp';
    ProcOption := 'AD';
  end
  else if FormName = 'f_hc_verify' then
  begin
    ProcName   := 'usp_hc_ccp';
    ProcOption := 'BA';
  end
  else if FormName = 'f_haccp_verifyresult' then
  begin
    ProcName   := 'usp_hc_ccp';
    ProcOption := 'CA';
  end
  ;

  if (ProcName = '') or (ProcOption = '') then
  begin
    UniSP_L.Close;
    exit;
  end;

  with DataModuleForm.FDSpSetting(UniSP_L, ProcName, ProcOption) do
  begin
    ParamByName('@SDATE').AsString := cxDEdit_sdate.Text;
    ParamByName('@EDATE').AsString := cxDEdit_edate.Text;
    open;
  end;
end;

//list setting
procedure THaccpGeneralForm.GridListSetting;
begin
  if FormName = 'HaccpPlaceAndFacilityCheckForm' then
  begin
    (AForm as THaccpPlaceAndFacilityCheckForm).GridListSetting;
  end
  else if FormName = 'HaccpLightForm' then
  begin
    (AForm as THaccpLightForm).GridListSetting;
  end
  else if FormName = 'HaccpBugForm' then
  begin
    (AForm as THaccpBugForm).GridListSetting;
  end
  else if FormName = 'HaccpDailyCheckForm' then
  begin
    (AForm as THaccpDailyCheckForm).GridListSetting;
  end
  else if FormName = 'HaccpHealthForm' then
  begin
    (AForm as THaccpHealthForm).GridListSetting;
  end
  else if FormName = 'HaccpEducationForm' then
  begin
    (AForm as THaccpEducationForm).GridListSetting;
  end
  else if FormName = 'HaccpActionManagerForm' then
  begin
    (AForm as THaccpActionManagerForm).GridListSetting;
  end
  else if FormName = 'HaccpRecallForm' then
  begin
    (AForm as THaccpRecallForm).GridListSetting;
  end
  else if FormName = 'HaccpYearEduPlanForm' then
  begin
    (AForm as THaccpYearEduPlanForm).GridListSetting;
  end
  else if FormName = 'HaccpMeetingForm' then
  begin
    (AForm as THaccpMeetingForm).GridListSetting;
  end
  else if FormName = 'HaccpMaterialCheckForm' then
  begin
    (AForm as THaccpMaterialCheckForm).GridListSetting;
  end
  else if FormName = 'HaccpMeasureForm' then
  begin
    (AForm as THaccpMeasureForm).GridListSetting;
  end
  else if FormName = 'HaccpIronPowderForm' then
  begin
    (AForm as THaccpIronPowderForm).GridListSetting;
  end
  ;
end;

//databinding
procedure THaccpGeneralForm.DataBindingToGrid;
begin
  DataModule.HaccpSelected_Date     := UniSP_L.FieldByName('CheckDate').AsString;
  DataModule.HaccpSelected_Division := UniSP_L.FieldByName('Division').AsString;

  if FormName = 'HaccpPlaceAndFacilityCheckForm' then
  begin
    (AForm as THaccpPlaceAndFacilityCheckForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpLightForm' then
  begin
    (AForm as THaccpLightForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpBugForm' then
  begin
    (AForm as THaccpBugForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpDailyCheckForm' then
  begin
    (AForm as THaccpDailyCheckForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpHealthForm' then
  begin
    (AForm as THaccpHealthForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpEducationForm' then
  begin
    (AForm as THaccpEducationForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpActionManagerForm' then
  begin
    (AForm as THaccpActionManagerForm).ActionID := cxGridDBTv_List.DataController.Values[cxGridDBTv_List.DataController.FocusedRecordIndex, cxGridDBTv_List_id.Index];
    (AForm as THaccpActionManagerForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpRecallForm' then
  begin
    (AForm as THaccpRecallForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpYearEduPlanForm' then
  begin
    (AForm as THaccpYearEduPlanForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpMeetingForm' then
  begin
    (AForm as THaccpMeetingForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpMaterialCheckForm' then
  begin
    (AForm as THaccpMaterialCheckForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpMeasureForm' then
  begin
    (AForm as THaccpMeasureForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpIronPowderForm' then
  begin
    (AForm as THaccpIronPowderForm).DataBindingToGrid;
  end
  else if FormName = 'HaccpGoodsCheckForm' then
  begin
    (AForm as THaccpGoodsCheckForm).DataBindingToGrid;
  end
  // 250611 김동현 : 신규 선행일지 추가
  else if FormName = 'f_hc_ccp1b' then
  begin
    (AForm as Tf_hc_ccp1b).DataBindingToGrid;
  end
  else if FormName = 'f_hc_ccp2p' then
  begin
    (AForm as Tf_hc_ccp2p).DataBindingToGrid;
  end
  else if FormName = 'f_hc_ccp3b' then
  begin
    (AForm as Tf_hc_ccp3b).DataBindingToGrid;
  end
  else if FormName = 'f_hc_ccp4p' then
  begin
    (AForm as Tf_hc_ccp4p).DataBindingToGrid;
  end
  else if FormName = 'f_hc_verify' then
  begin
    (AForm as Tf_hc_verify).DataBindingToGrid;
  end
  else if FormName = 'f_haccp_verifyresult' then
  begin
    (AForm as Tf_haccp_verifyresult).DataBindingToGrid;
  end
  ;
end;

//결재 버튼
procedure THaccpGeneralForm.cxBtn_writerClick(Sender: TObject);
begin
  inherited;

  if (Sender As TcxButton).Tag = 4 then
  begin
    exit;
  end
  else if (Sender As TcxButton).Tag = 5 then
  begin
    cxEdit_review.Text := LoginUserName;
  end
  else begin
    cxEdit_confirm.Text := LoginUserName;
  end;

  //설배관리대장은 결재 없음
  if FormName = 'HaccpFacilityForm' then
  begin
    exit;
  end;

  if FormName = 'HaccpPlaceAndFacilityCheckForm' then
  begin
    UpdateApprovalData('HaccpPlaceAndFacilityCheck', False);
  end
  else if FormName = 'HaccpLightForm' then
  begin
    UpdateApprovalData('HaccpLightingValue', False);
  end
  else if FormName = 'HaccpBugForm' then
  begin
    UpdateApprovalData('HaccpBug', False);
  end
  else if FormName = 'HaccpDailyCheckForm' then
  begin
    UpdateApprovalData('HaccpDailyCheck', False);
  end
  else if FormName = 'HaccpHealthForm' then
  begin
    if cxEdit_confirm.Text = '' then
    begin
//      HaccpHealthForm.ApprovalUpdate('R');
      (AForm as THaccpHealthForm).ApprovalUpdate('R');
      exit;
    end
    else begin
      (AForm as THaccpHealthForm).ApprovalUpdate('C');
//      HaccpHealthForm.ApprovalUpdate('C');
      exit;
    end;
  end
  else if FormName = 'HaccpEducationForm' then
  begin
    UpdateApprovalData('HaccpEducation', True);
  end
  else if FormName = 'HaccpActionManagerForm' then
  begin
    UpdateApprovalData('HaccpActionManager', True);
  end
  else if FormName = 'HaccpRecallForm' then
  begin
    UpdateApprovalData('HaccpRecall', True);
  end
  else if FormName = 'HaccpYearEduPlanForm' then
  begin
    UpdateApprovalData('HaccpYearEduPlan', True);   //division 대신 년도가 들어가야 함
  end
  else if FormName = 'HaccpMeetingForm' then
  begin
    UpdateApprovalData('HaccpMeeting', False);
  end
  else if FormName = 'HaccpMaterialCheckForm' then
  begin
    UpdateApprovalData('HaccpMaterialCheck', True);
  end
  else if FormName = 'HaccpMeasureForm' then  //측정기관리대장 다시 확인 해야 함
  begin
//    UpdateApprovalData('HaccpMeasure', False);
  end
  else if FormName = 'HaccpIronPowderForm' then
  begin
    UpdateApprovalData('HaccpIronPowder', True);
  end
  else if FormName = 'HaccpGoodsCheckForm' then
  begin
    UpdateApprovalData('HaccpGoodsCheck', false);
  end
  else if FormName = 'HaccpPackingCheckForm' then
  begin
    if cxEdit_confirm.Text = '' then
    begin
      (AForm as THaccpPackingCheckForm).ApprovalUpdate('R');
//      HaccpPackingCheckForm.ApprovalUpdate('R');
      exit;
    end
    else begin
       (AForm as THaccpPackingCheckForm).ApprovalUpdate('C');
//      HaccpPackingCheckForm.ApprovalUpdate('C');
      exit;
    end;
  end
  // 250611 김동현 : 신규 선행일지 추가
  else if FormName = 'f_hc_ccp1b' then
  begin
    UpdateApprovalData('hc_ccp1b_h', True);
  end
  else if FormName = 'f_hc_ccp2p' then
  begin
    UpdateApprovalData('hc_ccp2p_h', True);
  end
  else if FormName = 'f_hc_ccp3b' then
  begin
    UpdateApprovalData('hc_ccp3b_h', True);
  end
  else if FormName = 'f_hc_ccp4p' then
  begin
    UpdateApprovalData('hc_ccp4p_h', True);
  end
  else if FormName = 'f_hc_verify' then
  begin
    UpdateApprovalData('f_hc_verify', True);
  end
  else if FormName = 'f_haccp_verifyresult' then
  begin
    UpdateApprovalData('f_haccp_verifyresult', True);
  end
  ;

  UniSP_L.Refresh;
end;

procedure THaccpGeneralForm.UpdateApprovalData(TBname: string; DivsionYn: Boolean);
  var SqlTxt : string;
      CheckDate : string;
      Division : string;
      Find_Index : Integer;
begin
  CheckDate := UniSP_L.FieldByName('CheckDate').AsString;
  Division  := UniSP_L.FieldByName('Division').AsString;

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    close;
    sql.Clear;
    SqlTxt := ' UPDATE ' + TBname + ' SET '
            + '   Reviewer   = ''' + cxEdit_review.Text  + ''' '
            + '   ,Confirmer = ''' + cxEdit_confirm.Text + ''' '
            + ' WHERE CheckDate = ''' + CheckDate + ''' ';

    if DivsionYn then
    begin
      if FormName = 'HaccpYearEduPlanForm' then
      begin
//        SqlTxt := SqlTxt + ' AND EduYear = ''' +  + ''' ';
      end
      else if FormName = 'HaccpIronPowderForm' then
      begin
        SqlTxt := SqlTxt + ' AND CheckID = ''' + Division + ''' ';
      end
      else if FormName = 'HaccpMaterialCheckForm' then
      begin
        Find_Index := Pos(':', Division );
        Division := Copy(DataModule.HaccpSelected_Division, Find_Index+2, 10);
        SqlTxt := SqlTxt + ' AND CheckID = ''' + Division + ''' ';
      end
      else if FormName = 'HaccpRecallForm' then
      begin
        SqlTxt := SqlTxt + ' AND ProdName = ''' + Division + ''' ';
      end
      else if FormName = 'HaccpActionManagerForm' then
      begin
        if Division = '개선' then
        begin
          SqlTxt := SqlTxt + ' AND Improve = 1 ';
        end
        else begin
          SqlTxt := SqlTxt + ' AND prevent = 1 ';
        end;
      end
      else begin
        SqlTxt := SqlTxt + ' AND coalesce(Division, '''') = ''' + Division + ''' ';
      end;
    end;

    sql.Text := SqlTxt;
    ExecSQL;
  end;
end;

end.
