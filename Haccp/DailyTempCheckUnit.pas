unit DailyTempCheckUnit;

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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxMemo, Vcl.ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxGroupBox, MemDS, DBAccess, Uni;

type
  TDailyTempCheckForm = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxLabel10: TcxLabel;
    cxDEdit_date: TcxDateEdit;
    cxBtn_Search: TcxButton;
    cxGBox_temp: TcxGroupBox;
    cxGrid_temp: TcxGrid;
    cxGridDBTv_Temp: TcxGridDBTableView;
    cxGridLv_temp: TcxGridLevel;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    cxMemo_contents: TcxMemo;
    cxMemo_result: TcxMemo;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxMemo_action: TcxMemo;
    cxMemo_ok: TcxMemo;
    cxLabel4: TcxLabel;
    DS_T: TDataSource;
    UniQuery_Temp: TUniQuery;
    UniQuery_comm: TUniQuery;
    UniQuery_save: TUniQuery;
    procedure cxBtn_SearchClick(Sender: TObject);
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

const
  HaccpSelectionMenuName : String = '냉장.냉동일지관리';

var
  DailyTempCheckForm: TDailyTempCheckForm;
  loopcnt : Integer;
implementation

{$R *.dfm}

uses DataModule, HaccpGeneralUnit;

{ TForm1 }

procedure TDailyTempCheckForm.ClearProc;
begin
  cxDEdit_date.date := date;
  UniQuery_Temp.Close;

  cxMemo_contents.Clear;
  cxMemo_result.Clear;
  cxMemo_action.Clear;
  cxMemo_ok.Clear;

end;

procedure TDailyTempCheckForm.cxBtn_SearchClick(Sender: TObject);
begin
  with UniQuery_Temp do
  begin
    connection := datamoduleform.FDConnection;
    close;
    sql.Clear;
    sql.Add(' usp_CCPCheckTemp @option = :option, @t_datetime = :t_datetime ');
    ParamByName('option').AsString     := 'T';
    ParamByName('t_datetime').AsString := cxDEdit_date.Text;
    open;

    cxGridDBTv_temp.BeginUpdate;
    cxGridDBTv_Temp.DataController.CreateAllItems(True);
    cxGridDBTv_temp.EndUpdate;

    cxGridDBTv_temp.Columns[0].Width := 60;

    for loopcnt := 0 to cxGridDBtv_temp.ColumnCount -1 do
    begin
      cxGridDBTv_Temp.Columns[loopcnt].HeaderAlignmentHorz := taCenter;
      cxGridDBTv_Temp.Columns[loopcnt].PropertiesClass := TcxTextEditProperties;
      cxGridDBTv_Temp.Columns[loopcnt].Properties.Alignment.Horz := taCenter;
    end;
  end;

  with datamoduleform.FDQuerySetting(nil) do
  begin
    sql.Add(' select ReformContents,ReformResult, ReformAction, ReformOK from HaccpReformContents  ');
    sql.Add(' where ReformDate = :ReformDate and ReformMenu = :ReformMenu                         ');
    ParamByName('ReformDate').AsString := cxDEdit_date.Text;
    ParamByName('ReformMenu').AsString := HaccpSelectionMenuName;
    Execute;

    cxMemo_contents.Text := vartostr(fieldbyname('ReformContents').value);
    cxMemo_Result.Text := vartostr(fieldbyname('ReformResult').value);
    cxMemo_Action.Text := vartostr(fieldbyname('ReformAction').value);
    cxMemo_OK.Text := vartostr(fieldbyname('ReformOK').value);
  end;
end;

procedure TDailyTempCheckForm.DataBindingToGrid;
begin
  cxDEdit_date.text     := DataModule.HaccpSelected_Date;


  cxBtn_SearchClick(self);

  with datamoduleform.FDQuerySetting(nil) do
  begin
    connection := datamoduleform.FDConnection;
    close;
    sql.clear;
    sql.Add(' SELECT * FROM HaccpReformContents ');
    sql.Add(' WHERE ReformDate = :ReformDate    ');
    sql.Add(' AND   ReformMenu = :ReformMenu    ');
    ParamByName('ReformDate').AsString := cxDEdit_date.Text;
    ParamByName('ReformMenu').AsString := HaccpSelectionMenuName;
    open;

    cxMemo_contents.Text := FieldByName('ReformContents').AsString;
    cxMemo_result.Text   := FieldByName('ReformResult').AsString;
    cxMemo_action.Text   := FieldByName('ReformAction').AsString;
    cxMemo_ok.Text       := FieldByName('ReformOK').AsString;
  end;
end;

