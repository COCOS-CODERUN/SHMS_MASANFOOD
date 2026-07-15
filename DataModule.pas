unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Vcl.Dialogs, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, Data.DB, FireDAC.Comp.Client, IdGlobal, Vcl.Graphics, ShellAPI,
  cxImage, Winapi.Windows, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Menus, cxGroupBox, cxTextEdit,
  cxCurrencyEdit, cxCalendar, cxMemo, cxCheckBox, cxDropDownEdit, System.UITypes,
  cxDBLookupComboBox, cxRadioGroup, cxGridCustomTableView, cxEdit,System.Variants,
  cxDBEditRepository, cxClasses, cxEditRepositoryItems, cxGridTableView, Vcl.Forms,
  IdFTPList, IdFTPListTypes, IdFTPCommon, IdFTPListParseBase, IdFTPListParseWindowsNT,
  PNGImage, JPEG, GIFImg, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, dxSkinsCore,
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
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,cxButtonEdit,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsLookAndFeelPainter, cxButtons, cxPC,
  FireDAC.Comp.UI, StrUtils, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  UniProvider, SQLServerUniProvider, DBAccess, Uni, MemDS, WinInet;

type
  // 첨부 파일 정보
  TAttatchmentFileInfo = record
    AttachmentFileID: Integer;  // 첨부파일 ID
    SavedFolderPath: string;    // 저장 폴더 경로
    SavedFileName: string;      // 저장 파일명
    OriginalFileName: string;   // 원본 파일명
    Writer: string;             // 작성자
    WritingDateTime: TDateTime; // 작성 일시
  end;

  TDataModuleForm = class(TDataModule)
    IdFTP: TIdFTP;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ComboBoxDivision: TcxEditRepositoryComboBoxItem;
    cxEditRepository1CurrencyQty: TcxEditRepositoryCurrencyItem;
    cxEditRepository1CurrencyWeight: TcxEditRepositoryCurrencyItem;
    SQLServerUniProvider1: TSQLServerUniProvider;
    FDQueryTemp: TUniQuery;
    FDSpTemp: TUniStoredProc;
    FDConnection: TUniConnection;

  procedure DataModuleCreate(Sender: TObject);
    procedure FDConnectionBeforeConnect(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    //창고 가져오기용
    WareHouse     : array [0..2] of string;
    // 값 넘겨받기
    SetInt : integer;
    pSetInt: ^integer;
    // 유저별 그룹박스스킨, 백그라운드스킨, 버튼스킨
    UserSkin, BackSkin, BtnSkin: String;

    // DevExpress skin 리스트
    cxSkinList: array of String;

    // 유저 스킨 변경
    procedure StyleChangecxGroupBox(FormName: TForm; SkinName: String);

    // 유저 버튼스킨 변경
    procedure StyleChangecxButton(FormName: TForm; SkinName: String);

    // 유저 배경스킨 변경
    procedure StyleChangeBackGround(FormName: TForm; SkinName: String);

    /// <summary> FDStoredPoc 기본 세팅
    /// (StoredProcedureName, Parameter 세팅)
    /// </summary>
    /// <param name="StoredProcedureNameToSet"> 세팅할 StoredProcedure 이름
    /// </param>
    procedure SetFDSpTemp(StoredProcedureNameToSet: string);

    /// <summary> FTP에 파일 등록
    /// </summary>
    /// <param name="FtpDir">저장할 FTP 폴더 경로
    /// </param>
    /// <param name="FileNameToPut">불러온 파일
    /// </param>
    /// <param name="FileNameToSave">저장 파일명
    /// </param>
    /// <returns>True : 성공 / False : 실패.
    /// </returns>
    function PutFileToFtp(FtpDir: string; FileNameToPut: TFileName;
  FileNameToSave: string; DirCheck: Boolean): Boolean;

    /// <summary> FTP 경로존재유무
    /// </summary>
    /// <param name="DirName">경로 지정
    /// </param>
    /// <param name="IdFTPComp">FTP 지정
    /// </param>
    /// <returns>True : 성공 / False : 실패.
    /// </returns>
    function FTPDirExists(DirName: string; IdFTPComp: TIdFTP): Boolean;

    /// <summary> FTP 파일존재유무
    /// </summary>
    /// <param name="FileName">파일 지정
    /// </param>
    /// <param name="IdFTPComp">FTP 지정
    /// </param>
    /// <returns>True : 성공 / False : 실패.
    /// </returns>
    function FTPFileExists(FileName: string; IdFTPComp: TIdFTP): Boolean;

    /// <summary> FTP 이미지 파일 cxImage에 가져오기
    /// </summary>
    /// <param name="FtpDir">가져올 이미지 파일이 있는 FTP 폴더 경로
    /// </param>
    /// <param name="FileNameInFtp">가져올 이미지 파일명
    /// </param>
    /// <param name="CxImageToSave">저장할 CxImage
    /// </param>
    /// <returns>True : 성공 / False : 실패.
    /// </returns>
    function GetImageFromFtpToCxImage(FtpDir, FileNameInFtp: string; 
      CxImageToSave: TcxImage): Boolean;

    /// <summary> FTP 파일을 저장하고 열기
    /// </summary>
    /// <param name="FtpDir">가져올 파일이 있는 FTP 폴더 경로
    /// </param>
    /// <param name="FileNameInFtp">가져올 파일명
    /// </param>
    /// <param name="DirToSave">저장 폴더 위치
    /// </param>
    /// <param name="FileNameToSave">저장 파일명
    /// </param>
    /// <returns>True : 성공 / False : 실패.
    /// </returns>
    function OpenFileFromFtp(FtpDir, FileNameInFtp, DirToSave, 
      FileNameToSave: string): Boolean
      ;
    function OpenFileFromFtp2(FtpDir, FileNameInFtp, DirToSave,
      FileNameToSave: string): Boolean;
    /// <summary> FTP에 파일 삭제
    /// </summary>
    /// <param name="FtpDir">삭제할 파일이 있는 FTP 폴더 경로
    /// </param>
    /// <param name="FileNameToDelete">삭제할 파일
    /// </param>
    /// <returns>True : 성공 / False : 실패.
    /// </returns>
    function DeleteFileInFtp(FtpDir, FileNameToDelete: string): Boolean;

    // FTP 디렉토리 확인
    function CheckFtpDirectory(FtpDir: string): Boolean;

    // FTP 파일 확인
    function CheckFtpFile(FtpDir, FtpFileName: string): Boolean;

    /// <summary> cxGroupBox Edit를 전부 Clear (cxTextEdit, cxCurrencyEdit,
    /// cxDateEdit, cxMemo, cxLookupComboBox, cxComboBox, cxCheckBox,
    /// cxRadioGroup, cxImage)
    /// </summary>
    /// <param name="cxGroupBox"> Clear 할 Edit가 있는 cxGroupBox
    /// </param>
    procedure ClearEditIncxGroupBox(cxGroupBox: TcxGroupBox);

    /// <summary> 프로시저 사용
    /// </summary>
    /// <param name="FireDAC 프로시저명">
    /// <see cref = "ex) FDSpUserList OR Nil(Exec전용_Temp프로시저)"/>
    /// </param>
    /// <param name="SQLserver 프로시저명">
    /// <see cref = "ex) 'usp_User'"/>
    /// </param>
    /// <param name="SQLserver Option매개변수">
    /// <see cref = "ex) 'A'"/>
    /// </param>
    /// <remarks>
    /// <see cref = "ex) Open; OR ExecProc;"/>
    /// </remarks>
    /// <returns>
    /// <see cref = "ex) ParamByName(@ex).Value"/>  := 던질값;
    /// </returns>
    function FDSpSetting(AFDSp: TUniStoredProc; spName, Option: String): TUniStoredProc;

    /// <summary> 쿼리 사용
    /// </summary>
    /// <param name="FireDAC 쿼리명">
    /// <see cref = "ex) FDqUser OR Nil(Exec전용_Temp쿼리)"/>
    /// </param>
    /// <remarks>
    /// <see cref = "ex) ParamByName(ex).Asxxxx"/> := 던질값; &#160;&#13;&#10;
    /// &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    /// &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    /// &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    /// <see cref = "ex) Open; OR ExecSQL;"/>
    /// </remarks>
    /// <returns>
    /// <see cref = "ex) SQL.Add('Exec usp_User @Option ="/> :ex');
    /// </returns>
    function FDQuerySetting(AFDQuery:TUniQuery):TUniQuery;

    // 기초코드 조회해서 TcxComboBox 세팅하기
    procedure SearchBasicCodeAndSetComboboxItem(var ACombobox: TcxComboBox;
      BasicCodeId: Integer);

    // 기초코드 디테일 가져오기 TcxLookupComboBox 세팅 IsEditFixed
    procedure SearchCode(BasicCode:String;AFDQuery:TUniQuery);

    // 테이블의 컬럼정보 DISTINCT로 TcxComboBox세팅 IsEdit
    procedure ItemDistinct(var ACombobox: TcxComboBox;
      TableName,Column: String; WhereStr: String = ''; Blank: String = 'NoBlank');

    // 아이템 삭제
    function DeleteItem(cxGridTv_Detail:TcxGridTableView):Integer;

    // 첨부 파일 정보 조회
    function SearchAttatchmentFileInfoById(
      AttachmentFileIdToSearch: Integer): TAttatchmentFileInfo;

    // 첨부 파일 정보 저장
    function SaveAttatchmentFileInfo(
      var AAttatchmentFileInfo: TAttatchmentFileInfo): Boolean;

    // 첨부 파일 정보 삭제
    function DeleteAttatchmentFileInfo(
      var AAttatchmentFileInfo: TAttatchmentFileInfo): Boolean;

    // 첨부 파일 업로드 후 첨부 파일 정보 반환
    function UploadAttatchmentFileAndSaveInfo(
      var AAttatchmentFileInfo: TAttatchmentFileInfo): Boolean;

    procedure ForceDirectoriesOfIdFTP(AIdFTP: TIdFTP; const StrMakeDir: String);

    procedure ActiveSp(Sp: TUniStoredProc);   // 다른메뉴 갔다오면 그리드 새로고침

    //Haccp 결재창 생성
    procedure InsertHaccpApproval(WriteDate, MenuName, Division: string);
    procedure UpdateHaccpApproval(WriteDate, MenuName, Division,
      CheckWriter, CheckReviewer, CheckConfirmer: string);
    procedure SelectHaccpApproval(WriteDate, MenuName,
      Division: string; CheckWriter, CheckReviewer, CheckConfirmer: TcxTextEdit);
    procedure DeleteHaccpApproval(WriteDate, MenuName, Division: string);

  end;

const
  // Default_Skin
  DBackSkin = 'DevExpressStyle';
  DUserSkin = 'LondonLiquidSky';
  DBtnSkin  = 'Lilian';

  // 문자열 상수 모음
  MessageToSave         = '저장 하였습니다.';
  MessageToDelete       = '삭제 하시겠습니까?';
  MessageToDeleteAll    = '전체를 삭제 하시겠습니까?';
  MessageToDeleteOne    = '선택 항목을 삭제 하시겠습니까?';
  MessageToRegister     = '등록 하였습니다.';
  MessageToNotSave      = '데이터가 저장되지 않았습니다';
  MessageToNotDelete    = '해당 데이터와 연결된 데이터가 존재합니다.'+#13+'데이터 삭제후 해당 데이터를 삭제하세요.';
  MessageToCancel       = '취소하시겠습니까?';
  MessageToError        = '에러가 발생하였습니다.'+#13+'해당 현상이 지속된다면 관리자에게 문의 하세요.';
  MessageToCantRead     = '읽기 권한이 없습니다.';
  MessageToCantInput    = '입력 권한이 없습니다.';
  MessageToCantAlter    = '수정 권한이 없습니다.';
  MessageToCantDelete   = '삭제 권한이 없습니다.';
  MessageToUpdate       = '업데이트가 존재합니다.';
  MessageToErrorDelete  = '에러 발생';
  MessageToApproval     = '결재 처리가 완료되었습니다.';


var
  DataModuleForm: TDataModuleForm;
  LoginId:        Integer = 0;
  LoginUserId:    string  = '';
  LoginUserName:  string  =  '';
  GroupAuthority: Boolean;
  GroupID:        Integer;
  OpenFileName : TFileName = '';
  OpenFileName2 : TFileName = '';
  PGNAME : string;
  FtpDir : string;
  FtpHaccpDir : string;
  FtpDefaultDir : string;
  ProgramFolderName : string;
  PrintDefaultDir : string;
  SaveToError : Boolean;
  HaccpSelected_Date : string;
  HaccpSelected_Division : string;
  HaccpSelected_MenuName : string;
  // 250618 김동현 : FTP 경로추가
  Ftp_v_result_Dir : string;

implementation

uses MainUnit, BaseChild;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModuleForm.DataModuleCreate(Sender: TObject);
var
  loopcnt, SkinCount: Integer;
begin
  PGName := ExtractFileName(Application.ExeName);
  PGName := Copy(PGName,1,Length(PGName) - 4);

  // COCOS Server DB 세팅
  with FDConnection do
  begin
//    {$IFDEF DEBUG}
//      Database := PGNAME+'_TEST';
//    {$ELSE}
//      Database := PGNAME;
//    {$ENDIF}

    Database := PGNAME;
    Username := 'MASANFOOD'; //PGNAME;
    Password := 'MASANFOOD_2709k!';
//    Password := LowerCase(PGNAME) + '_2709k!';
    Server   := '211.57.200.50';
    Port := 18068;
    Connect;
  end;

  // COCOS Server FTP 세팅
  IdFTP.Host      := 'ftp.coderun.co.kr';
  IdFTP.Username  := 'ksh8608';
  IdFTP.Password  := 'k3025875k^^';

  // 스킨리스트
  SkinCount := 0;
  for loopcnt := 0 to  cxLookAndFeelPaintersManager.Count - 1 do
  begin
    if cxLookAndFeelPaintersManager.Items[loopcnt] is TdxSkinLookAndFeelPainter then
    begin
      inc(SkinCount);
      SetLength(cxSkinList, SkinCount);
      cxSkinList[SkinCount-1] := cxLookAndFeelPaintersManager.Items[loopcnt].LookAndFeelName;
    end;
  end;

  // FTP 폴더 경로
  Ftpdir := PGName + '\file';
  FtpDefaultDir := PGName + '\file';
  Ftp_v_result_Dir := PGName + '\file\v_result';
  ProgramFolderName := PGName;
  PrintDefaultDir := '\출력';

end;

// FDStoredProc 관련 기능 ======================================================
// FDSpTemp 기본 세팅(StoredProcedure 선택하고 Parameter 세팅)
procedure TDataModuleForm.SetFDSpTemp(StoredProcedureNameToSet: string);
begin
  if StoredProcedureNameToSet = '' then
  begin
    Exit;
  end;

  with FDSpTemp do
  begin
    Close;
    Connection := FDConnection;
    StoredProcName := StoredProcedureNameToSet;
    Prepare;
//    Params.ClearValues(-1);
  end;
end;

// FTP 관련 기능 ===============================================================
// FTP 파일 등록
// USE IdGlobal, IdFtp
function TDataModuleForm.PutFileToFtp(FtpDir: string; FileNameToPut: TFileName;
  FileNameToSave: string; DirCheck: Boolean): Boolean;
begin
  Result := False;
  try
    try
      IdFtp.Connect;
      IdFtp.IOHandler.DefStringEncoding := IndyTextEncoding(949);
      if IdFtp.Connected then
      begin
        if not DirCheck then
        begin
          ForceDirectoriesOfIdFTP(IdFtp, FtpDir);
        end;
        IdFtp.ChangeDir(FtpDir);
        IdFtp.Put(FileNameToPut, FileNameToSave);
      end;
      Result := True;
    except
      on E:Exception do
      begin
        Result := False;
        Exit;
      end;
    end;
  finally
    IdFtp.Disconnect;
  end;
end;

// FTP 파일 cxImage에 가져오기
// USE IdGlobal, IdFtp, cxImage
function TDataModuleForm.GetImageFromFtpToCxImage(FtpDir, FileNameInFtp: string;
  CxImageToSave: TcxImage): Boolean;
var
  Stream : TMemoryStream;
  Wic    : TWICImage;
begin
  Result := False;
  Stream := TMemoryStream.Create;
  Wic := TWICImage.Create;

  try
    try
      IdFtp.Connect;
      IdFtp.IOHandler.DefStringEncoding := IndyTextEncoding(949);
      if IdFtp.Connected then
      begin
        IdFtp.ChangeDir(FtpDir);
        IdFtp.Get(FileNameInFtp, Stream, True);
        Wic.LoadFromStream(Stream);
        CxImageToSave.Picture.Assign(nil);
        CxImageToSave.Picture.Assign(Wic);
        Result := True;
      end;
    except
      Result := False;
    end;
  finally
    Stream.Free;
    Wic.Free;
    IdFtp.Disconnect;
  end;
end;

// FTP 파일을 저장하고 열기
// USE IdGlobal, IdFtp, Vcl.Graphics, ShellAPI, Winapi.Windows
function TDataModuleForm.OpenFileFromFtp(FtpDir, FileNameInFtp, DirToSave,
  FileNameToSave: string): Boolean;
var
  FilePath : string;
begin
  FilePath := DirToSave + '\' + FileNameToSave;

  try
    try
      IdFtp.Connect;
      IdFtp.IOHandler.DefStringEncoding := IndyTextEncoding(949);
      if IdFtp.Connected then
      begin
        IdFtp.ChangeDir(FtpDir);
        IdFtp.Get(FileNameInFtp, FilePath, True);
        // ShellExecute 는 DataModuleForm에서 실행이 안됨 -> MainForm 에서 실행
        with MainForm do
        begin
          ShellExecute(Handle, 'OPEN', PChar(FilePath), nil, nil, SW_SHOW);
        end;
      end;
      Result := True;
    except
      Result := False;
    end;
  finally
    IdFtp.Disconnect;
  end;

end;

// FTP 파일을 저장만
// USE IdGlobal, IdFtp, Vcl.Graphics, ShellAPI, Winapi.Windows
function TDataModuleForm.OpenFileFromFtp2(FtpDir, FileNameInFtp, DirToSave,
  FileNameToSave: string): Boolean;
var
  FilePath : string;
begin
  FilePath := DirToSave + '\' + FileNameToSave;

  try
    try
      IdFtp.Connect;
      IdFtp.IOHandler.DefStringEncoding := IndyTextEncoding(949);
      if IdFtp.Connected then
      begin
        IdFtp.ChangeDir(FtpDir);
        IdFtp.Get(FileNameInFtp, FilePath, True);
      end;
      Result := True;
    except
      Result := False;
    end;
  finally
    IdFtp.Disconnect;
  end;
end;

// FTP 파일 삭제
// USE IdGlobal, IdFtp
function TDataModuleForm.DeleteFileInFtp(FtpDir,
  FileNameToDelete: string): Boolean;
begin
  if FileNameToDelete = '' then
  begin
    Result := True;
    Exit;
  end;
  try
    try
      IdFtp.Connect;
      IdFtp.IOHandler.DefStringEncoding := IndyTextEncoding(949);
      if IdFtp.Connected then
      begin
        IdFtp.ChangeDir(FtpDir);
        IdFtp.Delete(FileNameToDelete);
      end;
      Result := True;
    except
      Result := False;
    end;
  finally
    IdFtp.Disconnect;
  end;
end;

// FTP 디렉토리 확인
function TDataModuleForm.CheckFtpDirectory(FtpDir: string): Boolean;
var
  AList: TStringList;
  Index: Integer;
begin
  try
    try
      IdFTP.Connect;
      IdFTP.IOHandler.DefStringEncoding := IndyTextEncoding(949);
      if IdFTP.Connected then
      begin
        AList := TStringList.Create;
        Result := False;
        try
          IdFTP.List(nil);
          for Index := 0 to IdFTP.DirectoryListing.Count - 1 do
          begin
            if IdFTP.DirectoryListing.Items[Index].ItemType = ditDirectory then
              AList.Add(IdFTP.DirectoryListing.Items[Index].FileName);
          end;
          Result := (AList.IndexOf(FtpDir) > -1);
        finally
          AList.Free;
        end;
      end;
      Result := True;
    except
      Result := False;
    end;
  finally
    IdFTP.Disconnect;
  end;
end;

// FTP 파일 확인
function TDataModuleForm.CheckFtpFile(FtpDir, FtpFileName: string): Boolean;
var
  AList: TStringList;
  I: Integer;
begin
  try
    try
      IdFTP.Connect;
      IdFTP.IOHandler.DefStringEncoding := IndyTextEncoding(949);
      if IdFTP.Connected then
      begin
        IdFTP.ChangeDir(FtpDir);
        AList := TStringList.Create;
        try
          IdFTP.List(AList, '', false);
          for i := 0 to AList.Count - 1 do
          begin
            if AList.Strings[i] = FtpFileName then
            begin
              Result := True;
              Break;
            end;
          end;
        finally
          AList.Free;
        end;
      end;
      Result := True;
    except
      Result := False;
    end;
  finally
    IdFTP.Disconnect;
  end;
end;

// 기타 기능 ===================================================================
// cxGroupBox Edit 비우기
procedure TDataModuleForm.ClearEditIncxGroupBox(cxGroupBox: TcxGroupBox);
var
  i: Integer;
begin
    // cxTextEdit, cxCurrencyEdit,
    // cxDateEdit, cxMemo, cxLookupComboBox, cxComboBox, cxCheckBox,
    // cxRadioGroup, cxImage
  for i := 0 to cxGroupBox.ControlCount - 1 do
  begin
    if cxGroupBox.Controls[i] is TcxTextEdit then
    begin
      (cxGroupBox.Controls[i] as TcxTextEdit).Clear;
    end
    else if cxGroupBox.Controls[i] is TcxCurrencyEdit then
    begin
      (cxGroupBox.Controls[i] as TcxCurrencyEdit).Clear;
    end
    else if cxGroupBox.Controls[i] is TcxDateEdit then
    begin
      (cxGroupBox.Controls[i] as TcxDateEdit).Clear;
    end
    else if cxGroupBox.Controls[i] is TcxMemo then
    begin
      (cxGroupBox.Controls[i] as TcxMemo).Clear;
    end
    else if cxGroupBox.Controls[i] is TcxCheckBox then
    begin
      (cxGroupBox.Controls[i] as TcxCheckBox).Clear;
    end
    else if cxGroupBox.Controls[i] is TcxRadioGroup then
    begin
      (cxGroupBox.Controls[i] as TcxRadioGroup).ItemIndex := 0;
    end
    else if cxGroupBox.Controls[i] is TcxImage then
    begin
      (cxGroupBox.Controls[i] as TcxImage).Clear;
    end
    else if cxGroupBox.Controls[i] is TcxLookupComboBox then
    begin
      (cxGroupBox.Controls[i] as TcxLookupComboBox).ItemIndex := -1;
    end
    else if cxGroupBox.Controls[i] is TcxComboBox then
    begin
      (cxGroupBox.Controls[i] as TcxComboBox).ItemIndex := -1;
    end
    else if cxGroupBox.Controls[i] is TcxButtonEdit then
    begin
      (cxGroupBox.Controls[i] as TcxButtonEdit).Clear;
    end;
  end;
end;

// 기초코드 조회해서 TcxComboBox 세팅하기
procedure TDataModuleForm.SearchBasicCodeAndSetComboboxItem(
  var ACombobox: TcxComboBox; BasicCodeId: Integer);
var
  AFDStoredProc: TUniStoredProc;
  Index: Integer;
begin
  AFDStoredProc := TUniStoredProc.Create(Self);
  try
    with FDSpSetting(AFDStoredProc, 'usp_BasicCode', 'F') do
    begin
      ParamByName('@BasicCodeID').AsInteger := BasicCodeId;
      Open;

      ACombobox.Properties.Items.Clear;
      for Index := 0 to RecordCount -1 do
      begin
        ACombobox.Properties.Items.Add(FieldByName('DetailName').AsString);
        Next;
      end;
    end;
  finally
    AFDStoredProc.Free;
  end;
end;

//기초코드 조회
procedure TDataModuleForm.SearchCode(BasicCode: String; AFDQuery: TUniQuery);
begin

  if AFDQuery = nil then AFDQuery := FDQueryTemp;

  with AFDQuery do
  begin
    Close;
    Connection := FDConnection;
    SQL.Clear;
    SQL.Add(' SELECT A.BCDID, A.BCDName                     ');
    SQL.Add(' FROM BasicCodeDetail AS A                     ');
    SQL.Add(' INNER JOIN BasicCode AS B ON A.BCID = B.BCID  ');
    SQL.Add(' WHERE B.BCName = :BCName                      ');
    SQL.Add(' AND   IsUsable = 1                            ');
    SQL.Add(' ORDER BY A.DisIndex                           ');
    ParamByName('BCName').AsString := BasicCode;
    Open;
  end;
end;

// 테이블의 컬럼정보 DISTINCT로 TcxComboBox세팅 IsEdit
procedure TDataModuleForm.ItemDistinct(var ACombobox: TcxComboBox;
  TableName, Column: String; WhereStr: String = ''; Blank: String = 'NoBlank');
var
  loopcnt: Integer;
begin
  with FDQueryTemp do
  begin
    Close;
    Connection := FDConnection;
    SQL.Clear;
    SQL.Add('   SELECT DISTINCT '+Column                );
    SQL.Add('     FROM '+TableName                      );
    SQL.Add('    WHERE ISNULL('+Column+','''') <> '''' ');
    if WhereStr <> '' then
    begin
      SQL.Add('   AND '+WhereStr);
    end;
    SQL.Add(' GROUP BY '+Column                         );
    SQL.Add(' ORDER BY '+Column                         );
    Open;
    ACombobox.Properties.BeginUpdate;
    ACombobox.Properties.Items.Clear;
    if Blank <> 'NoBlank' then
      AComboBox.Properties.Items.Add(Blank);
    for loopcnt := 0 to RecordCount -1 do
    begin
      ACombobox.Properties.Items.Add(FieldByName(Column).AsString);
      Next;
    end;
    ACombobox.Properties.EndUpdate;
  end;
end;

//품목 삭제
function TDataModuleForm.DeleteItem(cxGridTv_Detail: TcxGridTableView): Integer;
var
  DetailIDToDelete:Integer;
begin
  DetailIDToDelete := 0;
  Result := 0;

  if MessageDlg(MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with cxGridTv_Detail.DataController do
    begin
      if RecordCount > 0 then
      begin
        DetailIdToDelete :=
          StrToIntDef(VarToStr(Values[FocusedRecordIndex, 1]) ,0);
        DeleteFocused;
        Result := DetailIDToDelete;
      end;
    end;
  end;
end;

//FDQuery Setting
procedure TDataModuleForm.FDConnectionBeforeConnect(Sender: TObject);
var
  dwFlags : DWORD;
begin
  // 모든 SQL 실행전에 인터넷 상태 체크
  if not InternetGetConnectedState(@dwFlags, 0) then
  begin
    ShowMessage('인터넷 연결이 불안정합니다.');
    Abort;
  end;

end;

function TDataModuleForm.FDQuerySetting(AFDQuery: TUniQuery):TUniQuery;
var
  FDQTemp: TUniQuery;
begin
  Result := nil;

  with FDConnection do
  begin
    try
      try
        if AFDQuery = nil then AFDQuery  := FDQueryTemp;
        AFDQuery.Close;
        StartTransaction;
        AFDQuery.Connection := FDConnection;
        AFDQuery.SQL.Clear;
      except on E: Exception do
        begin
          Rollback;
          ShowMessage('아래 오류 메세지를 화면과 함께 캡쳐 후 전산팀에 보고해주세요.'+#13#10+'Detail: '+E.Message);
        end;
      end;
    finally
      Commit;
      FDConnection.Connected := False;
      Result := AFDQuery;
    end;
  end;

//  if AFDQuery = nil then
//  begin
//    FDQTemp   := TUniQuery.Create(Self);
//    AFDQuery  := FDQTemp;
//  end;
//
//  with AFDQuery do
//  begin
//    Close;
////    FDConnection.Connected := True;
//    Connection := FDConnection;
//    SQL.Clear;
//  end;
//
//  Result := AFDQuery;
end;

//FDSp Setting
function TDataModuleForm.FDSpSetting(AFDSp: TUniStoredProc; spName, Option: String):TUniStoredProc;
begin
  Result := nil;

  with FDConnection do
  begin
    try
      try
        if AFDSp = nil then AFDSp := FDSpTemp;
        AFDSp.Close;
        StartTransaction;
        AFDSp.Connection := FDConnection;

        AFDSp.StoredProcName := '';
        AFDSp.StoredProcName := spName;
        AFDSp.Prepare;
        AFDSp.ParamByName('@Option').AsString := Option;
      except on E: Exception do
        begin
          Rollback;
          ShowMessage('아래 오류 메세지를 화면과 함께 캡쳐 후 전산팀에 보고해주세요.'+#13#10+'Detail: '+E.Message);
        end;
      end;
    finally
      Commit;
      FDConnection.Connected := false;
      Result := AFDSp;
    end;
  end;

//  if AFDSp = nil then AFDSp := FDSpTemp;
//
//  with AFDSp do
//  begin
//    Close;
////    FDConnection.Connected := True;
//    Connection := FDConnection;
//
//    StoredProcName := '';
//    StoredProcName := spName;
//    Prepare;
////    Params.ClearValues;
//    ParamByName('@Option').AsString := Option;
//  end;
//
//  Result := AFDSp;
end;

procedure TDataModuleForm.ForceDirectoriesOfIdFTP(AIdFTP: TIdFTP;
  const StrMakeDir: String);
var
  nPos: integer;
  strCurrentDir, strDir: String;
begin
  if not AIdFTP.Connected then
  begin
    exit;
  end;

  nPos := 0;
  while true do
  begin
    nPos := PosEx('/', strMakeDir, nPos + 1);
    if (0 = nPos) then
    begin
      break;
    end;

    strDir := Copy(strMakeDir, 1, nPos);
    try
      AIdFTP.MakeDir(strDir);
    except on e:exception do
      begin
        ShowMessage('디렉토리 생성에 실패하였습니다(1).');
        Exit;
      end;
    end;
  end;

  try
    AIdFTP.MakeDir(strMakeDir);
  except on e:exception do
    begin
      ShowMessage('디렉토리 생성에 실패하였습니다(2).');
      Exit;
    end;
  end;
end;

function TDataModuleForm.FTPDirExists(DirName: string;
  IdFTPComp: TIdFTP): Boolean;
var
  list: TStringList;
  i: Integer;
begin
  try
    try
      IdFTPComp.Connect;
      IdFTPComp.IOHandler.DefStringEncoding := IndyTextEncoding(949);
      if IdFtp.Connected then
      begin
        list := TStringList.Create;
        Result := False;
        try
          IdFTPComp.List(nil);
          for i := 0 to IdFTPComp.DirectoryListing.Count - 1 do
          begin
            if IdFTPComp.DirectoryListing.Items[i].ItemType = ditDirectory then
              list.add(IdFTPComp.DirectoryListing.Items[i].FileName);
          end;
          Result := (list.IndexOf(DirName) > -1);
        finally
          list.Free;
        end;
      end;
      Result := True;
    except
      Result := False;
    end;
  finally
    IdFTPComp.Disconnect;
  end;
end;

function TDataModuleForm.FTPFileExists(FileName: string;
  IdFTPComp: TIdFTP): Boolean;
var
  list: TStringList;
  i: Integer;
begin
  list := TStringList.Create;
  Result := False;
  try
    IdFTPComp.List(list, '', false);
    for i := 0 to list.Count - 1 do
    begin
      if List.Strings[i] = FileName then
      begin
        Result := True;
        Break;
      end;
    end;
  finally
    list.Free;
  end;
end;

// 첨부 파일 정보 관련 기능 ====================================================
// 첨부 파일 정보 조회
function TDataModuleForm.SearchAttatchmentFileInfoById(
  AttachmentFileIdToSearch: Integer): TAttatchmentFileInfo;
var
  AFDStoredProc: TUniStoredProc;
begin
  AFDStoredProc := TUniStoredProc.Create(Self);
  try
    with FDSpSetting(AFDStoredProc, 'usp_AttachmentFile', 'A') do
    begin
      ParamByName('@AttachmentFileID').AsInteger := AttachmentFileIdToSearch;
      Open;

      Result.AttachmentFileID := FieldByName('AttachmentFileID' ).AsInteger;
      Result.SavedFolderPath  := FieldByName('SavedFolderPath'  ).AsString;
      Result.SavedFileName    := FieldByName('SavedFileName'    ).AsString;
      Result.OriginalFileName := FieldByName('OriginalFileName' ).AsString;
    end;
  finally
    AFDStoredProc.Free;
  end;
end;

// 첨부 파일 정보 저장
function TDataModuleForm.SaveAttatchmentFileInfo(
  var AAttatchmentFileInfo: TAttatchmentFileInfo): Boolean;
var
  AFDStoredProc: TUniStoredProc;
begin
  AFDStoredProc := TUniStoredProc.Create(Self);
  try
    try
      with FDSpSetting(AFDStoredProc, 'usp_AttachmentFile', 'B') do
      begin
        ParamByName('@AttachmentFileID'   ).AsInteger := AAttatchmentFileInfo.AttachmentFileID;
        ParamByName('@SavedFolderPath'    ).AsString :=  AAttatchmentFileInfo.SavedFolderPath;
        ParamByName('@SavedFileName'      ).AsString :=  AAttatchmentFileInfo.SavedFileName;
        ParamByName('@OriginalFileName'   ).AsString :=  AAttatchmentFileInfo.OriginalFileName;
        ParamByName('@Writer'             ).AsString := LoginUserName;
        ExecProc;

        AAttatchmentFileInfo.AttachmentFileID := ParamByName('@AttachmentFileID' ).AsInteger;
        AAttatchmentFileInfo.Writer           := ParamByName('@Writer').AsString;
        AAttatchmentFileInfo.WritingDateTime  := ParamByName('@WritingDateTime'  ).AsDateTime;
      end;
      Result := True;
    except on E: Exception do
      Result := False;
    end;
  finally
    AFDStoredProc.Free;
  end;
end;

// 첨부 파일 정보 삭제
function TDataModuleForm.DeleteAttatchmentFileInfo(
  var AAttatchmentFileInfo: TAttatchmentFileInfo): Boolean;
var
  AFDStoredProc: TUniStoredProc;
begin
  AFDStoredProc := TUniStoredProc.Create(Self);
  try
    try
      with FDSpSetting(AFDStoredProc, 'usp_AttachmentFile', 'C') do
      begin
        ParamByName('@AttachmentFileID').AsInteger :=
          AAttatchmentFileInfo.AttachmentFileID;
        ExecProc;
      end;
      Result := True;
    except on E: Exception do
      Result := False;
    end;
  finally
    AFDStoredProc.Free;
  end;
end;

// 첨부 파일 업로드 후 첨부 파일 정보 저장
function TDataModuleForm.UploadAttatchmentFileAndSaveInfo(
  var AAttatchmentFileInfo: TAttatchmentFileInfo): Boolean;
var
  FileExt: string;
begin
  OpenDialog.Filter :=
    'Image/PDF (*.jpg, *.jpeg, *.jpe, *.jfif, *.png, *.pdf)'
    + '| *.jpg; *.jpeg; *.jpe; *.jfif; *.png; *.pdf';

    if OpenDialog.Execute then
    begin
      // 확장자 확인
      FileExt := ExtractFileExt(OpenDialog.FileName);
      // 원본 파일명 확인
      AAttatchmentFileInfo.OriginalFileName :=
        ExtractFileName(OpenDialog.FileName);
      // 저장 파일명 확인
      AAttatchmentFileInfo.SavedFileName :=
        AAttatchmentFileInfo.SavedFileName + FileExt;
      // 첨부 파일 업로드
      if PutFileToFtp(AAttatchmentFileInfo.SavedFolderPath, OpenDialog.FileName,
        AAttatchmentFileInfo.SavedFileName, CheckFtpDirectory(AAttatchmentFileInfo.SavedFolderPath)) then
      begin
        // 첨부 파일 정보 저장
        Result := SaveAttatchmentFileInfo(AAttatchmentFileInfo);
      end
      else
      begin
        Result := False;
      end;
    end;
end;

// 유저별 배경스킨
procedure TDataModuleForm.StyleChangeBackGround(FormName: TForm;
  SkinName: String);
var
  loopcnt, loopcnt2: Integer;
begin
  // 디폴트
  if SkinName = '' then Exit;
  // 해당폼 백그라운드만 스킨을 전체적용한다. // DevExpressStyle
  for loopcnt := 0 to FormName.ComponentCount - 1 do
  begin
    if FormName.Components[loopcnt] is TcxPageControl then
    begin
      // 페이지컨트롤인경우
      if ((FormName.Components[loopcnt] as TcxPageControl).Hint <> 'BaseChildBox') and
         ((FormName.Components[loopcnt] as TcxPageControl).Hint <> 'BaseModalBox') then
      begin
        // 탭라인 배경스킨 적용
        (FormName.Components[loopcnt] as TcxPageControl).LookAndFeel.SkinName := SkinName;
        break;
      end;
    end;
  end;
end;

procedure TDataModuleForm.StyleChangecxButton(FormName: TForm;
  SkinName: String);
var
  loopcnt, loopcnt2: Integer;
begin
  // 디폴트
  if SkinName = '' then Exit;
  // Child, Modal Button만 스킨을 전체적용한다.  // Lilian
  for loopcnt := 0 to FormName.ComponentCount - 1 do
  begin
    if FormName.Components[loopcnt] is TcxGroupBox then
    begin
      // Modal 상속받은 그룹박스인경우.
      if (FormName.Components[loopcnt] as TcxGroupBox).Hint = 'BaseModalBox' then
      begin
        for loopcnt2 := 0 to (FormName.Components[loopcnt] as TcxGroupBox).ControlCount - 1 do
        begin
          // 버튼 스킨 적용
          if (FormName.Components[loopcnt] as TcxGroupBox).Controls[loopcnt2] is TcxButton then
          begin
            ((FormName.Components[loopcnt] as TcxGroupBox).Controls[loopcnt2] as TcxButton).LookAndFeel.SkinName := SkinName;
          end;
        end;
      end;
      // Child 상속받은 그룹박스인경우.
      if (FormName.Components[loopcnt] as TcxGroupBox).Hint = 'BaseChildBox' then
      begin
        for loopcnt2 := 0 to (FormName.Components[loopcnt] as TcxGroupBox).ControlCount - 1 do
        begin
          // 버튼 스킨 적용
          if (FormName.Components[loopcnt] as TcxGroupBox).Controls[loopcnt2] is TcxButton then
          begin
            ((FormName.Components[loopcnt] as TcxGroupBox).Controls[loopcnt2] as TcxButton).LookAndFeel.SkinName := SkinName;
          end;
        end;
      end;
    end;
  end;
end;

procedure TDataModuleForm.StyleChangecxGroupBox(FormName: TForm;
  SkinName: String);
var
  loopcnt, loopcnt2: Integer;
begin
  // 디폴트
  if SkinName = '' then Exit;
  // 해당폼 그룹박스만 스킨을 전체적용한다. // LondonLiquidSky
  for loopcnt := 0 to FormName.ComponentCount - 1 do
  begin
    if FormName.Components[loopcnt] is TcxGroupBox then
    begin
      // 일반폼의 그룹박스인경우
      if ((FormName.Components[loopcnt] as TcxGroupBox).Hint <> 'BaseChildBox') and
         ((FormName.Components[loopcnt] as TcxGroupBox).Hint <> 'BaseModalBox') then
      begin
        // 그룹박스 스킨 적용
        (FormName.Components[loopcnt] as TcxGroupBox).Style.LookAndFeel.SkinName := SkinName;
      end;
    end;
  end;
end;

procedure TDataModuleForm.ActiveSp(Sp: TUniStoredProc);
begin
  if Sp.Active = true then
  begin
    Sp.Refresh;
  end;
end;

procedure TDataModuleForm.InsertHaccpApproval(WriteDate, MenuName,
  Division: string);
begin
  SetFDSpTemp('usp_HaccpApproval');
  with FDSpTemp do
  begin
    ParamByName('@Option'   ).AsString := 'A';
    ParamByName('@WriteDate').AsString := WriteDate;
    ParamByName('@MenuName' ).AsString := MenuName;
    ParamByName('@Division' ).AsString := Division;
    ParamByName('@CheckWriter' ).AsString := LoginUserName;
    ExecProc;
  end;
end;

procedure TDataModuleForm.UpdateHaccpApproval(WriteDate, MenuName, Division,
  CheckWriter, CheckReviewer, CheckConfirmer: string);
begin
  SetFDSpTemp('usp_HaccpApproval');
  with FDSpTemp do
  begin
    ParamByName('@Option'         ).AsString := 'B';
    ParamByName('@WriteDate'      ).AsString := WriteDate;
    ParamByName('@MenuName'       ).AsString := MenuName;
    ParamByName('@Division'       ).AsString := Division;
    ParamByName('@CheckWriter'    ).AsString := CheckWriter;
    ParamByName('@CheckReviewer'  ).AsString := CheckReviewer;
    ParamByName('@CheckConfirmer' ).AsString := CheckConfirmer;
    ExecProc;
  end;
end;

procedure TDataModuleForm.SelectHaccpApproval(WriteDate, MenuName,
  Division: string; CheckWriter, CheckReviewer, CheckConfirmer: TcxTextEdit);
begin
  SetFDSpTemp('usp_HaccpApproval');
  with FDSpTemp do
  begin
    ParamByName('@Option'   ).AsString := 'C';
    ParamByName('@WriteDate').AsString := WriteDate;
    ParamByName('@MenuName' ).AsString := MenuName;
    ParamByName('@Division' ).AsString := Division;
    Open;
    CheckWriter.Text    := FieldByName('CheckWriter'    ).AsString;
    CheckReviewer.Text  := FieldByName('CheckReviewer'  ).AsString;
    CheckConfirmer.Text := FieldByName('CheckConfirmer' ).AsString;
    Close;
  end;
end;

procedure TDataModuleForm.DeleteHaccpApproval(WriteDate, MenuName,
  Division: string);
begin
  SetFDSpTemp('usp_HaccpApproval');
  with FDSpTemp do
  begin
    ParamByName('@Option'   ).AsString := 'D';
    ParamByName('@WriteDate').AsString := WriteDate;
    ParamByName('@MenuName' ).AsString := MenuName;
    ParamByName('@Division' ).AsString := Division;
    ExecProc;
  end
end;

end.
