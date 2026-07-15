unit BaseChild;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, System.UITypes, System.DateUtils, Vcl.ExtCtrls, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, ComObj, OleCtrls,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, System.IOUtils,cxGridExportLink,ShellAPI,
  cxGridDBTableView, cxGrid, cxTextEdit, cxButtonEdit, cxDBLookupComboBox, cxCalendar, cxCurrencyEdit,
  Vcl.ComCtrls, cxProgressBar, IniFiles, cxMaskEdit, cxDropDownEdit, cxMemo;

type
  TBaseChildForm = class(TForm)
    cxGBoxForm: TcxGroupBox;
    cxBtn_New: TcxButton;
    cxBtn_Save: TcxButton;
    cxBtn_Delete: TcxButton;
    cxBtn_Print: TcxButton;
    cxBtn_Excel: TcxButton;
    cxBtn_Close: TcxButton;
    cxBtn_Barcode: TcxButton;
    cxBtn_Refresh: TcxButton;
    cxBtn_Register: TcxButton;
    cxBtn_Cancel: TcxButton;
    cxBtn_file: TcxButton;
    cxBtn_Search: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxBtn_CloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxBtn_fileClick(Sender: TObject);
    //Update 2023.10.26 이민우
    procedure CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);  //IndicatorCell의 숫자 event
    procedure EssentialItem(Sender: TObject; ShowName: String); //필수확인 procedure
    procedure cxGrid_TableViewStartDrag(Sender: TObject;
    var DragObject: TDragObject); //drag&drop start event
    procedure cxGrid_TableViewDragOver(Sender, Source: TObject; X,
    Y: Integer; State: TDragState; var Accept: Boolean); //drag&drop over event
    procedure cxGrid_TableViewDragDrop(Sender, Source: TObject; X,
    Y: Integer); //drag&drop Drop event
    procedure ValiCheck(Sender: TObject;
    var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGrid_Enter(Sender: TObject);
    procedure cxBtn_ExcelClick(Sender: TObject);
    function CheckDate(Sender: TcxDateEdit; SorE: string): TDateTime;
    procedure cxBtn_SearchClick(Sender: TObject);
    procedure cxBtn_NewClick(Sender: TObject);
    procedure cxBtn_SaveClick(Sender: TObject);
    procedure cxBtn_DeleteClick(Sender: TObject);
  private
    { Private declarations }
    procedure CheckVersion;     // 버전체크하여 업데이트가 존재하는지 체크
  public
    { Public declarations }
    CanRead:Boolean;
    CanInPut:Boolean;
    CanAlter:Boolean;
    CanDelete:Boolean;

    //권한 확인
    function CheckAuthorityDelete(CanDelete:Boolean):Boolean;
    function CheckAuthoritySave(CanInput, CanAlter:Boolean; ID, MessageCheck:Integer):Boolean;
    function CheckAuthSave(CanInput, CanAlter:Boolean; ID:string; MessageCheck:Integer):Boolean;
    procedure ExcelPrint(AGrid: Tcxgrid; Atext: String);
    procedure ExcelPrint_S(AGrid: Tcxgrid; Atext: String);
    procedure ExcelPrint_G(AGrid: Tcxgrid; Atext: String; ASkin: string);
  end;

var
  BaseChildForm: TBaseChildForm;
  FSourceRecordIndex, FDestRecordIndex: integer;
  FocusedGrid : tcxGrid;
  ResetCheck: Boolean;
type
  TcxGridDataControllerAccess = class (TcxGridDataController);
implementation

Uses DataModule, MainUnit;

{$R *.dfm}

//Form==========================================================================
procedure TBaseChildForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  // 버전체크하여 업데이트가 존재하는지 체크
  CheckVersion;
  Action := caFree;
end;

procedure TBaseChildForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
procedure EnabledClick(cxBtn : TcxButton);
  begin
    if (cxBtn.Enabled) and (cxBtn.Visible) then
    begin
      cxBtn.SetFocus;
      cxBtn.Click;
    end;
  end;
begin
  // 조회
  if Key = VK_F8 then EnabledClick(cxBtn_New);
  // 신규
  if ((ssCtrl in Shift) and (Key = ord('N'))) then EnabledClick(cxBtn_New);
  // 저장
  if ((ssCtrl in Shift) and (Key = ord('S'))) then EnabledClick(cxBtn_Save);
  // Form이름
  if ((ssCtrl in Shift) and (Key = ord('M'))) then showmessage(Sender.UnitName);
end;

procedure TBaseChildForm.FormShow(Sender: TObject);
begin
  // 버전체크하여 업데이트가 존재하는지 체크
  CheckVersion;
  // 사용자별 개별 스킨 적용
  DataModuleForm.StyleChangecxGroupBox(Self,DataModuleForm.UserSkin);
  DataModuleForm.StyleChangecxButton(Self,DataModuleForm.BtnSkin);
  // 단축키 폼열리자마자 바로 적용가능하게.
//  cxBtn_Close.SetFocus;
  //화면 리셋 여부 체크
  ResetCheck:= False;
end;

procedure TBaseChildForm.cxBtn_CloseClick(Sender: TObject);
begin
  Visible := false;
  Parent := MainForm;
  MainForm.cxPageControl1.CloseTab(MainForm.cxPageControl1.ActivePageIndex);
  Close;
end;

procedure TBaseChildForm.cxBtn_DeleteClick(Sender: TObject);
begin
  //
end;

procedure TBaseChildForm.cxBtn_ExcelClick(Sender: TObject);
begin
  if FocusedGrid <> nil then
  begin
    ExcelPrint(FocusedGrid,self.Caption); //MainForm.cxPageControl1.ActivePage.Caption);
  end
  else
  begin
  //  MessageDlg('엑셀이 설치되어있지 않습니다.', mtError, [mbOK], 0);
    Exit;
  end;
end;

procedure TBaseChildForm.cxBtn_fileClick(Sender: TObject);
begin
//  FileModalForm := TFileModalForm.Create(self);
//  if FileModalForm.ShowModal = mrOk then
//  begin
//
//  end;

end;

procedure TBaseChildForm.cxBtn_NewClick(Sender: TObject);
begin
  //
end;

procedure TBaseChildForm.cxBtn_SaveClick(Sender: TObject);
begin
  //
end;

procedure TBaseChildForm.cxBtn_SearchClick(Sender: TObject);
begin
  //
end;

procedure TBaseChildForm.cxGrid_Enter(Sender: TObject);
begin
  FocusedGrid := tcxgrid(sender);
end;

procedure TBaseChildForm.cxGrid_TableViewDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  HT: TcxCustomGridHitTest;
  ANewIndex: integer;
  ADeleteIndex: integer;
begin
  with TcxGridSite(Sender) do
  begin
    HT := ViewInfo.GetHitTest(X, Y);
    FDestRecordIndex := TcxGridRecordCellHitTest(HT).GridRecord.Index;  //Destination record index
    with TcxGridDataControllerAccess(GridView.DataController) do
    begin
      if (FSourceRecordIndex >= RecordCount) or (FSourceRecordIndex < 0) then Exit;
      BeginUpdate;
      try
        ANewIndex := InsertRecord(FDestRecordIndex + 1);  //Inserting new record after the destination record
        if FSourceRecordIndex > ANewIndex then  //determining the shifted position of the source record
          inc(FSourceRecordIndex);

        CopyRecord(FSourceRecordIndex, ANewIndex); //Copying record values
        if FSourceRecordIndex < ANewIndex then  //determining the shifted position of the inserted record after deleting the source record
          dec(ANewIndex);
        DeleteRecord(FSourceRecordIndex);
        finally
        FocusedRecordIndex := ANewIndex; //Focusing inserted record
        EndUpdate;
      end;
    end;
  end;
end;

procedure TBaseChildForm.cxGrid_TableViewDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
begin
  with TcxGridSite(Sender) do
  begin
    HT := ViewInfo.GetHitTest(X, Y);
    Accept := (HT is TcxGridRecordCellHitTest) and (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex <> GridView.DataController.FocusedRecordIndex)
  end;
end;

procedure TBaseChildForm.cxGrid_TableViewStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  with TcxGridTableView(TcxGridSite(Sender).GridView) do
    FSourceRecordIndex := Controller.FocusedRecord.Index; //Getting the source record index
end;

procedure TBaseChildForm.EssentialItem(Sender: TObject; ShowName: String);
begin
  if (Sender is TcxTextEdit) and (TcxTextEdit(Sender).Text = '') then
  begin
    MessageDlg('[' + ShowName + '](은)는 필수 입력항목입니다.', mtWarning, [mbOK], 0);
    if TcxTextEdit(Sender).Enabled = True then
      TcxTextEdit(Sender).SetFocus;
    Abort;
  end
  else if (Sender is TcxButtonEdit) and (TcxButtonEdit(Sender).Text = '') then
  begin
    MessageDlg('[' + ShowName + '](은)는 필수 입력항목입니다.', mtWarning, [mbOK], 0);
    if TcxButtonEdit(Sender).Enabled = True then
      TcxButtonEdit(Sender).SetFocus;
    Abort;
  end
  else if (Sender is TcxComboBox) and (TcxComboBox(Sender).Text = '') then
  begin
    MessageDlg('[' + ShowName + '](은)는 필수 입력항목입니다.', mtWarning, [mbOK], 0);
    if TcxLookupComboBox(Sender).Enabled = True then
      TcxLookupComboBox(Sender).SetFocus;
    Abort;
  end
  else if (Sender is TcxLookupComboBox) and (TcxLookupComboBox(Sender).Text = '') then
  begin
    MessageDlg('[' + ShowName + '](은)는 필수 입력항목입니다.', mtWarning, [mbOK], 0);
    if TcxLookupComboBox(Sender).Enabled = True then
      TcxLookupComboBox(Sender).SetFocus;
    Abort;
  end
  else if (Sender is TcxDateEdit) and (TcxDateEdit(Sender).Text = '') then
  begin
    MessageDlg('[' + ShowName + '](은)는 필수 입력항목입니다.', mtWarning, [mbOK], 0);
    if TcxDateEdit(Sender).Enabled = True then
      TcxDateEdit(Sender).SetFocus;
    Abort;
  end
  else if (Sender is TcxCurrencyEdit) and (TcxCurrencyEdit(Sender).Text = '') then
  begin
    MessageDlg('[' + ShowName + '](은)는 필수 입력항목입니다.', mtWarning, [mbOK], 0);
    if TcxCurrencyEdit(Sender).Enabled = True then
      TcxCurrencyEdit(Sender).SetFocus;
    Abort;
  end;
end;

//기타 기능=====================================================================
//삭제 권한 확인
function TBaseChildForm.CheckAuthorityDelete(CanDelete: Boolean): Boolean;
begin
  Result := False;

  if not CanDelete then
  begin
    ShowMessage(MessageToCantDelete);
    Result := False;
  end
  else
  begin
    Result := True;
  end;
end;

//입력,수정 권한 확인
function TBaseChildForm.CheckAuthoritySave(CanInput, CanAlter: Boolean; ID:Integer;
  MessageCheck: Integer): Boolean;
begin
  Result := False;

  //신규일때(추가/입력)
  if ID = 0 then
  begin
    if CanInput = False then
    begin
      if MessageCheck = 1 then ShowMessage(MessageToCantInput);
      Result := False;
    end
    else
    begin
      Result := True;
    end;
  end
  //수정
  else
  begin
    if CanAlter = False  then
    begin
      if MessageCheck = 1 then Showmessage(MessageToCantAlter);
      Result := False;
    end
    else
    begin
      Result := True;
    end;
  end;
end;

function TBaseChildForm.CheckAuthSave(CanInput, CanAlter: Boolean; ID:string;
  MessageCheck: Integer): Boolean;
begin
  Result := False;

  //신규일때(추가/입력)
  if ID = '' then
  begin
    if CanInput = False then
    begin
      if MessageCheck = 1 then ShowMessage(MessageToCantInput);
      Result := False;
    end
    else
    begin
      Result := True;
    end;
  end
  //수정
  else
  begin
    if CanAlter = False  then
    begin
      if MessageCheck = 1 then Showmessage(MessageToCantAlter);
      Result := False;
    end
    else
    begin
      Result := True;
    end;
  end;
end;

function TBaseChildForm.CheckDate(Sender: TcxDateEdit; SorE: string): TDateTime;
begin
  if SorE = 'S' then
  begin
    if TcxDateEdit(Sender).Text = '' then
    begin
      Result := StrToDate('1900-01-01');
    end
    else begin
      Result := TcxDateEdit(Sender).Date;
    end;
  end
  else if SorE = 'E' then
  begin
    if TcxDateEdit(Sender).Text = '' then
    begin
      Result   := StrToDate('2099-12-31');
    end
    else begin
      Result   := TcxDateEdit(Sender).Date;
    end;
  end;
end;

// 버전체크하여 업데이트가 존재하는지 체크
procedure TBaseChildForm.CheckVersion;
begin
//  with DataModuleForm.FDSpSetting(Nil,'usp_user','Q') do Open;
//  if DataModuleForm.FDSpTemp.RecordCount = 0 then Exit;
//
//  if MessageToUpdate <> MainForm.StatusBar.Panels[2].Text then
//  begin
//    if DataModuleForm.FDSpTemp.FieldByName('Version').AsString <> MainForm.VersionInfo then
//    begin
//      MainForm.StatusBar.Panels[2].Text := MessageToUpdate;
//    end;
//  end;
end;

procedure TBaseChildForm.CustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
var
  Aindicatorviewinfo: tcxgridindicatorrowitemviewinfo;
  Atextrect: trect;
  ACV: tcxcanvas;
begin
  If not (aviewinfo is tcxgridindicatorrowitemviewinfo) then
  Exit;
  ACV := acanvas;
  Atextrect := aviewinfo.contentbounds;
  Aindicatorviewinfo := aviewinfo as tcxgridindicatorrowitemviewinfo;
  Inflaterect (atextrect,-2,-1 );

  If aindicatorviewinfo.gridrecord.Selected then
  Begin
    ACV.Font.Style := canvas.Font.Style + [fsbold];
    ACV.Font.Color := clred;
  End
  Else
  Begin
    ACV.Font.Style := canvas.Font.Style-[fsbold];
    ACV.Font.Color := canvas.Font.color;
  End;

  Sender.lookandfeelpainter.drawheader(acanvas, aviewinfo.contentbounds,
  Atextrect, [], cxbordersall, cxbsnormal, tacenter, vacenter,
  False, false, inttostr (aindicatorviewinfo.gridrecord.index + 1),
  ACV.Font, ACV.Font.Color, ACV.Brush.Color );
  Adone := true;
end;

procedure TBaseChildForm.ValiCheck(Sender: TObject;
    var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  CkDate: TDateTime;
  CkNum: Currency;
begin
  // 입력된 값을 날짜로 변환하려 시도합니다.
  if (Sender is TcxDateEdit) then
  begin
    if TryStrToDate(DisplayValue,CkDate) = false then
    begin
      // 날짜로 변환할 수 없는 경우 에러 텍스트를 설정합니다.
      Error := True;
      ErrorText := '유효한 날짜를 입력하세요.';
    end;
    if Error then
    begin
      DisplayValue := today;
    end;
  end;
  if (Sender is TcxCurrencyEdit) then
  begin
    // 입력된 값을 정수로 변환하려 시도합니다.
    if TryStrToCurr(DisplayValue, CkNum) = false then
    begin
      // 정수로 변환할 수 없는 경우 에러 텍스트를 설정합니다.
      Error := True;
      ErrorText := '유효한 숫자를 입력하세요.';
    end;
    if Error then
    begin
      DisplayValue := 0;
    end;
  end;
end;

//grid to excel
procedure TBaseChildForm.ExcelPrint_G(AGrid: Tcxgrid; Atext: String; ASkin: string);
  var sPath : string;
begin

  sPath := TPath.Combine(TPath.GetDocumentsPath,  '');
  sPath := sPath + '\출력';
  if not DirectoryExists(sPath) then
  begin
    ForceDirectories(sPath);
  end;
  sPath := sPath +'\'+Atext + FormatDateTime('yyyymmddhhnnss',Now) +'.xlsx';
  AGrid.LookAndFeel.SkinName := '';
  ExportGridToXLSX(sPath, AGrid, true, true, false, 'xlsx');
  AGrid.LookAndFeel.SkinName := ASkin;

  ShellExecute(self.Handle,PChar('OPEN'),PChar(sPath),nil,nil,SW_SHOWMAXIMIZED);
end;

//all excel print
procedure TBaseChildForm.ExcelPrint(AGrid: Tcxgrid; Atext: String);
var
  XL, Workbook, Worksheet, Range: Variant;
  ExcelRow,ExcelCol, i, j: Integer;
  AView: TcxCustomGridView;
  VGrid : TcxGridTableView;
  ARecord: TcxCustomGridRecord;
  sPath : String;

begin
  if MessageDlg(Atext + '을(를) 엑셀로 출력하시겠습니까?'
      , mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    // EXCEL
    sPath := TPath.Combine(TPath.GetDocumentsPath,  '');
    sPath := sPath + '\출력';
    if not DirectoryExists(sPath) then
    begin
      ForceDirectories(sPath);
    end;
  end;

  try
    AView := AGrid.FocusedView;
    VGrid := TcxGridTableView(AView);

    if VGrid.DataController.RecordCount = 0 then
    begin
      exit;
    end;

    VGrid.DataController.BeginUpdate;

    try
      XL := CreateOleObject('Excel.Application');
    except
      MessageDlg('엑셀이 설치되어있지 않습니다.', mtError, [mbOK], 0);
      Exit;
    end;

    Workbook := XL.Workbooks.Add;
    Worksheet := Workbook.Worksheets[1];

    ExcelRow := 1; // Excel 시작 행

    // Visible = true 인 컬럼만
    ExcelCol := 1;
    for j := 0 to VGrid.ColumnCount - 1 do
    begin
      if VGrid.Columns[j].Visible then
      begin
        Worksheet.Cells[ExcelRow, ExcelCol] := VGrid.Columns[j].Caption;
        Inc(ExcelCol);
      end;
    end;

    Inc(ExcelRow);

    for i := 0 to VGrid.DataController.RecordCount - 1 do
    begin
      ExcelCol := 1; // 컬럼 위치 초기화
      for j := 0 to VGrid.ColumnCount - 1 do
      begin
        if VGrid.Columns[j].Visible then
        begin
          Worksheet.Cells[ExcelRow, ExcelCol] := VGrid.DataController.DisplayTexts[i, VGrid.Columns[j].Index];
          Inc(ExcelCol);
        end;
      end;
      Inc(ExcelRow);
    end;

    Range := Worksheet.UsedRange;
    Range.EntireColumn.AutoFit;

    sPath := sPath +'\' +  Atext + FormatDateTime('yyyymmddhhnnss',Now) +'.xlsx';
    Workbook.SaveAs(sPath);
    XL.Quit;

    ShellExecute(self.Handle,PChar('OPEN'),PChar(sPath),nil,nil,SW_SHOWMAXIMIZED);
  finally
    VGrid.DataController.EndUpdate;

    XL        := Unassigned;
    Workbook  := Unassigned;
    Worksheet := Unassigned;
    FocusedGrid := nil;
  end;
end;

//selected excel print
procedure TBaseChildForm.ExcelPrint_S(AGrid: Tcxgrid; Atext: String);
var
  XL, Workbook, Worksheet, Range: Variant;
  ExcelRow,ExcelCol, i, j: Integer;
  AView: TcxCustomGridView;
  VGrid : TcxGridTableView;
  ARecord: TcxCustomGridRecord;
  sPath : String;

begin
  if MessageDlg(Atext + '을(를) 엑셀로 출력하시겠습니까?'
      , mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    // EXCEL
    sPath := TPath.Combine(TPath.GetDocumentsPath,  '');
    sPath := sPath + '\출력';
    if not DirectoryExists(sPath) then
    begin
      ForceDirectories(sPath);
    end;
  end;
   // FocusedControl:=    Screen.ActiveControl;

  try
    AView := AGrid.FocusedView;
    VGrid := TcxGridTableView(AView);

    if VGrid.DataController.RecordCount = 0 then
    begin
      exit;
    end;

    VGrid.DataController.BeginUpdate;

    try
      XL := CreateOleObject('Excel.Application');
    except
      MessageDlg('엑셀이 설치되어있지 않습니다.', mtError, [mbOK], 0);
      Exit;
    end;

    Workbook := XL.Workbooks.Add;
    Worksheet := Workbook.Worksheets[1];

    ExcelRow := 1; // Excel 시작 행

    // Visible = true 인 컬럼만
    ExcelCol := 1;
    for j := 0 to VGrid.ColumnCount - 1 do
    begin
      if VGrid.Columns[j].Visible then
      begin
        Worksheet.Cells[ExcelRow, ExcelCol] := VGrid.Columns[j].Caption;
        Inc(ExcelCol);
      end;
    end;

    Inc(ExcelRow);

    for i := 0 to VGrid.Controller.SelectedRecordCount - 1 do
    begin
      ARecord := VGrid.Controller.SelectedRecords[i];

      ExcelCol := 1; // 컬럼 위치 초기화
      for j := 0 to VGrid.ColumnCount - 1 do
      begin
        if VGrid.Columns[j].Visible then
        begin
          Worksheet.Cells[ExcelRow, ExcelCol] := ARecord.DisplayTexts[VGrid.Columns[j].Index];
          Inc(ExcelCol);
        end;
      end;
      Inc(ExcelRow);
    end;

    Range := Worksheet.UsedRange;
    Range.EntireColumn.AutoFit;

    sPath := sPath +'\' +  Atext + FormatDateTime('yyyymmddhhnnss',Now) +'.xlsx';
    Workbook.SaveAs(sPath);
    XL.Quit;

    ShellExecute(self.Handle,PChar('OPEN'),PChar(sPath),nil,nil,SW_SHOWMAXIMIZED);
  finally
    VGrid.DataController.EndUpdate;

    XL        := Unassigned;
    Workbook  := Unassigned;
    Worksheet := Unassigned;
    FocusedGrid := nil;
  end;
end;

end.
