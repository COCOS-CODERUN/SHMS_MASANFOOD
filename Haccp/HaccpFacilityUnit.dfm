object HaccpFacilityForm: THaccpFacilityForm
  Left = 0
  Top = 0
  Align = alClient
  Caption = #49444#48708#46321#47197#44288#47532#45824#51109
  ClientHeight = 651
  ClientWidth = 948
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 17
  object cxGBoxFacilityT04: TcxGroupBox
    Left = 0
    Top = 0
    Align = alLeft
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 0
    Height = 651
    Width = 280
    object cxGroupBox11: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #49444#48708' '#44160#49353
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 79
      Width = 274
      object cxLabel68: TcxLabel
        Left = 4
        Top = 20
        AutoSize = False
        Caption = #44396#48516
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
        Height = 25
        Width = 80
        AnchorX = 44
        AnchorY = 33
      end
      object cxCBBoxDivisionS: TcxComboBox
        Left = 83
        Top = 20
        AutoSize = False
        Properties.Alignment.Horz = taCenter
        Properties.OnEditValueChanged = cxCBBoxDivisionSPropertiesEditValueChanged
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
        Width = 180
      end
      object cxLabel69: TcxLabel
        Left = 4
        Top = 44
        AutoSize = False
        Caption = #49444#48708#47749
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
        Height = 25
        Width = 80
        AnchorX = 44
        AnchorY = 57
      end
      object cxEditSearch: TcxTextEdit
        Left = 83
        Top = 44
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
        OnKeyDown = cxEditSearchKeyDown
        Height = 25
        Width = 180
      end
    end
    object cxGridFacility: TcxGrid
      Left = 3
      Top = 82
      Width = 274
      Height = 566
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      object cxGridDBTvFacility: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = cxGridDBTvFacilityCellDblClick
        DataController.DataSource = DS_F
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGridDBTvFacilityNo: TcxGridDBColumn
          Caption = #44344#47532#48264#54840
          DataBinding.FieldName = 'ManageNo'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTvFacilityName: TcxGridDBColumn
          Caption = #49444#48708#47749
          DataBinding.FieldName = 'Facility'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTvFacilityStandard: TcxGridDBColumn
          Caption = #49324#50577
          DataBinding.FieldName = 'Standard'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTvFacilityDivision: TcxGridDBColumn
          Caption = #49444#48708#44396#48516
          DataBinding.FieldName = 'Division'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTvFacilityID: TcxGridDBColumn
          AlternateCaption = '60'
          Caption = #44288#47532#53076#46300
          DataBinding.FieldName = 'FacilityID'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
      end
      object cxGridLvFacility: TcxGridLevel
        GridView = cxGridDBTvFacility
      end
    end
  end
  object cxSplitter3: TcxSplitter
    Left = 280
    Top = 0
    Width = 8
    Height = 651
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGBoxFacilityT04
  end
  object cxGBoxFacilityInfoT04: TcxGroupBox
    Left = 288
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 651
    Width = 660
    object cxGBoxInputT04: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #49444#48708' '#51221#48372
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 449
      Width = 654
      object cxLabel70: TcxLabel
        Left = 3
        Top = 20
        AutoSize = False
        Caption = #44288#47532#48264#54840
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
        Height = 25
        Width = 120
        AnchorX = 63
        AnchorY = 33
      end
      object cxLabel71: TcxLabel
        Left = 3
        Top = 44
        AutoSize = False
        Caption = #49444#48708#47749
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
        Height = 25
        Width = 120
        AnchorX = 63
        AnchorY = 57
      end
      object cxEditManageNo: TcxTextEdit
        Left = 122
        Top = 20
        AutoSize = False
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
        Width = 199
      end
      object cxEditFacility: TcxTextEdit
        Left = 122
        Top = 44
        AutoSize = False
        Style.Color = 14811105
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 6
        Height = 25
        Width = 199
      end
      object cxLabelOriginalT04: TcxLabel
        Left = 3
        Top = 68
        AutoSize = False
        Caption = #44396#51077'.'#44288#47532'.AS'
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
        Height = 40
        Width = 120
        AnchorX = 63
        AnchorY = 88
      end
      object cxLabel74: TcxLabel
        Left = 3
        Top = 107
        AutoSize = False
        Caption = #50672#46973#52376
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
        Height = 25
        Width = 120
        AnchorX = 63
        AnchorY = 120
      end
      object cxLabel75: TcxLabel
        Left = 3
        Top = 131
        AutoSize = False
        Caption = #51216#44160#54637#47785
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
        Height = 49
        Width = 120
        AnchorX = 63
        AnchorY = 156
      end
      object cxLabel76: TcxLabel
        Left = 122
        Top = 131
        AutoSize = False
        Caption = #51216#44160#51452#44592
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
        Height = 25
        Width = 199
        AnchorX = 222
        AnchorY = 144
      end
      object cxLabel77: TcxLabel
        Left = 122
        Top = 155
        AutoSize = False
        Caption = #51068#49345#51216#44160
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
        Height = 25
        Width = 100
        AnchorX = 172
        AnchorY = 168
      end
      object cxLabel78: TcxLabel
        Left = 221
        Top = 155
        AutoSize = False
        Caption = #51221#44592#51216#44160
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
        Height = 25
        Width = 100
        AnchorX = 271
        AnchorY = 168
      end
      object cxEditOriginal: TcxTextEdit
        Left = 122
        Top = 68
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 10
        Height = 40
        Width = 199
      end
      object cxEditTel: TcxTextEdit
        Left = 122
        Top = 107
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 14
        Height = 25
        Width = 199
      end
      object cxEditCheckItme1: TcxTextEdit
        Left = 3
        Top = 179
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 17
        Height = 25
        Width = 120
      end
      object cxEditCheckItme2: TcxTextEdit
        Left = 3
        Top = 203
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 20
        Height = 25
        Width = 120
      end
      object cxEditCheckItme3: TcxTextEdit
        Left = 3
        Top = 227
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 23
        Height = 25
        Width = 120
      end
      object cxEditUseItem1: TcxTextEdit
        Left = 3
        Top = 275
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 26
        Height = 25
        Width = 120
      end
      object cxEditDailyCheck1: TcxTextEdit
        Left = 122
        Top = 179
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 18
        Height = 25
        Width = 100
      end
      object cxEditDailyCheck2: TcxTextEdit
        Left = 122
        Top = 203
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
        Height = 25
        Width = 100
      end
      object cxEditDailyCheck3: TcxTextEdit
        Left = 122
        Top = 227
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 24
        Height = 25
        Width = 100
      end
      object cxEditCheckPoint1: TcxTextEdit
        Left = 122
        Top = 275
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 29
        Height = 25
        Width = 199
      end
      object cxEditRoutine1: TcxTextEdit
        Left = 221
        Top = 179
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 19
        Height = 25
        Width = 100
      end
      object cxEditRoutine2: TcxTextEdit
        Left = 221
        Top = 203
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 22
        Height = 25
        Width = 100
      end
      object cxEditRoutine3: TcxTextEdit
        Left = 221
        Top = 227
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 25
        Height = 25
        Width = 100
      end
      object cxLabel79: TcxLabel
        Left = 3
        Top = 251
        AutoSize = False
        Caption = #49548#47784#54408#47749
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
        Height = 25
        Width = 120
        AnchorX = 63
        AnchorY = 264
      end
      object cxLabel80: TcxLabel
        Left = 122
        Top = 251
        AutoSize = False
        Caption = #44288#47532#48169#48277
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
        Height = 25
        Width = 199
        AnchorX = 222
        AnchorY = 264
      end
      object cxEditUseItem2: TcxTextEdit
        Left = 3
        Top = 299
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 30
        Height = 25
        Width = 120
      end
      object cxEditCheckPoint2: TcxTextEdit
        Left = 122
        Top = 299
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 31
        Height = 25
        Width = 199
      end
      object cxEditUseItem3: TcxTextEdit
        Left = 3
        Top = 323
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 32
        Height = 25
        Width = 120
      end
      object cxEditCheckPoint3: TcxTextEdit
        Left = 122
        Top = 323
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 33
        Height = 25
        Width = 199
      end
      object cxImageFacility: TcxImage
        Left = 320
        Top = 107
        Properties.GraphicClassName = 'TdxSmartImage'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 15
        Height = 241
        Width = 313
      end
      object cxGBox_Check: TcxGroupBox
        Left = 3
        Top = 373
        Align = alBottom
        PanelStyle.Active = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 39
        Height = 67
        Width = 648
        object cxLabel72: TcxLabel
          Left = 2
          Top = 2
          AutoSize = False
          Caption = ' '#45380#50900#51068
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
          Height = 25
          Width = 100
          AnchorX = 52
          AnchorY = 15
        end
        object cxLabelCheckT04: TcxLabel
          Left = 2
          Top = 26
          AutoSize = False
          Caption = #51221#44592#51216#44160' '#44208#44284
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
          Height = 40
          Width = 100
          AnchorX = 52
          AnchorY = 46
        end
        object cxLabel81: TcxLabel
          Left = 200
          Top = 2
          AutoSize = False
          Caption = #54869#51064
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
          Height = 25
          Width = 120
          AnchorX = 260
          AnchorY = 15
        end
        object cxDEditCheckDate: TcxDateEdit
          Left = 101
          Top = 2
          AutoSize = False
          Properties.DateButtons = [btnClear, btnToday]
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
          Width = 120
        end
        object cxEditOK: TcxTextEdit
          Left = 319
          Top = 2
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
          Width = 172
        end
        object cxMemoContents: TcxMemo
          Left = 101
          Top = 26
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Lilian'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Lilian'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Lilian'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Lilian'
          TabOrder = 7
          Height = 40
          Width = 390
        end
        object cxBtn_HistorySave: TcxButton
          AlignWithMargins = True
          Left = 491
          Top = 3
          Width = 70
          Height = 62
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = #51200#51109
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Lilian'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000B744558745469746C6500536176653BF9E8F9090000020349444154
            785E7D52316B145110FEDEE6EE9A03EF2E57284A6C6DAC42C0262185829D0A36
            16820AFE010BADC47F60AB2022585A588875B01041822158D858081204956872
            DC5DD6DD3733CF99D93DD713CCC0F7BEF776E7FB66E6ED0654912982633EFCFC
            9F67A2603B2CAC9DBFB2810CEB4B274EE1E4D271B0303832A24450A94C113112
            2846ECED8F301A7DB59CD76F379E9F6D9901425A5F3DB38C4F9FC7B87BE70690
            60E1E49C80BC886049B87EF33656964F6373EBFD1A8096190466017352B0ABA6
            BF22C4D5C9C5972E5CD632010F1F3F0553C4CECE17088B8F9ED99292B898884C
            EFE2548B270711D942867E7F114717BB9E0308582A83962D2C6EE0EE2925EFA6
            245671899205ED561B9D4EA77EC7CA6D887063904CCCE29735C923BEEF4F91C4
            A771DC7FF008C7865DEF88896B23FA6310BC03226FEFEAB55B9A203E63823143
            5490445C3883D05F23F8FCC228F26F180C06B3CB730059BD57866F20229EDF18
            D42358BC78F60487C5EAB98B5A6408E63903B1F6BD358B9FE302F06D729610BC
            B2AE20B63CF9D780602072579FB9F98B6082E6DF8D044932FF156CA648EC89F7
            5E7E844802299851B3C26667F30BCAF31D043B3091DFC3917E0F5C895C1C4D3C
            03E095C79303A4CA20984111CBFCDDE6D6F6CA70D0C39B571F2A7164AF129589
            14C65E59B0FB631765596C03C8030033E929BA8A0C4D8443F6A2982AF67E037E
            F6AC9379188DF20000000049454E44AE426082}
          TabOrder = 4
          OnClick = cxBtn_HistorySaveClick
        end
        object cxBtn_HistoryDel: TcxButton
          AlignWithMargins = True
          Left = 562
          Top = 3
          Width = 70
          Height = 61
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = #49325#51228
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Lilian'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            6100000029744558745469746C650052656D6F76653B44656C6574653B426172
            733B526962626F6E3B5374616E646172643B635648300000026449444154785E
            A551494C5351146568194A2B583746627F458902118892AAB811369246043462
            8556D032A82D831664486D8C3FB40B8128E3C68998A289625720314469022591
            26566BC484681C22C6012B5A1556C7F73EBF507FDCF193F3DFBBE7DC7BDE7BF7
            86005811B820E80B2310F16B6880E4F7E10462AAF3F1B2014F889E961FBB307D
            AAE2EBC8FEDC137C72280FB1AB546BA0DAE4F11296C491940F36089F2CD5593F
            DFE8C682771453E71B31909D6D207C044D76166B8C339D1789E6C4A76B5D18D7
            15D9A869B04184A744E7FBED72C03FD08EF9B13BF09CADC1F50C55CDE08182DA
            B7ED562CB807E1BFDB06FF701F3C47753E52131D6C20B2EFCA343C31EAF1D3D1
            89B93E167F1EF5E37155255ED92C989F70E0C74D96E3C734F9B89498749A1E2A
            EC41644F4A6AF5B8F6107C7D2D98ED6D847FE80A7EDDBF8A6FBD4D98ED69C088
            3A0BD678A589E44A843D089844DB141B4D0FF3D5F8D251878FAC9EA08C5B87F6
            EC44B37C6D23C991F2530AF99F81E472BAAA7E42AFC307B612EFEA0E2FC1A52D
            446B5A4633C991090D968A5B93D24D4EAD06336DF5982E5363BA9C07D9BF674F
            62B4F020AC9B53976EF1CF145A36249B1EE4E5E28DA5022F8AB23045706B1383
            DB498974CFE1F599620CAB736061B63409A720ED5624CFBD341E81B760379EE5
            65A23F410183487ACE208EB1F42728E1CDCFE4F0BC641FBA9894395213176C10
            655EA3EC706CDF06778E0A76C57A5447C8E87B63298C91B166BB92817BEF0EDC
            4BDB8A0639D34DF8986083309A58278BEFB0C631BEAAC5E255940F6886A8D566
            A27DAF95ADEB22B15CD883808984208E209A8F859A9C6F6078F0145684BF98E8
            BFC080A205F60000000049454E44AE426082}
          TabOrder = 5
          OnClick = cxBtn_HistoryDelClick
        end
        object cxEditCodeT41: TcxTextEdit
          Left = 413
          Top = 28
          AutoSize = False
          Enabled = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Lilian'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Lilian'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Lilian'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Lilian'
          TabOrder = 8
          Visible = False
          Height = 25
          Width = 76
        end
      end
      object cxEditCodeT04: TcxTextEdit
        Left = 245
        Top = 20
        AutoSize = False
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 2
        Visible = False
        Height = 25
        Width = 76
      end
      object cxLabel73: TcxLabel
        Left = 320
        Top = 20
        AutoSize = False
        Caption = #44396#48516
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
        Height = 25
        Width = 80
        AnchorX = 360
        AnchorY = 33
      end
      object cxCBBoxDivision: TcxComboBox
        Left = 399
        Top = 20
        AutoSize = False
        Properties.Alignment.Horz = taCenter
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 4
        Height = 25
        Width = 234
      end
      object cxLabel82: TcxLabel
        Left = 320
        Top = 44
        AutoSize = False
        Caption = #49324#50577
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
        Height = 40
        Width = 80
        AnchorX = 360
        AnchorY = 64
      end
      object cxEditStandard: TcxTextEdit
        Left = 399
        Top = 44
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 8
        Height = 40
        Width = 234
      end
      object cxLabel83: TcxLabel
        Left = 320
        Top = 83
        AutoSize = False
        Caption = #49444#52824#51109#49548
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
        Height = 25
        Width = 80
        AnchorX = 360
        AnchorY = 96
      end
      object cxEditLocation: TcxTextEdit
        Left = 399
        Top = 83
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 12
        Height = 25
        Width = 234
      end
      object cxLabel84: TcxLabel
        Left = 3
        Top = 347
        AutoSize = False
        Caption = #48708#44256
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
        Height = 25
        Width = 120
        AnchorX = 63
        AnchorY = 360
      end
      object cxEditRemark: TcxTextEdit
        Left = 122
        Top = 347
        AutoSize = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 34
        Height = 25
        Width = 511
      end
    end
    object cxGridHistory: TcxGrid
      Left = 3
      Top = 452
      Width = 654
      Height = 196
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      object cxGridDBTvHistory: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = cxGridDBTvHistoryCellDblClick
        DataController.DataSource = DS_H
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGridDBTvHistoryDate: TcxGridDBColumn
          Caption = #45380#50900#51068
          DataBinding.FieldName = 'CheckDate'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTvHistoryContents: TcxGridDBColumn
          Caption = #51221#44592#51216#44160' '#44208#44284'/'#49688#47532#45236#50669
          DataBinding.FieldName = 'Contents'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 450
        end
        object cxGridDBTvHistoryOK: TcxGridDBColumn
          Caption = #54869#51064
          DataBinding.FieldName = 'ManagerOK'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTvHistoryID: TcxGridDBColumn
          AlternateCaption = '60'
          Caption = #44288#47532#53076#46300
          DataBinding.FieldName = 'FacilityCheckID'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
      end
      object cxGridLvHistory: TcxGridLevel
        GridView = cxGridDBTvHistory
      end
    end
  end
  object DS_F: TDataSource
    DataSet = FDSP_Facility
    Left = 136
    Top = 354
  end
  object DS_H: TDataSource
    DataSet = FDSP_History
    Left = 488
    Top = 578
  end
  object FDSP_Facility: TUniStoredProc
    ObjectView = True
    Left = 136
    Top = 304
  end
  object FDSP_History: TUniStoredProc
    ObjectView = True
    Left = 488
    Top = 528
  end
  object UniQuery_comm: TUniQuery
    Connection = DataModuleForm.FDConnection
    Left = 768
    Top = 296
  end
end
