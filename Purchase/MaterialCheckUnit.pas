unit MaterialCheckUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCurrencyEdit, cxGroupBox, cxRadioGroup, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, Vcl.StdCtrls, cxButtons, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, MemDS, DBAccess, Uni, System.DateUtils;

type
  TMaterialCheckForm = class(TBaseChildForm)
    cxGBox_Input: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxDEdit_Killdate: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxEdit_KillPlace: TcxTextEdit;
    cxRGroup_Car: TcxRadioGroup;
    cxRGroup_GTest: TcxRadioGroup;
    cxRGroup_ETest: TcxRadioGroup;
    cxCEdit_InComeQty: TcxCurrencyEdit;
    cxCEdit_Temp: TcxCurrencyEdit;
    cxRGroup_Decision: TcxRadioGroup;
    cxRGroup_File: TcxRadioGroup;
    cxGBox_Search: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxDEdit_sdate: TcxDateEdit;
    cxDEdit_Edate: TcxDateEdit;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridLv_List: TcxGridLevel;
    cxGrid_List: TcxGrid;
    DS_L: TDataSource;
    cxGridDBTv_List_CheckID: TcxGridDBColumn;
    cxGridDBTv_List_CheckDate: TcxGridDBColumn;
    cxGridDBTv_ListI_nComeQty: TcxGridDBColumn;
    cxGridDBTv_List_KillDate: TcxGridDBColumn;
    cxGridDBTv_List_KillPlace: TcxGridDBColumn;
    cxGridDBTv_List_MatTemp: TcxGridDBColumn;
    cxGridDBTv_List_ShippingCar: TcxGridDBColumn;
    cxGridDBTv_List_GTest: TcxGridDBColumn;
    cxGridDBTv_List_ETest: TcxGridDBColumn;
    cxGridDBTv_List_Decision: TcxGridDBColumn;
    cxGridDBTv_List_RelationFile: TcxGridDBColumn;
    cxEdit_CheckID: TcxTextEdit;
    UniSP_List: TUniStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure cxGridDBTv_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBtn_DeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DataSearchList;
  end;

var
  MaterialCheckForm: TMaterialCheckForm;

implementation

uses DataModule;

{$R *.dfm}

procedure TMaterialCheckForm.FormCreate(Sender: TObject);
begin
  inherited;

  cxDEdit_sdate.Date := StartOfTheMonth(Date);
  cxDEdit_Edate.Date := Date;

  DataSearchList;
  cxBtn_NewClick(self);
end;

//new
procedure TMaterialCheckForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Input);

  cxDEdit_date.Date := Date;
end;

//save
procedure TMaterialCheckForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  EssentialItem(cxDEdit_date, '입고일');
  EssentialItem(cxCEdit_InComeQty, '입고수량');

  with DataModuleForm.FDSpSetting(nil, 'usp_MaterialCheck' ,'B') do
  begin
    ParamByname('@CheckID').AsString    := cxEdit_CheckID.Text;
    ParamByname('@CheckDate').AsString  := cxDEdit_date.Text;
    ParamByname('@InComeQty').AsInteger := Round(cxCEdit_InComeQty.Value);
    ParamByname('@KillDate').AsString   := cxDEdit_Killdate.Text;
    ParamByname('@KillPlace').AsString  := cxEdit_KillPlace.Text;
    ParamByname('@MatTemp').AsCurrency  := cxCEdit_Temp.Value;
    ParamByname('@ShipCar').AsString    := cxRGroup_Car.EditValue;
    ParamByname('@GTest').AsString      := cxRGroup_GTest.EditValue;
    ParamByname('@ETest').AsString      := cxRGroup_ETest.EditValue;
    ParamByname('@Decision').AsString   := cxRGroup_Decision.EditValue;
    ParamByname('@CheckFile').AsString  := cxRGroup_File.EditValue;
    ParamByname('@Writer').AsString     := LoginUserName;
    ParamByname('@Modifier').AsString   := LoginUserName;

    try
      ExecProc;
      DataSearchList;
      ShowMessage(MessageToSave);
      cxBtn_NewClick(self);
    except
      ShowMessage(MessageToError);
    end;
  end;
end;

//delete
procedure TMaterialCheckForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  if cxEdit_CheckID.Text = '' then exit;

  if MessageDlg(MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_MaterialCheck' ,'C') do
    begin
      ParamByname('@CheckID').AsString    := cxEdit_CheckID.Text;
       try
        ExecProc;
        DataSearchList;
        cxBtn_NewClick(self);
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

//search
procedure TMaterialCheckForm.cxBtn_SearchClick(Sender: TObject);
begin
  inherited;

  DataSearchList;
end;

procedure TMaterialCheckForm.cxGridDBTv_ListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with UniSP_List do
  begin
    cxEdit_CheckID.Text         := FieldByName('CheckID').AsString;
    cxDEdit_date.Text           := FieldByName('CheckDate').AsString;
    cxCEdit_InComeQty.Value     := FieldByName('InComeQty').AsInteger;
    cxDEdit_Killdate.Text       := FieldByName('Killdate').AsString;
    cxEdit_KillPlace.Text       := FieldByName('KillPlace').AsString;
    cxCEdit_Temp.Value          := FieldByName('MatTemp').AsCurrency;
    cxRGroup_GTest.EditValue    := FieldByName('GTest').AsBoolean;
    cxRGroup_ETest.EditValue    := FieldByName('ETest').AsBoolean;
    cxRGroup_Car.EditValue      := FieldByName('ShipCar').AsBoolean;
    cxRGroup_Decision.EditValue := FieldByName('Decision').AsBoolean;
    cxRGroup_File.EditValue     := FieldByName('CheckFile').AsString;
  end;
end;

procedure TMaterialCheckForm.DataSearchList;
begin
  with DataModuleForm.FDSpSetting(UniSP_List, 'usp_MaterialCheck' ,'A') do
  begin
    ParamByname('@SDATE').AsString := cxDEdit_sdate.Text;
    ParamByname('@EDATE').AsString := cxDEdit_edate.Text;
    open;
  end;
end;

end.
