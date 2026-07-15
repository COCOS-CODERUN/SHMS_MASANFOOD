unit UserLoginUnit;

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
  dxScrollbarAnnotations, Data.DB, cxDBData, cxLabel, Vcl.ComCtrls, dxCore,
  cxDateUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCurrencyEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, MemDS, DBAccess, Uni;

type
  TUserLoginForm = class(TBaseChildForm)
    cxGBoxUser: TcxGroupBox;
    cxLbl1: TcxLabel;
    cxLCBB_SearchUser: TcxLookupComboBox;
    cxDEdit_SearchStart: TcxDateEdit;
    cxDEdit_SearchEnd: TcxDateEdit;
    cxLabel1: TcxLabel;
    DS_Access: TDataSource;
    DS_User: TDataSource;
    cxGBoxList: TcxGroupBox;
    cxGrid_List: TcxGrid;
    cxGridDBTv_List: TcxGridDBTableView;
    cxGridDBTv_List_UserOrder: TcxGridDBColumn;
    cxGridDBTv_List_ID: TcxGridDBColumn;
    cxGridDBTv_List_UserID: TcxGridDBColumn;
    cxGridDBTv_List_LoginID: TcxGridDBColumn;
    cxGridDBTv_List_AccessDT: TcxGridDBColumn;
    cxGridDBTv_List_HostName: TcxGridDBColumn;
    cxGridDBTv_List_AccessIP: TcxGridDBColumn;
    cxGridLv_List: TcxGridLevel;
    cxCEdit_AccessLogID: TcxCurrencyEdit;
    FDQuery_Access: TUniQuery;
    FDQuery_User: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure cxBtn_SearchListClick(Sender: TObject);
    procedure cxGridDBTv_List_UserOrderGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridDBTv_ListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SearchUser;
  end;

var
  UserLoginForm: TUserLoginForm;

implementation

Uses DataModule;

{$R *.dfm}

{ TUserLoginForm }

//FormShow
procedure TUserLoginForm.FormShow(Sender: TObject);
begin
  inherited;
  cxDEdit_SearchStart.Date := Date - 7;
  cxDEdit_SearchEnd.Date   := Date;
  SearchUser;
  cxBtn_SearchListClick(self);
end;

//사용자 조회
procedure TUserLoginForm.SearchUser;
begin
  with DataModuleForm.FDQuerySetting(FDQuery_User) do
  begin
    SQL.Add(' SELECT UserID, LoginID, Name FROM MasterUser ');
    Open;
  end;
end;

//검색 버튼
procedure TUserLoginForm.cxBtn_SearchListClick(Sender: TObject);
var
  EndDate:String;
  UserID:Integer;
begin
  inherited;
  if cxDEdit_SearchStart.Text = '' then
  begin
    ShowMessage('검색 기간을 입력해주세요.');
    Exit;
  end;

  if cxDEdit_SearchEnd.Text = '' then
  begin
    EndDate := '2099-12-30';
  end
  else
  begin
    EndDate := cxDEdit_SearchEnd.Text;
  end;

  if cxLCBB_SearchUser.Text = '' then
  begin
    UserID := 0;
  end
  else
  begin
    UserID := cxLCBB_SearchUser.EditValue;
  end;

  with DataModuleForm.FDQuerySetting(FDQuery_Access) do
  begin
    SQL.Add('    SELECT  A.AccessLogID                                   ');
    SQL.Add('           ,A.UserID                                        ');
    SQL.Add('           ,B.LoginID                                       ');
    SQL.Add('           ,A.AccessDateTime                                ');
    SQL.Add('           ,A.HostName                                      ');
    SQL.Add('           ,A.AccessIP                                      ');
    SQL.Add('      FROM    AccessLog AS A                                ');
    SQL.Add(' INNER JOIN   MasterUser AS B                               ');
    SQL.Add('         ON A.UserID = B.UserID                             ');
    SQL.Add('      WHERE A.AccessDateTime >= :StartDate                  ');
    SQL.Add('        AND A.AccessDateTime < DATEADD(DAY, 1, :EndDate)    ');
    SQL.Add('        AND B.UserID = (CASE WHEN :UserID = 0 THEN B.UserID ');
    SQL.Add('                                              ELSE :UserID  ');
    SQL.Add('                                              END)          ');
    ParamByName('UserID').AsInteger   := UserID;
    ParamByName('StartDate').AsString := cxDEdit_SearchStart.Text;
    ParamByName('EndDate').AsString   := EndDate;
    Open;
  end;
end;

//순번 컬럼
procedure TUserLoginForm.cxGridDBTv_List_UserOrderGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := IntToStr(ARecord.Index + 1);
end;

//더블 클릭
procedure TUserLoginForm.cxGridDBTv_ListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  cxCEdit_AccessLogID.Value := FDQuery_Access.FieldByName('AccessLogID').AsInteger;
end;

//삭제 버튼
procedure TUserLoginForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;
  //권한 확인
  if not CheckAuthorityDelete(CanDelete) then Exit;

  if Round(cxCEdit_AccessLogID.Value) = 0 then Exit;

  if (MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes) then
  begin
    with DataModuleForm.FDQuerySetting(nil) do
    begin
      SQL.Add(' DELETE FROM AccessLog                  ');
      SQL.Add('       WHERE AccessLogID = :AccessLogID ');
      ParamByName('AccessLogID').AsInteger := Round(cxCEdit_AccessLogID.Value);
      ExecSQL;
    end;

    cxBtn_SearchListClick(self);
  end;
end;

end.
