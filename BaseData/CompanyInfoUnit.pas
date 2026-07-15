unit CompanyInfoUnit;

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
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxRadioGroup, cxCurrencyEdit, cxTextEdit, System.UITypes, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ExtCtrls,
  System.DateUtils, cxGridExportLink, System.IOUtils, ShellAPI, ComOBJ,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxMemo, MemDS, DBAccess, Uni;

type
  TCompanyInfoForm = class(TBaseChildForm)
    UniQuery_com: TUniQuery;
    cxGBox_Info: TcxGroupBox;
    cxEdit_ComType: TcxTextEdit;
    cxEdit_Writer: TcxTextEdit;
    cxEdit_Modifier: TcxTextEdit;
    cxEdit_MDT: TcxTextEdit;
    cxEdit_ComItem: TcxTextEdit;
    cxEdit_ComName: TcxTextEdit;
    cxCEdit_comID: TcxCurrencyEdit;
    cxEdit_Sano: TcxTextEdit;
    cxEdit_Addr: TcxTextEdit;
    cxEdit_Fax: TcxTextEdit;
    cxEdit_Mail: TcxTextEdit;
    cxEdit_MName: TcxTextEdit;
    cxEdit_MTel: TcxTextEdit;
    cxEdit_Tel: TcxTextEdit;
    cxEdit_CeoName: TcxTextEdit;
    cxEdit_CeoTel: TcxTextEdit;
    cxEdit_ZipCode: TcxTextEdit;
    cxLbl17: TcxLabel;
    cxLabel6: TcxLabel;
    cxLbl11: TcxLabel;
    cxLbl5: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel7: TcxLabel;
    cxLbl14: TcxLabel;
    labFax: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxlbl18: TcxLabel;
    cxLbl15: TcxLabel;
    cxLbl12: TcxLabel;
    cxLabel12: TcxLabel;
    cxEdit_WDT: TcxTextEdit;
    cxMemo_Remarks: TcxMemo;
    cxLbl2: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure SetCustomerEdit;
    function SaveCustomer: Boolean;
  public
    { Public declarations }
  end;

var
  CompanyInfoForm: TCompanyInfoForm;

implementation

{$R *.dfm}

uses DataModule;

// 폼 이벤트 ===================================================================
procedure TCompanyInfoForm.FormCreate(Sender: TObject);
begin
  inherited;
  cxBtn_NewClick(self);
end;

procedure TCompanyInfoForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if cxMemo_Remarks.Focused then exit;

  if Key = VK_RETURN then
  begin
    SelectNext(Sender as TWinControl, True, True);
  end;
end;

procedure TCompanyInfoForm.FormShow(Sender: TObject);
begin
  inherited;
  SetCustomerEdit;
end;

// 버튼 이벤트 =================================================================
// 신규 버튼
procedure TCompanyInfoForm.cxBtn_NewClick(Sender: TObject);
begin
  inherited;
  DataModuleForm.ClearEditIncxGroupBox(cxGBox_Info);
end;

// 저장 버튼
procedure TCompanyInfoForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;

  //권한 확인
  if Not CheckAuthoritySave
    (CanInput, CanAlter, Round(cxCEdit_ComID.Value), 1) then Exit;

  // Null 체크
  EssentialItem(cxEdit_ComName, '기업명');

  if SaveCustomer then
  begin
    showmessage(MessageToSave);
  end;
end;

// 매출처목록 관련 기능 ==========================================================
// 매출처목록 조

// 매출처목록 상세 Edit Set
procedure TCompanyInfoForm.SetCustomerEdit;
begin
  with DataModuleForm.FDQuerySetting(UniQuery_com) do
  begin
    close;
    sql.Clear;
    sql.Add(' SELECT count(*) as cnt FROM CompanyInfo ');
    open;

    if FieldByName('cnt').AsInteger = 0  then
    begin
      exit;
    end;

    close;
    sql.Clear;
    sql.Add(' SELECT * FROM CompanyInfo ');
    open;

    cxCEdit_comID.Value := FieldByName('ComId').Value;
    cxEdit_ComName.Text := FieldByName('ComName').AsString;
    cxEdit_Sano.Text    := FieldByName('ComSano').AsString;
    cxEdit_ComType.Text := FieldByName('ComType').AsString;
    cxEdit_ComItem.Text := FieldByName('ComItem').AsString;
    cxEdit_Tel.Text     := FieldByName('ComTel').AsString;
    cxEdit_Fax.Text     := FieldByName('ComFax').AsString;
    cxEdit_CeoName.Text := FieldByName('CeoName').AsString;
    cxEdit_CeoTel.Text  := FieldByName('CeoTel').AsString;
    cxEdit_MName.Text   := FieldByName('MName').AsString;
    cxEdit_MTel.Text    := FieldByName('MTel').AsString;
    cxEdit_Mail.Text    := FieldByName('ComEMail').AsString;
    cxEdit_ZipCode.Text := FieldByName('ZipCode').AsString;
    cxEdit_Addr.Text    := FieldByName('ComAddr').AsString;
    cxMemo_Remarks.Text := FieldByName('Remarks').AsString;
  end;
