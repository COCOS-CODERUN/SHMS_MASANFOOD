unit BasicCodeUnit;

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
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, cxSplitter, cxRadioGroup,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, cxTextEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxMaskEdit, cxButtonEdit, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, MemDS, DBAccess, Uni,
  cxDropDownEdit;

type
  TBasicCodeForm = class(TBaseChildForm)
    cxGBox_Code: TcxGroupBox;
    cxGBoxCodeInfo: TcxGroupBox;
    cxEdit_CodeName: TcxTextEdit;
    cxLbl2: TcxLabel;
    cxGrid_Code: TcxGrid;
    cxGridDBTv_Code: TcxGridDBTableView;
    cxGridDBTv_Code_ID: TcxGridDBColumn;
    cxGridDBTv_Code_Name: TcxGridDBColumn;
    cxGridLv_Code: TcxGridLevel;
    cxGBox_Detail: TcxGroupBox;
    cxGrid_Detail: TcxGrid;
    cxGridDBTv_Detail: TcxGridDBTableView;
    cxGridDBTv_Detail_BCDID: TcxGridDBColumn;
    cxGridDBTv_Detail_BCID: TcxGridDBColumn;
    cxGridDBTv_Detail_BCDName: TcxGridDBColumn;
    cxGridDBTv_Detail_IsUsableText: TcxGridDBColumn;
    cxGridDBTv_Detail_IsUsable: TcxGridDBColumn;
    cxGridDBTv_Detail_Writer: TcxGridDBColumn;
    cxGridDBTv_Detail_WDT: TcxGridDBColumn;
    cxGridDBTv_Detail_Modifier: TcxGridDBColumn;
    cxGridDBTv_Detail_MDT: TcxGridDBColumn;
    cxGridLv_Detail: TcxGridLevel;
    cxGBox_DetailInfo: TcxGroupBox;
    cxEdit_DetailName: TcxTextEdit;
    cxRGroup_IsUsable: TcxRadioGroup;
    cxEdit_Writer: TcxTextEdit;
    cxEdit_Modifier: TcxTextEdit;
    cxLbl5: TcxLabel;
    cxLbl7: TcxLabel;
    cxLbl14: TcxLabel;
    cxLbl3: TcxLabel;
    cxSplitter: TcxSplitter;
    DS_Detail: TDataSource;
    DS_Code: TDataSource;
    cxGridTv_Detail: TcxGridTableView;
    cxGridTv_Detail_Order: TcxGridColumn;
    cxGridTv_Detail_ID: TcxGridColumn;
    cxGridTv_Detail_BasicCodeID: TcxGridColumn;
    cxGridTv_Detail_Name: TcxGridColumn;
    cxGridTv_Detail_Index: TcxGridColumn;
    cxGridTv_Detail_IsUsableText: TcxGridColumn;
    cxGridTv_Detail_IsUsable: TcxGridColumn;
    cxGridTv_Detail_WDT: TcxGridColumn;
    cxGridTv_Detail_Modifier: TcxGridColumn;
    cxGridTv_Detail_MDT: TcxGridColumn;
    cxGridTv_Detail_Writer: TcxGridColumn;
    cxLabel2: TcxLabel;
    cxGridDBTv_Code_Menu: TcxGridDBColumn;
    cxBEdit_Index: TcxButtonEdit;
    FDQuery_Detail: TUniQuery;
    FDQuery_Code: TUniQuery;
    cxGridDBTv_Detail_DisIndex: TcxGridDBColumn;
    cxEdit_BCID: TcxTextEdit;
    cxEdit_BCDID: TcxTextEdit;
    procedure cxGridDBTv_CodeCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cxGridDBTv_DetailCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxBEditIndexPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SearchCodeList;
    function CheckText(Text:String):Boolean;
    function SaveDetail: Boolean;
    procedure SearchDetailList;
  end;

var
  BasicCodeForm: TBasicCodeForm;

  loopcnt:Integer;

implementation

uses DataModule, MainUnit;
{$R *.dfm}

//Form==========================================================================
procedure TBasicCodeForm.FormShow(Sender: TObject);
begin
  inherited;
  SearchCodeList;
  DataModuleForm.ClearEditIncxGroupBox(cxGBoxCodeInfo); // 왼쪽 비우기
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_DetailInfo); // 오른쪽 비우기
end;

procedure TBasicCodeForm.FormResize(Sender: TObject);
begin
  inherited;
  cxGBox_Code.Width := ClientWidth div 3;
end;

//기초 코드 목록 조회
procedure TBasicCodeForm.SearchCodeList;
begin

  with DataModuleForm.FDQuerySetting(FDQuery_Code) do
  begin
    SQL.Add('EXEC usp_BasicCode @Option = :Option');
    ParamByName('Option').AsString := 'A'; //기초코드목록 조회
    Open;
  end;
end;

procedure TBasicCodeForm.SearchDetailList;
begin
  with DataModuleForm.FDQuerySetting(FDQuery_Detail) do
  begin
    SQL.Add('EXEC usp_BasicCode @Option = :Option, @BCID = :BCID');
    ParamByName('Option').AsString      := 'B';
    ParamByName('BCID').AsString := cxEdit_BCID.Text;
    open;
  end;
