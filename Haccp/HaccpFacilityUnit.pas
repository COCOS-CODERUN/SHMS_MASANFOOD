unit HaccpFacilityUnit;

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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxTextEdit, cxSplitter, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxLabel, cxGroupBox, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMemo, cxCalendar, cxImage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  MemDS, DBAccess, Uni;

type
  THaccpFacilityForm = class(TForm)
    cxGBoxFacilityT04: TcxGroupBox;
    cxGroupBox11: TcxGroupBox;
    cxLabel68: TcxLabel;
    cxCBBoxDivisionS: TcxComboBox;
    cxLabel69: TcxLabel;
    cxEditSearch: TcxTextEdit;
    cxGridFacility: TcxGrid;
    cxGridDBTvFacility: TcxGridDBTableView;
    cxGridDBTvFacilityNo: TcxGridDBColumn;
    cxGridDBTvFacilityName: TcxGridDBColumn;
    cxGridDBTvFacilityStandard: TcxGridDBColumn;
    cxGridDBTvFacilityDivision: TcxGridDBColumn;
    cxGridDBTvFacilityID: TcxGridDBColumn;
    cxGridLvFacility: TcxGridLevel;
    cxSplitter3: TcxSplitter;
    cxGBoxFacilityInfoT04: TcxGroupBox;
    cxGBoxInputT04: TcxGroupBox;
    cxLabel70: TcxLabel;
    cxLabel71: TcxLabel;
    cxEditManageNo: TcxTextEdit;
    cxEditFacility: TcxTextEdit;
    cxLabelOriginalT04: TcxLabel;
    cxLabel74: TcxLabel;
    cxLabel75: TcxLabel;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel78: TcxLabel;
    cxEditOriginal: TcxTextEdit;
    cxEditTel: TcxTextEdit;
    cxEditCheckItme1: TcxTextEdit;
    cxEditCheckItme2: TcxTextEdit;
    cxEditCheckItme3: TcxTextEdit;
    cxEditUseItem1: TcxTextEdit;
    cxEditDailyCheck1: TcxTextEdit;
    cxEditDailyCheck2: TcxTextEdit;
    cxEditDailyCheck3: TcxTextEdit;
    cxEditCheckPoint1: TcxTextEdit;
    cxEditRoutine1: TcxTextEdit;
    cxEditRoutine2: TcxTextEdit;
    cxEditRoutine3: TcxTextEdit;
    cxLabel79: TcxLabel;
    cxLabel80: TcxLabel;
    cxEditUseItem2: TcxTextEdit;
    cxEditCheckPoint2: TcxTextEdit;
    cxEditUseItem3: TcxTextEdit;
    cxEditCheckPoint3: TcxTextEdit;
    cxImageFacility: TcxImage;
    cxGBox_Check: TcxGroupBox;
    cxLabel72: TcxLabel;
    cxLabelCheckT04: TcxLabel;
    cxLabel81: TcxLabel;
    cxDEditCheckDate: TcxDateEdit;
    cxEditOK: TcxTextEdit;
    cxMemoContents: TcxMemo;
    cxBtn_HistorySave: TcxButton;
    cxBtn_HistoryDel: TcxButton;
    cxEditCodeT41: TcxTextEdit;
    cxEditCodeT04: TcxTextEdit;
    cxLabel73: TcxLabel;
    cxCBBoxDivision: TcxComboBox;
    cxLabel82: TcxLabel;
    cxEditStandard: TcxTextEdit;
    cxLabel83: TcxLabel;
    cxEditLocation: TcxTextEdit;
    cxLabel84: TcxLabel;
    cxEditRemark: TcxTextEdit;
    cxGridHistory: TcxGrid;
    cxGridDBTvHistory: TcxGridDBTableView;
    cxGridDBTvHistoryDate: TcxGridDBColumn;
    cxGridDBTvHistoryContents: TcxGridDBColumn;
    cxGridDBTvHistoryOK: TcxGridDBColumn;
    cxGridDBTvHistoryID: TcxGridDBColumn;
    cxGridLvHistory: TcxGridLevel;
    DS_F: TDataSource;
    DS_H: TDataSource;
    FDSP_Facility: TUniStoredProc;
    FDSP_History: TUniStoredProc;
    UniQuery_comm: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure cxCBBoxDivisionSPropertiesEditValueChanged(Sender: TObject);
    procedure cxEditSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxBtn_HistorySaveClick(Sender: TObject);
    procedure cxBtn_HistoryDelClick(Sender: TObject);
    procedure cxGridDBTvFacilityCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTvHistoryCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearProc;
    procedure SaveProc;
    procedure DeleteProc;
    procedure GridListSetting;
    procedure DataBindingToGrid;
  end;

var
  HaccpFacilityForm: THaccpFacilityForm;

  loopcnt : Integer;

implementation

{$R *.dfm}

uses DataModule, HaccpGeneralUnit;

procedure THaccpFacilityForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HaccpFacilityForm := nil;
  Action := CaFree;
end;

