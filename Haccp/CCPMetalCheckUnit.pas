unit CCPMetalCheckUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit,
  cxLabel, dxWheelPicker, dxNumericWheelPicker, dxDateTimeWheelPicker,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, cxImage, System.ImageList, Vcl.ImgList, cxImageList,
  dxGDIPlusClasses, dxPSUtl, cxEditRepositoryItems, cxSplitter, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  cxRadioGroup, cxCurrencyEdit, Uni, MemDS, DBAccess;

type
  TCCPMetalCheckForm = class(TBaseChildForm)
    DS_Facility: TDataSource;
    DS_Data: TDataSource;
    DS_list: TDataSource;
    cxGroupBox5: TcxGroupBox;
    cxGBox_List: TcxGroupBox;
    cxGBox_top: TcxGroupBox;
    cxGBox_CheckButton: TcxGroupBox;
    cxGrid_check: TcxGrid;
    cxGridTv_check: TcxGridTableView;
    cxGridTv_check_metal: TcxGridColumn;
    cxGridTv_check_time: TcxGridColumn;
    cxGridTv_check_fe: TcxGridColumn;
    cxGridTv_check_FeGoods: TcxGridColumn;
    cxGridTv_check_sus: TcxGridColumn;
    cxGridTv_check_SusGoods: TcxGridColumn;
    cxGridTv_check_Goods: TcxGridColumn;
    cxGridTv_check_fe_value: TcxGridColumn;
    cxGridTv_check_FeGoodsv_value: TcxGridColumn;
    cxGridTv_check_sus_value: TcxGridColumn;
    cxGridTv_check_SusGoods_value: TcxGridColumn;
    cxGridTv_check_Goods_value: TcxGridColumn;
    cxGridLv_check: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    cxLbl2: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxLbl1: TcxLabel;
    cxLkCBBox_Facility: TcxLookupComboBox;
    cxBtnSearch: TcxButton;
    cxGroupBox4: TcxGroupBox;
    dxDateTimeWheelPicker: TdxDateTimeWheelPicker;
    cxGrid_data: TcxGrid;
    cxGridDBTv_data: TcxGridDBTableView;
    cxGridDBTv_data_date: TcxGridDBColumn;
    cxGridDBTv_data_reviewer: TcxGridDBColumn;
    cxGridDBTv_data_confirmer: TcxGridDBColumn;
    cxGridDBTv_data_RFlage: TcxGridDBColumn;
    cxGridDBTv_data_CFlage: TcxGridDBColumn;
    cxGridDBTv_data_writer: TcxGridDBColumn;
    cxGridLv_data: TcxGridLevel;
    cxSplitter: TcxSplitter;
    cxSplitter1: TcxSplitter;
    cxGroupBox2: TcxGroupBox;
    cxGBoxSearch: TcxGroupBox;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridDBTv_List_datetime: TcxGridDBColumn;
    cxGridDBTv_List_result: TcxGridDBColumn;
    cxGridDBTv_List_Contents: TcxGridDBColumn;
    cxGridDBTv_List_Reviewer: TcxGridDBColumn;
    cxGridDBTv_List_Confirmer: TcxGridDBColumn;
    cxGridDBTv_List_Code: TcxGridDBColumn;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_no: TcxGridColumn;
    cxGridTv_List_DataCheck: TcxGridColumn;
    cxGridTv_List_ItemName: TcxGridColumn;
    cxGridTv_List_time2: TcxGridColumn;
    cxGridTv_List_name: TcxGridColumn;
    cxGridTv_List_result: TcxGridColumn;
    cxGridTv_List_basic: TcxGridColumn;
    cxGridTv_List_contents: TcxGridColumn;
    cxGridTv_List_ItemID: TcxGridColumn;
    cxGridLv_List: TcxGridLevel;
    cxGroupBox7: TcxGroupBox;
    cxRGroupSearchType: TcxRadioGroup;
    cxCEdit_ItemID: TcxCurrencyEdit;
    cxGBox_Approval: TcxGroupBox;
    cxBtn_approval: TcxButton;
    cxBtn_Reviewer: TcxButton;
    cxBtn_Confirmer: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    cxEdit_writer: TcxTextEdit;
    cxEdit_reviewer: TcxTextEdit;
    cxEdit_confirmer: TcxTextEdit;
    cxGridTv_check_Result: TcxGridColumn;
    FDQuery_facility: TUniQuery;
    FDQuery_data: TUniQuery;
    FDQuery_list: TUniQuery;
    FDQuery_comm: TUniQuery;
    cxEdit_ItemID: TcxTextEdit;
    cxGridTv_check_basic: TcxGridColumn;
    cxGridTv_check_contents: TcxGridColumn;
    cxEditRepository: TcxEditRepository;
    cxEditRepositoryCBBox_reason: TcxEditRepositoryComboBoxItem;
    cxEditRepositoryCBox_basic: TcxEditRepositoryComboBoxItem;
    cxEditRepositoryCBBox_Contents: TcxEditRepositoryComboBoxItem;
    cxEditRepositoryCBox_contents: TcxEditRepositoryComboBoxItem;
    cxImage_TimeOut: TcxImage;
    cxImage_none: TcxImage;
    cxImage_waring: TcxImage;
    UniQuery_Count: TUniQuery;
    DS_Count: TDataSource;
    UniQuery_Basic: TUniQuery;
    Panel1: TPanel;
    cxSplitter2: TcxSplitter;
    cxGrid_Count: TcxGrid;
    cxGridDBTv_Count: TcxGridDBTableView;
    cxGridDBTv_CountColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    DS_MetalCheck: TDataSource;
    UniQuery_MetalCheck: TUniQuery;
    cxGridTv_List_MetalSenser: TcxGridColumn;
    Timer_Cnt: TTimer;
    cxGridTv_List_time: TcxGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxDateTimeWheelPickerPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxLkCBBox_FacilityPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_addClick(Sender: TObject);
    procedure Timer_checkTimer(Sender: TObject);
    procedure cxBtn_MetalCheckClick(Sender: TObject);
    procedure cxBtn_finishClick(Sender: TObject);
    procedure cxBtn_cancelClick(Sender: TObject);
    procedure cxGridDBTv_dataCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtn_approvalClick(Sender: TObject);
    procedure cxBtn_ReviewerClick(Sender: TObject);
    procedure cxBtn_ConfirmerClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure cxGridTv_List_EditValueChanged(Sender: TObject);
    procedure cxGridTv_ListEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridDBTv_data_reviewerCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTv_data_confirmerCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxEditOKPropertiesEditValueChanged(Sender: TObject);
    procedure DS_listDataChange(Sender: TObject; Field: TField);
    procedure cxBtn_NonClick(Sender: TObject);
    procedure cxGridTv_List_resultCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxRGroupSearchTypePropertiesChange(Sender: TObject);
    procedure cxGridTv_checkEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxEditRepositoryCBBox_ContentsPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxEditRepositoryCBBox_reasonPropertiesEditValueChanged(
      Sender: TObject);
    procedure Timer_CntTimer(Sender: TObject);
  private
    { Private declarations }
    procedure MetalNoneCount(CheckDate : string);
    procedure MetalCount(CheckDate : string);
    procedure SetApprobalButtons;
  public
    { Public declarations }
    procedure ChangeEnable;
  end;

  const
  TestMetalScenario: array[0..4] of string =
    ('Fe Only Pass',
     'Fe And Goods Pass',
     'Sus Only Pass',
     'Sus And Goods Pass',
     'Goods');

  TestLabelCaption : array [0..5] of string =
    ( 'Fe만 통과시켜 주세요 !!!',
      'Fe + 제품만 통과시켜 주세요 !!!',
      'Sus만 통과시켜 주세요 !!!',
      'Sus + 제품만 통과시켜 주세요 !!!',
      '제품만 통과시켜 주세요 !!!',
      '시편 테스트 완료 !!!'
    );