procedure TDailyTempCheckForm.DeleteProc;
begin
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with datamoduleform.FDQuerySetting(nil) do
    begin
      sql.Add('  DELETE FROM HaccpApproval        ');
      sql.Add('  WHERE MenuName = :MenuName       ');
      sql.Add('        and WriteDate = :WriteDate ');
      ParamByName('WriteDate').Value := cxDEdit_date.Text;
      ParamByName('MenuName').Value := HaccpSelectionMenuName;
      Execute;

      sql.Clear;

      sql.Add(' DELETE FROM HaccpReformContents ');
      sql.Add(' WHERE ReformDate = :ReformDate    ');
      sql.Add(' AND   ReformMenu = :ReformMenu    ');
      ParamByName('ReformDate').AsString := cxDEdit_date.Text;
      ParamByName('ReformMenu').AsString := HaccpSelectionMenuName;
      Execute;
    end;

    ClearProc;

  end;
end;

procedure TDailyTempCheckForm.GridListSetting;
begin
  with UniQuery_Temp do
  begin
    connection := datamoduleform.FDConnection;
    close;
    sql.Clear;
    sql.Add(' usp_CCPCheckTemp @option = :option, @t_datetime = :t_datetime ');
    ParamByName('option').AsString     := 'T';
    ParamByName('t_datetime').AsString := cxDEdit_date.Text;
    open;

    cxGridDBTv_temp.BeginUpdate;
    cxGridDBTv_Temp.DataController.CreateAllItems(True);
    cxGridDBTv_temp.EndUpdate;

    cxGridDBTv_temp.Columns[0].Width := 60;

    for loopcnt := 0 to cxGridDBtv_temp.ColumnCount -1 do
    begin
      cxGridDBTv_Temp.Columns[loopcnt].HeaderAlignmentHorz := taCenter;
      cxGridDBTv_Temp.Columns[loopcnt].PropertiesClass := TcxTextEditProperties;
      cxGridDBTv_Temp.Columns[loopcnt].Properties.Alignment.Horz := taCenter;
    end;
  end;
end;

procedure TDailyTempCheckForm.SaveProc;
begin
  with UniQuery_comm do
  begin
    connection := DataModuleForm.FDConnection;
    close;
    sql.clear;
    sql.Add(' SELECT COUNT(*) AS CNT FROM HaccpReformContents ');
    sql.Add(' WHERE ReformDate = :ReformDate       ');
    sql.Add(' AND   ReformMenu = :ReformMenu       ');
    ParamByName('ReformDate').AsString := cxDEdit_date.Text;
    ParamByName('ReformMenu').AsString := HaccpSelectionMenuName;
    open;
  end;

  with UniQuery_save do
  begin
    connection := DataModuleForm.FDConnection;
    close;
    sql.Clear;
    if UniQuery_comm.FieldByName('CNT').AsInteger = 0 then
    begin
      sql.Add(' INSERT INTO HaccpApproval(writeDate, MenuName, CheckWriter, CheckReviewer, CheckConfirmer)  ');
      sql.Add('     values (:WriteDate,''냉장.냉동일지관리'', :Writer, null,null) ');
      ParamByName('WriteDate').value := cxDEdit_date.Text;
      ParamByName('Writer').value := datamodule.LoginUserName;
      Execute;

      sql.Clear;
      sql.Add(' INSERT INTO HaccpReformContents Values ( ');
      sql.Add(' :ReformDate, :ReformMenu, :ReformContents, :ReformResult, :ReformAction, :ReformOK) ');
    end
    else begin
      sql.Add(' UPDATE HaccpReformContents SET    ');
      sql.Add('  ReformContents = :ReformContents ');
      sql.Add('  ,ReformResult  = :ReformResult   ');
      sql.Add('  ,ReformAction  = :ReformAction   ');
      sql.Add('  ,ReformOK      = :ReformOK       ');
      sql.Add(' WHERE ReformDate = :ReformDate    ');
      sql.Add(' AND   ReformMenu = :ReformMenu    ');
    end;
    ParamByName('ReformDate').AsString     := cxDEdit_date.Text;
    ParamByName('ReformMenu').AsString     := HaccpSelectionMenuName;
    ParamByName('ReformContents').AsString := cxMemo_contents.Text;
    ParamByName('ReformResult').AsString   := cxMemo_result.Text;
    ParamByName('ReformAction').AsString   := cxMemo_action.Text;
    ParamByName('ReformOK').AsString       := cxMemo_ok.Text;
    try
      Execute;
    except
      ShowMessage('오류 발생. 관리자에게 문의하세요');
    end;
  end;
end;

end.
