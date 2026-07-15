unit CCPLimitUnit;

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
  cxRadioGroup, cxMaskEdit, cxDropDownEdit, cxTextEdit, cxLabel, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, MemDS, DBAccess, Uni;

type
  TCCPLimitForm = class(TBaseChildForm)
    cxGBoxInput: TcxGroupBox;
    cxLbl1: TcxLabel;
    cxEditName: TcxTextEdit;
    cxLbl2: TcxLabel;
    cxEditID: TcxTextEdit;
    cxLbl3: TcxLabel;
    cxLbl4: TcxLabel;
    cxLbl5: TcxLabel;
    cxEditUnit: TcxTextEdit;
    cxLbl6: TcxLabel;
    cxEditListID: TcxTextEdit;
    cxLbl7: TcxLabel;
    cxRGroupYn: TcxRadioGroup;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxGridDBTv_ccp: TcxGridDBTableView;
    cxGridLv_ccp: TcxGridLevel;
    cxGrid_ccp: TcxGrid;
    cxGridDBTv_ccp_ditision: TcxGridDBColumn;
    cxGridDBTv_ccp_id: TcxGridDBColumn;
    cxGridDBTv_ccp_name: TcxGridDBColumn;
    cxGridDBTv_ccp_yn: TcxGridDBColumn;
    cxGridDBTv_ccp_min: TcxGridDBColumn;
    cxGridDBTv_ccp_max: TcxGridDBColumn;
    cxGridDBTv_ccp_unit: TcxGridDBColumn;
    cxGridDBTv_ccp_code: TcxGridDBColumn;
    cxCEditMin: TcxCurrencyEdit;
    cxCEditMax: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    cxCEditCode: TcxCurrencyEdit;
    DS_CCP: TDataSource;
    cxLCBBox_Division: TcxLookupComboBox;
    DS_Division: TDataSource;
    UniQuery_Division: TUniQuery;
    UniQuery_ccp: TUniQuery;
    UniQuery_comm: TUniQuery;
    cxLCBBox_Facility: TcxLookupComboBox;
    UniQuery_Facility: TUniQuery;
    DS_F: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxGridDBTv_ccpCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtnRegisterClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxLkCBBoxDivisionPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure DataSearchList;
  end;

var
  CCPLimitForm: TCCPLimitForm;

implementation

uses MainUnit, DataModule;

{$R *.dfm}

procedure TCCPLimitForm.FormCreate(Sender: TObject);
begin
  inherited;

  cxBtn_NewClick(self);

  DataSearchList;

  with DataModuleForm.FDQuerySetting(UniQuery_division) do
  begin
    sql.Add(' SELECT BCDID, BCDName     ');
    sql.Add(' FROM BasicCodeDetail AS A ');
    sql.Add(' INNER JOIN BasicCode AS B ');
    sql.Add(' 	ON A.BCID = B.BCID      ');
    sql.Add(' WHERE B.BCID = ''BC012''  ');
    open;
  end;
end;

procedure TCCPLimitForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBoxInput);

  cxBtn_Register.Enabled := True;
  cxBtn_Save.Enabled    := False;

  cxCEditMin.Enabled := False;
  cxCEditMax.Enabled := False;
  cxEditUnit.Text    := '';
  cxEditUnit.Enabled := False;
end;

//CCP구분 변경 시
procedure TCCPLimitForm.cxLkCBBoxDivisionPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  if cxLCBBox_Division.Text = '' then
  begin
    exit;
  end;

  with DataModuleForm.FDQuerySetting(UniQuery_Facility) do
  begin
    if cxLCBBox_Division.EditValue = 'BD037' then     //금속검출
    begin
      SQL.Add(' SELECT	FridgeCode AS FCODE, Name AS FNAME FROM Fridge ');
    end
    else //냉장냉동, 가열
    begin
      SQL.Add(' SELECT MetalCode AS FCODE, Name AS FNAME FROM Metal ');
    end;
    open;
  end;

  if cxLCBBox_Division.EditValue <> 'BD037' then
  begin
    cxCEditMin.Enabled := True;
    cxCEditMax.Enabled := True;
    cxEditUnit.Text    := '°C';
    cxEditUnit.Enabled := True;
  end
  else begin
    cxCEditMin.Enabled := False;
    cxCEditMax.Enabled := False;
    cxEditUnit.Text    := '';
    cxEditUnit.Enabled := False;
  end;
end;

