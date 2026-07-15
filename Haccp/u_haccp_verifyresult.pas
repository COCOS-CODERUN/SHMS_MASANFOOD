unit u_haccp_verifyresult;

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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxTextEdit, cxBlobEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxSplitter, cxGroupBox,
  Data.DB, cxDBData, cxGridDBTableView, MemDS, DBAccess, Uni, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxEditRepositoryItems, System.IOUtils, Winapi.ShellAPI,
  cxCurrencyEdit, cxButtonEdit;

//////////////////////////// 그리드에 파일 드래그 //////////////////////////////
type
  TFileDropEvent = procedure(Sender: TObject; const AFileNames: TArray<string>) of object;

type
  TCxGrid = class(cxGrid.TcxGrid)
  private
    FOnFileDrop: TFileDropEvent;
  protected
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
    procedure CreateWnd; override;
    procedure DestroyWnd; override;
  public
      property OnFileDrop: TFileDropEvent read FOnFileDrop write FOnFileDrop;
end;
////////////////////////////////////////////////////////////////////////////////

type
  Tf_haccp_verifyresult = class(TForm)
    cxGBox_Right: TcxGroupBox;
    cxSplitter1: TcxSplitter;
    cxGBox_Client: TcxGroupBox;
    cxGBox_Info: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDEdit_Date: TcxDateEdit;
    cxEdit_Writer: TcxTextEdit;
    cxGD: TcxGrid;
    cxGDTv_: TcxGridTableView;
    cxGDLv: TcxGridLevel;
    cxGBox_User: TcxGroupBox;
    cxGBox_File: TcxGroupBox;
    cxGUser: TcxGrid;
    cxGUserLv: TcxGridLevel;
    uq_d: TUniQuery;
    uq_user: TUniQuery;
    uq_file: TUniQuery;
    uq: TUniQuery;
    uq_list: TUniQuery;
    cxGDTv_h_id: TcxGridColumn;
    cxGDTv_div: TcxGridColumn;
    cxGDTv_d_text: TcxGridColumn;
    cxER: TcxEditRepository;
    cxERComboBox: TcxEditRepositoryComboBoxItem;
    cxERRadioGroup: TcxEditRepositoryRadioGroupItem;
    uq_cbox: TUniQuery;
    cxERBlob: TcxEditRepositoryBlobItem;
    cxERMemo: TcxEditRepositoryMemoItem;
    uq_ext: TUniQuery;
    cxLbl_ExtInfo: TcxLabel;
    cxGfile: TcxGrid;
    cxGfileTv_: TcxGridTableView;
    cxGfileTv_f_id: TcxGridColumn;
    cxGfileTv_h_id: TcxGridColumn;
    cxGfileTv_fpath: TcxGridColumn;
    cxGfileTv_fname: TcxGridColumn;
    cxGfileTv_foriname: TcxGridColumn;
    cxGfileTv_fextention: TcxGridColumn;
    cxGfileTv_fsize: TcxGridColumn;
    cxGfileLv: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxBtn_Add: TcxButton;
    cxGUserTv_: TcxGridTableView;
    cxGUserTv_u_id: TcxGridColumn;
    cxGUserTv_h_id: TcxGridColumn;
    cxGUserTv_userID: TcxGridColumn;
    cxGUserTv_loginID: TcxGridColumn;
    cxGUserTv_username: TcxGridColumn;
    cxGUserTv_u_position: TcxGridColumn;
    cxGDTv_d_id: TcxGridColumn;
    cxGfileTv_cuser: TcxGridColumn;
    cxBtn_Del: TcxButton;
    uq_del: TUniQuery;
    cxGfileTv_btn: TcxGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cxBtn_AddClick(Sender: TObject);
    procedure cxBtn_DelClick(Sender: TObject);
    procedure cxGDTv_d_textGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure cxGfileTv_btnPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private
    { Private declarations }
    ddc, udc, fdc : TcxGridDataController;                                      // TvGrid 축약
    vNew : Boolean;                                                             // 신규여부
    h_id : Integer;                                                             // DataBindingToGrid 이벤트에서 저장된 h_id(조회용)
    procedure cxG_FileDrop(Sender: TObject; const AFileNames: TArray<string>);  // 파일 드래그 드롭 시 이벤트
    procedure Srch_d(vNew: Boolean);                                            // 상세내용 조회
    procedure Srch_user(h_id: Integer);                                         // 검증팀 조회
    procedure Srch_file(h_id: Integer);                                         // 첨부파일 조회
  public
    { Public declarations }
    procedure ClearProc();                                                      // 신규버튼
    procedure SaveProc();                                                       // 저장버튼
    procedure DeleteProc();                                                     // 삭제버튼
    procedure GridListSetting;                                                  // 그리드 목록 세팅
    procedure DataBindingToGrid;                                                // 목록 더블클릭 이벤트
  end;