end;

//기초 코드 목록 더블 클릭
procedure TBasicCodeForm.cxGridDBTv_CodeCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  cxBtn_NewClick(self);

  with FDQuery_Code do
  begin
    cxEdit_BCID.Text     := FieldByName('BCID').AsString;
    cxEdit_CodeName.Text := FieldByName('BCName').AsString;
  end;

  SearchDetailList;
end;

procedure TBasicCodeForm.cxGridDBTv_DetailCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  with FDQuery_Detail do
  begin
    cxEdit_BCDID.Text           := FieldByName('BCDID').AsString;
    cxEdit_DetailName.Text      := FieldByName('BCDName').AsString;
    cxBEdit_Index.Text          := FieldByName('DisIndex').AsString;
    cxRGroup_IsUsable.EditValue := FieldByName('IsUsable').AsBoolean;
    cxEdit_Writer.Text          := FieldByName('Writer').AsString;
    cxEdit_Modifier.Text        := FieldByName('Modifier').AsString;
  end;

  cxEdit_DetailName.SetFocus;
end;

//버튼==========================================================================
//신규 버튼
procedure TBasicCodeForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_DetailInfo); // 오른쪽 비우기
  cxRGroup_IsUsable.ItemIndex := 0;
  cxEdit_Writer.Text := DataModule.LoginUserName;
  cxBEdit_Index.Text := '0';
  cxEdit_DetailName.SetFocus;
end;

//저장 버튼
procedure TBasicCodeForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;
  //권한 확인
  if Not CheckAuthSave(CanInput, CanAlter, cxEdit_BCDID.Text, 1) then Exit;

  // Null 체크
  if cxEdit_BCID.Text = '' then
  begin
    Exit;
  end;

  if SaveDetail then
  begin
    cxBtn_NewClick(self);
    ShowMessage(MessageToSave);
    SearchDetailList;
  end;
end;

//인덱스 수정 버튼
procedure TBasicCodeForm.cxBEditIndexPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  //권한 확인
//  if Not CheckAuthoritySave(CanInput, CanAlter, 1, 1) then Exit;
  if not CheckText(cxBEdit_Index.Text) then
  begin
    ShowMessage('인덱스는 숫자만 입력 가능합니다.');
    Exit;
  end;

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    close;
    sql.Clear;
    sql.Add(' UPDATE BasicCodeDetail SET ');
    sql.Add('   DisIndex = :DisIndex     ');
    sql.Add(' WHERE BCDID = :BCDID       ');
    ParamByName('@BCDID').AsString     := cxEdit_BCDID.Text;
    ParamByName('@DisIndex').AsInteger := StrToInt(cxBEdit_Index.Text);
    ExecSQL;
  end;

  SearchDetailList;
  ShowMessage(MessageToSave);
end;

//인덱스 체크
function TBasicCodeForm.CheckText(Text: String): Boolean;
var
  i:Integer;
  T1:String;
begin
  Result := True;
  T1 := Trim(Text);

  for i := Low(T1) to High(T1) do
  begin
    if not CharInSet(T1[i], ['0'..'9']) then
    begin
      Result := False;
      Exit;
    end;
  end;
end;

//삭제 버튼
procedure TBasicCodeForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;
  //권한 확인
  if Not CheckAuthorityDelete(CanDelete) then Exit;
  if cxEdit_BCDID.Text = '' then Exit;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_BasicCode', 'D') do
    begin
      ParamByName('@BCDID').AsString := cxEdit_BCDID.Text;
      try
        ExecProc;

        cxBtn_NewClick(self);
        SearchDetailList;
      except
        SaveToError := True;
      end;
    end;
  end;
end;

//저장 함수
function TBasicCodeForm.SaveDetail: Boolean;
var
  Index:Integer;
begin
  Result := False;
  if cxEdit_DetailName.Text = '' then
  begin
    MessageDlg('상세 항목을 입력해주세요.',mtError,[mbOk],0);
    cxEdit_DetailName.SetFocus;
    Exit;
  end;

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    SQL.Add(' EXEC usp_BasicCode @Option = :Option, @BCID = :BCID, @BCDID = :BCDID ');
    SQL.Add(', @BCDName = :BCDName, @IsUsable = :IsUsable, @DisIndex = :DisIndex   ');
    SQL.Add(', @Writer = :Writer,   @Modifier = :Modifier ');
    ParamByName('Option').AsString     := 'C';
    ParamByName('BCDID').AsString      := cxEdit_BCDID.Text;
    ParamByName('BCID').AsString       := cxEdit_BCID.Text;
    ParamByName('BCDName').AsString    := cxEdit_DetailName.Text;
    ParamByName('IsUsable').AsBoolean  := cxRGroup_IsUsable.EditValue;
    ParamByName('DisIndex').AsInteger  := StrToInt(cxBEdit_Index.Text);
    ParamByName('Writer').AsString     := DataModule.LoginUserName;
    ParamByName('Modifier').AsString   := DataModule.LoginUserName;

    ExecSQL;
  end;
  Result := True;
end;



end.
