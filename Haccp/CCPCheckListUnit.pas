unit CCPCheckListUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxTextEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridDBTableView, dxWheelPicker,
  dxNumericWheelPicker, dxDateTimeWheelPicker, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxMemo, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  cxGroupBox, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, MemDS, DBAccess, Uni, cxEditRepositoryItems, cxSplitter;

type
  TCCPCheckListForm = class(TBaseChildForm)
    cxGBox_Contents: TcxGroupBox;
    cxGrid_List: TcxGrid;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_process: TcxGridColumn;
    cxGridTv_List_contents: TcxGridColumn;
    cxGridTv_List_OkYn: TcxGridColumn;
    cxGridTv_List_Code: TcxGridColumn;
    cxGridLv_List: TcxGridLevel;
    cxGBox_Reform: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxMemo_contents: TcxMemo;
    cxLabel3: TcxLabel;
    cxMemo_result: TcxMemo;
    cxLabel4: TcxLabel;
    cxMemo_action: TcxMemo;
    cxLabel5: TcxLabel;
    cxMemo_ok: TcxMemo;
    cxGBox_List: TcxGroupBox;
    dxDateTimeWheelPicker: TdxDateTimeWheelPicker;
    cxGrid_data: TcxGrid;
    cxGridDBTv_data: TcxGridDBTableView;
    cxGridLv_data: TcxGridLevel;
    DS_Data: TDataSource;
    cxGridDBTv_data_No: TcxGridDBColumn;
    cxGridDBTv_data_Date: TcxGridDBColumn;
    cxGridDBTv_data_Reviewer: TcxGridDBColumn;
    cxGridDBTv_data_Confirmer: TcxGridDBColumn;
    FDQuery_data: TUniQuery;
    FDQCheckListTemp: TUniQuery;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1RadioGroupItem1: TcxEditRepositoryRadioGroupItem;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    cxGroupBox1: TcxGroupBox;
    cxBtn_approval: TcxButton;
    cxBtn_Reviewer: TcxButton;
    cxBtn_Confirmer: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxEdit_writer: TcxTextEdit;
    cxEdit_reviewer: TcxTextEdit;
    cxEdit_confirmer: TcxTextEdit;
    cxGBox_input: TcxGroupBox;
    cxLbl2: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxSplitter1: TcxSplitter;
    cxLabel9: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxGridDBTv_data_noGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure dxDateTimeWheelPickerPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridTv_List_OkYnHeaderClick(Sender: TObject);
    procedure cxGridTv_List_OkYnGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure cxGridDBTv_dataCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtn_approvalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_SearchClick(Sender: TObject);
  private
    { Private declarations }
    procedure InputGridDataSetting;
//    procedure SearchList(date : string);
    procedure CheckReviewYn;
  public
    { Public declarations }

  end;

var
  CCPCheckListForm: TCCPCheckListForm;
  loopcnt : Integer;

  HaccpSelectionMenuName : string;

implementation

{$R *.dfm}

uses DataModule;


//form create
procedure TCCPCheckListForm.FormCreate(Sender: TObject);
begin
  inherited;
  HaccpSelectionMenuName := '중요관리점 검증점검표';
  dxDateTimeWheelPicker.DateTime := Date;
  cxedit_writer.Text := LoginUserName;
  dxDateTimeWheelPickerPropertiesEditValueChanged(self);

  cxBtn_NewClick(self);
//  InputGridDataSetting;
end;

//data change
procedure TCCPCheckListForm.dxDateTimeWheelPickerPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  with DataModuleForm.FDQuerySetting(FDQuery_data) do
  begin
    SQL.Add(' SELECT * FROM HaccpApproval ');
    SQL.Add(' WHERE YEAR(WriteDate) = :WriteDate ');
    SQL.Add(' AND   MenuName = :MenuName ');
    ParamByName('WriteDate').AsString := Formatdatetime('YYYY', dxDateTimeWheelPicker.DateTime);
    ParamByName('MenuName').AsString := HaccpSelectionMenuName;
    open;
  end;
end;

//초기 그리드 세팅
procedure TCCPCheckListForm.InputGridDataSetting;
begin
  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' SELECT Level1, Level2 FROM HaccpBasic ');
    sql.Add(' WHERE MenuName = :MenuName                   ');