end;

// 거래처 저장
function TCompanyInfoForm.SaveCustomer: Boolean;
begin
  Result := False;
  try
    with DataModuleForm.FDQuerySetting(nil) do
    begin
      close;
      if cxCEdit_comID.Value = 0 then
      begin
        SQL.Add(' insert into CompanyInfo                                    ');
        SQL.Add('     (ComName, ComSano, ComType, ComItem, ComTel            ');
        SQL.Add('     ,ComFax, ComEMail, ZipCode, ComAddr, CeoName           ');
        SQL.Add('     ,CeoTel, MName, MTel, Remarks, Writer, WDT)            ');
        SQL.Add(' values                                                     ');
        SQL.Add('     (:ComName, :ComSano, :ComType, :ComItem, :ComTel       ');
        SQL.Add('     ,:ComFax, :ComEMail, :ZipCode, :ComAddr, :CeoName      ');
        SQL.Add('     ,:CeoTel, :MName, :MTel, :Remarks, :Writer, getdate()) ');
        ParamByName('Writer').AsString   := LoginUserName;
      end
      else begin
        SQL.Add(' UPDATE CompanyInfo SET ');
        SQL.Add(' ComName = :ComName     ');
        SQL.Add(' ,ComSano = :ComSano    ');
        SQL.Add(' ,ComType = :ComType    ');
        SQL.Add(' ,ComItem = :ComItem    ');
        SQL.Add(' ,ComTel  = :ComTel     ');
        SQL.Add(' ,ComFax  = :ComFax     ');
        SQL.Add(' ,ComEMail = :ComEMail  ');
        SQL.Add(' ,ZipCode = :ZipCode    ');
        SQL.Add(' ,ComAddr = :ComAddr    ');
        SQL.Add(' ,CeoName = :CeoName    ');
        SQL.Add(' ,CeoTel = :CeoTel      ');
        SQL.Add(' ,MName = :MName        ');
        SQL.Add(' ,MTel = :MTel          ');
        SQL.Add(' ,Remarks = :Remarks    ');
        SQL.Add(' ,Modifier = :Modifier  ');
        SQL.Add(' WHERE ComID = :ComID   ');
        ParamByName('ComID').AsInteger   := Round(cxCEdit_comID.Value);
        ParamByName('Modifier').AsString := LoginUserName;
      end;

      ParamByName('ComName').AsString  := cxEdit_ComName.Text;
      ParamByName('ComSano').AsString  := cxEdit_Sano.Text;
      ParamByName('ComType').AsString  := cxEdit_ComType.Text;
      ParamByName('ComItem').AsString  := cxEdit_ComItem.Text;
      ParamByName('ComTel').AsString   := cxEdit_Tel.Text;
      ParamByName('ComFax').AsString   := cxEdit_Fax.Text;
      ParamByName('ComEMail').AsString := cxEdit_Mail.Text;
      ParamByName('ZipCode').AsString  := cxEdit_ZipCode.Text;
      ParamByName('ComAddr').AsString  := cxEdit_Addr.Text;
      ParamByName('CeoName').AsString  := cxEdit_CeoName.Text;
      ParamByName('CeoTel').AsString   := cxEdit_CeoTel.Text;
      ParamByName('MName').AsString    := cxEdit_MName.Text;
      ParamByName('MTel').AsString     := cxEdit_MTel.Text;
      ParamByName('Remarks').AsString  := cxMemo_Remarks.Text;
      ExecSQL;
    end;
    Result := True;
  except

  end;


end;


end.
