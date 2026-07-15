unit CCPWaterActiviyUnit;

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
  dxScrollbarAnnotations, Data.DB, cxDBData, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxWheelPicker, dxNumericWheelPicker,
  dxDateTimeWheelPicker, cxLabel, cxTimeEdit, cxCurrencyEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, cxRadioGroup,
  cxEditRepositoryItems, MemDS, DBAccess, Uni, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtonEdit, System.ImageList, Vcl.ImgList, cxImageList;

type
  TCCPWaterActiviyForm = class(TBaseChildForm)
    cxGBox_Right: TcxGroupBox;
    cxGBox_Approval: TcxGroupBox;
    cxLabel119: TcxLabel;
    cxLabel120: TcxLabel;
    cxLabel121: TcxLabel;
    cxBtn_dam: TcxButton;
    cxBtn_review: TcxButton;
    cxEdit_Writer: TcxTextEdit;
    cxEdit_Reviewer: TcxTextEdit;
    cxBtn_confirm: TcxButton;
    cxEdit_Confirmer: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    dxDateTimeWheelPicker: TdxDateTimeWheelPicker;
    cxGrid_data: TcxGrid;
    cxGridDBTv_data: TcxGridDBTableView;
    cxGridDBTv_data_date: TcxGridDBColumn;
    cxGridDBTv_data_facility: TcxGridDBColumn;
    cxGridDBTv_data_data_reviewer: TcxGridDBColumn;
    cxGridDBTv_data_confirmer: TcxGridDBColumn;
    cxGridLv_data: TcxGridLevel;
    cxGBox_Client: TcxGroupBox;
    cxGBox_input: TcxGroupBox;
    cxLbl2: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxEdit_limit: TcxTextEdit;
    cxGrid_List: TcxGrid;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_name: TcxGridColumn;
    cxGridTv_List_time: TcxGridColumn;
    cxGridTv_List_qty: TcxGridColumn;
    cxGridTv_List_value: TcxGridColumn;
    cxGridTv_List_decision: TcxGridColumn;
    cxGridTv_List_reason: TcxGridColumn;
    cxGridTv_List_action: TcxGridColumn;
    cxGridTv_List_ID: TcxGridColumn;
    cxGridLv_List: TcxGridLevel;
    cxEditRepository: TcxEditRepository;
    cxEditRepository_decision: TcxEditRepositoryRadioGroupItem;
    cxEditRepository_Reason: TcxEditRepositoryComboBoxItem;
    UniQuery_basic: TUniQuery;
    UniQuery_comm: TUniQuery;
    cxBtn_Add: TcxButton;
    cxLbl1: TcxLabel;
    cxLkCBBox_Facility: TcxLookupComboBox;
    UniQuery_facility: TUniQuery;
    DS_Facility: TDataSource;
    UniQuery_data: TUniQuery;
    DS_Data: TDataSource;
    cxGridTv_List_mode: TcxGridColumn;
    cxBtn_Search2: TcxButton;
    btn_state: TcxButton;
    cxImageList: TcxImageList;
    uq_Update: TUniQuery;
    cxBtn_Goods: TcxButton;
    cxEdit_ItemName: TcxTextEdit;
    cxEdit_ItemID: TcxTextEdit;
    FDQuery_comm: TUniQuery;
    cxGridTv_List_CheckOndo: TcxGridColumn;
    cxGridTv_List_SameTimeCheck: TcxGridColumn;
    cxGridTv_List_ItemName: TcxGridColumn;
    cxGridDBTv_data_writer: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxDateTimeWheelPickerPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_AddClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxGridDBTv_dataCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridTv_List_valuePropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_damClick(Sender: TObject);
    procedure cxLkCBBox_FacilityPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_Search2Click(Sender: TObject);
    procedure cxBtn_reviewClick(Sender: TObject);
    procedure btn_stateClick(Sender: TObject);
    procedure cxBtn_GoodsClick(Sender: TObject);
    procedure cxGridDBTv_data_noGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetApprobalButtons;
  end;

