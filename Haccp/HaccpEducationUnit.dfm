object HaccpEducationForm: THaccpEducationForm
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'HaccpEducationForm'
  ClientHeight = 628
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 17
  object cxGBox_input: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 0
    Height = 628
    Width = 723
    object cxDEdit_EduDate: TcxDateEdit
      Left = 350
      Top = 27
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
      Width = 120
    end
    object cxEdit_Attendee: TcxTextEdit
      Left = 102
      Top = 51
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 4
      Width = 150
    end
    object cxEdit_Count: TcxTextEdit
      Left = 350
      Top = 51
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 5
      Width = 120
    end
    object cxEdit_EduTime: TcxTextEdit
      Left = 568
      Top = 27
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 3
      Text = 'cxTextEdit1'
      Width = 150
    end
    object cxEdit_Instructor: TcxTextEdit
      Left = 102
      Top = 27
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 1
      Width = 150
    end
    object cxEdit_NonCount: TcxTextEdit
      Left = 568
      Top = 51
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 6
      Text = 'cxTextEdit1'
      Width = 150
    end
    object cxImg_Edu1: TcxImage
      Left = 469
      Top = 147
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 14
      Height = 140
      Width = 249
    end
    object cxLabel10: TcxLabel
      Left = 3
      Top = 3
      AutoSize = False
      Caption = #44368#50977#48516#50556
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
      Width = 100
      AnchorX = 53
      AnchorY = 16
    end
    object cxLabel11: TcxLabel
      Left = 3
      Top = 27
      AutoSize = False
      Caption = #44053#49324
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
      Width = 100
      AnchorX = 53
      AnchorY = 40
    end
    object cxLabel12: TcxLabel
      Left = 3
      Top = 51
      AutoSize = False
      Caption = #52280#49437#45824#49345
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
      Width = 100
      AnchorX = 53
      AnchorY = 64
    end
    object cxLabel13: TcxLabel
      Left = 469
      Top = 27
      AutoSize = False
      Caption = #44368#50977#49884#44036
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
      Width = 100
      AnchorX = 519
      AnchorY = 40
    end
    object cxLabel14: TcxLabel
      Left = 469
      Top = 51
      AutoSize = False
      Caption = #48520#52280#51088
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
      Width = 100
      AnchorX = 519
      AnchorY = 64
    end
    object cxLabel15: TcxLabel
      Left = 3
      Top = 425
      AutoSize = False
      Caption = ' '#9633' '#48520#52280#51088', '#48520#52280#49324#50976', '#51312#52824#44228#54925
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
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Height = 25
      Width = 715
      AnchorY = 438
    end
    object cxLabel17: TcxLabel
      Left = 3
      Top = 123
      AutoSize = False
      Caption = ' '#9633' '#44368#50977' '#45236#50857
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
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Height = 25
      Width = 467
      AnchorY = 136
    end
    object cxLabel2: TcxLabel
      Left = 251
      Top = 27
      AutoSize = False
      Caption = #44368#50977#51068#51088
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
      Width = 100
      AnchorX = 301
      AnchorY = 40
    end
    object cxLabel4: TcxLabel
      Left = 251
      Top = 51
      AutoSize = False
      Caption = #52280#49437#51088
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
      Width = 100
      AnchorX = 301
      AnchorY = 64
    end
    object cxLabel86: TcxLabel
      Left = 469
      Top = 123
      AutoSize = False
      Caption = ' '#9633' '#44368#50977' '#49324#51652
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
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Height = 25
      Width = 249
      AnchorY = 136
    end
    object cxRGroup_Type: TcxRadioGroup
      AlignWithMargins = True
      Left = 103
      Top = 4
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Alignment = alCenterCenter
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = #50948#49373
        end
        item
          Caption = 'HACCP'
        end
        item
          Caption = #51649#47924
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 23
      Width = 614
    end
    object cxLabel88: TcxLabel
      Left = 3
      Top = 75
      AutoSize = False
      Caption = #44368#50977#51088#47308
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
      Width = 100
      AnchorX = 53
      AnchorY = 88
    end
    object cxLabel89: TcxLabel
      Left = 3
      Top = 99
      AutoSize = False
      Caption = #49436#47749#51088#47308
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
      Width = 100
      AnchorX = 53
      AnchorY = 112
    end
    object cxEdit_EduFileName: TcxTextEdit
      Left = 102
      Top = 75
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 31
      Width = 368
    end
    object cxEdit_SignFileName: TcxTextEdit
      Left = 102
      Top = 99
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 32
      Width = 368
    end
    object cxImg_Edu2: TcxImage
      Left = 469
      Top = 286
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 19
      Height = 140
      Width = 249
    end
    object cxMemo_EduContents: TcxMemo
      Left = 3
      Top = 147
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 13
      Height = 279
      Width = 467
    end
    object cxMemo_Absentee: TcxMemo
      Left = 3
      Top = 470
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 16
      Height = 154
      Width = 200
    end
    object cxMemo_Reason: TcxMemo
      Left = 201
      Top = 470
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 17
      Height = 154
      Width = 319
    end
    object cxMemo_Conduct: TcxMemo
      Left = 518
      Top = 470
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 18
      Height = 154
      Width = 200
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 448
      AutoSize = False
      Caption = #49457#47749
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
      Width = 200
      AnchorX = 103
      AnchorY = 461
    end
    object cxLabel3: TcxLabel
      Left = 201
      Top = 448
      AutoSize = False
      Caption = #48520#52280' '#49324#50976' '#48143' '#51312#52824' '#44228#54925
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
      Width = 319
      AnchorX = 361
      AnchorY = 461
    end
    object cxLabel5: TcxLabel
      Left = 518
      Top = 448
      AutoSize = False
      Caption = #44368#50977' '#49892#49884
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
      Width = 200
      AnchorX = 618
      AnchorY = 461
    end
    object cxBtn_Load2: TcxButton
      AlignWithMargins = True
      Left = 470
      Top = 100
      Width = 82
      Height = 23
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Caption = #54028#51068#52286#44592
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
      TabOrder = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtn_Load2Click
    end
    object cxBtn_open2: TcxButton
      AlignWithMargins = True
      Left = 553
      Top = 100
      Width = 82
      Height = 23
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Caption = #54028#51068#48372#44592
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
      TabOrder = 11
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtn_open2Click
    end
    object cxBtn_FileDel2: TcxButton
      Left = 636
      Top = 100
      Width = 81
      Height = 23
      Hint = 'cxDBEdit_tab7_chk'
      Caption = #54028#51068#49325#51228
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
      TabOrder = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtn_FileDel2Click
    end
    object cxBtn_Load1: TcxButton
      AlignWithMargins = True
      Left = 470
      Top = 76
      Width = 82
      Height = 23
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Caption = #54028#51068#52286#44592
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
      TabOrder = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtn_Load1Click
    end
    object cxBtn_open1: TcxButton
      AlignWithMargins = True
      Left = 553
      Top = 76
      Width = 82
      Height = 23
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Caption = #54028#51068#48372#44592
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
      TabOrder = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtn_open1Click
    end
    object cxBtn_FileDel1: TcxButton
      Left = 636
      Top = 76
      Width = 81
      Height = 23
      Hint = 'cxDBEdit_tab7_chk'
      Caption = #54028#51068#49325#51228
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
      TabOrder = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtn_FileDel1Click
    end
    object cxCEdit_ID: TcxCurrencyEdit
      Left = 386
      Top = 154
      Properties.DisplayFormat = ',0;'
      TabOrder = 36
      Visible = False
      Width = 77
    end
  end
end
