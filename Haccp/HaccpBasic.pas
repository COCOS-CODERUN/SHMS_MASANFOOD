  unit HaccpBasic;

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
  dxScrollbarAnnotations, cxMemo, cxCurrencyEdit, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxDBData, cxSplitter,
  cxGridDBTableView, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, MemDS, DBAccess, Uni;

type
  THaccpBasicForm = class(TBaseChildForm)
    cxGBoxInput: TcxGroupBox;
    cxGridBasic: TcxGrid;
    cxGridLvBasic: TcxGridLevel;
    cxGridTvBasic: TcxGridTableView;
    cxGridTvBasicLv1: TcxGridColumn;
    cxGridTvBasicLv2: TcxGridColumn;
    cxGridTvBasicLv3: TcxGridColumn;
    cxLabel1: TcxLabel;
    cxCEditCount: TcxCurrencyEdit;
    cxBtnLindAdd: TcxButton;
    FDQuery_comm: TFDQuery;
    cxLabel2: TcxLabel;
    cxCBBoxHaccp: TcxComboBox;
    cxGridTvBasicCode: TcxGridColumn;
    cxGrid_Menu: TcxGrid;
    cxGridDBTv_Menu: TcxGridDBTableView;
    cxGridDBTv_MenuSeq: TcxGridDBColumn;
    cxGridDBTv_MenuName: TcxGridDBColumn;
    cxGridDBTv_MenuPeriod: TcxGridDBColumn;
    cxGridLv_Menu: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    DS_M: TDataSource;
    cxLabel_Title: TcxLabel;
    cxGridTvBasicType: TcxGridColumn;
    cxGridDBTv_MenuDivision: TcxGridDBColumn;
    cxBtn_DelOne: TcxButton;
    cxLabel_Division: TcxLabel;
    UniQuery_Menu: TUniQuery;
    UniQuery_comm: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxCBBoxHaccpPropertiesEditValueChanged(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_LindAddClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
    procedure cxGridDBTv_MenuCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTv_MenuSeqGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure cxBtn_DelOneClick(Sender: TObject);
  private
    { Private declarations }
    function DeleteBasic : boolean;
  public
    { Public declarations }
    procedure HaccpManuListSearch;
  end;

var
  HaccpBasicForm: THaccpBasicForm;

  HaccpMenuName, MenuDivision : string;

  loopcnt : Integer;

implementation

uses DataModule, MainUnit;

{$R *.dfm}

procedure THaccpBasicForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  HaccpBasicForm := nil;
end;

procedure THaccpBasicForm.FormCreate(Sender: TObject);
begin
  inherited;

  //haccp 담당팀 가져오기
//  DataModuleForm.BasicCodeComBoBoxSetting('HACCP팀 관리', cxCBBoxHaccp);

  cxCEditCount.Value := 15;

  HaccpManuListSearch;
end;

procedure THaccpBasicForm.HaccpManuListSearch;
begin
  with DataModuleForm.FDQuerySetting(UniQuery_Menu) do
  begin
    close;
    sql.Clear;
    sql.Add(' exec usp_HaccpBasic @option = :option, @Division = :Division ');
    ParamByName('option').AsString   := '2';
    ParamByName('Division').AsString := cxCBBoxHaccp.Text;
    open;
  end;

  HaccpMenuName := UniQuery_Menu.FieldByName('FormName').AsString;
  cxLabel_Title.Caption := HaccpMenuName;
end;

procedure THaccpBasicForm.cxCBBoxHaccpPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

  //haccp 담당팀 변경 시 데이터 조회
  HaccpManuListSearch;
end;

procedure THaccpBasicForm.cxGridDBTv_MenuCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;

  HaccpMenuName := UniQuery_Menu.FieldByName('FormName').AsString;
  MenuDivision := UniQuery_Menu.FieldByName('DIVISION').AsString;
  cxLabel_Title.Caption := HaccpMenuName;
  cxLabel_Division.caption := MenuDivision;

  if UniQuery_Menu.FieldByName('SaveYn').AsString = 'N' then
  begin
    cxGridTvBasic.DataController.RecordCount := 0;
    Showmessage('등록된 데이터가 없습니다. 새로 등록 하세요.');
    cxGridTvBasic.DataController.RecordCount := Round(cxCEditCount.Value);
  end;

  with DataModuleForm.FDQuerySetting(UniQuery_comm) do begin
    close;
    sql.Clear;
    sql.Add(' exec usp_HaccpBasic @option = :option, @MenuName = :MenuName ');
    ParamByName('option').AsString   := 'A';
    ParamByName('MenuName').AsString := UniQuery_Menu.FieldByName('FormName').AsString;
    open;
  end;

  with cxGridTvBasic.DataController do begin
    RecordCount := 0;
    BeginUpdate;
    for loopcnt := 0 to UniQuery_comm.RecordCount -1 do begin
      RecordCount := RecordCount +1;

      SetValue(loopcnt, cxGridTvBasicType.Index, UniQuery_comm.FieldByName('LevelType').AsString);
      SetValue(loopcnt, cxGridTvBasicLv1.Index,  UniQuery_comm.FieldByName('Level1').AsString);
      SetValue(loopcnt, cxGridTvBasicLv2.Index,  UniQuery_comm.FieldByName('Level2').AsString);
      SetValue(loopcnt, cxGridTvBasicLv3.Index,  UniQuery_comm.FieldByName('Level3').AsString);
      SetValue(loopcnt, cxGridTvBasicCode.Index, UniQuery_comm.FieldByName('BasicID').AsString);

      UniQuery_comm.Next;
    end;
    EndUpdate;
  end;
end;

procedure THaccpBasicForm.cxGridDBTv_MenuSeqGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;

  AText := IntToStr(ARecord.Index +1);
end;

function THaccpBasicForm.DeleteBasic: boolean;
var
  vBasicID: Integer;
begin
  Result := false;
  if VarIsNull(cxGridTvBasic.DataController.Values[cxGridTvBasic.DataController.FocusedRecordIndex, cxGridTvBasicCode.Index]) then
    vBasicID := 0 //Exit 안한이유 : 밖에 알고리즘 영향안주기위함, ID값에 0이 없기에 해당 형태로 코딩함
  else vBasicID := cxGridTvBasic.DataController.Values[cxGridTvBasic.DataController.FocusedRecordIndex, cxGridTvBasicCode.Index];

  with DataModuleForm.FDQuerySetting(nil) do
  begin
    sql.Add(' exec usp_HaccpBasic @option = :option, @BasicID = :BasicID ');
    ParamByName('option').AsString   := 'D';
    ParamByName('BasicID').AsInteger := vBasicID; //null값 오류메세지때문에 변수준거임
//      cxGridTvBasic.DataController.Values[cxGridTvBasic.DataController.FocusedRecordIndex, cxGridTvBasicCode.Index];
    ExecSQL;
  end;
  result := true;
end;

procedure THaccpBasicForm.cxBtn_SaveClick(Sender: TObject);
begin
  inherited;
  with cxGridTvBasic.DataController do begin
    for loopcnt := 0 to RecordCount -1 do begin
      if (VarTostr(Values[loopcnt, cxGridTvBasicLv1.Index]) = '')
        and (VarTostr(Values[loopcnt, cxGridTvBasicCode.Index]) = '') then
      begin
        Continue;
      end;

      with DataModuleForm.FDQuerySetting(nil) do
      begin
        sql.Add(' exec usp_HaccpBasic @option = :option, @BasicID = :BasicID  ');
        sql.Add(' ,@Division = :Division, @MenuName = :MenuName               ');
        sql.Add(' ,@Level1 = :Level1 ,@Level2 = :Level2 ,@Level3 = :Level3    ');
        sql.Add(' ,@LevelType = :LevelType                                    ');
        ParamByName('option').AsString   := 'B';
        if VarToStr(Values[loopcnt, cxGridTvBasicCode.Index]) = '' then
        begin
          ParamByName('BasicID').AsInteger := 0;
        end
        else begin
          ParamByName('BasicID').AsInteger := Values[loopcnt, cxGridTvBasicCode.Index];
        end;
        ParamByName('Division').AsString := MenuDivision;
        ParamByName('MenuName').AsString := HaccpMenuName;
        ParamByName('Level1').AsString   := VarToStr(Values[loopcnt, cxGridTvBasicLv1.Index]);
        ParamByName('Level2').AsString   := VarToStr(Values[loopcnt, cxGridTvBasicLv2.Index]);
        ParamByName('Level3').AsString   := VarToStr(Values[loopcnt, cxGridTvBasicLv3.Index]);
        ParamByName('LevelType').AsString := VarToStr(Values[loopcnt, cxGridTvBasicType.Index]);
        ExecSQL;
      end;
    end;
  end;

  UniQuery_Menu.Refresh;
  showmessage('저장 하였습니다.');
end;

procedure THaccpBasicForm.cxBtn_DelOneClick(Sender: TObject);
begin
  inherited;
  if MessageDlg(MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with cxGridTvBasic.DataController do
    begin
      if RecordCount > 0 then
      begin
        if DeleteBasic then
        begin
          DeleteFocused;
          if RecordCount = 0 then
          begin
            HaccpManuListSearch;
          end;
        end;
      end;
    end;
  end;
end;

procedure THaccpBasicForm.cxBtn_DeleteClick(Sender: TObject);
begin
  inherited;

  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDQuerySetting(nil) do
    begin
      sql.Add(' exec usp_HaccpBasic @option = :option, @Division = :Division, @MenuName = :MenuName ');
      ParamByName('option').AsString   := 'C';
      ParamByName('Division').AsString := cxCBBoxHaccp.Text;
      ParamByName('MenuName').AsString := HaccpMenuName;
      ExecSQL;
    end;

    cxGridTvBasic.DataController.RecordCount := 0;
  end;
end;

procedure THaccpBasicForm.cxBtn_LindAddClick(Sender: TObject);
begin
  inherited;
  cxGridTvBasic.DataController.RecordCount :=
  cxGridTvBasic.DataController.RecordCount + Round(cxCEditCount.Value);
end;

end.