var
  CCPMetalCheckForm: TCCPMetalCheckForm;

  loopcnt : Integer;
  MetalCheck_Ready : string = '';
  ToDayTotalCount : Integer = 0;
  Check_Flag : Boolean;
  Last_Check : Boolean;
  Count_Check : Integer = 0;
  SaveCheck_Flag : Boolean;
  ToDayCheckTime : string = '';
  ResultFlg : string = '';

  SearchDateTime: TDateTime;

implementation

uses DataModule, MainUnit, ItemModalUnit, MetalTestUnit;

{$R *.dfm}


procedure TCCPMetalCheckForm.FormCreate(Sender: TObject);
begin
  inherited;

  CCPMetalCheckForm := TCCPMetalCheckForm(Sender);
  dxDateTimeWheelPicker.DateTime := Date;

  with DataModuleForm.FDQuerySetting(FDQuery_facility) do
  begin
    sql.Add(' SELECT * FROM Metal             ');
    sql.Add(' WHERE LEFT(MetalCode,2) =''CD'' ');
    open;
  end;


  //리스트의 한계기준 이탈 사유 세팅
  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' SELECT BCDName, BCDID     ');
    sql.Add(' FROM BasicCodeDetail      ');
    sql.Add(' WHERE BCID = ''BC010''    '); //금속검출 이탈 사유
    sql.Add(' ORDER BY BCDID            ');
    open;

    cxEditRepositoryCBBox_reason.Properties.Items.Clear;
    for loopcnt := 0 to FDQuery_comm.RecordCount -1 do
    begin
      cxEditRepositoryCBBox_reason.Properties.Items.Add(FieldByName('BCDName').AsString);

      Next;
    end;
  end;

  //리스트의 개선조치사항 세팅
  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' SELECT BCDName, BCDID     ');
    sql.Add(' FROM BasicCodeDetail      ');
    sql.Add(' WHERE BCID = ''BC013''    '); //금속검출 개선조치
    sql.Add(' ORDER BY BCDID            ');
    open;

    cxEditRepositoryCBBox_Contents.Properties.Items.Clear;
    for var I := 0 to RecordCount -1 do
    begin
      cxEditRepositoryCBBox_Contents.Properties.Items.Add(FieldByName('BCDName').AsString);

      Next;
    end;
  end;

  // 시편테스트 부적격 사유
  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' SELECT BCDName, BCDID     ');
    sql.Add(' FROM BasicCodeDetail      ');
    sql.Add(' WHERE BCID = ''BC016''    '); //시편테스트 부적격 사유
    sql.Add(' ORDER BY BCDID            ');
    open;

    cxEditRepositoryCBox_basic.Properties.Items.Clear;
    for var I := 0 to RecordCount -1 do
    begin
      cxEditRepositoryCBox_basic.Properties.Items.Add(FieldByName('BCDName').AsString);

      Next;
    end;
  end;

  // 시편테스트 개선조치사항
  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' SELECT BCDName, BCDID     ');
    sql.Add(' FROM BasicCodeDetail      ');
    sql.Add(' WHERE BCID = ''BC017''    '); //시편테스트 개선조치
    sql.Add(' ORDER BY BCDID            ');
    open;

    cxEditRepositoryCBox_contents.Properties.Items.Clear;
    for var I := 0 to RecordCount -1 do
    begin
      cxEditRepositoryCBox_contents.Properties.Items.Add(FieldByName('BCDName').AsString);

      Next;
    end;
  end;
  cxBtn_NewClick(self);
