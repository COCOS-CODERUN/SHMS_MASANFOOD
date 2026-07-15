unit U_MenuInfo;

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
  cxRadioGroup, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni;

type
  TFrmMenuInfo = class(TBaseChildForm)
    cxGroupBox1: TcxGroupBox;
    cxGBox_search: TcxGroupBox;
    cxGBox_Input: TcxGroupBox;
    cxEdit_name: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    cxEdit_FNAME: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxEdit_LV: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxEdit_LV2: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxEdit_LV3: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxRGRoup_Use: TcxRadioGroup;
    cxLabel7: TcxLabel;
    cxEdit_Index: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxEdit_ID: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxCBBox_Main: TcxComboBox;
    cxLabel10: TcxLabel;
    cxCBBox_MENU: TcxComboBox;
    cxGridDBTv_menu: TcxGridDBTableView;
    cxGridLv_menu: TcxGridLevel;
    cxGrid_menu: TcxGrid;
    DS_List: TDataSource;
    cxGridDBTv_menu_MENUID: TcxGridDBColumn;
    cxGridDBTv_menu_MENUTYPE: TcxGridDBColumn;
    cxGridDBTv_menu_MENUNAME: TcxGridDBColumn;
    cxGridDBTv_menu_FORMNAME: TcxGridDBColumn;
    cxGridDBTv_menu_MENULV1: TcxGridDBColumn;
    cxGridDBTv_menu_MENULV2: TcxGridDBColumn;
    cxGridDBTv_menu_MENULV3: TcxGridDBColumn;
    cxGridDBTv_menu_USEYN: TcxGridDBColumn;
    cxGridDBTv_menu_DISINDEX: TcxGridDBColumn;
    cxRGroup_TYPE: TcxRadioGroup;
    UniQuery_Find: TUniQuery;
    UniQuery_List: TUniQuery;
    UniQuery_Exec: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure edtMAINPropertiesEditValueChanged(Sender: TObject);
    procedure edtMENUPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxGridDBTv_menuCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTv_menuCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    SAVE_MODE : Integer;
    procedure EditClear;
    procedure DataSearch;
  public
    { Public declarations }
  end;

var
  FrmMenuInfo: TFrmMenuInfo;

implementation

uses DataModule;

{$R *.dfm}

procedure TFrmMenuInfo.FormCreate(Sender: TObject);
  var i : Integer;
begin
  inherited;

  with DataModuleForm.FDQuerySetting(UniQuery_Find) do
  begin
    close;
    SQL.Clear;
    SQL.Add(' SELECT MENUNAME FROM MENUINFO WHERE MENUTYPE = ''1'' ');
    open;

    cxCBBox_Main.Clear;
    for i := 0 to UniQuery_Find.RecordCount -1 do
    begin
      cxCBBox_Main.Properties.Items.Add(FieldByName('MENUNAME').AsString);
      Next;
    end;
  end;

  EditClear;
end;

procedure TFrmMenuInfo.EditClear;
  var i : Integer;
begin
  for i := 0 to cxGBox_Input.ControlCount - 1 do
  begin
    if cxGBox_Input.Controls[i] is TcxTextEdit then
    begin
      (cxGBox_Input.Controls[i] as TcxTextEdit).Clear;
    end;
  end;

  cxEdit_ID.Text := '0';
  cxRGroup_Use.ItemIndex := 0;
  cxRGroup_Type.ItemIndex := 0;
end;


procedure TFrmMenuInfo.edtMAINPropertiesEditValueChanged(Sender: TObject);
  var i : Integer;
begin
  inherited;

  EditClear;

  with DataModuleForm.FDQuerySetting(UniQuery_Find) do
  begin
    close;
    SQL.Clear;
    SQL.Add(' SELECT MENUNAME FROM MENUINFO ');
    SQL.Add(' WHERE MENUTYPE = ''2''        ');
    SQL.Add(' AND   MENULV1 = :MENULV1      ');
    ParamByName('MENULV1').AsString := cxCBBox_main.Text;
    open;

    cxCBBox_MENU.Properties.Items.Clear;
    for i := 0 to UniQuery_Find.RecordCount -1 do
    begin
      cxCBBox_MENU.Properties.Items.Add(FieldByName('MENUNAME').AsString);
      Next;
    end;
    cxCBBox_MENU.Text := '';
  end;

  DataSearch;
end;

procedure TFrmMenuInfo.edtMENUPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  EditClear;
  DataSearch;
end;

procedure TFrmMenuInfo.DataSearch;
begin

  with DataModuleForm.FDQuerySetting(UniQuery_List) do
  begin
    close;
    SQL.Clear;
    SQL.Add(' SELECT MENUID ,MENUTYPE ,MENUNAME ,FORMNAME ,MENULV1 ,MENULV2 ,MENULV3 ,USEYN ,DISINDEX FROM MENUINFO ');

    if cxCBbox_MAIN.Text <> '' then
    begin
      SQL.Add(' WHERE MENULV1 = :MENULV1 ');
      ParamByName('MENULV1').AsString := cxCBbox_MAIN.Text;
    end;

    if cxCBBox_MENU.Text <> '' then
    begin
      SQL.Add(' AND MENULV2 = :MENULV2 ');
      ParamByname('MENULV2').AsString := cxCBbox_MENU.Text;
    end;

    SQL.Add(' ORDER BY DISINDEX ');

    open;
  end;