var
  f_haccp_verifyresult: Tf_haccp_verifyresult;

implementation

{$R *.dfm}

uses DataModule, mu_v_result_user;

procedure Tf_haccp_verifyresult.FormCreate(Sender: TObject);
var
  i : Integer;
  StrList : TStringList;
  Str : string;
begin
  // 드래그 기능 적용 그리드 추가
  cxGfile.OnFileDrop := cxG_FileDrop;
  // 그리드 축약
  ddc := cxGDTv_.DataController;
  udc := cxGUserTv_.DataController;
  fdc := cxGFileTv_.DataController;
  // 컴포넌트 설정(콤보박스)
  With DataModuleForm.FDQuerySetting(uq_cbox) do
  begin
    SQL.Add(SQLInsert.Text);
    Open;

    cxERComboBox.Properties.Items.Clear;
    for i := 0 to uq_cbox.RecordCount - 1 do
    begin
      cxERComboBox.Properties.Items.Add(FieldByName('Level2').AsString);
      uq_cbox.Next;
    end;
  end;
  // 파일 확장자명 표기
  With DataModuleForm.FDQuerySetting(uq_ext) do
  begin
    SQL.Add(SQLUpdate.Text);
    Open;

    StrList := TStringList.Create;
    for i := 0 to uq_ext.RecordCount - 1 do
    begin
      StrList.Add(FieldByName('Level2').AsString);
      uq_ext.Next;                                              
    end;
    Str := StrList.CommaText;
    StrList.Free;
    // 확장자 입력
    cxLbl_ExtInfo.Caption := '※등록가능 확장자 : ' + Str;
  end;
end;

procedure Tf_haccp_verifyresult.FormResize(Sender: TObject);
begin
  // Blob 길이 설정
  cxERBlob.Properties.PopupWidth  := cxGD.Width - 200;
  cxERBlob.Properties.PopupHeight := 250;
  // Record Height
  cxGDTv_.OptionsView.DataRowHeight := (cxGD.Height - cxGDTv_.OptionsView.HeaderHeight) div 9;
  // 검증, 파일 그룹박스 Height
  cxGBox_User.Height := cxGBox_Right.Height div 2;
end;

procedure Tf_haccp_verifyresult.cxBtn_AddClick(Sender: TObject);
var
  i, SIdx : Integer;
  modal_udc : TcxDBDataController;