var
  CCPWaterActiviyForm: TCCPWaterActiviyForm;
  FormName : String = '수분활성도';
  loopcnt : Integer;
  FridgeCode : string;

implementation

uses DataModule, MainUnit, ItemModalUnit;

{$R *.dfm}

procedure TCCPWaterActiviyForm.FormCreate(Sender: TObject);
begin
  inherited;

  dxDateTimeWheelPicker.DateTime := Date;
  dxDateTimeWheelPickerPropertiesEditValueChanged(self);

  with DataModuleForm.FDQuerySetting(UniQuery_facility) do
  begin
    sql.Add(' SELECT * FROM Metal             ');
    sql.Add(' WHERE LEFT(MetalCode,2) =''CW'' ');
    open;
  end;

  //리스트의 한계기준 이탈 사유 세팅
  with DataModuleForm.FDQuerySetting(UniQuery_basic) do
  begin
    sql.Add(' SELECT BCDName, BCDID     ');
    sql.Add(' FROM BasicCodeDetail      ');
    sql.Add(' WHERE BCID = ''BC013''    '); //수분활성도 이탈 사유
    sql.Add(' ORDER BY BCDID            ');
    open;

    cxEditRepository_reason.Properties.Items.Clear;
    for loopcnt := 0 to UniQuery_basic.RecordCount -1 do
    begin
      cxEditRepository_reason.Properties.Items.Add(FieldByName('BCDName').AsString);

      Next;
    end;
  end;
  cxLkCBBox_Facility.ItemIndex := 0;
end;

procedure TCCPWaterActiviyForm.dxDateTimeWheelPickerPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  with DataModuleForm.FDQuerySetting(UniQuery_data) do
  begin
    SQL.Add(' SELECT WriteDate,               ');
    SQL.Add('       CheckWriter,              ');
    SQL.Add('       CheckReviewer,            ');
    SQL.Add('       CheckConfirmer            ');
    SQL.Add(' FROM HaccpApproval              ');
    SQL.Add(' WHERE LEFT(WriteDate, 7) = :Date');
    SQL.Add('   AND MenuName = :MenuName      ');
    SQL.Add(' ORDER BY WriteDate DESC         ');
    ParamByName('Date'    ).AsString := Formatdatetime('yyyy-MM', dxDateTimeWheelPicker.DateTime);
    ParamByName('MenuName').AsString := FormName;
    Open;
  end;

//  with DataModuleForm.FDQuerySetting(UniQuery_data) do
//  begin
//    sql.Add(' SELECT TempDate As CheckDate ,Writer ,Reviewer ,Confirmer ');
//    sql.Add(' ,(SELECT Name FROM Metal WHERE MetalCode = C.FridgeCode) AS DIVISION ');
//    sql.Add(' FROM CCPTempApproval AS C                ');
//    sql.Add(' WHERE LEFT(TempDate, 7) = :CheckDate     ');
//    sql.Add(' AND   LEFT(FridgeCode, 2) = ''CW''       ');
//    ParamByName('CheckDate').AsString := Formatdatetime('YYYY-MM', dxDateTimeWheelPicker.DateTime);
//    open;
//  end;
end;

//new
procedure TCCPWaterActiviyForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Approval);

  cxLkCBBox_Facility.Text := '';
  cxDEdit_date.Date := Date;

  cxEDit_Writer.Text := LoginUserName;
  cxBtn_dam.Enabled := True;
  cxBtn_review.Enabled := True;
  cxBtn_confirm.Enabled := True;

  cxGridTv_List.DataController.RecordCount := 0;

  SetApprobalButtons;
end;

//save
procedure TCCPWaterActiviyForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  EssentialItem(cxLkCBBox_Facility, '설비');
  EssentialItem(cxDEdit_date, '점검일자');

  for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
  begin
    with DataModuleForm.FDQuerySetting(UniQuery_comm) do
    begin
      //INSERT