end;

procedure TFrmMenuInfo.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  EditClear;
end;

procedure TFrmMenuInfo.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  with DataModuleForm.FDQuerySetting(UniQuery_Exec) do
  begin
    if cxEdit_ID.Text = '0' then
    begin
      close;
      SQL.Add(' INSERT INTO MENUINFO VALUES ( ');
      SQL.Add(' :MENUTYPE, :MENUNAME, :FORMNAME, :MENULV1, :MEMULV2, :MEMULV3, :MODALYN, :USEYN, :DISINDEX) ');
      ParamByName('MENUTYPE').AsString  := cxRGroup_TYPE.EditValue;
      ParamByName('MENUNAME').AsString  := cxEdit_name.Text;
      ParamByName('FORMNAME').AsString  := cxEdit_Fname.Text;
      ParamByName('MENULV1').AsString   := cxEdit_LV.Text;
      ParamByName('MEMULV2').AsString   := cxEdit_LV2.Text;
      ParamByName('MEMULV3').AsString   := cxEdit_LV3.Text;
      ParamByName('MODALYN').AsString   := 'N';
      ParamByName('USEYN').AsString     := cxRGroup_Use.EditValue;
      ParamByName('DISINDEX').AsString  := cxEdit_Index.Text;
      try
        ExecSQL;
        ShowMessage('저장이 완료되었습니다.');
        DataSearch;
      except
        ShowMessage('저장 시 문제가 발생했습니다 전산실로 문의 바랍니다.');
        EXIT;
      end;
    end
    else begin
      close;
      sql.Clear;
      SQL.Add(' UPDATE MENUINFO SET   ');
      SQL.Add('  MENUTYPE = :MENUTYPE ');
      SQL.Add(' ,MENUNAME = :MENUNAME ');
      SQL.Add(' ,FORMNAME = :FORMNAME ');
      SQL.Add(' ,MENULV1  = :MENULV1  ');
      SQL.Add(' ,MENULV2  = :MENULV2  ');
      SQL.Add(' ,MENULV3  = :MENULV3  ');
      SQL.Add(' ,USEYN    = :USEYN    ');
      SQL.Add(' ,DISINDEX = :DISINDEX ');
      SQL.Add(' WHERE MENUID = :MENUID');
      ParamByName('MENUTYPE').AsString  := cxRGroup_TYPE.EditValue;
      ParamByName('MENUNAME').AsString  := cxEdit_name.Text;
      ParamByName('FORMNAME').AsString  := cxEdit_Fname.Text;
      ParamByName('MENULV1').AsString   := cxEdit_LV.Text;
      ParamByName('MENULV2').AsString   := cxEdit_LV2.Text;
      ParamByName('MENULV3').AsString   := cxEdit_LV3.Text;
      ParamByName('USEYN').AsString     := cxRGroup_Use.EditValue;
      ParamByName('DISINDEX').AsString  := cxEdit_Index.Text;
      ParamByName('MENUID').AsString    := cxEdit_ID.Text;
      try
        ExecSQL;
        ShowMessage('저장이 완료되었습니다.');
        DataSearch;
      except
        ShowMessage('저장 시 문제가 발생했습니다 전산실로 문의 바랍니다.');
        EXIT;
      end;
    end;
  end;

  if cxEdit_ID.Text = '0' then
  begin
    UniQuery_Find.close;
    UniQuery_Find.sql.Clear;
    UniQuery_Find.sql.Add(' SELECT MAX(MENUID) MID FROM MENUINFO ');
    UniQuery_Find.open;

    cxEdit_ID.Text := UniQuery_Find.FieldByName('MID').AsString;
  end;
end;

procedure TFrmMenuInfo.cxGridDBTv_menuCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  with UniQuery_List do
  begin
    cxEdit_ID.Text    := FieldByName('MENUID').AsString;
    cxRGroup_TYPE.EditValue  := FieldByName('MENUTYPE').Value;
    cxEdit_NAME.Text  := FieldByName('MENUNAME').AsString;
    cxEdit_FNAME.Text := FieldByName('FORMNAME').AsString;
    cxEdit_LV.Text    := FieldByName('MENULV1').AsString;
    cxEdit_LV2.Text   := FieldByName('MENULV2').AsString;
    cxEdit_LV3.Text   := FieldByName('MENULV3').AsString;
    cxEdit_INDEX.Text := FieldByName('DISINDEX').AsString;
    cxRGroup_USE.EditValue := FieldByName('USEYN').Value;
  end;
end;

procedure TFrmMenuInfo.cxGridDBTv_menuCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

  if AViewInfo.GridRecord.Values[cxGridDBTv_menu_MENUTYPE.Index] = '2' then
  begin
    ACanvas.Brush.Color := $00E1FFE1;
  end;

  if AViewInfo.Selected then
  begin
    ACanvas.Brush.Color := clHighlight;
  end;
end;

end.