end;

//form resize
procedure TCCPMetalCheckForm.FormShow(Sender: TObject);
begin
  inherited;
//  cxEdit_writer.Text := datamodule.LoginUserName;
//  cxLabel1.Caption := '작성자' + #13 + '(QA팀장)';
//  cxLabel4.Caption := '검토자' + #13 + '(생산2총괄팀장)';
//  cxLabel3.Caption := '승인자' + #13 + '(Haccp팀장)';
end;

procedure TCCPMetalCheckForm.MetalCount(CheckDate: string);
begin
  with datamoduleform.FDQuerySetting(UniQuery_MetalCheck) do
  begin
    close;
    sql.Clear;
    sql.Add('     select count(a.ItemNo) as Cnt                                               ');
    sql.Add('       from MetalCheck a                                                         ');
    sql.Add(' inner join masteritem b	on a.ItemNo = b.ItemID                                  ');
    sql.Add('      where checkdate between :CheckDate and dateadd(day, 1, :CheckDate)         ');
    sql.Add('        and a.note is null                                                       ');
    sql.Add('        and a.MetalNo = case when :MetalNo = 0 then a.MetalNo else :MetalNo end  ');
    ParamByName('CheckDate').Value := CheckDate;
    if cxLkCBBox_Facility.Text = '' then
    begin
      ParamByName('MetalNo').Value := 0;
    end
    else
    begin
      ParamByName('MetalNo').Value := cxLkCBBox_Facility.EditValue;
    end;
    open;
  end;
end;

procedure TCCPMetalCheckForm.MetalNoneCount(CheckDate : string);
begin
  with datamoduleform.FDQuerySetting(UniQuery_Count) do
  begin
    close;
    sql.Clear;
    sql.Add('     select b.ItemName, count(a.ItemNo) as Cnt                                   ');
    sql.Add('       from MetalCheckNone a                                                     ');
    sql.Add(' inner join masteritem b	on a.ItemNo = b.ItemID                                  ');
    sql.Add('      where checkdate between :CheckDate and dateadd(day, 1, :CheckDate)         ');
    sql.Add('        and a.MetalNo = case when :MetalNo = 0 then a.MetalNo else :MetalNo end  ');
    sql.Add('        and a.note is null                                                       ');
    sql.Add('   group by b.ItemName                                                           ');
    ParamByName('CheckDate').Value := CheckDate;
    if cxLkCBBox_Facility.Text = '' then
    begin
      ParamByName('MetalNo').Value := 0;
    end
    else
    begin
      ParamByName('MetalNo').Value := cxLkCBBox_Facility.EditValue;
    end;

    open;
  end;
end;

procedure TCCPMetalCheckForm.cxGridDBTv_data_confirmerCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (VarToStr(AViewInfo.Value) = '승인요청중') then
  begin
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TCCPMetalCheckForm.cxGridDBTv_data_reviewerCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (VarToStr(AViewInfo.Value) = '검토중') then
  begin
    ACanvas.Font.Color := clRed;
  end;
