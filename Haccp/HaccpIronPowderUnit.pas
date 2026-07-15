unit HaccpIronPowderUnit;

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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxGroupBox,
  cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  MemDS, DBAccess, Uni;

type
  THaccpIronPowderForm = class(TForm)
    cxGBox_Input: TcxGroupBox;
    cxLabel20: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxRGroup_OKYn1: TcxRadioGroup;
    cxLabel6: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxEdit_RValue1: TcxTextEdit;
    cxEdit_EValue1: TcxTextEdit;
    cxEdit_RQty1: TcxTextEdit;
    cxEdit_Remark1: TcxTextEdit;
    cxEdit_RValue2: TcxTextEdit;
    cxEdit_EValue2: TcxTextEdit;
    cxEdit_RQty2: TcxTextEdit;
    cxEdit_Remark2: TcxTextEdit;
    cxGrid_List: TcxGrid;
    cxGridLv_List: TcxGridLevel;
    cxGridDBBTv_List: TcxGridDBBandedTableView;
    cxGridDBBTv_List_date: TcxGridDBBandedColumn;
    cxGridDBBTv_List_type1: TcxGridDBBandedColumn;
    cxGridDBBTv_List_type2: TcxGridDBBandedColumn;
    cxGridDBBTv_List_Rvalue1: TcxGridDBBandedColumn;
    cxGridDBBTv_List_Rvalue2: TcxGridDBBandedColumn;
    cxGridDBBTv_List_Evalue1: TcxGridDBBandedColumn;
    cxGridDBBTv_List_Evalue2: TcxGridDBBandedColumn;
    cxGridDBBTv_List_OKYn1: TcxGridDBBandedColumn;
    cxGridDBBTv_List_OKYn2: TcxGridDBBandedColumn;
    cxGridDBBTv_List_RQty1: TcxGridDBBandedColumn;
    cxGridDBBTv_List_RQty2: TcxGridDBBandedColumn;
    cxGridDBBTv_List_Remark1: TcxGridDBBandedColumn;
    cxGridDBBTv_List_Remark2: TcxGridDBBandedColumn;
    cxEdit_ID: TcxTextEdit;
    cxRGroup_OKYn2: TcxRadioGroup;
    cxGridDBBTv_List_ID: TcxGridDBBandedColumn;
    DS_L: TDataSource;
    UniQuery_List: TUniQuery;
    UniQuery_comm: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBBTv_ListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
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
  HaccpIronPowderForm: THaccpIronPowderForm;

implementation

uses DataModule, MainUnit, HaccpGeneralUnit;

{$R *.dfm}

procedure THaccpIronPowderForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HaccpIronPowderForm := nil;
  Action := CaFree;
end;

procedure THaccpIronPowderForm.FormCreate(Sender: TObject);
begin
  ClearProc;
  GridListSetting;
end;

procedure THaccpIronPowderForm.ClearProc;
begin
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Input);

  cxRGroup_OKYn1.ItemIndex := 1;
  cxRGroup_OKYn2.ItemIndex := 1;
end;

procedure THaccpIronPowderForm.SaveProc;
  var CID : string;
