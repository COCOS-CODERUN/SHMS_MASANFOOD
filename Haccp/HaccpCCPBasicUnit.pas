unit HaccpCCPBasicUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxTextEdit, cxRadioGroup, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, MemDS, DBAccess, Uni, cxLabel,
  Vcl.StdCtrls, cxButtons;

type
  THaccpCCPBasicForm = class(TBaseChildForm)
    cxLabel3: TcxLabel;
    DS_Division: TDataSource;
    DS_CCP: TDataSource;
    UniQuery_Division: TUniQuery;
    UniQuery_CCP: TUniQuery;
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
    cxCEditMin: TcxCurrencyEdit;
    cxCEditMax: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    cxCEditCode: TcxCurrencyEdit;
    cxLkCBBoxDivision: TcxLookupComboBox;
    cxGrid_ccp: TcxGrid;
    cxGridDBTv_ccp: TcxGridDBTableView;
    cxGridDBTv_ccp_ditision: TcxGridDBColumn;
    cxGridDBTv_ccp_id: TcxGridDBColumn;
    cxGridDBTv_ccp_name: TcxGridDBColumn;
    cxGridDBTv_ccp_yn: TcxGridDBColumn;
    cxGridDBTv_ccp_min: TcxGridDBColumn;
    cxGridDBTv_ccp_max: TcxGridDBColumn;
    cxGridDBTv_ccp_unit: TcxGridDBColumn;
    cxGridDBTv_ccp_code: TcxGridDBColumn;
    cxGridLv_ccp: TcxGridLevel;
    cxGridDBTv_ccp_Time: TcxGridDBColumn;
    cxLabel4: TcxLabel;
    cxCEdit_Time: TcxCurrencyEdit;
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxLkCBBoxDivisionPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridDBTv_ccpCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtn_SearchClick(Sender: TObject);
  private
    { Private declarations }
    procedure DataSearchList;
  public
    { Public declarations }
  end;

var
  HaccpCCPBasicForm: THaccpCCPBasicForm;

implementation

{$R *.dfm}

uses DataModule;

procedure THaccpCCPBasicForm.cxBtn_DeleteClick(Sender: TObject);
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

    UniQuery_ccp.Refresh;
    cxBtn_NewClick(self);
  end;
end;

procedure THaccpCCPBasicForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBoxInput);

  cxCEditMin.Enabled := False;
  cxCEditMax.Enabled := False;
  cxEditUnit.Text    := '';
  cxEditUnit.Enabled := False;
end;

procedure THaccpCCPBasicForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;
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
    ParamByName('@MetalCheckTime').Value   := cxCEdit_Time.Value;
    ExecProc;
  end;

  UniQuery_ccp.Refresh;
  cxBtn_NewClick(self);
end;

procedure THaccpCCPBasicForm.cxBtn_SearchClick(Sender: TObject);
begin
  inherited;
  DataSearchList;
end;

procedure THaccpCCPBasicForm.cxGridDBTv_ccpCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  with UniQuery_ccp do
  begin
    cxLkCBBoxDivision.Text := FieldByName('Division').AsString;
    cxEditID.Text          := FieldByName('CCPFacilityID').AsString;
    cxEditName.Text        := FieldByName('CCPName').AsString;
    cxRGroupYn.EditValue   := FieldByName('UseYn').AsBoolean;
    cxCEditMin.Value       := FieldByName('TempMin').AsCurrency;
    cxCEditMax.Value       := FieldByName('TempMax').AsCurrency;
    cxEditUnit.Text        := FieldByName('TempUnit').AsString;
    cxCEditCode.Value      := FieldByName('CCPBasicCode').AsCurrency;
    cxCEdit_Time.Value     := FieldByName('MetalCheckTime').AsCurrency;
  end;
end;

procedure THaccpCCPBasicForm.cxLkCBBoxDivisionPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cxLkCBBoxDivision.Text = '' then
  begin
    exit;
  end;

  with datamoduleform.FDQuerySetting(nil) do
  begin
    close;
    sql.Clear;
    sql.Add(' EXEC usp_HaccpCCPBasic @option = :option, @Division = :Division ');
    ParamByName('option').AsString   := 'F';
    ParamByName('Division').AsString := cxLkCBBoxDivision.Text;
    open;

    cxEditID.Text := FieldByName('FacilityID').AsString;
  end;

  if cxLkCBBoxDivision.Text <> '중요관리점(금속검출)' then
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

procedure THaccpCCPBasicForm.DataSearchList;
begin
  with UniQuery_ccp do
  begin
    connection := datamoduleform.FDConnection;
    close;
    sql.Clear;
    sql.Add(' SELECT * FROM HACCPCCPBasic      ');
    sql.Add(' ORDER BY Division, CCPFacilityID ');
    open;
  end;
end;

procedure THaccpCCPBasicForm.FormCreate(Sender: TObject);
begin
  inherited;
  cxBtn_NewClick(self);

  DataSearchList;

  with UniQuery_division do
  begin
    connection := datamoduleform.FDConnection;
    close;
    sql.Clear;
    sql.Add(' SELECT BCDID, BCDName         ');
    sql.Add(' FROM BasicCodeDetail AS A     ');
    sql.Add(' INNER JOIN BasicCode AS B     ');
    sql.Add(' 	ON A.BCID = B.BCID          ');
    sql.Add(' WHERE B.BCName = ''CCP구분''  ');
    sql.Add(' AND IsUsable = 1              ');
    open;
  end;
end;

end.