procedure THaccpFacilityForm.FormCreate(Sender: TObject);
begin
  cxLabelOriginalT04.Caption := '구입.관리.AS' + #13 + '및  제조원';
  cxLabelCheckT04.Caption := '정기점검 결과' + #13 + '및  수리 내역';

  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' SELECT DISTINCT Division FROM HaccpFacility ');
    open;

    cxCBBoxDivision.Properties.Items.Clear;
    cxCBBoxDivisionS.Properties.Items.Clear;
    for loopcnt := 0 to UniQuery_comm.RecordCount -1 do begin
      cxCBBoxDivision.Properties.Items.Add(FieldByName('Division').AsString);
      cxCBBoxDivisionS.Properties.Items.Add(FieldByName('Division').AsString);

      Next;
    end;
  end;

  cxCBBoxDivisionSPropertiesEditValueChanged(self);

  ClearProc;
end;

procedure THaccpFacilityForm.ClearProc;
begin
  DataModuleForm.ClearEditIncxGroupBox(cxGBoxInputT04);
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Check);
  FDSP_History.Close;
end;

procedure THaccpFacilityForm.GridListSetting;
begin
end;

procedure THaccpFacilityForm.SaveProc;
begin
  if cxEditManageNo.Text = '' then
  begin
    ShowMessage('관리번호를 입력하세요.');
    exit;
  end;

  if cxEditFacility.Text = '' then
  begin
    ShowMessage('설비명을 입력하세요.');
    exit;
  end;

  //제품정보 먼저 저장
  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpFacility', 'A') do
  begin
    if cxEditCodeT04.Text = '' then
    begin
      ParamByName('@FacilityID').AsInteger  := 0;
    end
    else begin
      ParamByName('@FacilityID').AsInteger  := StrToInt(cxEditCodeT04.Text);
    end;
    ParamByName('@ManageNo').AsString       := cxEditManageNo.Text;
    ParamByName('@Division').AsString       := cxCBBoxDivision.Text;
    ParamByName('@Facility').AsString       := cxEditFacility.Text;
    ParamByName('@Standard').AsString       := cxEditStandard.Text;
    ParamByName('@Location').AsString       := cxEditLocation.Text;
    ParamByName('@Original').AsString       := cxEditOriginal.Text;
    ParamByName('@Tel').AsString            := cxEditTel.Text;
    ParamByName('@CheckItem_1').AsString    := cxEditCheckItme1.Text;
    ParamByName('@CheckItem_2').AsString    := cxEditCheckItme2.Text;
    ParamByName('@CheckItem_3').AsString    := cxEditCheckItme3.Text;
    ParamByName('@DailyCheck_1').AsString   := cxEditDailyCheck1.Text;
    ParamByName('@DailyCheck_2').AsString   := cxEditDailyCheck2.Text;
    ParamByName('@DailyCheck_3').AsString   := cxEditDailyCheck3.Text;
    ParamByName('@RoutineCheck_1').AsString := cxEditRoutine1.Text;
    ParamByName('@RoutineCheck_2').AsString := cxEditRoutine2.Text;
    ParamByName('@RoutineCheck_3').AsString := cxEditRoutine3.Text;
    ParamByName('@UseItem_1').AsString      := cxEditUseItem1.Text;
    ParamByName('@UseItem_2').AsString      := cxEditUseItem2.Text;
    ParamByName('@UseItem_3').AsString      := cxEditUseItem3.Text;
    ParamByName('@CheckPoint_1').AsString   := cxEditCheckPoint1.Text;
    ParamByName('@CheckPoint_2').AsString   := cxEditCheckPoint2.Text;
    ParamByName('@CheckPoint_3').AsString   := cxEditCheckPoint3.Text;
    ParamByName('@Remark').AsString         := cxEditRemark.Text;
    ParamByName('@FacilityImage').Value     := cxImageFacility.EditValue;

    try
      ExecProc;
    except
      SaveToError := True;
    end;
  end;

  FDSP_Facility.Refresh;
end;