//    sql.Add(' ORDER BY Level1, DisplayIndex        ');
    ParamByName('MenuName').AsString := HaccpSelectionMenuName;
    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_List.DataController.AppendRecord;

      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_process.Index,   FieldByName('Level1').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_contents.Index,  FieldByName('Level2').AsString);

      if cxGridTv_List_OkYn.Properties = cxEditRepository1RadioGroupItem1.Properties then
      begin
        cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_OkYn.Index, 0);
      end;
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Code.Index, 0);

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

//결재버튼 활성화 여부
procedure TCCPCheckListForm.CheckReviewYn;
begin
  //결재버튼 활성화
  if (cxEdit_Writer.Text = '') or (cxEdit_Reviewer.Text = '') or (cxEdit_Confirmer.Text = '') then
  begin
    cxBtn_approval.Enabled  := True;
    cxBtn_Reviewer.Enabled  := True;
    cxBtn_Confirmer.Enabled := True;
  end
  else begin
    cxBtn_approval.Enabled  := False;
    cxBtn_Reviewer.Enabled  := False;
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

//결재 버튼들
procedure TCCPCheckListForm.cxBtn_approvalClick(Sender: TObject);
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

  //승인처리
  DataModuleForm.UpdateHaccpApproval(FormatDateTime('yyyy-MM-dd',cxDEdit_date.Date), HaccpSelectionMenuName, '',
    cxEdit_writer.Text, cxEdit_reviewer.Text, cxEdit_confirmer.Text);

  dxDateTimeWheelPickerPropertiesEditValueChanged(Self);

  //버튼들 확성화 여부
  CheckReviewYn;
end;

//new
procedure TCCPCheckListForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Reform);
  cxDEdit_date.Clear;
  cxEdit_Writer.Text := LoginUserName;
  cxEdit_reviewer.Clear;
  cxEdit_confirmer.Clear;

  InputGridDataSetting;
end;

//delete
procedure TCCPCheckListForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  if FDQuery_data.FieldByName('CheckReviewer').AsString = '' then
  begin
    if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
    begin
      with DataModuleForm.FDQuerySetting(nil) do
      begin
        sql.Add(' EXEC usp_CCPCheckList @option = :option, @CheckDate = :CheckDate ');
        ParamByName('option').AsString    := 'D';
        ParamByName('CheckDate').AsString := cxDEdit_date.Text;
        ExecSQL;
      end;

      //승인삭제
      DataModuleForm.DeleteHaccpApproval(cxDEdit_date.Text, HaccpSelectionMenuName, '');

      cxBtn_NewClick(self);
      FDQuery_data.Refresh;
    end;
  end;
end;

//save
procedure TCCPCheckListForm.cxBtn_SaveClick(Sender: TObject);
var
  cnt : integer;
  option : string;
begin
  inherited;
 if cxDEdit_date.Text = '' then
  begin
    ShowMessage('점검일자를 입력 하세요.');
    exit;
  end;

  if cxEDit_Writer.Text = '' then
  begin
    ShowMessage('작성자를 입력 하세요.');
    exit;
  end;

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' select count(*) as cnt from CCPCheckList ');
    sql.Add(' where CheckDate = :CheckDate             ');
    ParamByName('CheckDate').AsString := cxDEdit_date.Text;
    open;
    cnt := FieldByName('cnt').AsInteger;

    if cnt = 0 then
    begin
      option := 'I';
    end
    else begin
      option := 'U';
    end;
  end;

  for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_CCPCheckList', option) do
    begin
      ParamByName('@CheckDate').AsString      := cxDEdit_date.Text;
      ParamByName('@Writer').AsString         := cxEDit_Writer.Text;
      ParamByName('@CheckProcess').AsString   := VarToStr(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_process.Index]);
      ParamByName('@CheckContents').AsString  := VarToStr(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_contents.Index]);
      if ParamByName('@OKYn').AsString <> NULL then
      begin
        ParamByName('@OKYn').AsString := VarToStr(cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_OkYn.Index]);
      end
      else
      begin
        ParamByName('@OKYn').AsString := NULL;
      end;
      ParamByName('@Contents').AsString := cxMemo_contents.Text;
      ParamByName('@Remarks').AsString  := cxMemo_result.Text;
      ParamByName('@CDate').AsString    := cxMemo_action.Text;
      ParamByName('@CheckOK').AsString  := cxMemo_ok.Text;
      ParamByName('@CheckListID').AsInteger  := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Code.Index];
      try
        ExecProc;
      except
        SaveToError := True;
      end;
    end;
  end;

  if SaveToError then
  begin
    ShowMessage(MessageToError);
  end
  else
  begin
    //승인 저장
    DataModuleForm.InsertHaccpApproval(cxDEdit_date.Text, HaccpSelectionMenuName, '');

    FDQuery_data.Refresh;
    ShowMessage(MessageToSave);
