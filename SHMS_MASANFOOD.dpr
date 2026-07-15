program SHMS_MASANFOOD;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  Vcl.Controls,
  LoginUnit in 'LoginUnit.pas' {LoginForm},
  MainUnit in 'MainUnit.pas' {MainForm},
  BaseModal in 'BaseModal.pas' {BaseModalForm},
  ItemModalUnit in 'ItemModalUnit.pas' {ItemModalForm},
  LoginModalUnit in 'LoginModalUnit.pas' {LoginModalForm},
  BaseChild in 'BaseChild.pas' {BaseChildForm},
  BasicCodeUnit in 'BaseData\BasicCodeUnit.pas' {BasicCodeForm},
  CustomerUnit in 'BaseData\CustomerUnit.pas' {CustomerForm},
  DataModule in 'DataModule.pas' {DataModuleForm: TDataModule},
  UserLoginUnit in 'System\UserLoginUnit.pas' {UserLoginForm},
  UserPowerUnit in 'System\UserPowerUnit.pas' {UserPowerForm},
  UserUnit in 'System\UserUnit.pas' {UserForm},
  ProductUnit in 'BaseData\ProductUnit.pas' {ProductForm},
  AuthorityGroupUnit in 'System\AuthorityGroupUnit.pas' {AuthorityGroupForm},
  U_MenuInfo in 'System\U_MenuInfo.pas' {FrmMenuInfo},
  SalesInOutUnit in 'Sales\SalesInOutUnit.pas' {SalesInOutForm},
  CompanyInfoUnit in 'BaseData\CompanyInfoUnit.pas' {CompanyInfoForm},
  BankUnit in 'Sales\BankUnit.pas' {BankForm},
  BankInOutUnit in 'Sales\BankInOutUnit.pas' {BankInOutForm},
  TransactionHistory2Unit in 'Sales\TransactionHistory2Unit.pas' {TransactionHistory2ModalForm},
  TransactionHistoryUnit in 'Sales\TransactionHistoryUnit.pas' {TransactionHistoryModalForm},
  PBoxUnit in 'Sales\PBoxUnit.pas' {PBoxForm},
  PurchaseInOutUnit in 'Purchase\PurchaseInOutUnit.pas' {PurchaseInOutForm},
  MaterialCheckUnit in 'Purchase\MaterialCheckUnit.pas' {MaterialCheckForm},
  OriginalReportUnit in 'Purchase\OriginalReportUnit.pas' {OriginalReportForm},
  SalesListUnit in 'Sales\SalesListUnit.pas' {SalesListForm},
  PurchaseInOutListUnit in 'Purchase\PurchaseInOutListUnit.pas' {PurchaseInOutListForm},
  InOutListUnit in 'Purchase\InOutListUnit.pas' {InOutListForm},
  HaccpBasic in 'Haccp\HaccpBasic.pas' {HaccpBasicForm},
  HaccpHandWritingUnit in 'Haccp\HaccpHandWritingUnit.pas' {HaccpHandWritingForm},
  HaccpStandardReportUnit in 'Haccp\HaccpStandardReportUnit.pas' {HaccpStandardReportForm},
  HaccpMenuUnit in 'Haccp\HaccpMenuUnit.pas' {HaccpMenuForm},
  CCPHeatingCheckUnit in 'Haccp\CCPHeatingCheckUnit.pas' {CCPHeatingCheckForm},
  CCPMetalCheckUnit in 'Haccp\CCPMetalCheckUnit.pas' {CCPMetalCheckForm},
  CCPListUnit in 'Haccp\CCPListUnit.pas' {CCPListForm},
  HaccpActionUnit in 'Haccp\HaccpActionUnit.pas' {HaccpActionForm},
  HaccpGeneralUnit in 'Haccp\HaccpGeneralUnit.pas' {HaccpGeneralForm},
  HaccpPlaceAndFacilityCheckUnit in 'Haccp\HaccpPlaceAndFacilityCheckUnit.pas' {HaccpPlaceAndFacilityCheckForm},
  HaccpLightUnit in 'Haccp\HaccpLightUnit.pas' {HaccpLightForm},
  CCPCheckListUnit in 'Haccp\CCPCheckListUnit.pas' {CCPCheckListForm},
  HaccpBugUnit in 'Haccp\HaccpBugUnit.pas' {HaccpBugForm},
  HaccpFacilityUnit in 'Haccp\HaccpFacilityUnit.pas' {HaccpFacilityForm},
  HaccpDailyCheckUnit in 'Haccp\HaccpDailyCheckUnit.pas' {HaccpDailyCheckForm},
  HaccpHealthUnit in 'Haccp\HaccpHealthUnit.pas' {HaccpHealthForm},
  HaccpEducationUnit in 'Haccp\HaccpEducationUnit.pas' {HaccpEducationForm},
  HaccpActionManagerUnit in 'Haccp\HaccpActionManagerUnit.pas' {HaccpActionManagerForm},
  HaccpRecallUnit in 'Haccp\HaccpRecallUnit.pas' {HaccpRecallForm},
  HaccpYearEduPlanUnit in 'Haccp\HaccpYearEduPlanUnit.pas' {HaccpYearEduPlanForm},
  HaccpMeetingUnit in 'Haccp\HaccpMeetingUnit.pas' {HaccpMeetingForm},
  HaccpMaterialCheckUnit in 'Haccp\HaccpMaterialCheckUnit.pas' {HaccpMaterialCheckForm},
  HaccpMeasureUnit in 'Haccp\HaccpMeasureUnit.pas' {HaccpMeasureForm},
  CCPTempCheckUnit in 'Haccp\CCPTempCheckUnit.pas' {CCPTempCheckForm},
  MaterialUnit in 'BaseData\MaterialUnit.pas' {MaterialForm},
  BomUnit in 'BaseData\BomUnit.pas' {BOMForm},
  CCPHeatCheckUnit in 'Haccp\CCPHeatCheckUnit.pas' {CCPHeatCheckForm},
  CCPHeatCheckUnit2 in 'Haccp\CCPHeatCheckUnit2.pas' {CCPHeatCheckForm2},
  CCPWaterActiviyUnit in 'Haccp\CCPWaterActiviyUnit.pas' {CCPWaterActiviyForm},
  HaccpPlaceCheckUnit in 'Haccp\HaccpPlaceCheckUnit.pas' {HaccpPlaceCheckForm},
  HaccpIronPowderUnit in 'Haccp\HaccpIronPowderUnit.pas' {HaccpIronPowderForm},
  CCPRowDataUnit in 'HaccpMonitoring\CCPRowDataUnit.pas' {CCPRowDataForm},
  HaccpGoodsCheckUnit in 'Haccp\HaccpGoodsCheckUnit.pas' {HaccpGoodsCheckForm},
  HaccpPackingCheckUnit in 'Haccp\HaccpPackingCheckUnit.pas' {HaccpPackingCheckForm},
  MetalTestUnit in 'Haccp\MetalTestUnit.pas' {MetalTestForm},
  HaccpCCPBasicUnit in 'Haccp\HaccpCCPBasicUnit.pas' {HaccpCCPBasicForm},
  ItemSelectModelUnit in 'ItemSelectModelUnit.pas' {ItemSelectModelForm},
  CCPHeatUnit in 'Haccp\CCPHeatUnit.pas' {CCPHeatForm},
  HACCPHeatStartUnit in 'Haccp\HACCPHeatStartUnit.pas' {HACCPHeatStartForm},
  CCPHeatRunUnit in 'Haccp\CCPHeatRunUnit.pas' {CCPHeatRunForm},
  u_hc_ccp1b in 'haccp_checklist\u_hc_ccp1b.pas' {f_hc_ccp1b},
  u_hc_ccp2p in 'haccp_checklist\u_hc_ccp2p.pas' {f_hc_ccp2p},
  u_hc_ccp3b in 'haccp_checklist\u_hc_ccp3b.pas' {f_hc_ccp3b},
  u_hc_ccp4p in 'haccp_checklist\u_hc_ccp4p.pas' {f_hc_ccp4p},
  u_hc_verify in 'haccp_checklist\u_hc_verify.pas' {f_hc_verify},
  u_hc_clean_daily in 'haccp_checklist\u_hc_clean_daily.pas' {f_hc_clean_daily},
  u_haccp_verifyresult in 'Haccp\u_haccp_verifyresult.pas' {f_haccp_verifyresult},
  mu_v_result_user in 'Haccp\mu_v_result_user.pas' {mf_v_result_user},
  HtmlUnit in 'HtmlUnit.pas' {HtmlForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataModuleForm, DataModuleForm);
  Application.CreateForm(TLoginForm, LoginForm);
  if LoginForm.ShowModal <> mrOk then
  begin
    Application.MainForm.Free;
    Application.Terminate;
  end;

  Application.Run;
end.
