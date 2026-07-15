object HaccpHealthForm: THaccpHealthForm
  Left = 0
  Top = 0
  Align = alClient
  Caption = #48372#44148#51613' '#44288#47532#45824#51109
  ClientHeight = 655
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 17
  object cxGBox_Input: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 84
    Width = 815
    object cxEdit_Name: TcxTextEdit
      Left = 290
      Top = 3
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.UseLeftAlignmentOnEditing = False
      Style.Color = clWindow
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 1
      Height = 25
      Width = 110
    end
    object cxDEdit_NextDate: TcxDateEdit
      Left = 290
      Top = 27
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.UseLeftAlignmentOnEditing = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 3
      Height = 25
      Width = 110
    end
    object cxDEdit_CheckDate: TcxDateEdit
      Left = 92
      Top = 27
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnEditValueChanged = cxDEdit_CheckDatePropertiesEditValueChanged
      Style.Color = clWindow
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 2
      Height = 25
      Width = 110
    end
    object cxEdit_FileName: TcxTextEdit
      Left = 90
      Top = 51
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 5
      Height = 30
      Width = 310
    end
    object cxLabel114: TcxLabel
      Left = 201
      Top = 27
      AutoSize = False
      Caption = #52264#44592#44160#51652#51068
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.BorderStyle = ebsSingle
      StyleDisabled.Color = clBtnFace
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.TextColor = clWindowText
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clBtnFace
      Properties.WordWrap = True
      Height = 25
      Width = 90
      AnchorX = 246
      AnchorY = 40
    end
    object cxLabel115: TcxLabel
      Left = 3
      Top = 51
      AutoSize = False
      Caption = #48372#44148#51613
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.BorderStyle = ebsSingle
      StyleDisabled.Color = clBtnFace
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.TextColor = clWindowText
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clBtnFace
      Properties.WordWrap = True
      Height = 30
      Width = 90
      AnchorX = 48
      AnchorY = 66
    end
    object cxLabel113: TcxLabel
      Left = 3
      Top = 27
      AutoSize = False
      Caption = #44160#51652#51068
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.BorderStyle = ebsSingle
      StyleDisabled.Color = clBtnFace
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.TextColor = clWindowText
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clBtnFace
      Properties.WordWrap = True
      Height = 25
      Width = 90
      AnchorX = 48
      AnchorY = 40
    end
    object cxLabel111: TcxLabel
      Left = 3
      Top = 3
      AutoSize = False
      Caption = #48512#49436#47749
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.BorderStyle = ebsSingle
      StyleDisabled.Color = clBtnFace
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.TextColor = clWindowText
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clBtnFace
      Properties.WordWrap = True
      Height = 25
      Width = 90
      AnchorX = 48
      AnchorY = 16
    end
    object cxLabel112: TcxLabel
      Left = 201
      Top = 3
      AutoSize = False
      Caption = #49457#47749
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.BorderStyle = ebsSingle
      StyleDisabled.Color = clBtnFace
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.TextColor = clWindowText
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clBtnFace
      Properties.WordWrap = True
      Height = 25
      Width = 90
      AnchorX = 246
      AnchorY = 16
    end
    object cxLabel110: TcxLabel
      Left = 399
      Top = 3
      AutoSize = False
      Caption = #48708#44256
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clBlack
      StyleDisabled.BorderStyle = ebsSingle
      StyleDisabled.Color = clBtnFace
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.TextColor = clWindowText
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ShadowedColor = clBtnFace
      Properties.WordWrap = True
      Height = 49
      Width = 90
      AnchorX = 444
      AnchorY = 28
    end
    object cxBtn_FileDel: TcxButton
      Left = 664
      Top = 52
      Width = 131
      Height = 28
      Hint = 'cxDBEdit_tab7_chk'
      Caption = #54028#51068' '#49325#51228
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000020744558745469746C650052656D6F76653B47726F75703B466F6F74
        65723B44656C6574654677D13D0000025549444154785E7D924D48945114869F
        3B4E2A16B848FB418B867E2C1B370392459415935114226481FD68A4465851D2
        CFAE288D16D622A94DB9340ADA14A6516AB988A0A002750A3221698A741075C6
        BF66BE7B82CB5C864C3C1F7CEFDD9CF77DEEB94701AE7B8F3E7628972A044040
        8C8A5121F113143A1AEB3A79387F878838006E408D8D470BCF55E4DB7EEC61B6
        6A687AB7155000D600C71144A0B9256072B48068416BC17C5A8844A638737403
        8EA39969A01CC7D050E2CF31E8281051A0E218564470B4E67F022D80F0B0ADD7
        A48980160189D308842393D41EDB68099841A04DD3FE9DB92655B0A512033404
        E0C466213006C083966E9B687025DE6509CE576EC2D1731094EEF1A2124F6614
        A37123E62210A1F949B74DB4BB80774D262B97A5333C3A49EEEA459414E570E3
        22494A2917A00D818E5FE1E0DEF528BB4C0A52DD2EA25F7A18B9524F465E1EB1
        EC72D29E36F3A968F7D7A1E9A972FFEBCEF6C41E6868EC0C624A835250569049
        F476239EE3C544027DF4D79C22B3209705670F2D8DD4DD6F023C8620A6351A41
        1CC744DB7718198FC2926C422F5F90E15BCB8AD26DB8C283FC6A6D233838D461
        67808E0F311CFE63147110145D8110FE8A137CAEA9C29722A4A4A7110E8678DF
        FA2178EBE740AD9D8159592DC2B5033976E01877972670F92AAB367B71274F10
        EEFF416AFA7C7CFBB6649D7EDCD570642050E50674747AAAF342DDF3EDB6D13A
        5497F9F8FDEA2DCB8BF3E87BD343EFB709D665B9C9F27A181E1BDD05B814A080
        797627F8B792EA177B8A3CEE94BBDFC7C7DAEF84872E55A72DBC9E0CFEC158AC
        F2E664E8D95F9BFE534907AFF16F0000000049454E44AE426082}
      TabOrder = 6
      OnClick = cxBtn_FileDelClick
    end
    object cxCBBox_Department: TcxComboBox
      Left = 92
      Top = 3
      AutoSize = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 0
      Height = 25
      Width = 110
    end
    object cxBtn_Load: TcxButton
      AlignWithMargins = True
      Left = 399
      Top = 52
      Width = 131
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Caption = #54028#51068' '#52286#44592
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001D744558745469746C65004C6F61643B53656C6563743B
        466F6C6465723B4F70656E96333E78000000A449444154785EA5CEB10DC2400C
        85E16B99818221B2000B58A24B66A06401A4E496A0600A84449728A264031A26
        C80AE619C914E1153E527C72F57E39A96A31696F0A15A4E8C07530807AA424F0
        009DFB0C72CE024A08D8F8040A4FF3F3C177C0AD3078410F0DAC7D6CDB4860B3
        6BAF17BBB0B5918B06EA7D773EDA9DC7A381D191380970028920013298EE0701
        655840D82012E0E378A07C0CE281BFC6902CB0C4F2C01BC649A89EA2B44B2F00
        00000049454E44AE426082}
      TabOrder = 13
      OnClick = cxBtn_LoadClick
    end
    object cxBtn_open: TcxButton
      AlignWithMargins = True
      Left = 532
      Top = 52
      Width = 131
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Caption = #54028#51068' '#48372#44592
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000015744558745469746C6500446F776E6C6F61643B4172726F773BEC8F
        1AD00000023949444154785E75534D681341187DB3C98A37C18358A197D2AA85
        A220463C252D6AC5D26841F0E2A958905044114F9E440A82964A2E22A2077B11
        29D22262A968D5A412436D14FCA944A836C664B149BAA469F3373FCE245D1C08
        79F0F83EBE8FF786997D4B84105020844003A9B111DC691C9D010D63CF7A6AB3
        D1A7DDB3B2673AE56C5AED640F1D6E68E0655315C22AEEEEE1817BD071637CB0
        5719E42CCA9B19902BA75F186A46CB0C25B6827CF52B8400B618DB50A9504898
        2343615599A49084FE06AE6BE33E2A38A054E7CF5C855DFA0281BAC19D870F6A
        122E77C1CB5153EA68C31B247EAE4EEC6DDF8D813E3FAC7C0CAB450B76318D84
        3D0FFFA983E8DCD381CF0BD664B32BF0F8C75C4088E861BEF56FAB30F3E09C41
        080E0182D29A81278F13C9F4D27A60F30A0D5F41CC4D256D2B59189C9BFD2DB5
        04555691AC8231819793299EB58A438B914C0680D00D74F0E9FB4BA1E5B87DEB
        5BCC06E50C8C732C84B358FE51188BCD58AFB52C341AF407DA95338D3E4F8F7C
        7A6FCFAFA42AF89328E2C31B3BB618C95E07503D74729780829E284585E3E7DA
        107CB75FB5AE034777EEF30FB7157ACEB66E7478B6ABA1EB76B80B9EFE165D07
        A7D1236C6CD2E5E96BB9D0E5DB7171332F2E67A71BE839708F4EF95E11837819
        15608C4B8A1AB9EC29ADD78D751A0A5E8A1D7172A027D1CC66CADEDE639DC8E5
        53A08C81720EE690A94A313351F0AA6C493618885F71FBEDDD78C4C79D931505
        A4B07E3AE7808C79A859902A8F6E7E3F01C0D47E65557508C9AA64C919FC03C9
        195863EE9BB9A50000000049454E44AE426082}
      TabOrder = 14
      OnClick = cxBtn_openClick
    end
    object cxMemo_Remark: TcxMemo
      Left = 486
      Top = 3
      Lines.Strings = (
        'cxMemo_Remark')
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 4
      Height = 49
      Width = 310
    end
    object cxCEdit_ID: TcxCurrencyEdit
      Left = 664
      Top = 21
      Properties.DisplayFormat = ',0;'
      TabOrder = 15
      Visible = False
      Width = 77
    end
  end
  object cxGrid_List: TcxGrid
    Left = 0
    Top = 84
    Width = 815
    Height = 571
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    object cxGridDBTv_List: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = cxGridDBTv_ListCellDblClick
      DataController.DataSource = DS_L
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGridDBTv_List_Seq: TcxGridDBColumn
        Caption = 'No.'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDisplayText = cxGridDBTv_List_SeqGetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object cxGridDBTv_List_Department: TcxGridDBColumn
        Caption = #48512#49436#47749
        DataBinding.FieldName = 'Department'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGridDBTv_List_Name: TcxGridDBColumn
        Caption = #49457#47749
        DataBinding.FieldName = 'StaffName'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTv_List_CheckDate: TcxGridDBColumn
        Caption = #44160#51652#51068
        DataBinding.FieldName = 'CheckDate'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object cxGridDBTv_List_NextDate: TcxGridDBColumn
        Caption = #52264#44592#44160#51652#51068
        DataBinding.FieldName = 'NextDate'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object cxGridDBTv_List_RestDay: TcxGridDBColumn
        Caption = #51092#50668#51068
        DataBinding.FieldName = 'RemainDay'
        DataBinding.IsNullValueType = True
        OnCustomDrawCell = cxGridDBTv_List_RestDayCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBTv_List_FileName: TcxGridDBColumn
        Caption = #48372#44148#51613' '#54028#51068
        DataBinding.FieldName = 'FileName'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 250
      end
      object cxGridDBTv_List_Remark: TcxGridDBColumn
        Caption = #48708#44256
        DataBinding.FieldName = 'Remark'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object cxGridDBTv_List_Writer: TcxGridDBColumn
        Caption = #51089#49457#51088
        DataBinding.FieldName = 'Writer'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGridDBTv_List_Reviewer: TcxGridDBColumn
        Caption = #44160#53664#51088
        DataBinding.FieldName = 'Reviewer'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGridDBTv_List_Confirmer: TcxGridDBColumn
        Caption = #49849#51064#51088
        DataBinding.FieldName = 'Confirmer'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object cxGridDBTv_List_Code: TcxGridDBColumn
        Caption = #44288#47532#53076#46300
        DataBinding.FieldName = 'HealthID'
        DataBinding.IsNullValueType = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
    end
    object cxGridLv_List: TcxGridLevel
      GridView = cxGridDBTv_List
    end
  end
  object DS_L: TDataSource
    DataSet = UniSP_L
    Left = 627
    Top = 378
  end
  object UniSP_L: TUniStoredProc
    Left = 624
    Top = 328
  end
end