begin
  // 사용자 목록 조회
  mf_v_result_user := Tmf_v_result_user.Create(Self);
  modal_udc := mf_v_result_user.cxGUserDBTv_.DataController;

  if mf_v_result_user.ShowModal = mrOk then
  begin
    // 검증팀 목록 추가
    udc.RecordCount := 0;

    udc.BeginUpdate;
    for i := 0 to mf_v_result_user.cxGUserDBTv_.Controller.SelectedRecordCount - 1 do
    begin
      SIdx := mf_v_result_user.cxGUserDBTv_.Controller.SelectedRecords[i].RecordIndex;

      udc.AppendRecord;
      udc.Values[udc.RecordCount - 1, cxGUserTv_u_id.Index]       := 0;
      udc.Values[udc.RecordCount - 1, cxGUserTv_h_id.Index]       := h_id;
      udc.Values[udc.RecordCount - 1, cxGUserTv_userID.Index]     := modal_udc.Values[SIdx, mf_v_result_user.cxGUserDBTv_UserID.index];
      udc.Values[udc.RecordCount - 1, cxGUserTv_loginID.Index]    := modal_udc.Values[SIdx, mf_v_result_user.cxGUserDBTv_LoginID.index];
      udc.Values[udc.RecordCount - 1, cxGUserTv_username.Index]   := modal_udc.Values[SIdx, mf_v_result_user.cxGUserDBTv_Name.index];
      udc.Values[udc.RecordCount - 1, cxGUserTv_u_position.Index] := modal_udc.Values[SIdx, mf_v_result_user.cxGUserDBTv_Position.index];
    end;
    udc.EndUpdate;
  end;
end;

procedure Tf_haccp_verifyresult.cxBtn_DelClick(Sender: TObject);
begin
  // 검증팀 삭제
  if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    if StrToIntDef(VarToStr(udc.Values[udc.FocusedRecordIndex, cxGUserTv_u_id.Index]), 0) = 0 then
    begin
      udc.DeleteRecord(udc.FocusedRecordIndex);  // 레코드 삭제
    end
    else
    begin
      With DataModuleForm.FDQuerySetting(uq_del) do
      begin
        SQL.Add(SQLUpdate.Text);
        ParamByName('u_id').AsInteger := udc.Values[udc.FocusedRecordIndex, cxGUserTv_u_id.Index];
        ExecSQL;
      end;
      udc.DeleteRecord(udc.FocusedRecordIndex);  // 레코드 삭제
    end;
  end;  
end;

procedure Tf_haccp_verifyresult.cxGDTv_d_textGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  // 구분에 따른 컴포넌트 변경
  if ddc.Values[ARecord.RecordIndex, cxGDTv_div.Index] = '검증구분' then
  begin
    AProperties := cxERComboBox.Properties;     // 검증구분 : 콤보박스
  end
  else if ddc.Values[ARecord.RecordIndex, cxGDTv_div.Index] = '적합성평가' then
  begin
    AProperties := cxERRadioGroup.Properties;   // 적합성평가 : 라디오버튼
  end
  else
  begin
    AProperties := cxERMemo.Properties;         // 그 외 : BLOB
  end;
end;

procedure Tf_haccp_verifyresult.cxGfileTv_btnPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  FName, FPath : string;
begin
  if AButtonIndex = 0 then
  begin
    // 파일 삭제
    if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
    begin
      if StrToIntDef(VarToStr(fdc.Values[fdc.FocusedRecordIndex, cxGfileTv_f_id.Index]), 0) = 0 then
      begin
        fdc.DeleteRecord(fdc.FocusedRecordIndex);  // 레코드 삭제
      end
      else
      begin
        // 데이터 삭제
        With DataModuleForm.FDQuerySetting(uq_del) do
        begin
          SQL.Add(SQLDelete.Text);
          ParamByName('f_id').AsInteger := fdc.Values[fdc.FocusedRecordIndex, cxGfileTv_f_id.Index];
          ExecSQL;
        end;
        // FTP에서 파일 삭제
        FName := fdc.Values[fdc.FocusedRecordIndex, cxGfileTv_fname.Index];
        DataModuleForm.DeleteFileInFtp(Ftp_v_result_Dir, FName);
        // 레코드 삭제
        fdc.DeleteRecord(fdc.FocusedRecordIndex);
      end;
    end;
  end
  else if AButtonIndex = 1 then
  begin
    if fdc.Values[fdc.FocusedRecordIndex, cxGfileTv_f_id.Index] = 0 then Exit;
    // 파일 보기  
    FName := fdc.Values[fdc.FocusedRecordIndex, cxGfileTv_fname.Index];
    FPath := TPath.GetDocumentsPath;
    // 파일 보기
    DataModuleForm.OpenFileFromFtp(Ftp_v_result_Dir, FName, FPath, FName); 
  end;