procedure THaccpFacilityForm.DeleteProc;
begin
  if cxEditCodeT04.Text = '' then
  begin
    exit;
  end;

  if MessageDlg('설비 및 설비점검/수리내역까지 모두 삭제가 됩니다.'+#13+
                '그래도 삭제 하시겠습니까?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDQuerySetting(UniQuery_comm) do
     begin
      sql.Add(' exec usp_HaccpFacility @option = :option, @FacilityID = :FacilityID ');
      ParamByName('option').AsString   := 'F';
      ParamByName('FacilityID').AsString := cxEditCodeT04.text;
      try
        ExecSQL;
      except
        ShowMessage(MessageToError);
      end;
    end;

    FDSP_Facility.Refresh;
    FDSP_History.Refresh;
  end;
end;

procedure THaccpFacilityForm.DataBindingToGrid;
begin
end;

procedure THaccpFacilityForm.cxCBBoxDivisionSPropertiesEditValueChanged(
  Sender: TObject);
begin
  with DataModuleForm.FDSpSetting(FDSP_Facility, 'usp_HaccpFacility', 'E') do
  begin
    ParamByName('@Division').AsString := cxCBBoxDivisionS.Text;
    ParamByName('@Facility').AsString := cxEditSearch.Text;
    open;
  end;
end;

procedure THaccpFacilityForm.cxEditSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    cxCBBoxDivisionSPropertiesEditValueChanged(self);
  end;
end;

procedure THaccpFacilityForm.cxBtn_HistorySaveClick(Sender: TObject);
begin

  if cxDEditCheckDate.Text = '' then
  begin
    exit;
  end;

  if cxMemoContents.Text = '' then
  begin
    exit;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpFacility', 'C') do
  begin
    if cxEditCodeT41.Text = '' then
    begin
      ParamByName('@FacilityCheckID').AsInteger := 0;
    end
    else begin
      ParamByName('@FacilityCheckID').AsInteger := StrToInt(cxEditCodeT41.Text);
    end;
    ParamByName('@FacilityID').AsInteger := StrToInt(cxEditCodeT04.Text);
    ParamByName('@CheckDate').AsString   := cxDEditCheckDate.Text;
    ParamByName('@Contents').AsString    := cxMemoContents.Text;
    ParamByName('@ManagerOK').AsString   := cxEditOK.Text;
    try
      ExecProc;
      ShowMessage(MessageToSave);
      FDSP_History.Refresh;
    except
      ShowMessage(MessageToError);
    end;
  end;
end;

procedure THaccpFacilityForm.cxBtn_HistoryDelClick(Sender: TObject);
begin
  if cxEditCodeT41.Text = '' then
  begin
    exit;
  end;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDQuerySetting(UniQuery_comm) do
    begin
      sql.Add(' exec usp_HaccpFacility @option = :option, @FacilityCheckID = :FacilityCheckID ');
      ParamByName('option').AsString   := 'G';
      ParamByName('FacilityCheckID').AsString := cxEditCodeT41.Text;
      try
        ExecSQL;
        FDSP_History.Refresh;
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

procedure THaccpFacilityForm.cxGridDBTvFacilityCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' usp_HaccpFacility @option = :option, @FacilityID = :FacilityID ');
    ParamByName('option').AsString     := 'B';
    ParamByName('FacilityID').AsString :=
      cxGridDBTvFacility.DataController.Values[
      cxGridDBTvFacility.DataController.FocusedRecordIndex, cxGridDBTvFacilityID.Index];
    open;

    cxEditCodeT04.Text        := FieldByName('FacilityID').AsString;
    cxEditManageNo.Text       := FieldByName('ManageNo').AsString;
    cxCBBoxDivision.Text      := FieldByName('Division').AsString;
    cxEditFacility.Text       := FieldByName('Facility').AsString;
    cxEditStandard.Text       := FieldByName('Standard').AsString;
    cxEditLocation.Text       := FieldByName('Location').AsString;
    cxEditOriginal.Text       := FieldByName('Original').AsString;
    cxEditTel.Text            := FieldByName('Tel').AsString;
    cxEditCheckItme1.Text     := FieldByName('CheckItem_1').AsString;
    cxEditCheckItme2.Text     := FieldByName('CheckItem_2').AsString;
    cxEditCheckItme3.Text     := FieldByName('CheckItem_3').AsString;
    cxEditDailyCheck1.Text    := FieldByName('DailyCheck_1').AsString;
    cxEditDailyCheck2.Text    := FieldByName('DailyCheck_2').AsString;
    cxEditDailyCheck3.Text    := FieldByName('DailyCheck_3').AsString;
    cxEditRoutine1.Text       := FieldByName('RoutineCheck_1').AsString;
    cxEditRoutine2.Text       := FieldByName('RoutineCheck_2').AsString;
    cxEditRoutine3.Text       := FieldByName('RoutineCheck_3').AsString;
    cxEditUseItem1.Text       := FieldByName('UseItem_1').AsString;
    cxEditUseItem2.Text       := FieldByName('UseItem_2').AsString;
    cxEditUseItem3.Text       := FieldByName('UseItem_3').AsString;
    cxEditCheckPoint1.Text    := FieldByName('CheckPoint_1').AsString;
    cxEditCheckPoint2.Text    := FieldByName('CheckPoint_2').AsString;
    cxEditCheckPoint3.Text    := FieldByName('CheckPoint_3').AsString;
    cxEditRemark.Text         := FieldByName('Remark').AsString;
    cxImageFacility.EditValue := FieldByName('FacilityImage').Value;
  end;

  //해당 설비의 이력 불러와준다
  with DataModuleForm.FDSpSetting(FDSP_History, 'usp_HaccpFacility', 'D') do
  begin
    ParamByName('@FacilityID').Value := StrToInt(cxEditCodeT04.Text);
    open;
  end;
end;

procedure THaccpFacilityForm.cxGridDBTvHistoryCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxEditCodeT41.Text    := FDSP_History.FieldByName('FacilityCheckID').AsString;
  cxDEditCheckDate.Text := FDSP_History.FieldByName('CheckDate').AsString;
  cxMemoContents.Text   := FDSP_History.FieldByName('Contents').AsString;
  cxEditOK.Text         := FDSP_History.FieldByName('ManagerOK').AsString;
end;

end.