//      if cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_mode.Index] = 'I' then
//      begin
//        sql.Add(' INSERT INTO CCPWaterActivityCheck Values ( ');
//        sql.Add(' :CheckID     ');
//        sql.Add(' ,:CheckDate  ');
//        sql.Add(' ,:MetalNo    ');
//        sql.Add(' ,:MetalName  ');
//        sql.Add(' ,:ItemName   ');
//        sql.Add(' ,:CheckTime  ');
//        sql.Add(' ,:CheckQty   ');
//        sql.Add(' ,:CheckValue ');
//        sql.Add(' ,:Decision   ');
//        sql.Add(' ,:Reason     ');
//        sql.Add(' ,:ActionNote ');
//        sql.Add(' ) ');
//        ParamByName('CheckID').Value    := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_ID.Index];
//        ParamByName('CheckDate').Value  := cxDEdit_date.Text;
//        ParamByName('MetalNo').Value    := cxLkCBBox_Facility.EditValue;
//        ParamByName('MetalName').Value  := cxLkCBBox_Facility.Text;
//        ParamByName('ItemName').Value   := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_name.Index];
//        ParamByName('CheckTime').Value  := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_time.Index];
//        ParamByName('CheckQty').Value   := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_qty.Index];
//        ParamByName('CheckValue').Value := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_value.Index];
//        ParamByName('Decision').Value   := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_decision.Index];
//        ParamByName('Reason').Value     := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_reason.Index];
//        ParamByName('ActionNote').Value := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_action.Index];
//      end
//      //UPDATE
//      else begin
        sql.Add(' UPDATE CCPWaterActivityCheck SET ');
        sql.Add('    Reason = :Reason              ');
        sql.Add('   ,ActionNote = :ActionNote      ');
        sql.Add(' WHERE CheckID = :CheckID         ');
        sql.Add(' AND   CheckDate = :CheckDate     ');
        sql.Add(' AND   MetalNo = :MetalNo     ');
        ParamByName('CheckID').Value    := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_ID.Index];
        ParamByName('CheckDate').Value  := cxDEdit_date.Text;
        ParamByName('MetalNo').Value    := cxLkCBBox_Facility.EditValue;
        ParamByName('Reason').Value     := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_reason.Index];
        ParamByName('ActionNote').Value := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_action.Index];
//      end;

      try
        ExecSQL;
      except
        SaveToError := True;
        break;
      end;
    end;
  end;

  if SaveToError then
  begin
    ShowMessage(MessageToError);
  end
  else begin
    ShowMessage(MessageToSave);
    UniQuery_data.Refresh;

    for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
    begin
      cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_mode.Index] := 'U';
    end;
  end;

  cxBtn_damClick(self);

  SaveToError := False;
end;

//search
procedure TCCPWaterActiviyForm.cxBtn_Search2Click(Sender: TObject);
begin
  inherited;
//SELECT a.*, mi.ItemName FROM CCPWaterActivityCheck a
//left join MasterItem mi on a.ItemName = mi.ItemID
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' SELECT a.*, mi.ItemName as "IN" FROM CCPWaterActivityCheck a ');
    sql.Add(' left join MasterItem mi on a.ItemName = mi.ItemID    ');
    sql.Add(' WHERE a.CheckDate = :CheckDate                       ');
    if cxLkCBBox_Facility.Text <> '' then
    begin
      sql.Add(' AND MetalNo = :MetalNo ');
      ParamByName('MetalNo').Value := cxLkCBBox_Facility.EditValue;
    end;

    ParamByName('CheckDate').Value  := cxDEdit_date.Text;
    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.RecordCount := UniQuery_comm.RecordCount;
    cxGridTv_List.DataController.BeginUpdate;
    for loopcnt := 0 to UniQuery_comm.RecordCount -1 do
    begin
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_name.Index,         FieldByName('Itemname').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_time.Index,         FieldByName('CheckTime').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_qty.Index,          FieldByName('CheckQty').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_value.Index,        FieldByName('CheckValue').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_decision.Index,     FieldByName('Decision').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_reason.Index,       FieldByName('Reason').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_action.Index,       FieldByName('ActionNote').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ID.Index,           FieldByName('CheckID').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_mode.Index,         'U');
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckOndo.Index,    FieldByName('CheckOndo').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_SameTimeCheck.Index,FieldByName('SameTimeCheck').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_ItemName.Index,     FieldByName('IN').Value);

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