end;

procedure Tf_haccp_verifyresult.cxG_FileDrop(Sender: TObject; const AFileNames: TArray<string>);
var
  FileName: string;
  FExt, FName, FNameToSave: string;
  FSize: double;
  OpenFileName : TFileName;
begin
  for FileName in AFileNames do
  begin
    FExt := ExtractFileExt(FileName);     // 확장자
    FName := ExtractFileName(FileName);   // 파일경로
    OpenFileName := FileName;
    FSize := TFile.GetSize(FileName);     // 파일크기
    FNameToSave := FormatDateTime('yyyymmdd_hhnnsszzz', Now) + FExt;

    // 확장자명 제한
    With DataModuleForm.FDQuerySetting(uq_ext) do
    begin
      SQL.Add(SQLInsert.Text);
      ParamByName('FExt').AsString := FExt;
      Open;

      if uq_ext.RecordCount = 0 then
      begin
        ShowMessage('해당 파일의 확장자는 등록할 수 없습니다.');
        Exit;
      end;
    end;
    // 파일크기 제한(5mb미만)
    if FSize > 5 * 1024 * 1024 then
    begin
      ShowMessage('첨부파일 크기 제한(5mb미만)');
      Exit;
    end;

    // 파일리스트 등록
    fdc.AppendRecord;
    fdc.Values[fdc.RecordCount - 1, cxGfileTv_f_id.Index]       := 0;
    fdc.Values[fdc.RecordCount - 1, cxGfileTv_h_id.Index]       := 0;
    fdc.Values[fdc.RecordCount - 1, cxGfileTv_fpath.Index]      := OpenFileName;
    fdc.Values[fdc.RecordCount - 1, cxGfileTv_fname.Index]      := FNameToSave;
    fdc.Values[fdc.RecordCount - 1, cxGfileTv_foriname.Index]   := FName;
    fdc.Values[fdc.RecordCount - 1, cxGfileTv_fextention.Index] := FExt;
    fdc.Values[fdc.RecordCount - 1, cxGfileTv_fsize.Index]      := FSize;
    fdc.Values[fdc.RecordCount - 1, cxGfileTv_cuser.Index]      := cxEdit_Writer.Text;
  end;
end;

procedure Tf_haccp_verifyresult.Srch_d(vNew: Boolean);
var
  i : Integer;
begin
  // 상세내용 조회
  With DataModuleForm.FDQuerySetting(uq_d) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('New').AsBoolean  := vNew;
    ParamByName('h_id').AsInteger := h_id;
    Open;

    ddc.RecordCount := 0;

    ddc.BeginUpdate;
    for i := 0 to uq_d.RecordCount - 1 do
    begin
      ddc.AppendRecord;

      ddc.Values[i, cxGDTv_d_id.Index]   := FieldByName('d_id').AsInteger;
      ddc.Values[i, cxGDTv_h_id.Index]   := FieldByName('h_id').AsInteger;
      ddc.Values[i, cxGDTv_div.Index]    := FieldByName('div').AsString;
      ddc.Values[i, cxGDTv_d_text.Index] := FieldByName('d_text').AsString;

      uq_d.Next;
    end;
    ddc.EndUpdate;
  end;
end;

procedure Tf_haccp_verifyresult.Srch_user(h_id: Integer);
var
  i : Integer;
begin
  // 검증팀 조회
  With DataModuleForm.FDQuerySetting(uq_user) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('h_id').AsInteger := h_id;
    Open;

    udc.RecordCount := 0;

    udc.BeginUpdate;
    for i := 0 to uq_user.RecordCount - 1 do
    begin
      udc.AppendRecord;

      udc.Values[i, cxGUserTv_u_id.Index]       := FieldByName('u_id').AsInteger;
      udc.Values[i, cxGUserTv_h_id.Index]       := FieldByName('h_id').AsInteger;
      udc.Values[i, cxGUserTv_userID.Index]     := FieldByName('userID').AsInteger;
      udc.Values[i, cxGUserTv_loginID.Index]    := FieldByName('loginID').AsString;
      udc.Values[i, cxGUserTv_username.Index]   := FieldByName('username').AsString;
      udc.Values[i, cxGUserTv_u_position.Index] := FieldByName('u_position').AsString;

      uq_user.Next;
    end;
    udc.EndUpdate;
  end;
