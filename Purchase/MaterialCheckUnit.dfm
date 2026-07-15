inherited MaterialCheckForm: TMaterialCheckForm
  Caption = #50896#51116#47308#51077#44256#44288#47532
  OnCreate = FormCreate
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    inherited cxBtn_New: TcxButton
      OnClick = cxBtn_NewClick
    end
    inherited cxBtn_Save: TcxButton
      OnClick = cxBtn_SaveClick
    end
    inherited cxBtn_Delete: TcxButton
      OnClick = cxBtn_DeleteClick
    end
    inherited cxBtn_Search: TcxButton
      OnClick = cxBtn_SearchClick
    end
  end
  object cxGBox_Input: TcxGroupBox
    Left = 0
    Top = 35
    Align = alTop
    Caption = #51077#44256' '#51221#48372
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 126
    Width = 1258
    object cxLabel13: TcxLabel
      Left = 4
      Top = 20
      AutoSize = False
      Caption = #51077#44256#51068
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 25
      Width = 90
      AnchorX = 49
      AnchorY = 33
    end
    object cxDEdit_date: TcxDateEdit
      Left = 91
      Top = 20
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnToday]
      Style.Color = 14811105
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
      Width = 200
    end
    object cxLabel14: TcxLabel
      Left = 4
      Top = 68
      AutoSize = False
      Caption = #46020#52629#51068
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 25
      Width = 90
      AnchorX = 49
      AnchorY = 81
    end
    object cxDEdit_Killdate: TcxDateEdit
      Left = 91
      Top = 68
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnToday]
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
      Width = 200
    end
    object cxLabel16: TcxLabel
      Left = 4
      Top = 92
      AutoSize = False
      Caption = #46020#52629#51109#47749
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 25
      Width = 90
      AnchorX = 49
      AnchorY = 105
    end
    object cxLabel17: TcxLabel
      Left = 646
      Top = 20
      AutoSize = False
      Caption = #50868#49569#52264#47049
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 33
      Width = 124
      AnchorX = 708
      AnchorY = 37
    end
    object cxLabel20: TcxLabel
      Left = 4
      Top = 44
      AutoSize = False
      Caption = #51077#44256#49688#47049
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 25
      Width = 90
      AnchorX = 49
      AnchorY = 57
    end
    object cxLabel22: TcxLabel
      Left = 290
      Top = 20
      AutoSize = False
      Caption = #44160#49324#44208#44284
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 97
      Width = 80
      AnchorX = 330
      AnchorY = 69
    end
    object cxLabel23: TcxLabel
      Left = 369
      Top = 20
      AutoSize = False
      Caption = #50896#47308#50728#46020
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 33
      Width = 80
      AnchorX = 409
      AnchorY = 37
    end
    object cxLabel24: TcxLabel
      Left = 369
      Top = 52
      AutoSize = False
      Caption = #44288#45733#44160#49324
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 33
      Width = 80
      AnchorX = 409
      AnchorY = 69
    end
    object cxLabel25: TcxLabel
      Left = 369
      Top = 84
      AutoSize = False
      Caption = #51060#47932#44160#49324
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 33
      Width = 80
      AnchorX = 409
      AnchorY = 101
    end
    object cxLabel26: TcxLabel
      Left = 646
      Top = 52
      AutoSize = False
      Caption = #54032#51221
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 33
      Width = 124
      AnchorX = 708
      AnchorY = 69
    end
    object cxLabel27: TcxLabel
      Left = 646
      Top = 84
      AutoSize = False
      Caption = #44288#47144#49436#47448
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
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 33
      Width = 124
      AnchorX = 708
      AnchorY = 101
    end
    object cxEdit_KillPlace: TcxTextEdit
      Left = 91
      Top = 92
      AutoSize = False
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
      Width = 200
    end
    object cxRGroup_Car: TcxRadioGroup
      AlignWithMargins = True
      Left = 768
      Top = 21
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #50577#54840
          Value = True
        end
        item
          Caption = #48120#55137
          Value = False
        end>
      ItemIndex = 0
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 5
      Height = 31
      Width = 199
    end
    object cxRGroup_GTest: TcxRadioGroup
      AlignWithMargins = True
      Left = 447
      Top = 53
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #51201'   '#54633
          Value = True
        end
        item
          Caption = #48512#51201#54633
          Value = False
        end>
      ItemIndex = 0
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 6
      Height = 31
      Width = 199
    end
    object cxRGroup_ETest: TcxRadioGroup
      AlignWithMargins = True
      Left = 447
      Top = 85
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #51201'   '#54633
          Value = True
        end
        item
          Caption = #48512#51201#54633
          Value = False
        end>
      ItemIndex = 0
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 7
      Height = 31
      Width = 199
    end
    object cxCEdit_InComeQty: TcxCurrencyEdit
      Left = 91
      Top = 44
      AutoSize = False
      Properties.DisplayFormat = ',0.;'
      Style.Color = 14811105
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
      Width = 200
    end
    object cxCEdit_Temp: TcxCurrencyEdit
      Left = 446
      Top = 20
      AutoSize = False
      Properties.DecimalPlaces = 1
      Properties.DisplayFormat = ',0.0 ['#8451'];'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 4
      Height = 33
      Width = 201
    end
    object cxRGroup_Decision: TcxRadioGroup
      AlignWithMargins = True
      Left = 768
      Top = 53
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #51201'   '#54633
          Value = True
        end
        item
          Caption = #48512#51201#54633
          Value = False
        end>
      ItemIndex = 0
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 8
      Height = 31
      Width = 199
    end
    object cxRGroup_File: TcxRadioGroup
      AlignWithMargins = True
      Left = 768
      Top = 85
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #49688' '#47161
          Value = True
        end
        item
          Caption = #48120#49688#47161
          Value = False
        end>
      ItemIndex = 0
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 9
      Height = 31
      Width = 199
    end
    object cxEdit_CheckID: TcxTextEdit
      Left = 1003
      Top = 24
      AutoSize = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 21
      Visible = False
      Height = 25
      Width = 70
    end
  end
  object cxGBox_Search: TcxGroupBox
    Left = 0
    Top = 161
    Align = alTop
    Caption = #44160#49353' '#51312#44148
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    ExplicitTop = 167
    Height = 55
    Width = 1258
    object cxLabel3: TcxLabel
      Left = 3
      Top = 20
      Align = alLeft
      AutoSize = False
      Caption = #51312#54924' '#50672#50900
      Style.BorderStyle = ebsSingle
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      ExplicitHeight = 76
      Height = 26
      Width = 90
      AnchorX = 48
      AnchorY = 33
    end
    object cxDEdit_sdate: TcxDateEdit
      Left = 93
      Top = 20
      Align = alLeft
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnToday]
      Properties.DisplayFormat = 'yyyy-mm-dd'
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
      TabOrder = 1
      ExplicitHeight = 76
      Height = 26
      Width = 120
    end
    object cxDEdit_Edate: TcxDateEdit
      Left = 213
      Top = 20
      Align = alLeft
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnToday]
      Properties.DisplayFormat = 'yyyy-mm-dd'
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
      TabOrder = 2
      ExplicitHeight = 76
      Height = 26
      Width = 120
    end
  end
  object cxGrid_List: TcxGrid
    Left = 0
    Top = 216
    Width = 1258
    Height = 426
    Align = alClient
    TabOrder = 3
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    ExplicitLeft = 213
    ExplicitTop = 240
    ExplicitWidth = 508
    ExplicitHeight = 241
    object cxGridDBTv_List: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = cxGridDBTv_ListCellDblClick
      DataController.DataSource = DS_L
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 35
      OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
      object cxGridDBTv_List_CheckID: TcxGridDBColumn
        DataBinding.FieldName = 'CheckID'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBTv_List_CheckDate: TcxGridDBColumn
        Caption = #51077#44256#51068
        DataBinding.FieldName = 'CheckDate'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTv_ListI_nComeQty: TcxGridDBColumn
        Caption = #51077#44256#47049
        DataBinding.FieldName = 'InComeQty'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.;'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGridDBTv_List_KillDate: TcxGridDBColumn
        Caption = #46020#52629#51068
        DataBinding.FieldName = 'KillDate'
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTv_List_KillPlace: TcxGridDBColumn
        Caption = #46020#52629#51109
        DataBinding.FieldName = 'KillPlace'
        HeaderAlignmentHorz = taCenter
        Width = 250
      end
      object cxGridDBTv_List_MatTemp: TcxGridDBColumn
        Caption = #50896#47308#50728#46020
        DataBinding.FieldName = 'MatTemp'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 1
        Properties.DisplayFormat = ',0.0 ['#8451'];-,0.0 ['#8451']'
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBTv_List_ShippingCar: TcxGridDBColumn
        Caption = #50868#49569#52264#47049
        DataBinding.FieldName = 'ShipCarTxT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGridDBTv_List_GTest: TcxGridDBColumn
        Caption = #44288#45733#44160#49324
        DataBinding.FieldName = 'GTestTxT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGridDBTv_List_ETest: TcxGridDBColumn
        Caption = #51060#47932#44160#49324
        DataBinding.FieldName = 'ETestTxT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGridDBTv_List_Decision: TcxGridDBColumn
        Caption = #54032#51221
        DataBinding.FieldName = 'DecisionTxT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGridDBTv_List_RelationFile: TcxGridDBColumn
        Caption = #44288#47144#49436#47448
        DataBinding.FieldName = 'CheckFileTxt'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
    end
    object cxGridLv_List: TcxGridLevel
      GridView = cxGridDBTv_List
    end
  end
  object DS_L: TDataSource
    DataSet = UniSP_List
    Left = 1144
    Top = 496
  end
  object UniSP_List: TUniStoredProc
    Connection = DataModuleForm.FDConnection
    Left = 1144
    Top = 448
  end
end