//datalist click
procedure TCCPWaterActiviyForm.cxGridDBTv_dataCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with UniQuery_data do
  begin
//    cxLkCBBox_Facility.Text := FieldByName('Division').AsString;
    cxDEdit_date.Text       := FieldByName('WriteDate').AsString;
    cxEdit_Writer.Text      := FieldByName('CheckWriter').AsString;
    cxEdit_Reviewer.Text    := FieldByName('CheckReviewer').AsString;
    cxEdit_Confirmer.Text   := FieldByName('CheckConfirmer').AsString;
  end;

  // 결재창 조회 - 확인 필요
  DataModuleForm.SelectHaccpApproval(FormatDateTime('yyyy-MM-dd',cxDEdit_date.Date), FormName, '',
    cxEdit_writer, cxEdit_reviewer, cxEdit_confirmer);

  //버튼들 활성화 세팅
  SetApprobalButtons;

  cxBtn_Search2Click(self);
end;

procedure TCCPWaterActiviyForm.cxGridDBTv_data_noGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index +1);
end;

//line add
procedure TCCPWaterActiviyForm.btn_stateClick(Sender: TObject);
var
  MetalNo, SameTimeCheck: Integer;
begin
  inherited;
  if cxLkCBBox_Facility.ItemIndex = -1 then
  begin
    ShowMessage('설비선택 바랍니다.');
    cxLkCBBox_Facility.SetFocus;
    Exit;
  end;
  if cxEdit_ItemID.Text = '' then
  begin
    ShowMessage('품목선택 바랍니다.');
//    cxEdit_ItemID.SetFocus;
    Exit;
  end;
  //수분활성측정 셋
  with DataModuleForm.FDQuerySetting(nil) do
  begin
    Close;
    SQL.Add('select coalesce(max(SameTimeCheck),0)+1 as "num" from CCPWaterActivityCheck');
    Open;
    SameTimeCheck := FieldByName('num').AsInteger;
  end;
  with uq_Update do
  begin
    MetalNo := UniQuery_facility.FieldByName('MetalNo').AsInteger;
    Close;
    sql.Add(' update FacilityData                ');
    sql.Add(' set OnOff = :OnOff                 ');
    sql.Add('    ,ItemID = :ItemID               ');
    sql.Add('    ,SameTimeCheck = :SameTimeCheck ');
    sql.Add(' where FacilityNum = :FacilityNum   ');
    if btn_state.OptionsImage.ImageIndex = 0 then
    begin //시작
      ParamByName('OnOff').Value       := 'Y';
      ParamByName('ItemID').Value      := cxEdit_ItemID.Text;
      ParamByName('FacilityNum').Value := MetalNo;
      ParamByName('SameTimeCheck').Value := SameTimeCheck;
      btn_state.OptionsImage.ImageIndex := 1;
      btn_state.Caption := '측정종료';
      btn_state.LookAndFeel.SkinName := 'Office2007Pink';
    end
    else
    begin //종료
      ParamByName('OnOff').Value       := 'N';
      ParamByName('ItemID').Value      := '';
      ParamByName('FacilityNum').Value := MetalNo;
      btn_state.OptionsImage.ImageIndex := 0;
      btn_state.Caption := '측정시작';
      btn_state.LookAndFeel.SkinName := 'Office2007Green';
      cxEdit_ItemName.Text := '';
      cxEdit_ItemID.Text := '';

      // 결재정보 생성  -  확인필요
      DataModuleForm.InsertHaccpApproval(FormatDateTime('yyyy-MM-dd',cxDEdit_date.Date), FormName, '');
      UniQuery_data.Refresh;
    end;
    try
      Execute;
    except on E: Exception do
      begin
        ShowMessage('Setting Error: '+ E.Message);
      end;
    end;
  end;