procedure TCCPLimitForm.DataSearchList;
begin
  with FDQuery_ccp do
  begin
    close;
    sql.Clear;
    sql.Add(' SELECT * FROM HACCPCCPBasic      ');
    sql.Add(' ORDER BY Division, CCPFacilityID ');
    open;
  end;
end;

procedure TCCPLimitForm.cxBtnRegisterClick(Sender: TObject);
begin
  inherited;

  //혹시나 만들어놓은 코드를 누가 이미 사용 했을 경우를 체크 한다
  with FDQuery_comm do
  begin
    close;
    sql.Clear;
    sql.Add(' SELECT COUNT(*) FCNT FROM HACCPCCPBasic ');
    sql.Add(' WHERE CCPFacilityID = :CCPFacilityID    ');
    ParamByName('CCPFacilityID').AsString := cxEditID.Text;
    open;

    if FieldByName('FCNT').AsInteger > 0 then
    begin
      ShowMessage('이미 생성된 코드이므로 새로운 코드를 저장합니다.');
      cxLkCBBoxDivisionPropertiesEditValueChanged(self);
    end;

  end;

  with DataModuleForm.FDSpTemp do begin
    DataModuleForm.SetFDSpTemp('usp_HaccpCCPBasic');
    ParamByName('@option').AsString        := 'R';
    ParamByName('@CCPBasicCode').AsInteger := Round(cxCEditCode.Value);
    ParamByName('@Division').AsString      := cxLkCBBoxDivision.Text;
    ParamByName('@CCPFacilityID').AsString := cxEditID.Text;
    ParamByName('@CCPName').AsString       := cxEditName.Text;
    ParamByName('@UseYn').AsBoolean        := cxRGroupYn.EditValue;
    ParamByName('@TempMin').Value          := cxCEditMin.Value;
    ParamByName('@TempMax').Value          := cxCEditMax.Value;
    ParamByName('@TempUnit').AsString      := cxEditUnit.Text;
    ExecProc;
  end;

  ShowMessage(DataModule.MessageToRegister);
  FDQuery_ccp.Refresh;
  cxBtn_NewClick(self);
end;

procedure TCCPLimitForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDSpTemp do begin
    DataModuleForm.SetFDSpTemp('usp_HaccpCCPBasic');
    ParamByName('@option').AsString        := 'U';
    ParamByName('@CCPBasicCode').AsInteger := Round(cxCEditCode.Value);
    ParamByName('@Division').AsString      := cxLkCBBoxDivision.Text;
    ParamByName('@CCPFacilityID').AsString := cxEditID.Text;
    ParamByName('@CCPName').AsString       := cxEditName.Text;
    ParamByName('@UseYn').AsBoolean        := cxRGroupYn.EditValue;
    ParamByName('@TempMin').Value          := cxCEditMin.Value;
    ParamByName('@TempMax').Value          := cxCEditMax.Value;
    ParamByName('@TempUnit').AsString      := cxEditUnit.Text;
    ExecProc;
  end;

  ShowMessage(DataModule.MessageToSave);
  FDQuery_ccp.Refresh;
  cxBtn_NewClick(self);
end;

procedure TCCPLimitForm.cxGridDBTv_ccpCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with FDQuery_ccp do
  begin
    cxLkCBBoxDivision.Text  := FieldByName('Division').AsString;
    cxEditID.Text         := FieldByName('CCPFacilityID').AsString;
    cxEditName.Text       := FieldByName('CCPName').AsString;
    cxRGroupYn.EditValue  := FieldByName('UseYn').AsBoolean;
    cxCEditMin.Value      := FieldByName('TempMin').AsCurrency;
    cxCEditMax.Value      := FieldByName('TempMax').AsCurrency;
    cxEditUnit.Text       := FieldByName('TempUnit').AsString;
    cxCEditCode.Value     := FieldByName('CCPBasicCode').AsCurrency;
  end;

  cxBtn_Register.Enabled := False;
  cxBtn_Save.Enabled    := True;
end;

procedure TCCPLimitForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpTemp do begin
      DataModuleForm.SetFDSpTemp('usp_HaccpCCPBasic');
      ParamByName('@option').AsString        := 'D';
      ParamByName('@CCPBasicCode').AsInteger := Round(cxCEditCode.Value);
      ParamByName('@CCPFacilityID').AsString := cxEditID.Text;
      ExecProc;
    end;

    FDQuery_ccp.Refresh;
    cxBtn_NewClick(self);
  end;
end;

end.