//    cxBtn_NewClick(self);
    cxBtn_SearchClick(self);
  end;
end;

//SEARCH
procedure TCCPCheckListForm.cxBtn_SearchClick(Sender: TObject);
begin
  inherited;

  if cxDEdit_date.Text = '' then
  begin
    ShowMessage('점검일자를 입력 하세요.');
    exit;
  end;

  with DataModuleForm.FDQuerySetting(nil) do begin
    sql.Add(' EXEC usp_CCPCheckList @option = :option, @CheckDate = :CheckDate, @HaccpMenu = :HaccpMenu ');
    ParamByName('Option').AsString    := 'A';
    ParamByName('CheckDate').AsString := cxDEdit_date.Text;
    ParamByName('HaccpMenu').AsString := HaccpSelectionMenuName;
    open;

//    cxDEdit_date.Text     := FieldByName('CheckDate').AsString;
    cxEDit_Writer.Text    := FieldByName('Writer').AsString;
    cxEdit_reviewer.Text  := FieldByName('Reviewer').AsString;
    cxEdit_confirmer.Text := FieldByName('Confirmer').AsString;

    cxMemo_contents.Text  := FieldByName('Contents').AsString;
    cxMemo_result.Text    := FieldByName('Remarks').AsString;
    cxMemo_action.Text    := FieldByName('CDate').AsString;
    cxMemo_ok.Text        := FieldByName('CheckOK').AsString;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.BeginUpdate;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxGridTv_List.DataController.AppendRecord;
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_process.Index,   FieldByName('CheckProcess').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_contents.Index,  FieldByName('CheckContents').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_OkYn.Index,      FieldByName('OKYn').Value);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Code.Index,      FieldByName('CheckListID').Value);
      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;

  CheckReviewYn;
end;

procedure TCCPCheckListForm.cxGridDBTv_dataCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  cxDEdit_date.Text := FDQuery_data.FieldByName('WriteDate').AsString;
  cxBtn_SearchClick(self);

//  SearchList(FDQuery_data.FieldByName('CheckDate').AsString);
end;

procedure TCCPCheckListForm.cxGridDBTv_data_noGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  Atext := IntToStr(ARecord.Index +1);
end;

procedure TCCPCheckListForm.cxGridTv_List_OkYnGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  inherited;
  if pos(':',vartostr(cxGridTv_List.DataController.Values[ARecord.Index,cxGridTv_List_contents.Index])) = 0 then
  begin
    AProperties := cxEditRepository1RadioGroupItem1.Properties;
  end
  else
  begin
    AProperties := cxEditRepository1TextItem1.Properties;
  end;

end;

procedure TCCPCheckListForm.cxGridTv_List_OkYnHeaderClick(Sender: TObject);
var
  AProperties: TcxCustomEditProperties;
begin
  inherited;
  if cxGridTv_list.DataController.RecordCount = 0 then
  begin
    exit;
  end;

  if cxDEdit_date.Text = '' then
  begin
    ShowMessage('점검일자를 입력하세요.');
    exit;
  end;

  cxGridTv_list.DataController.BeginUpdate;
  for loopcnt := 0 to cxGridTv_list.DataController.RecordCount -1 do
  begin
    if pos(':',vartostr(cxGridTv_List.DataController.Values[loopcnt,cxGridTv_List_contents.Index])) = 0 then
    begin
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_OkYn.Index,       1);
    end;
  end;
  cxGridTv_list.DataController.EndUpdate
end;





end.
