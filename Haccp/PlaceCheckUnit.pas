unit PlaceCheckUnit;

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
  dxScrollbarAnnotations, Data.DB, cxDBData, cxTextEdit, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxWheelPicker, dxNumericWheelPicker,
  dxDateTimeWheelPicker, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxMemo;

type
  TPlaceCheckForm = class(TBaseChildForm)
    cxGBox_Input: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    dxDateTimeWheelPicker: TdxDateTimeWheelPicker;
    cxGrid_data: TcxGrid;
    cxGridDBTv_data: TcxGridDBTableView;
    cxGridDBTv_data_no: TcxGridDBColumn;
    cxGridDBTv_data_date: TcxGridDBColumn;
    cxGridDBTv_data_reviewer: TcxGridDBColumn;
    cxGridDBTv_data_confirmer: TcxGridDBColumn;
    cxGridDBTv_data_Cflag: TcxGridDBColumn;
    cxGridDBTv_data_RFlag: TcxGridDBColumn;
    cxGridDBTv_data_division: TcxGridDBColumn;
    cxGridLv_data: TcxGridLevel;
    cxGBox_Approval: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    cxEDit_Writer: TcxTextEdit;
    cxEdit_reviewer: TcxTextEdit;
    cxEdit_confirmer: TcxTextEdit;
    cxBtn_approval: TcxButton;
    cxBtn_Reviewer: TcxButton;
    cxBtn_Confirmer: TcxButton;
    cxGbox_date: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxGrid_List: TcxGrid;
    cxGridLv_List: TcxGridLevel;
    cxGridTv_List: TcxGridTableView;
    cxGridTv_List_division: TcxGridColumn;
    cxGridTv_List_check: TcxGridColumn;
    cxGridTv_List_Standard: TcxGridColumn;
    cxGridTv_List_Remarks: TcxGridColumn;
    cxGridTv_List_CheckID: TcxGridColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    FDQuery_data: TFDQuery;
    DS_Data: TDataSource;
    cxGBox_remark: TcxGroupBox;
    cxMemo_remarks: TcxMemo;
    cxGridTv_List_Value: TcxGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxBtnNewClick(Sender: TObject);
    procedure cxBtnRegisterClick(Sender: TObject);
    procedure dxDateTimeWheelPickerPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtnSaveClick(Sender: TObject);
    procedure cxBtnDeleteClick(Sender: TObject);
    procedure cxGridDBTv_dataCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtn_approvalClick(Sender: TObject);
    procedure cxGridTv_List_ValueHeaderClick(Sender: TObject);
    procedure cxGridDBTv_data_noGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GridListSetting;
  end;

var
  PlaceCheckForm: TPlaceCheckForm;

  loopcnt : Integer;

implementation

uses Main, DataModule;

{$R *.dfm}

procedure TPlaceCheckForm.FormCreate(Sender: TObject);
begin
  inherited;

  dxDateTimeWheelPicker.DateTime := Date;

  cxBtnNewClick(self);
end;

procedure TPlaceCheckForm.GridListSetting;
begin
  with FDQuery_comm do begin
    close;
    sql.Clear;
    sql.Add(' SELECT LevelType, Level1, Level2 FROM HaccpBasic ');
    sql.Add(' WHERE MenuName = :MenuName            ');
    ParamByName('MenuName').AsString := HaccpSelectionMenuName;
    open;

    cxGridTv_List.DataController.RecordCount := 0;
    cxGridTv_List.DataController.RecordCount := FDQuery_comm.RecordCount;
    FDQuery_comm.First;
    cxGridTv_List.DataController.BeginUpdate;
    for loopcnt := 0 to FDQuery_comm.RecordCount -1 do
    begin

      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_division.Index, FieldByName('LevelType').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_check.Index,    FieldByName('Level1').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Standard.Index, FieldByName('Level2').AsString);
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Value.Index,  '');
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Remarks.Index,  '');
      cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckID.Index,  '');

      Next;
    end;
    cxGridTv_List.DataController.EndUpdate;
  end;
end;

//new
procedure TPlaceCheckForm.cxBtnNewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Approval);
  cxMemo_remarks.Clear;
  cxDEdit_date.Date := Date;
  cxEDit_Writer.Text := LoginUserName;

  GridListSetting;

  cxBtnNew.Enabled        := True;
  cxBtnRegister.Enabled   := True;
  cxBtnSave.Enabled       := False;
  cxBtnDelete.Enabled     := False;
end;

