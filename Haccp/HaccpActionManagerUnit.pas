unit HaccpActionManagerUnit;

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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxGroupBox,
  cxRadioGroup, cxMemo, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCheckBox;

type
  THaccpActionManagerForm = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxDEditDate: TcxDateEdit;
    cxDEditOKDate: TcxDateEdit;
    cxEditCode: TcxTextEdit;
    cxEditDept: TcxTextEdit;
    cxEditPlanAmount: TcxTextEdit;
    cxLbl78: TcxLabel;
    cxLbl79: TcxLabel;
    cxLbl80: TcxLabel;
    cxLbl81: TcxLabel;
    cxLbl82: TcxLabel;
    cxLbl84: TcxLabel;
    cxLbl85: TcxLabel;
    cxLbl86: TcxLabel;
    cxLbl88: TcxLabel;
    cxLbl89: TcxLabel;
    cxLbl90: TcxLabel;
    cxLbl92: TcxLabel;
    cxLbl93: TcxLabel;
    cxLbl94: TcxLabel;
    cxLbl95: TcxLabel;
    cxLblTab14: TcxLabel;
    cxMemoPlanContents: TcxMemo;
    cxMemoReason: TcxMemo;
    cxMemoResultContents: TcxMemo;
    cxRGroupPlanDivison: TcxRadioGroup;
    cxRGroupResultDivision: TcxRadioGroup;
    cxChkBoxImprove: TcxCheckBox;
    cxChkBoxPrevent: TcxCheckBox;
    cxChkBoxT14Happen1: TcxCheckBox;
    cxChkBoxT14Happen7: TcxCheckBox;
    cxChkBoxT14Happen2: TcxCheckBox;
    cxChkBoxT14Happen8: TcxCheckBox;
    cxChkBoxT14Happen3: TcxCheckBox;
    cxChkBoxT14Happen9: TcxCheckBox;
    cxChkBoxT14Happen4: TcxCheckBox;
    cxChkBoxT14Happen10: TcxCheckBox;
    cxChkBoxT14Happen5: TcxCheckBox;
    cxChkBoxT14Happen11: TcxCheckBox;
    cxChkBoxT14Happen6: TcxCheckBox;
    cxChkBoxT14Happen12: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    ActionID : Integer;
    procedure ClearProc;
    procedure SaveProc;
    procedure DeleteProc;
    procedure GridListSetting;
    procedure DataBindingToGrid;
  end;

var
  HaccpActionManagerForm: THaccpActionManagerForm;

implementation

{$R *.dfm}

uses DataModule, HaccpGeneralUnit;

procedure THaccpActionManagerForm.ClearProc;
begin
  datamoduleform.ClearEditIncxGroupBox(cxGroupBox1);
end;

procedure THaccpActionManagerForm.DataBindingToGrid;
begin
  with DataModuleForm.FDQuerySetting(nil) do begin
    sql.Add(' exec usp_HaccpActionManager @option = :option, @ActionID = :ActionID ');
    ParamByName('option').AsString    := 'C';
    ParamByName('ActionID').AsInteger := ActionID;
    open;
//    sql.Add(' exec usp_HaccpActionManager @option = :option, @CheckDate = :CheckDate, @Division = :division ');
//    ParamByName('option').AsString     := 'C';
//    ParamByName('CheckDate').AsString  := DataModule.HaccpSelected_Date;
//    ParamByName('division').AsString   := DataModule.HaccpSelected_Division;
//    open;

    if RecordCount = 0 then
    begin
      ClearProc;
    end
    else begin
      cxEditCode.Text          := FieldByName('ActionID').AsString;
      cxChkBoxImprove.Checked  := FieldByName('Improve').AsBoolean;
      cxChkBoxPrevent.Checked  := FieldByName('Prevent').AsBoolean;
      cxDEditDate.Text         := FieldByName('CheckDate').AsString;
      cxEditDept.Text          := FieldByName('Department').AsString;

      cxChkBoxT14Happen1.Checked  := FieldByName('HappenDivision1').AsBoolean;
      cxChkBoxT14Happen2.Checked  := FieldByName('HappenDivision2').AsBoolean;
      cxChkBoxT14Happen3.Checked  := FieldByName('HappenDivision3').AsBoolean;
      cxChkBoxT14Happen4.Checked  := FieldByName('HappenDivision4').AsBoolean;
      cxChkBoxT14Happen5.Checked  := FieldByName('HappenDivision5').AsBoolean;
      cxChkBoxT14Happen6.Checked  := FieldByName('HappenDivision6').AsBoolean;
      cxChkBoxT14Happen7.Checked  := FieldByName('HappenDivision7').AsBoolean;
      cxChkBoxT14Happen8.Checked  := FieldByName('HappenDivision8').AsBoolean;
      cxChkBoxT14Happen9.Checked  := FieldByName('HappenDivision9').AsBoolean;
      cxChkBoxT14Happen10.Checked := FieldByName('HappenDivision10').AsBoolean;
      cxChkBoxT14Happen11.Checked := FieldByName('HappenDivision11').AsBoolean;
      cxChkBoxT14Happen12.Checked := FieldByName('HappenDivision12').AsBoolean;
      cxMemoReason.Text           := FieldByName('HappenReason').AsString;

      cxRGroupPlanDivison.EditValue  := FieldByName('PlanDivison').Value;
      cxMemoPlanContents.Text        := FieldByName('PlanContents').AsString;
      cxEditPlanAmount.Text          := FieldByName('PlanAmount').AsString;

      cxDEditOKDate.Text               := FieldByName('OKDate').AsString;
      cxRGroupResultDivision.EditValue := FieldByName('ResultDevision').Value;
      cxMemoResultContents.Text        := FieldByName('ResultReason').AsString;
    end;
  end;