end;

procedure TCCPWaterActiviyForm.cxBtn_AddClick(Sender: TObject);
  var AppendIndex : Integer;
begin
  inherited;

  EssentialItem(cxLkCBBox_Facility, '설비');
  EssentialItem(cxDEdit_date, '점검일자');

  cxBtn_Search2Click(self);

  AppendIndex := cxGridTv_List.DataController.AppendRecord;
  cxGridTv_List.DataController.SetValue(AppendIndex, cxGridTv_List_name.Index, '');
  cxGridTv_List.DataController.SetValue(AppendIndex, cxGridTv_List_time.Index, FormatDateTime('YYYY-MM-DD HH:mm:SS',Now));
  cxGridTv_List.DataController.SetValue(AppendIndex, cxGridTv_List_qty.Index, 0);
  cxGridTv_List.DataController.SetValue(AppendIndex, cxGridTv_List_value.Index, 0);
  cxGridTv_List.DataController.SetValue(AppendIndex, cxGridTv_List_decision.Index, False);
  cxGridTv_List.DataController.SetValue(AppendIndex, cxGridTv_List_reason.Index, '');
  cxGridTv_List.DataController.SetValue(AppendIndex, cxGridTv_List_action.Index, '');
  cxGridTv_List.DataController.SetValue(AppendIndex, cxGridTv_List_ID.Index, cxGridTv_List.DataController.RecordCount-1);
  cxGridTv_List.DataController.SetValue(AppendIndex, cxGridTv_List_mode.Index, 'I');
end;

//설비 선택 시
procedure TCCPWaterActiviyForm.cxLkCBBox_FacilityPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  FridgeCode :=
    cxLkCBBox_Facility.Properties.Grid.DataController.Values[
    cxLkCBBox_Facility.Properties.Grid.DataController.FocusedRecordIndex,
    cxLkCBBox_Facility.Properties.ListColumns.Items[1].Index];
end;


//담당 확인
procedure TCCPWaterActiviyForm.cxBtn_damClick(Sender: TObject);
begin
  inherited;

  //결재정보 저장해준다
//  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
//  begin
//  	sql.Add(' DELETE FROM CCPTempApproval                           ');
//  	sql.Add(' WHERE TempDate = :CheckDate                           ');
//  	sql.Add(' AND  FridgeCode = :FridgeCode                         ');
//  	sql.Add(' INSERT INTO CCPTempApproval                           ');
//  	sql.Add(' VALUES (:CheckDate, :FridgeCode, :Writer, null, null) ');
//    ParamByName('CheckDate').Value  := cxDEdit_date.Text;
//    ParamByName('FridgeCode').Value := FridgeCode;
//    ParamByName('Writer').Value     := LoginUserName;
//    Execute;
//  end;

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
  DataModuleForm.UpdateHaccpApproval(FormatDateTime('yyyy-MM-dd',cxDEdit_date.Date), FormName, '',
    cxEdit_writer.Text, cxEdit_reviewer.Text, cxEdit_confirmer.Text);
  dxDateTimeWheelPickerPropertiesEditValueChanged(Self);

  // 결재 버튼 활성화
  SetApprobalButtons;
  UniQuery_data.Refresh;
end;

procedure TCCPWaterActiviyForm.cxBtn_GoodsClick(Sender: TObject);
var
  Arr : Array of integer;
begin
  inherited;