end;

procedure Tf_haccp_verifyresult.Srch_file(h_id: Integer);
var
  i : Integer;
begin
  // 첨부파일 조회
  With DataModuleForm.FDQuerySetting(uq_file) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('h_id').AsInteger := h_id;
    Open;

    fdc.RecordCount := 0;

    fdc.BeginUpdate;
    for i := 0 to uq_file.RecordCount - 1 do
    begin
      fdc.AppendRecord;

      fdc.Values[i, cxGfileTv_f_id.Index]       := FieldByName('f_id').AsInteger;
      fdc.Values[i, cxGfileTv_h_id.Index]       := FieldByName('h_id').AsInteger;
      fdc.Values[i, cxGfileTv_fpath.Index]      := FieldByName('fpath').AsString;
      fdc.Values[i, cxGfileTv_fname.Index]      := FieldByName('fname').AsString;
      fdc.Values[i, cxGfileTv_foriname.Index]   := FieldByName('foriname').AsString;
      fdc.Values[i, cxGfileTv_fextention.Index] := FieldByName('fextention').AsString;
      fdc.Values[i, cxGfileTv_fsize.Index]      := FieldByName('fsize').AsCurrency;

      uq_file.Next;
    end;
    fdc.EndUpdate;
  end;
end;

procedure Tf_haccp_verifyresult.ClearProc;
begin
  // 신규버튼
  cxDEdit_Date.Date  := Date;
  cxEdit_Writer.Text := LoginUserName;
  h_id               := 0;
  // 상세내용 조회
  Srch_D(True);
  // 검증팀 조회
  Srch_user(h_id);
  // 상세내용 조회
  Srch_file(h_id);
end;

procedure Tf_haccp_verifyresult.SaveProc;
var
  i: Integer;
begin
  // Save Head
  With DataModuleForm.FDQuerySetting(uq) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('h_id').AsInteger     := h_id;
    ParamByName('checkdate').AsString := cxDEdit_Date.Text;
    ParamByName('writer').AsString    := cxEdit_Writer.Text;
    ExecSQL;
    // 신규저장 시 h_id 저장
    if h_id = 0 then
    begin
      h_id := FieldByName('h_id').AsInteger;
    end;
  end;
  // Save Detail
  for i := 0 to ddc.RecordCount - 1 do
  begin
    With DataModuleForm.FDQuerySetting(uq) do
    begin
      SQL.Add(SQLUpdate.Text);
      ParamByName('d_id').AsInteger  := ddc.Values[i, cxGDTv_d_id.Index];
      ParamByName('h_id').AsInteger  := h_id;
      ParamByName('div').AsString    := ddc.Values[i, cxGDTv_div.Index];
      ParamByName('d_text').AsString := ddc.Values[i, cxGDTv_d_text.Index];
      ExecSQL;
    end;
  end;
  // Save User
  for i := 0 to udc.RecordCount - 1 do
  begin
    With DataModuleForm.FDQuerySetting(uq) do
    begin
      SQL.Add(SQLDelete.Text);
      ParamByName('u_id').AsInteger       := udc.Values[i, cxGUserTv_u_id.Index];
      ParamByName('h_id').AsInteger       := h_id;
      ParamByName('userID').AsInteger     := udc.Values[i, cxGUserTv_userID.Index];
      ParamByName('loginID').AsString     := udc.Values[i, cxGUserTv_loginID.Index];
      ParamByName('username').AsString    := udc.Values[i, cxGUserTv_username.Index];
      ParamByName('u_position').AsString  := udc.Values[i, cxGUserTv_u_position.Index];
      ExecSQL;
    end;
  end;
  // Save File
  for i := 0 to fdc.RecordCount - 1 do
  begin
    With DataModuleForm.FDQuerySetting(uq) do
    begin
      SQL.Add(SQLLock.Text);
      ParamByName('f_id').AsInteger      := fdc.Values[i, cxGfileTv_f_id.Index];
      ParamByName('h_id').AsInteger      := h_id;
      ParamByName('fpath').AsString      := fdc.Values[i, cxGfileTv_fpath.Index];
      ParamByName('fname').AsString      := fdc.Values[i, cxGfileTv_fname.Index];
      ParamByName('foriname').AsString   := fdc.Values[i, cxGfileTv_foriname.Index];
      ParamByName('fextention').AsString := fdc.Values[i, cxGfileTv_fextention.Index];
      ParamByName('fsize').AsString      := fdc.Values[i, cxGfileTv_fsize.Index];
      ParamByName('cuser').AsString      := fdc.Values[i, cxGfileTv_cuser.Index];
      ExecSQL;
    end;
    // FTP에 파일저장
    DataModuleForm.PutFileToFtp(Ftp_v_result_Dir, fdc.Values[i, cxGfileTv_fpath.Index], fdc.Values[i, cxGfileTv_fname.Index], true);
  end;