begin
  if cxEdit_ID.Text = '' then
  begin
    with DataModuleForm.FDQuerySetting(UniQuery_comm) do
    begin
      sql.Add(' SELECT ISNULL(MAX(CheckID), 0)+1 AS CID ');
      sql.Add(' FROM HaccpIronPowder                    ');
      sql.Add(' WHERE CheckDate = :CheckDate            ');
      ParamByName('CheckDate').AsString := cxDEdit_date.Text;
      open;

      CID := FieldByName('CID').AsString;
    end;
  end;

  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    if cxEdit_ID.Text = '' then
    begin
      cxEdit_ID.Text := CID;

      sql.Add(' INSERT INTO HaccpIronPowder (                                             ');
      sql.Add(' CheckID ,CheckDate ,RValue1 ,RValue2 ,EValue1 ,EValue2                    ');
      sql.Add(' ,OKYn1 ,OKYn2 ,RQty1 ,RQty2 ,Remark1 ,Remark2 ,Writer ,WDT )              ');
      sql.Add(' Values (                                                                  ');
      sql.Add(' :CheckID ,:CheckDate ,:RValue1 ,:RValue2 ,:EValue1 ,:EValue2              ');
      sql.Add(' ,:OKYn1 ,:OKYn2 ,:RQty1 ,:RQty2 ,:Remark1 ,:Remark2 ,:Writer ,GetDate() ) ');
    end
    else begin
      sql.Add(' UPDATE HaccpIronPowder SET   ');
      sql.Add('  RValue1  = :RValue1         ');
      sql.Add(' ,RValue2  = :RValue2         ');
      sql.Add(' ,EValue1  = :EValue1         ');
      sql.Add(' ,EValue2  = :EValue2         ');
      sql.Add(' ,OKYn1    = :OKYn1           ');
      sql.Add(' ,OKYn2    = :OKYn2           ');
      sql.Add(' ,RQty1    = :RQty1           ');
      sql.Add(' ,RQty2    = :RQty2           ');
      sql.Add(' ,Remark1  = :Remark1         ');
      sql.Add(' ,Remark2  = :Remark2         ');
      sql.Add(' ,Modifier = :Writer          ');
      sql.Add(' ,MDT      = GetDate()        ');
      sql.Add(' WHERE CheckID = :CheckID     ');
      sql.Add(' AND   CheckDate = :CheckDate ');
    end;

    ParamByName('CheckID').AsString   := cxEdit_ID.Text;
    ParamByName('CheckDate').AsString := cxDEdit_date.Text;
    ParamByName('RValue1').AsString   := cxEdit_RValue1.Text;
    ParamByName('RValue2').AsString   := cxEdit_RValue2.Text;
    ParamByName('EValue1').AsString   := cxEdit_EValue1.Text;
    ParamByName('EValue2').AsString   := cxEdit_EValue2.Text;
    ParamByName('OKYn1').AsString     := cxRGroup_OKYn1.EditValue;
    ParamByName('OKYn2').AsString     := cxRGroup_OKYn2.EditValue;
    ParamByName('RQty1').AsString     := cxEdit_RQty1.Text;
    ParamByName('RQty2').AsString     := cxEdit_RQty2.Text;
    ParamByName('Remark1').AsString   := cxEdit_Remark1.Text;
    ParamByName('Remark2').AsString   := cxEdit_Remark2.Text;
    ParamByName('Writer').AsString    := LoginUserName;

    try
      ExecSQL;
    except
      SaveToError := True;
    end;
  end;

  GridListSetting;
end;

procedure THaccpIronPowderForm.DeleteProc;
begin
  if cxEdit_ID.Text = '' then
  begin
    showmessage('삭제 가능한 상태가 아닙니다.');
    exit;
  end;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDQuerySetting(UniQuery_comm) do
    begin
      sql.Add(' DELETE FROM HaccpIronPowder  ');
      sql.Add(' WHERE CheckID = :CheckID     ');
      sql.Add(' AND   CheckDate = :CheckDate ');
      ParamByName('CheckID').AsString   := cxEdit_ID.Text;
      ParamByName('CheckDate').AsString := cxDEdit_date.Text;

      try
        ExecSQL;
      except
        SaveToError := True;
      end;
    end;
  end;

  if SaveToError= False then
  begin
    ClearProc;
    GridListSetting;
  end;
end;

procedure THaccpIronPowderForm.GridListSetting;
begin
  with DataModuleForm.FDQuerySetting(UniQuery_List) do
  begin
    sql.Add(' SELECT * FROM HaccpIronPowder ');
    sql.Add(' WHERE LEFT(CheckDate, 7) = :CheckDate ');
    ParamByName('CheckDate').AsString := Copy(DataModule.HaccpSelected_Date, 1, 7);
    open;
  end;
end;

procedure THaccpIronPowderForm.DataBindingToGrid;
begin
  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' SELECT * FROM HaccpIronPowder ');
    sql.Add(' WHERE CheckID = :CheckID     ');
    sql.Add(' AND   CheckDate = :CheckDate ');
    ParamByName('CheckID').AsString   := DataModule.HaccpSelected_Division;
    ParamByName('CheckDate').AsString := DataModule.HaccpSelected_Date;
    open;

    cxEdit_ID.Text           := FieldByName('CheckID').AsString;
    cxDEdit_date.Text        := FieldByName('CheckDate').AsString;
    cxEdit_RValue1.Text      := FieldByName('Rvalue1').AsString;
    cxEdit_RValue2.Text      := FieldByName('Rvalue2').AsString;
    cxEdit_EValue1.Text      := FieldByName('Evalue1').AsString;
    cxEdit_EValue2.Text      := FieldByName('Evalue2').AsString;
    cxRGroup_OKYn1.EditValue := FieldByName('OKYn1').AsString;
    cxRGroup_OKYn2.EditValue := FieldByName('OKYn2').AsString;
    cxEdit_RQty1.Text        := FieldByName('RQty1').AsString;
    cxEdit_RQty2.Text        := FieldByName('RQty2').AsString;
    cxEdit_Remark1.Text      := FieldByName('Remark1').AsString;
    cxEdit_Remark2.Text      := FieldByName('Remark2').AsString;
  end;
end;

procedure THaccpIronPowderForm.cxGridDBBTv_ListCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
//
end;


end.
