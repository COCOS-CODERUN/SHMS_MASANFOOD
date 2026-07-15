unit HaccpManagementList;

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
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  THaccpMenuForm = class(TBaseChildForm)
    cxGBoxInput: TcxGroupBox;
    cxGridDBTvList: TcxGridDBTableView;
    cxGridLvList: TcxGridLevel;
    cxGridList: TcxGrid;
    DS_List: TDataSource;
    FDQuery_list: TFDQuery;
    cxGridDBTvListListID: TcxGridDBColumn;
    cxGridDBTvListLintNo: TcxGridDBColumn;
    cxGridDBTvListFormName: TcxGridDBColumn;
    cxGridDBTvListPeriod: TcxGridDBColumn;
    cxGridDBTvListManagerMain: TcxGridDBColumn;
    cxGridDBTvListManagerSub: TcxGridDBColumn;
    cxGridDBTvListManagerOK: TcxGridDBColumn;
    cxGridDBTvListNo: TcxGridDBColumn;
    cxLbl20: TcxLabel;
    cxEditFormNo: TcxTextEdit;
    cxLbl1: TcxLabel;
    cxEditFormName: TcxTextEdit;
    cxLbl2: TcxLabel;
    cxEditPeriod: TcxTextEdit;
    cxLbl3: TcxLabel;
    cxEditManagerMain: TcxTextEdit;
    cxLbl4: TcxLabel;
    cxEditManagerSub: TcxTextEdit;
    cxLbl5: TcxLabel;
    cxEditManagerOK: TcxTextEdit;
    cxLbl6: TcxLabel;
    cxEditListID: TcxTextEdit;
    cxLbl7: TcxLabel;
    cxCBBoxDivision: TcxComboBox;
    FDQuery_comm: TFDQuery;
    cxGridDBTvListDivision: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxBtnNewClick(Sender: TObject);
    procedure cxBtnSaveClick(Sender: TObject);
    procedure cxGridDBTvListNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cxBtnDeleteClick(Sender: TObject);
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

procedure THaccpMenuForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  HaccpManagementListForm := nil;
end;

procedure THaccpMenuForm.FormCreate(Sender: TObject);
begin
  inherited;

  //haccp∆¿ ±∏∫–
  with FDQuery_comm do begin
    close;
    sql.Clear;
    close;
    sql.Clear;
    sql.Add(' SELECT DetailName                  ');
    sql.Add(' FROM BasicCode as A                ');
    sql.Add(' INNER JOIN BasicCodeDetail as B    ');
    sql.Add(' 	ON A.BasicCodeID = B.BasicCodeID ');
    sql.Add(' WHERE A.Name = ''Haccp∆¿ ±∏∫–''       ');
    sql.Add(' ORDER BY BasicCodeDetailID         ');
    open;

    cxCBBoxDivision.Clear;
    for loopcnt := 0 to RecordCount -1 do begin
      cxCBBoxDivision.Properties.Items.Add(FieldByName('DetailName').AsString);
      Next;
    end;
  end;

  //List ¡∂»∏
  with FDQuery_list do begin
    close;
    sql.Clear;
    sql.Add(' SELECT * FROM HaccpManagementList ');
    open;
  end;

  cxBtnNewClick(self);
end;

procedure THaccpMenuForm.cxGridDBTvListNoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index +1);
end;

procedure THaccpMenuForm.cxBtnNewClick(Sender: TObject);
begin
  inherited;

  DataModuleForm.ClearEditIncxGroupBox(cxGBoxInput);

  cxEditManagerMain.Text := 'QA ∆¿¿Â';
  cxEditManagerSub.Text := 'QA √—∞˝ ∆¿¿Â';
  cxEditManagerOK.Text := 'HACCP ∆¿¿Â';
end;

procedure THaccpMenuForm.cxBtnSaveClick(Sender: TObject);
begin
  inherited;
  if cxCBBoxDivision.Text = '' then
  begin
    showmessage('HACCP∆¿ ±∏∫–¿ª ¿‘∑¬«œººø‰.');
    exit;
  end;

  with FDQuery_comm do begin
    close;
    sql.Clear;
    sql.Add(' exec usp_HaccpManagementList @option = :option           ');
    sql.Add(' ,@ListID = :ListID          ,@Division = :Division       ');
    sql.Add(' ,@FormNo = :FormNo          ,@FormName = :FormName       ');
    sql.Add(' ,@Period = :Period          ,@ManagerMain = :ManagerMain ');
    sql.Add(' ,@ManagerSub = :ManagerSub  ,@ManagerOK = :ManagerOK     ');
    ParamByName('option').AsString      := HaccpManagementListSave;
    ParamByName('ListID').AsString      := cxEditListID.Text;
    ParamByName('Division').AsString    := cxCBBoxDivision.Text;
    ParamByName('FormNo').AsString      := cxEditFormNo.Text;
    ParamByName('FormName').AsString    := cxEditFormName.Text;
    ParamByName('Period').AsString      := cxEditPeriod.Text;
    ParamByName('ManagerMain').AsString := cxEditManagerMain.Text;
    ParamByName('ManagerSub').AsString  := cxEditManagerSub.Text;
    ParamByName('ManagerOK').AsString   := cxEditManagerOK.Text;
    ExecSQL;
  end;

  showmessage('¿˙¿Â «œø¥Ω¿¥œ¥Ÿ.');
  FDQuery_list.Refresh;
end;

procedure THaccpMenuForm.cxBtnDeleteClick(Sender: TObject);
begin
  inherited;


  if cxEditListID.Text = '' then
  begin
    showmessage('ªË¡¶ ∞°¥…«— ªÛ≈¬∞° æ∆¥’¥œ¥Ÿ.');
    exit;
  end;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with FDQuery_comm do begin
      close;
      sql.Clear;
      sql.Add(' exec usp_HaccpManagementList @option =:option, @ListID = :ListID ');
      ParamByName('option').AsString := HaccpManagementListDelete;
      ParamByName('ListID').AsString := cxEditListID.Text;
      ExecSQL;
    end;

    FDQuery_list.Refresh;
  end;
end;

procedure THaccpMenuForm.cxGridDBTvListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  cxEditListID.Text       := FDQuery_list.FieldByName('ListID').AsString;
  cxCBBoxDivision.Text    := FDQuery_list.FieldByName('Division').AsString;
  cxEditFormNo.Text       := FDQuery_list.FieldByName('FormNo').AsString;
  cxEditFormName.Text     := FDQuery_list.FieldByName('FormName').AsString;
  cxEditPeriod.Text       := FDQuery_list.FieldByName('Period').AsString;
  cxEditManagerMain.Text  := FDQuery_list.FieldByName('ManagerMain').AsString;
  cxEditManagerSub.Text   := FDQuery_list.FieldByName('ManagerSub').AsString;
  cxEditManagerOK.Text    := FDQuery_list.FieldByName('ManagerOK').AsString;
end;

end.