end;

procedure TCCPMetalCheckForm.cxGridTv_checkEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  AAllow := False;
  if (Sender.DataController.Values[Sender.DataController.FocusedRecordIndex, cxGridTv_check_Result.Index] = '부적격') and
     (AItem.Index in [cxGridTv_check_basic.Index, cxGridTv_check_contents.Index]) then
  begin
    AAllow := True;
  end;
end;

procedure TCCPMetalCheckForm.cxGridTv_ListEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  AAllow := False;
  if (Sender.DataController.Values[Sender.DataController.FocusedRecordIndex, cxGridTv_List_result.Index] = '검출') and
     (AItem.Index in [cxGridTv_List_basic.Index, cxGridTv_List_contents.Index]) then
  begin
    AAllow := True;
  end;
end;

//이탈사유, 조치사항 내용 변경시
procedure TCCPMetalCheckForm.cxGridTv_List_EditValueChanged(Sender: TObject);
begin
  inherited;
  cxGridTv_List.Controller.EditingController.Edit.PostEditValue;
  cxGridTv_List.DataController.SetValue(cxGridTv_List.DataController.FocusedRecordIndex,
    cxGridTv_List_DataCheck.Index, 'C');
end;

//설비 콤보박스 변경 시
procedure TCCPMetalCheckForm.cxLkCBBox_FacilityPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

//  cxDEdit_date.Text := '';
//  cxEDit_Writer.Text := LoginUserName;

  //시편테스트 그룹박스 세팅
  MetalCheck_Ready := '';
  Check_Flag := False;
  Last_Check := False;
  Count_Check := 0;


//  FDQuery_list.Close;
end;

procedure TCCPMetalCheckForm.DS_listDataChange(Sender: TObject; Field: TField);
begin
  inherited;

end;

//data list
procedure TCCPMetalCheckForm.dxDateTimeWheelPickerPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

//  with DataModuleForm.FDSpSetting(FDSp_Data,'usp_CCPMetalCheck','L') do
//  begin
//    ParamByName('@MetalDate').AsString := Formatdatetime('YYYY-MM', dxDateTimeWheelPicker.DateTime);
////    ParamByName('@HaccpMenu').AsString := HaccpSelectionMenuName;
//    open;
//  end;

  with DataModuleForm.FDQuerySetting(FDQuery_data) do
  begin
    SQL.Add(' SELECT WriteDate,               ');
    SQL.Add('       CheckWriter,              ');
    SQL.Add('       CheckReviewer,            ');
    SQL.Add('       CheckConfirmer            ');
    SQL.Add(' FROM HaccpApproval              ');
    SQL.Add(' WHERE LEFT(WriteDate, 7) = :Date');
    SQL.Add('   AND MenuName = :MenuName      ');
    SQL.Add(' ORDER BY WriteDate              ');
    ParamByName('Date'    ).AsString := Formatdatetime('yyyy-MM', dxDateTimeWheelPicker.DateTime);
    ParamByName('MenuName').AsString := CCPMetalCheckForm.Caption;
    Open;
  end;
end;

//new button
procedure TCCPMetalCheckForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  cxLkCBBox_Facility.Text := '';
  cxDEdit_date.Clear;

  cxEdit_Writer.Text := LoginUserName;
  cxEdit_reviewer.Clear;
  cxEdit_confirmer.Clear;

  cxBtn_Save.Enabled := True;
//  cxBtn_Confirmer.Enabled := False;
//  cxBtn_Reviewer.Enabled  := False;
//  cxBtn_approval.Enabled  := False;

  //시편테스트 그룹박스 세팅
  SaveCheck_Flag := False;
  MetalCheck_Ready := '';
  Check_Flag := False;
  Last_Check := False;
  Count_Check := 0;


  cxGridTv_check.DataController.RecordCount := 0;
  cxGridTv_List.DataController.RecordCount := 0;
//  FDQuery_list.Close;
  ChangeEnable;
  SetApprobalButtons;
end;

//add button
procedure TCCPMetalCheckForm.cxBtn_addClick(Sender: TObject);
begin
  inherited;

  EssentialItem(cxLkCBBox_Facility, '설비');
  EssentialItem(cxDEdit_date, '점검일자');

  cxGridTv_check.DataController.RecordCount := cxGridTv_check.DataController.RecordCount + 1;
  cxGridTv_check.DataController.SetValue(
    cxGridTv_check.DataController.RecordCounT-1, cxGridTv_check_metal.Index, cxLkCBBox_Facility.Text);

  cxGridTv_check.DataController.FocusedRecordIndex := cxGridTv_check.DataController.RecordCount - 1;
  ChangeEnable;
end;