//insert
procedure TPlaceCheckForm.cxBtnRegisterClick(Sender: TObject);
begin
  inherited;

  if cxDEdit_date.Text = '' then
  begin
    ShowMessage('점검일자를 입력 하세요.');
    exit;
  end;

  for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpPlaceCheck', 'A') do
    begin
      ParamByName('@CheckID').Value    := loopcnt;
      ParamByName('@CheckDate').Value  := cxDEdit_date.Text;
      ParamByName('@Division').Value   := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_division.Index];
      ParamByName('@CheckText').Value  := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_check.Index];
      ParamByName('@CheckStd').Value   := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Standard.Index];
      ParamByName('@CheckValue').Value := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Value.Index];
      ParamByName('@Remarks').Value    := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Remarks.Index];
      ParamByName('@Remarks2').Value   := cxMemo_remarks.Text;
      ParamByName('@Writer').Value     := LoginUserName;
      ExecProc;
    end;
  end;

  with FDQuery_comm do
  begin
    close;
    sql.Clear;
    sql.Add(' INSERT INTO HaccpApproval VALUES(:CheckDate, ''작업장점검표'', '''', :Writer, '''','''') ');
    ParamByName('CheckDate').AsString := cxDEdit_date.Text;
    ParamByName('Writer').AsString := LoginUserName;
    ExecSQL;
  end;

  ShowMessage(DataModule.MessageToSave);
  FDQuery_data.Refresh;

  cxBtnNewClick(self);
end;

//update
procedure TPlaceCheckForm.cxBtnSaveClick(Sender: TObject);
begin
  inherited;

  for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpPlaceCheck', 'B') do
    begin
      ParamByName('@CheckID').Value    := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_CheckID.Index];
      ParamByName('@CheckDate').Value  := cxDEdit_date.Text;
      ParamByName('@CheckValue').Value := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Value.Index];
      ParamByName('@Remarks').Value    := cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Remarks.Index];
      ParamByName('@Remarks2').Value   := cxMemo_remarks.Text;
      ParamByName('@Modifier').Value  := LoginUserName;
      ExecProc;
    end;
  end;

  ShowMessage(DataModule.MessageToSave);
  FDQuery_data.Refresh;

  cxBtnNewClick(self);
end;

//delete
procedure TPlaceCheckForm.cxBtnDeleteClick(Sender: TObject);
begin
  inherited;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpPlaceCheck', 'C') do begin
      ParamByName('@CheckDate').AsString  := cxDEdit_date.Text;
      ExecProc;
    end;

   cxBtnNewClick(self);
    FDQuery_data.Refresh;
  end;
end;

procedure TPlaceCheckForm.dxDateTimeWheelPickerPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  with FDQuery_data do
  begin
    close;
    sql.Clear;
    sql.Add(' exec usp_HaccpPlaceCheck @option = :option, @CheckDate=:CheckDate ');
    ParamByName('option').AsString := 'L';
    ParamByName('CheckDate').AsString := Formatdatetime('YYYY-MM', dxDateTimeWheelPicker.DateTime);
    open;
  end;
end;

procedure TPlaceCheckForm.cxGridDBTv_dataCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  cxEDit_Writer.Text    := FDQuery_data.FieldByName('CheckWriter').AsString;
  cxEdit_reviewer.Text  := FDQuery_data.FieldByName('CheckReviewer').AsString;
  cxEdit_confirmer.Text := FDQuery_data.FieldByName('CheckConfirmer').AsString;
  cxDEdit_date.Text     := FDQuery_data.FieldByName('WriteDate').AsString;

  with FDQuery_comm do
  begin
    close;
    sql.clear;
    sql.Add(' SELECT * FROM HaccpPlaceCheck ');
    sql.Add(' WHERE CheckDate = :CheckDate   ');
    ParamByName('CheckDate').AsString := FDQuery_data.FieldByName('WriteDate').AsString;
    open;

    cxMemo_remarks.Text   := FieldByName('Remarks2').AsString;

    if FDQuery_comm.RecordCount > 0 then
    begin
      cxGridTv_List.DataController.RecordCount := 0;
      cxGridTv_List.DataController.RecordCount := FDQuery_comm.RecordCount;
      cxGridTv_List.DataController.BeginUpdate;
      for loopcnt := 0 to FDQuery_comm.RecordCount -1 do
      begin
        cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_division.Index,  FieldByName('Division').AsString);
        cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_check.Index,     FieldByName('CheckText').AsString);
        cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Standard.Index,  FieldByName('CheckStd').AsString);
        cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Value.Index,     FieldByName('CheckValue').AsString);
        cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_Remarks.Index,   FieldByName('Remarks').AsString);
        cxGridTv_List.DataController.SetValue(loopcnt, cxGridTv_List_CheckID.Index,   FieldByName('CheckID').AsString);

        Next;
      end;
      cxGridTv_List.DataController.EndUpdate;
    end;
  end;

  cxBtnNew.Enabled        := True;
  cxBtnRegister.Enabled   := False;
  cxBtnSave.Enabled       := True;
  cxBtnDelete.Enabled     := True;
end;

procedure TPlaceCheckForm.cxGridDBTv_data_noGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index +1);
end;

procedure TPlaceCheckForm.cxBtn_approvalClick(Sender: TObject);
begin
  inherited;

  if (Sender As TcxButton).Tag = 1 then
  begin
    exit;
  end;

  with FDQuery_comm do
  begin
    close;
    sql.clear;
    sql.Add(' UPDATE HaccpApproval SET          ');
    if (Sender As TcxButton).Tag = 2 then
    begin
      sql.Add(' CheckReviewer = :CheckReviewer   ');
      ParamByName('CheckReviewer').AsString := LoginUserName;
      cxEdit_reviewer.Text := LoginUserName;
    end
    else if (Sender As TcxButton).Tag = 3 then
    begin
      sql.Add(' CheckConfirmer = :CheckConfirmer ');
      ParamByName('CheckConfirmer').AsString := LoginUserName;
      cxEdit_confirmer.Text := LoginUserName;;
    end;
    sql.Add('	WHERE WriteDate = :CheckDate      ');
    sql.Add('	AND   MenuName = ''작업장점검표'' ');
    ParamByname('CheckDate').AsString := cxDEdit_date.Text;
    showmessage(sql.Text);
    ExecSQL;
  end;

  FDQuery_data.Refresh;
end;

procedure TPlaceCheckForm.cxGridTv_List_ValueHeaderClick(Sender: TObject);
begin
  inherited;

  cxGridTv_List.DataController.BeginUpdate;
  for loopcnt := 0 to cxGridTv_List.DataController.RecordCount -1 do
  begin
    cxGridTv_List.DataController.Values[loopcnt, cxGridTv_List_Value.Index] := 'O';
  end;
  cxGridTv_List.DataController.EndUpdate;
end;

end.
