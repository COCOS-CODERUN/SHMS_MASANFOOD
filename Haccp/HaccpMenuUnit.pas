unit HaccpMenuUnit;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit, cxLabel, cxMaskEdit, cxDropDownEdit, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White, MemDS,
  DBAccess, Uni, cxRadioGroup;

type
  THaccpMenuForm = class(TBaseChildForm)
    cxGBoxInput: TcxGroupBox;
    cxGridDBTvList: TcxGridDBTableView;
    cxGridLvList: TcxGridLevel;
    cxGridList: TcxGrid;
    DS_List: TDataSource;
    cxGridDBTvListList_ID: TcxGridDBColumn;
    cxGridDBTvList_LintNo: TcxGridDBColumn;
    cxGridDBTvList_FormName: TcxGridDBColumn;
    cxGridDBTvList_Period: TcxGridDBColumn;
    cxGridDBTvList_ManagerMain: TcxGridDBColumn;
    cxLbl20: TcxLabel;
    cxEdit_FormNo: TcxTextEdit;
    cxLbl1: TcxLabel;
    cxEdit_FormName: TcxTextEdit;
    cxLbl2: TcxLabel;
    cxEdit_Period: TcxTextEdit;
    cxLbl6: TcxLabel;
    cxEdit_ListID: TcxTextEdit;
    UniQuery_list: TUniQuery;
    UniQuery_comm: TUniQuery;
    cxLabel1: TcxLabel;
    cxEdit_division: TcxTextEdit;
    cxGridDBTvList_division: TcxGridDBColumn;
    cxLabel10: TcxLabel;
    cxRGroup_use: TcxRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridDBTvListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HaccpMenuForm: THaccpMenuForm;

  loopcnt : Integer;

implementation

uses DataModule, MainUnit;

{$R *.dfm}

procedure THaccpMenuForm.FormCreate(Sender: TObject);
begin
  inherited;

  //List 조회
  with DataModuleForm.FDQuerySetting(UniQuery_list) do
  begin
    sql.Add(' SELECT * FROM HaccpMenu       ');
    sql.Add(' WHERE Division <> ''CCP관리'' ');
    open;
  end;

  cxBtn_NewClick(self);
end;

procedure THaccpMenuForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBoxInput);

//  cxEdit_ManagerMain.Text := 'QA 팀장';
//  cxEdit_ManagerSub.Text := 'QA 총괄 팀장';
//  cxEdit_ManagerOK.Text := 'HACCP 팀장';
end;

procedure THaccpMenuForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  EssentialItem(cxEdit_Division, 'HACCP 구분');
  EssentialItem(cxEdit_FormNo, '양식번호');
  EssentialItem(cxEdit_FormName, '양식명');

  with DataModuleForm.FDQuerySetting(UniQuery_comm) do
  begin
    sql.Add(' exec usp_HaccpMenu @option = :option                ');
    sql.Add(' ,@ListID = :ListID          ,@Division = :Division  ');
    sql.Add(' ,@FormNo = :FormNo          ,@FormName = :FormName  ');
    sql.Add(' ,@Period = :Period          ,@IsUsable = :IsUsable  ');
    ParamByName('option').AsString      := 'A';
    ParamByName('ListID').AsString      := cxEdit_ListID.Text;
    ParamByName('Division').AsString    := cxEdit_Division.Text;
    ParamByName('FormNo').AsString      := cxEdit_FormNo.Text;
    ParamByName('FormName').AsString    := cxEdit_FormName.Text;
    ParamByName('Period').AsString      := cxEdit_Period.Text;
    ParamByName('IsUsable').AsBoolean   := cxRGroup_use.EditValue;
    try
      ExecSQL;
      ShowMessage(MessageToSave);
      UniQuery_list.Refresh;
      cxBtn_NewClick(self);
    except
      ShowMessage(MessageToError);
    end;
  end;
end;

procedure THaccpMenuForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;


  if cxEdit_ListID.Text = '' then
  begin
    showmessage('삭제 가능한 상태가 아닙니다.');
    exit;
  end;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDQuerySetting(UniQuery_comm) do
    begin
      sql.Add(' exec usp_HaccpMenu @option =:option, @ListID = :ListID ');
      ParamByName('option').AsString := 'B';
      ParamByName('ListID').AsString := cxEdit_ListID.Text;
      try
        ExecSQL;
        UniQuery_list.Refresh;
        cxBtn_NewClick(self);
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

procedure THaccpMenuForm.cxGridDBTvListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with UniQuery_list do
  begin
    cxEdit_ListID.Text       := FieldByName('ListID').AsString;
    cxEdit_division.Text     := FieldByName('Division').AsString;
    cxEdit_FormNo.Text       := FieldByName('FormNo').AsString;
    cxEdit_FormName.Text     := FieldByName('FormName').AsString;
    cxEdit_Period.Text       := FieldByName('Period').AsString;
    cxRGroup_use.EditValue   := FieldByName('IsUsable').AsBoolean;
  end;
end;

end.