//시편테스트
procedure TCCPMetalCheckForm.cxEditOKPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
//  cxBtnQAOK.Enabled     := cxEditQAOK.Text = '';
//  cxBtnProdOK.Enabled   := (cxEditProdOK.Text = '') and not(cxEditQAOK.Text = '');
//  cxBtnHaccpOK.Enabled  := (cxEditHaccpOK.Text = '') and not(cxEditQAOK.Text = '');
end;

procedure TCCPMetalCheckForm.cxEditRepositoryCBBox_ContentsPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxGridTv_List.Controller.EditingController.Edit.PostEditValue;
  cxGridTv_List.DataController.SetValue(cxGridTv_List.DataController.FocusedRecordIndex,
    cxGridTv_List_DataCheck.Index, 'C');
end;

procedure TCCPMetalCheckForm.cxEditRepositoryCBBox_reasonPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxGridTv_List.Controller.EditingController.Edit.PostEditValue;
  cxGridTv_List.DataController.SetValue(cxGridTv_List.DataController.FocusedRecordIndex,
    cxGridTv_List_DataCheck.Index, 'C');
end;

//시편테스트를 시작합니다 버튼
procedure TCCPMetalCheckForm.cxBtn_MetalCheckClick(Sender: TObject);
begin
  inherited;

end;


//metalcheck timer
procedure TCCPMetalCheckForm.Timer_CntTimer(Sender: TObject);
begin
  inherited;
  if cxDEdit_date.Text <> '' then
  begin
    // 해당일자 통과수량 정보
    MetalNoneCount(cxDEdit_date.Text);
    // 해당일자 검출수량 정보
    MetalCount(cxDEdit_date.Text);
  end;
end;

procedure TCCPMetalCheckForm.Timer_checkTimer(Sender: TObject);
begin

end;

//시편테스트 종료 버튼
procedure TCCPMetalCheckForm.cxBtn_finishClick(Sender: TObject);
begin
  inherited;

end;

//취소
procedure TCCPMetalCheckForm.cxBtn_NonClick(Sender: TObject);
begin
  inherited;

end;


//취소 버튼
procedure TCCPMetalCheckForm.cxBtn_cancelClick(Sender: TObject);
begin
  inherited;

end;

//DATA LIST double click
procedure TCCPMetalCheckForm.cxGridDBTv_dataCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var ColCnt : Integer;
begin
  inherited;
  cxLkCBBox_Facility.Text := '';
  cxDEdit_date.Text       := FDQuery_data.FieldByName('WriteDate').AsString;

  // 결재창 조회 - 확인 필요
  DataModuleForm.SelectHaccpApproval(FormatDateTime('yyyy-MM-dd',cxDEdit_date.Date), CCPMetalCheckForm.Caption, '',
    cxEdit_writer, cxEdit_reviewer, cxEdit_confirmer);

  // 결재 버튼 활성화
  SetApprobalButtons;

//  cxBtnQAOK.Enabled     := cxEditQAOK.Text = '';
//  cxBtnProdOK.Enabled   := (cxEditProdOK.Text = '') and not(cxEditQAOK.Text = '');
//  cxBtnHaccpOK.Enabled  := (cxEditHaccpOK.Text = '') and not(cxEditQAOK.Text = '');
  // 결재 이후에는 저장 못하게
//  cxBtnSave.Enabled   := (cxEdit_writer.Text = '') and (cxEdit_confirmer.Text = '');

  cxGridTv_List.OptionsData.Editing := (cxEdit_reviewer.Text = '') and (cxEdit_confirmer.Text = '');


  //해당 일자의 시편테스트 정보 가져온다
  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    sql.Add(' exec usp_CCPMetalCheck @option = :option, @MetalDate = :MetalDate ');
    ParamByName('option').AsString     := '1';
    ParamByName('MetalDate').AsString  := cxDEdit_date.Text;
    open;

    last;
    first;

    cxGridTv_check.DataController.RecordCount := FDQuery_comm.RecordCount;
    cxGridTv_check.DataController.BeginUpdate;
    for loopcnt := 0 to FDQuery_comm.RecordCount -1 do
    begin
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_metal.Index, FieldByName('MetalName').AsString);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_time.Index,  FieldByName('MetalCheckTime').AsString);

      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_fe_value.Index,        FieldByName('MetalFe').value);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_FeGoodsv_value.Index,  FieldByName('MetalFeGoods').value);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_sus_value.Index,       FieldByName('MetalSus').value);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_SusGoods_value.Index,  FieldByName('MetalSusGoods').value);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_Goods_value.Index,     FieldByName('MetalGoods').value);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_Result.Index,          FieldByName('ResultFlag').AsString);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_Basic.Index,           FieldByName('MetalBasic').AsString);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_contents.Index,        FieldByName('Metalcontents').AsString);

      //그리드에 이미지 집어 넣기
      for Colcnt := 2 to 6 do
      begin
        if Fields.Fields[ColCnt].AsBoolean = True then
        begin
          cxGridTv_check.DataController.Values[loopcnt, ColCnt] := cxImage_waring.EditValue;
        end
        else if Fields.Fields[ColCnt].AsString = '' then
        begin
          cxGridTv_check.DataController.Values[loopcnt, ColCnt] := cxImage_TimeOut.EditValue;
        end
        else
        begin
          cxGridTv_check.DataController.Values[loopcnt, ColCnt] := cxImage_none.EditValue;
        end;
      end;

      Next;
    end;
    cxGridTv_check.DataController.EndUpdate;
  end;

  //해당월에 금속제품기 제품 통과 정보
  cxRGroupSearchTypePropertiesChange(self);

  //해당일자 통과수량 정보
  MetalNoneCount(cxDEdit_date.Text);

  // 해당일자 검출수량 정보
  MetalCount(cxDEdit_date.Text);