end;

procedure Tf_haccp_verifyresult.DeleteProc;
var
  i : Integer;
  FName : string;
begin
  // 삭제버튼
  if MessageDlg(MessageToDeleteOne, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    // 목록 삭제 : h, d, user, file
    With DataModuleForm.FDQuerySetting(uq_del) do
    begin
      SQL.Add(SQLInsert.Text);
      ParamByName('h_id').AsInteger := h_id;
      ExecSQL;
    end;
    // FTP에서 파일 삭제
    for i := 0 to fdc.RecordCount - 1 do
    begin
      FName := fdc.Values[i, cxGfileTv_fname.Index];
      DataModuleForm.DeleteFileInFtp(Ftp_v_result_Dir, FName);
    end;
  end;
end;

procedure Tf_haccp_verifyresult.GridListSetting;
begin
  // 그리드 목록 세팅
end;

procedure Tf_haccp_verifyresult.DataBindingToGrid;
begin
  // 목록 더블클릭 이벤트
  With DataModuleForm.FDQuerySetting(uq_list) do
  begin
    SQL.Add(SQLInsert.Text);
    ParamByName('checkdate').AsString := DataModule.HaccpSelected_Date;
    Open;

    cxDEdit_Date.Text  := FieldByName('checkdate').AsString;
    cxEdit_Writer.Text := FieldByName('writer').AsString;
    h_id               := FieldByName('h_id').AsInteger;
  end;
  // 상세내용 조회
  Srch_D(False);
  // 검증팀 조회
  Srch_user(h_id);
  // 상세내용 조회
  Srch_file(h_id);
end;

{ TCxGrid }

procedure TCxGrid.WMDropFiles(var Msg: TWMDropFiles);
var
  Count, I: Integer;
  FileName: array[0..MAX_PATH] of Char;
  FileList: TArray<string>;
begin
  Count := DragQueryFile(Msg.Drop, $FFFFFFFF, nil, 0);
  SetLength(FileList, Count);

  for I := 0 to Count - 1 do
  begin
    DragQueryFile(Msg.Drop, I, FileName, MAX_PATH);
    FileList[I] := FileName;
  end;

  DragFinish(Msg.Drop);

  if Assigned(FOnFileDrop) then
  begin
    FOnFileDrop(Self, FileList);
  end;
end;

procedure TCxGrid.CreateWnd;
begin
  inherited;
  DragAcceptFiles(Handle, true);
end;

procedure TCxGrid.DestroyWnd;
begin
  DragAcceptFiles(Handle, false);
  inherited;
end;

initialization
  RegisterClass(Tf_haccp_verifyresult);

finalization
  UnRegisterClass(Tf_haccp_verifyresult);

end.