//  cxGridTv_List.OptionsSelection.CheckBoxVisibility := [];
  ItemModalForm := TItemModalForm.Create(Self);
  ItemModalForm.CustomerDivision := 'CCP';
  ItemModalForm.cxGridDBTv_Item.OptionsSelection.MultiSelect := False;
  ItemModalForm.cxGridDBTv_Item.OptionsSelection.CheckBoxVisibility := [];
  // 매출처인지 매입처인지 구분(P,S)을 던져줘서 거래처별 아이템 내역을 조회
  //ItemModalForm.CustomerDivision := Division;
  if ItemModalForm.ShowModal = mrOk then
  begin
    with ItemModalForm do
    begin
      cxEdit_ItemName.text := cxGridDBTv_Item.Controller.SelectedRows[0].Values[cxGridDBTv_Item_Name.index];
      cxEdit_ItemID.Text   := cxGridDBTv_Item.Controller.SelectedRows[0].Values[cxGridDBTv_Item_ID.index];

      FDQuery_comm.Close;
      FDQuery_comm.SQL.Clear;
      FDQuery_comm.SQL.Add(' UPDATE MetalItem SET ItemID = :ItemID ');
      FDQuery_comm.ParamByName('ItemID').Value := cxEdit_ItemID.Text;
      FDQuery_comm.ExecSQL;
    end;
  end;
end;

//검토, 승인
procedure TCCPWaterActiviyForm.cxBtn_reviewClick(Sender: TObject);
begin
  inherited;

  // 결재
//  case TcxControl(Sender).Tag of
//    5:
//      begin
//        cxEdit_Reviewer.Text := LoginUserName;
//      end;
//    6:
//      begin
//        cxEdit_Confirmer.Text := LoginUserName;
//      end;
//  end;
//
//  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
//  begin
//    sql.Add(' UPDATE CCPTempApproval SET    ');
//    sql.Add('   Reviewer	= :Reviewer       ');
//    sql.Add(' 	,Confirmer  = :Confirmer    ');
//    sql.Add(' WHERE TempDate = :CheckDate   ');
//    sql.Add(' AND FridgeCode = :FridgeCode  ');
//    ParamByName('CheckDate').AsString  := cxDEdit_date.Text;
//    ParamByName('FridgeCode').AsString := FridgeCode;
//    ParamByName('Reviewer').AsString   := cxEdit_Reviewer.Text;
//    ParamByName('Confirmer').AsString  := cxEdit_Confirmer.Text;
//    ExecSQL;
//  end;
//
//  // 결재 버튼 활성화
//  SetApprobalButtons;
//
//  ShowMessage(MessageToApproval);
//
//  UniQuery_data.Refresh;
//  dxDateTimeWheelPickerPropertiesEditValueChanged(Self);
end;


//결재버튼 활성화 여부
procedure TCCPWaterActiviyForm.SetApprobalButtons;
begin
  //결재버튼 활성화
  if (cxEdit_Writer.Text = '') or (cxEdit_Reviewer.Text = '') or (cxEdit_Confirmer.Text = '') then
  begin
    cxBtn_dam.Enabled     := True;
    cxBtn_review.Enabled  := True;
    cxBtn_confirm.Enabled := True;
  end
  else begin
    cxBtn_dam.Enabled     := False;
    cxBtn_review.Enabled  := False;
    cxBtn_confirm.Enabled := False;
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

//측정값에 따라 판정
procedure TCCPWaterActiviyForm.cxGridTv_List_valuePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  var FocusedIndex : Integer;

  FocusedIndex := cxGridTv_List.DataController.FocusedRecordIndex;

  cxGridTv_list.Controller.EditingController.Edit.PostEditValue;

  if cxGridTv_List.DataController.Values[FocusedIndex, cxGridTv_List_value.Index] <= 0.3 then
  begin
    cxGridTv_List.DataController.Values[FocusedIndex, cxGridTv_List_decision.Index] := True;
  end
  else begin
    cxGridTv_List.DataController.Values[FocusedIndex, cxGridTv_List_decision.Index] := False;
  end;
end;

end.