end;

//결재요청
procedure TCCPMetalCheckForm.cxBtn_approvalClick(Sender: TObject);
begin
  inherited;

  // 결재
  case TcxControl(Sender).Tag of
    4:
      begin
        cxEdit_writer.Text := LoginUserName;
      end;
    5:
      begin
        cxEdit_reviewer.Text := LoginUserName;
      end;
    6:
      begin
        cxEdit_confirmer.Text := LoginUserName;
      end;
  end;

  //확인필요
  DataModuleForm.UpdateHaccpApproval(FormatDateTime('yyyy-MM-dd',cxDEdit_date.Date), CCPMetalCheckForm.Caption, '',
    cxEdit_writer.Text, cxEdit_reviewer.Text, cxEdit_confirmer.Text);

  dxDateTimeWheelPickerPropertiesEditValueChanged(Self);

  //버튼들 확성화 여부
  SetApprobalButtons;

end;

//검토
procedure TCCPMetalCheckForm.cxBtn_ReviewerClick(Sender: TObject);
begin
  inherited;
  try
    with FDQuery_comm do
    begin
      connection := datamoduleform.FDConnection;
      close;
      sql.Clear;
      sql.Add(' UPDATE CCPMetalCheckList SET    ');
      sql.Add(' R_Flag = ''F''                  ');
      if cxEdit_confirmer.Text = '' then
      begin
        sql.Add(' ,C_Flag = ''R''                 ');
      end;
      sql.Add(' ,MetalReviewer = :MetalReviewer ');
  //    sql.Add(' ,MetalConfimer = :MetalConfimer ');
      sql.Add(' WHERE MetalDate = :MetalDate    ');
      ParamByName('MetalReviewer').AsString := LoginUserName;
  //    ParamByName('MetalConfimer').AsString := '승인 요청중';
      ParamByName('MetalDate').AsString     := cxDEdit_date.Text;
      ExecSQL;
    end;
  except on e : exception do

  end;
  ShowMessage('검토처리를 완료하였습니다.');
  if cxEdit_confirmer.Text = '' then
  begin
    cxEdit_confirmer.Text := '승인요청중';
  end;
  cxBtn_Reviewer.Enabled := False;
  cxEdit_reviewer.Text := LoginUserName;
  FDQuery_data.Refresh;
end;

//승인
procedure TCCPMetalCheckForm.cxBtn_ConfirmerClick(Sender: TObject);
begin
  inherited;
  try
    with FDQuery_comm do
    begin
      connection := datamoduleform.FDConnection;
      close;
      sql.Clear;
      sql.Add(' UPDATE CCPMetalCheckList SET    ');
  //    sql.Add(' R_Flag = ''F'',                  ');
      sql.Add(' C_Flag = ''F''                 ');
  //    if cxEdit_reviewer.Text = '검토중' then
  //    begin
  //      sql.Add(' ,MetalReviewer = :MetalReviewer ');
  //      ParamByName('MetalReviewer').AsString := LoginUserName;
  //      cxEdit_reviewer.Text  := LoginUserName;
  //      cxBtn_Reviewer.Enabled := False;
  //    end;
      sql.Add(' ,MetalConfirmer = :MetalConfirmer ');
      sql.Add(' WHERE MetalDate = :MetalDate    ');
      ParamByName('MetalConfirmer').AsString := LoginUserName;
      ParamByName('MetalDate').AsString     := cxDEdit_date.Text;
      ExecSQL;
    end;
    except on e : exception do

  end;
  ShowMessage('승인처리를 완료하였습니다.');
  cxBtn_Confirmer.Enabled := False;
  cxEdit_confirmer.Text := LoginUserName;
  FDQuery_data.Refresh;
end;

//save button - 금속검출기 제품통과 데이터만 저장 하면 됨

procedure TCCPMetalCheckForm.cxBtn_SaveClick(Sender: TObject);
var
  i : integer;