end;

procedure THaccpActionManagerForm.DeleteProc;
begin
  if MessageDlg(DataModule.MessageToDelete, mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with DataModuleForm.FDSpSetting(nil, 'usp_HaccpActionManager', 'B') do
    begin
      ParamByName('@ActionID').value  := cxEditCode.Text;
      try
        ExecProc;
      except
        ShowMessage(MessageToError);
      end;
    end;
  end;
end;

procedure THaccpActionManagerForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HaccpActionManagerForm := nil;
  Action := CaFree;
end;

procedure THaccpActionManagerForm.GridListSetting;
begin

end;

procedure THaccpActionManagerForm.SaveProc;
begin
  if cxDEditDate.Text = '' then
  begin
    ShowMessage('일자를 입력하세요.');
    Exit;
  end;

  with DataModuleForm.FDSpSetting(nil, 'usp_HaccpActionManager', 'A') do
  begin
    ParamByName('@ACtionID').AsInteger          := StrToIntDef(cxEditCode.Text, 0);
    ParamByName('@Improve').AsBoolean           := cxChkBoxImprove.Checked;
    ParamByName('@Prevent').AsBoolean           := cxChkBoxPrevent.Checked;
    ParamByName('@CheckDate').AsString          := cxDEditDate.Text;
    ParamByName('@Department').AsString         := cxEditDept.Text;
    ParamByName('@HappenDivision1').AsBoolean   := cxChkBoxT14Happen1.Checked;
    ParamByName('@HappenDivision2').AsBoolean   := cxChkBoxT14Happen2.Checked;
    ParamByName('@HappenDivision3').AsBoolean   := cxChkBoxT14Happen3.Checked;
    ParamByName('@HappenDivision4').AsBoolean   := cxChkBoxT14Happen4.Checked;
    ParamByName('@HappenDivision5').AsBoolean   := cxChkBoxT14Happen5.Checked;
    ParamByName('@HappenDivision6').AsBoolean   := cxChkBoxT14Happen6.Checked;
    ParamByName('@HappenDivision7').AsBoolean   := cxChkBoxT14Happen7.Checked;
    ParamByName('@HappenDivision8').AsBoolean   := cxChkBoxT14Happen8.Checked;
    ParamByName('@HappenDivision9').AsBoolean   := cxChkBoxT14Happen9.Checked;
    ParamByName('@HappenDivision10').AsBoolean  := cxChkBoxT14Happen10.Checked;
    ParamByName('@HappenDivision11').AsBoolean  := cxChkBoxT14Happen11.Checked;
    ParamByName('@HappenDivision12').AsBoolean  := cxChkBoxT14Happen12.Checked;
    ParamByName('@HappenReason').AsString       := cxMemoReason.Text;
    ParamByName('@PlanDivison').Value           := cxRGroupPlanDivison.EditValue;
    ParamByName('@PlanContents').AsString       := cxMemoPlanContents.Text;
    ParamByName('@PlanAmount').AsString         := cxEditPlanAmount.Text;
    ParamByName('@OKDate').AsString             := cxDEditOKDate.Text;
    ParamByName('@ResultDevision').Value        := cxRGroupResultDivision.EditValue;
    ParamByName('@ResultReason').AsString       := cxMemoResultContents.Text;
    ParamByName('@Writer').AsString             := LoginUserName;
    ParamByName('@Modifier').AsString           := LoginUserName;
    try
      ExecProc;
    except
      SaveToError := True;
    end;

//    cxEditCode.Text := ParamByName('@ACtionID').AsString;
  end;

end;

end.
