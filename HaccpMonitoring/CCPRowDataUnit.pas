unit CCPRowDataUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls, dxCore, cxDateUtils, cxRadioGroup,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxCalendar, cxLabel, MemDS, DBAccess, Uni, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TCCPRowDataForm = class(TBaseChildForm)
    FDQuery_facility: TUniQuery;
    DS_Facility: TDataSource;
    FDQuery_List: TUniQuery;
    DS_L: TDataSource;
    cxGBox_input: TcxGroupBox;
    cxLbl2: TcxLabel;
    cxDEdit_Sdate: TcxDateEdit;
    cxDEdit_Edate: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLkCBBox_Facility: TcxLookupComboBox;
    cxCBBox_CCP: TcxComboBox;
    cxLabel2: TcxLabel;
    cxBtnSearch: TcxButton;
    cxRGroup_kind: TcxRadioGroup;
    cxGrid_List: TcxGrid;
    cxGridDBTv_Water: TcxGridDBTableView;
    cxGridDBTv_Water_date: TcxGridDBColumn;
    cxGridDBTv_Water_result: TcxGridDBColumn;
    cxGridDBTv_WaterColumn1: TcxGridDBColumn;
    cxGridDBTv_WaterColumn2: TcxGridDBColumn;
    cxGridDBTv_metal: TcxGridDBTableView;
    cxGridDBTv_metalColumn1: TcxGridDBColumn;
    cxGridDBTv_metalColumn2: TcxGridDBColumn;
    cxGridDBTv_metalColumn3: TcxGridDBColumn;
    cxGridDBTv_metalColumn4: TcxGridDBColumn;
    cxGridLv_List: TcxGridLevel;
    FDQuery_comm: TUniQuery;
    cxGridDBTv_metalColumn5: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxCBBox_CCPPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CCPRowDataForm: TCCPRowDataForm;

implementation

{$R *.dfm}

uses MainUnit, DataModule;

procedure TCCPRowDataForm.cxBtnSearchClick(Sender: TObject);
var
  FCode: string;
  FNo: Integer;
begin
  inherited;

  if cxLkCBBox_Facility.Text = '' then
  begin
    ShowMessage('설비구분을 선택하세요.');
    exit;
  end;


  FCode :=
  cxLkCBBox_Facility.Properties.Grid.DataController.Values[
  cxLkCBBox_Facility.Properties.Grid.DataController.FocusedRecordIndex,
  cxLkCBBox_Facility.Properties.ListColumns.Items[1].Index];

  FNo := cxLkCBBox_Facility.EditValue;

  with DataModuleForm.FDQuerySetting(FDQuery_List) do
  begin
    close;
    sql.clear;
    if cxCBBox_CCP.Text = '금속검출' then
    begin
      sql.Add(' WITH CTE_METAL (MetalNo, CheckDate, hexcode)       ');
      sql.Add(' AS (                                               ');
      sql.Add('   SELECT MetalNo, CONVERT(CHAR(19), CheckDate, 20), hexcode ');
      sql.Add('   FROM MetalCheck                   ');
      sql.Add('   UNION ALL                                        ');
      sql.Add('   SELECT MetalNo, CONVERT(CHAR(19), CheckDate, 20), hexcode ');
      sql.Add('   FROM MetalCheckNone )             ');
      sql.Add(' SELECT CheckDate, hexcode                          ');
      sql.Add(' 	,B.MetalCheckResult AS Result                    ');
      sql.Add(' 	,B.MetalBasicReason As Reason                    ');
      sql.Add(' 	,B.MetalActionContents As Contents               ');
      sql.Add(' FROM CTE_METAL AS A                                ');
      sql.Add(' LEFT OUTER JOIN CCPMetalActionContents AS B        ');
      sql.Add('   ON A.CheckDate = B.MetalDatetime                 ');
      sql.Add(' WHERE convert(char(10),CheckDate) BETWEEN :SDATE AND :EDATE          ');
      sql.Add(' AND   A.MetalNo = :FridgeNo                        ');
      sql.Add(' order by A.CheckDate desc                          ');
    end;

    ParamByName('SDATE').AsString := cxDEdit_Sdate.Text;
    ParamByName('EDATE').AsString := cxDEdit_Edate.Text;
    ParamByName('FridgeNo').AsInteger := FNo;
    open;
  end;
end;

procedure TCCPRowDataForm.cxCBBox_CCPPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  //여기는 업체에 따라 조절 해야 함!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  with DataModuleForm.FDQuerySetting(FDQuery_facility) do
  begin
    close;
    sql.Clear;
    if cxCBBox_CCP.Text = '금속검출' then
    begin
      cxGridLv_List.GridView := cxGridDBTv_metal;
//      cxRGroup_kind.Visible := True;
      sql.Add(' SELECT Name, MetalCode AS CODE, MetalNo AS NO FROM Metal where substring(MetalCode,1,2) = '''+'CD'+''' ');
    end;
    open;
  end;
  FDQuery_List.Close;
end;

procedure TCCPRowDataForm.FormCreate(Sender: TObject);
var
  loopcnt: Integer;
begin
  inherited;
  cxDEdit_Sdate.Date := Date - 7;
  cxDEdit_Edate.Date := Date;

  //ccp 구분
  with DataModuleForm.FDQuerySetting(FDQuery_comm) do
  begin
    close;
    sql.Clear;
    sql.Add(' SELECT BCDName                ');
    sql.Add(' FROM BasicCodeDetail          ');
    sql.Add(' WHERE BCID = '''+'BC012'+'''  '); //ccp구분
    sql.Add(' AND   IsUsable = 1            ');
//    sql.Add(' ORDER BY BasicCodeDetailID     ');
    open;

    cxCBBox_CCP.Properties.Items.Clear;
    for loopcnt := 0 to RecordCount -1 do
    begin
      cxCBBox_CCP.Properties.Items.Add(FieldByName('BCDName').AsString);

      Next;
    end;
    cxCBBox_CCP.ItemIndex := 0;
  end;
end;

end.