begin
  inherited;

  if cxGridTv_List.DataController.RecordCount = 0 then
  begin
    exit;
  end;

  for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
  begin
    if VarToStr(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_DataCheck.Index]) <> 'C' then
    begin
      Continue;
    end;
    try
      with DataModuleForm.FDSpSetting(nil, 'usp_CCPMetalCheck', 'S') do
      begin
        ParamByName('@Metalno').AsInteger            := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_no.Index];
        ParamByName('@MetalCheckTime').AsString      := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_time.Index];
        ParamByName('@MetalName').AsString           := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_name.Index];
        ParamByName('@MetalCheckResult').AsString    := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_result.Index];
        ParamByName('@MetalBasicReason').AsString    := VarToStr(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_basic.Index]);
        ParamByName('@MetalActionContents').AsString := VarToStr(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_contents.Index]);
        ParamByName('@ItemID').Value                 := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_ItemID.Index];
        ExecProc;
      end;
    except on e : exception do

    end;
    cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_DataCheck.Index, '');
  end;

  if cxGridTv_check.DataController.RecordCount > 0 then
  begin
    for i := 0 to cxGridTv_check.DataController.RecordCount -1 do
    begin
      with DataModuleForm.FDSpSetting(nil, 'usp_CCPMetalCheck', 'C') do
      begin
        ParamByName('@MetalBasic').AsString    := VarToStr(cxGridTv_check.DataController.Values[i, cxGridTv_check_basic.Index]);
        ParamByName('@MetalContents').AsString := VarToStr(cxGridTv_check.DataController.Values[i, cxGridTv_check_contents.Index]);
        ParamByName('@MetalCheckTime').Value   := cxGridTv_check.DataController.Values[i, cxGridTv_check_time.Index];
        ExecProc;
      end;
    end;
  end;

  ShowMessage(DataModule.MessageToSave);
end;

procedure TCCPMetalCheckForm.cxBtn_SearchClick(Sender: TObject);
var
  Colcnt: Integer;
begin
  inherited;
  if cxDEdit_date.Text = '' then
  begin
    showmessage('점검일자를 입력해주세요.');
    exit;
  end;

  // 결재창 조회
  DataModuleForm.SelectHaccpApproval(FormatDateTime('yyyy-MM-dd',cxDEdit_date.Date), CCPMetalCheckForm.Caption, '',
    cxEdit_writer, cxEdit_reviewer, cxEdit_confirmer);
  // 결재 버튼 활성화
//  cxBtnQAOK.Enabled     := cxEditQAOK.Text = '';
//  cxBtnProdOK.Enabled   := (cxEditProdOK.Text = '') and not(cxEditQAOK.Text = '');
//  cxBtnHaccpOK.Enabled  := (cxEditHaccpOK.Text = '') and not(cxEditQAOK.Text = '');
  // 결재 이후에는 저장 삭제 못하게
  cxBtn_Save.Enabled   := (cxEdit_reviewer.Text = '') and (cxEdit_confirmer.Text = '');
  cxGridTv_List.OptionsData.Editing := (cxEdit_reviewer.Text = '') and (cxEdit_confirmer.Text = '');
  //해당 일자의 시편테스트 정보 가져온다
  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    SQL.Add(' Exec usp_CCPMetalCheck @Option = :Option, ');
    if not (cxLkCBBox_Facility.Text = '') then
    begin
      SQL.Add(' @MetalNo    = :MetalNo, ');
      ParamByName('MetalNo' ).AsInteger := cxLkCBBox_Facility.EditValue;
    end;
    SQL.Add(' @MetalDate  = :MetalDate');
    ParamByName('Option'    ).AsString  := '1';
    ParamByName('MetalDate' ).AsString  := cxDEdit_date.Text;
    open;

    last;
    First;

    cxGridTv_check.DataController.RecordCount := FDQuery_comm.RecordCount;
    cxGridTv_check.DataController.BeginUpdate;
    for loopcnt := 0 to FDQuery_comm.RecordCount -1 do
    begin
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_metal.Index, FieldByName('MetalName').AsString);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_time.Index,  FieldByName('MetalCheckTime').AsString);

      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_fe_value.Index,        FieldByName('MetalFe').value);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_FeGoodsv_value.Index,  FieldByName('MetalFeGoods').value);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_sus_value.Index,       FieldByName('MetalSus').value);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_SusGoods_value.Index,  FieldByName('MetalSusGoods').value);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_Goods_value.Index,     FieldByName('MetalGoods').value);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_Result.Index,          FieldByName('ResultFlag').AsString);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_Basic.Index,           FieldByName('MetalBasic').AsString);
      cxGridTv_check.DataController.SetValue(loopcnt, cxGridTv_check_contents.Index,        FieldByName('Metalcontents').AsString);
      //그리드에 이미지 집어 넣기
      for Colcnt := 2 to 6 do
      begin
        if Fields.Fields[ColCnt].AsBoolean = True then
        begin
          cxGridTv_check.DataController.Values[loopcnt, ColCnt] := cxImage_waring.EditValue;
        end
        else if Fields.Fields[ColCnt].AsString = '' then
        begin
          cxGridTv_check.DataController.Values[loopcnt, ColCnt] := cxImage_TimeOut.EditValue;
        end
        else
        begin
          cxGridTv_check.DataController.Values[loopcnt, ColCnt] := cxImage_none.EditValue;
        end;
      end;

      Next;
    end;
    cxGridTv_check.DataController.EndUpdate;
  end;


  //해당일에 금속제품기 제품 통과 정보
  cxRGroupSearchTypePropertiesChange(self);
  SetApprobalButtons;

  // 해당일자 통과수량 정보
  MetalNoneCount(cxDEdit_date.Text);
  // 해당일자 검출수량 정보
  MetalCount(cxDEdit_date.Text);
end;

procedure TCCPMetalCheckForm.ChangeEnable;
begin
 
end;

procedure TCCPMetalCheckForm.cxGridTv_List_resultCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Item.Index = cxGridTv_List_result.Index then
  begin
    if AViewInfo.GridRecord.Values[cxGridTv_List_result.Index] = '시편' then
    begin
      ACanvas.Font.Color := clBlue;
    end
    else if AViewInfo.GridRecord.Values[cxGridTv_List_result.Index] = '검출' then
    begin
      ACanvas.Font.Color := clRed;
    end;
  end;
end;

procedure TCCPMetalCheckForm.cxRGroupSearchTypePropertiesChange(
  Sender: TObject);
begin
  inherited;
  //해당일에 금속제품기 제품 통과 정보
  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    SQL.Add(' Exec usp_CCPMetalCheck    ');
    SQL.Add(' @Option = :Option, @SearchDivision = :SearchDivision, @MetalDate = :MetalDate, @MetalNo = :Metalno ');
//    if not (cxLkCBBox_Facility.Text = '') then
//    begin
//      SQL.Add(' @MetalNo    = :MetalNo, ');
//      ParamByName('MetalNo' ).AsInteger := cxLkCBBox_Facility.EditValue;
//    end;
    if cxLkCBBox_Facility.Text = '' then
    begin
      ParamByName('@MetalNo').value := 0;
    end
    else
    begin
      ParamByName('@MetalNo').value := cxLkCBBox_Facility.EditValue;
    end;

    ParamByName('Option'    ).AsString  := '2';
    ParamByName('MetalDate' ).AsString  := cxDEdit_date.Text;
    if cxRGroupSearchType.ItemIndex = 0 then
    begin
      ParamByName('SearchDivision').AsString := 'A';
    end
    else if cxRGroupSearchType.ItemIndex = 1 then
    begin
      ParamByName('SearchDivision').AsString := 'S';
    end
    else begin
      ParamByName('SearchDivision').AsString := 'G';
    end;
    Open;

    Last;
    First;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.RecordCount := FDQuery_comm.RecordCount;
    cxGridTv_List.DataController.BeginUpdate;
    First;

    for loopcnt := 0 to FDQuery_comm.RecordCount -1 do
    begin
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_time.Index,        FieldByName('CheckDate').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_time2.Index,       FieldByName('CheckDate2').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_name.Index,        FieldByName('MetalName').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_result.Index,      FieldByName('MetalResult').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_basic.Index,       FieldByName('BasicReason').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_contents.Index,    FieldByName('ActionContents').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_no.Index,          FieldByName('MetalNo').AsInteger);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ItemID.Index,      FieldByName('ItemID').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ItemName.Index,    FieldByName('ItemName').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_MetalSenser.Index, FieldByName('MetalSenser').AsString);
      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

//버튼들 활성화 여부
procedure TCCPMetalCheckForm.SetApprobalButtons;
begin
  //결재버튼 활성화
  if (cxEdit_Writer.Text = '')  then
  begin
    cxBtn_approval.Enabled  := True;
  end
  else begin
    cxBtn_approval.Enabled  := False;
  end;

  if (cxEdit_Reviewer.Text = '') then
  begin
    cxBtn_Reviewer.Enabled  := True;
  end
  else begin
    cxBtn_Reviewer.Enabled  := False;
  end;

  if (cxEdit_Confirmer.Text = '') then
  begin
    cxBtn_Confirmer.Enabled := True;
  end
  else begin
    cxBtn_Confirmer.Enabled := False;
  end;

  // 결재 이후에는 저장 못하게
  if cxEdit_Reviewer.Text = '' then
  begin
    cxBtn_Save.Enabled   := True;
  end
  else begin
    cxBtn_Save.Enabled   := False;
  end;
end;

end.


