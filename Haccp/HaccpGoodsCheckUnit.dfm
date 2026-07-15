object HaccpGoodsCheckForm: THaccpGoodsCheckForm
  Left = 0
  Top = 0
  Caption = #50756#51228#54408#44160#49324#51068#51648
  ClientHeight = 624
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object cxGrid_List: TcxGrid
    Left = 2
    Top = 208
    Width = 643
    Height = 401
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    object cxGridTv_List: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = cxGridTv_ListCellDblClick
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGridTv_ListColumn1: TcxGridColumn
        Caption = #49692#48264
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        OnGetDisplayText = cxGridTv_ListColumn1GetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object cxGridTv_List_ID: TcxGridColumn
        Visible = False
      end
      object cxGridTv_List_Goods: TcxGridColumn
        Caption = #51228#54408#47749
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 136
      end
      object cxGridTv_List_Check1: TcxGridColumn
        Caption = #50808#44288
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridTv_List_Check2: TcxGridColumn
        Caption = #49892#47553' '#49345#53468
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridTv_List_Check3: TcxGridColumn
        Caption = #47579
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridTv_List_Check4: TcxGridColumn
        Caption = #49373#49328' '#51068#51088
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridTv_ListColumn2: TcxGridColumn
        Caption = #52712#49548
        OnGetProperties = cxGridTv_ListColumn2GetProperties
        HeaderAlignmentHorz = taCenter
        Options.ShowEditButtons = isebAlways
        Width = 50
      end
      object cxGridTv_List_reviewer: TcxGridColumn
        Visible = False
      end
      object cxGridTv_List_CheckDate: TcxGridColumn
        Visible = False
      end
      object cxGridTv_List_Remarks: TcxGridColumn
        Visible = False
      end
    end
    object cxGridLv_List: TcxGridLevel
      GridView = cxGridTv_List
    end
  end
  object cxGBox_Input: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 206
    Width = 645
    object cxLabel13: TcxLabel
      Left = 5
      Top = 2
      AutoSize = False
      Caption = #49373#49328', '#44160#49324#51068#51088
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
      Height = 30
      Width = 124
      AnchorX = 67
      AnchorY = 17
    end
    object cxDEdit_mdate: TcxDateEdit
      Left = 126
      Top = 2
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
      TabOrder = 1
      Height = 30
      Width = 186
    end
    object cxLabel16: TcxLabel
      Left = 318
      Top = 2
      AutoSize = False
      Caption = #51228#54408#47749
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
      Height = 30
      Width = 124
      AnchorX = 380
      AnchorY = 17
    end
    object cxEdit_Goods: TcxTextEdit
      Left = 439
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
      Height = 30
      Width = 201
    end
    object cxLabel1: TcxLabel
      Left = 5
      Top = 59
      AutoSize = False
      Caption = #48516#49437#54637#47785
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
      Height = 87
      Width = 91
      AnchorX = 51
      AnchorY = 103
    end
    object cxLabel2: TcxLabel
      Left = 93
      Top = 59
      AutoSize = False
      Caption = #50808#44288
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
      Height = 30
      Width = 139
      AnchorX = 163
      AnchorY = 74
    end
    object cxLabel3: TcxLabel
      Left = 93
      Top = 86
      AutoSize = False
      Caption = #51060#47932' '#48512#52265#51060' '#50630#51012' '#44163
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
      Height = 30
      Width = 139
      AnchorX = 163
      AnchorY = 101
    end
    object cxLabel4: TcxLabel
      Left = 229
      Top = 59
      AutoSize = False
      Caption = #49892#47553' '#49345#53468
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
      Height = 30
      Width = 139
      AnchorX = 299
      AnchorY = 74
    end
    object cxLabel5: TcxLabel
      Left = 229
      Top = 86
      AutoSize = False
      Caption = #50577#54840
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
      Height = 30
      Width = 139
      AnchorX = 299
      AnchorY = 101
    end
    object cxLabel6: TcxLabel
      Left = 365
      Top = 86
      AutoSize = False
      Caption = #51201#54633#54624' '#44163
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
      Height = 30
      Width = 139
      AnchorX = 435
      AnchorY = 101
    end
    object cxLabel7: TcxLabel
      Left = 365
      Top = 59
      AutoSize = False
      Caption = #47579
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
      Height = 30
      Width = 139
      AnchorX = 435
      AnchorY = 74
    end
    object cxLabel8: TcxLabel
      Left = 501
      Top = 86
      AutoSize = False
      Caption = #45817#51068
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
      Height = 30
      Width = 139
      AnchorX = 571
      AnchorY = 101
    end
    object cxLabel9: TcxLabel
      Left = 501
      Top = 59
      AutoSize = False
      Caption = #49373#49328' '#51068#51088
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
      Height = 30
      Width = 139
      AnchorX = 571
      AnchorY = 74
    end
    object cxRGroup_Check1: TcxRadioGroup
      AlignWithMargins = True
      Left = 94
      Top = 114
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'O'
          Value = True
        end
        item
          Caption = 'X'
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
      TabOrder = 13
      Height = 31
      Width = 137
    end
    object cxRGroup_Check2: TcxRadioGroup
      AlignWithMargins = True
      Left = 230
      Top = 114
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'O'
          Value = True
        end
        item
          Caption = 'X'
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
      TabOrder = 14
      Height = 31
      Width = 137
    end
    object cxRGroup_Check4: TcxRadioGroup
      AlignWithMargins = True
      Left = 502
      Top = 114
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'O'
          Value = True
        end
        item
          Caption = 'X'
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
      TabOrder = 15
      Height = 31
      Width = 137
    end
    object cxRGroup_Check3: TcxRadioGroup
      AlignWithMargins = True
      Left = 366
      Top = 114
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'O'
          Value = True
        end
        item
          Caption = 'X'
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
      TabOrder = 16
      Height = 31
      Width = 137
    end
    object cxLabel10: TcxLabel
      Left = 5
      Top = 32
      AutoSize = False
      Caption = #44160' '#49324' '#44208' '#44284
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
      Height = 30
      Width = 499
      AnchorX = 255
      AnchorY = 47
    end
    object cxLabel11: TcxLabel
      Left = 501
      Top = 32
      AutoSize = False
      Caption = '* '#44160#49324#51452#44592' : '#49373#49328' '#49884
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
      Height = 30
      Width = 139
      AnchorX = 571
      AnchorY = 47
    end
    object cxCEdit_ID: TcxCurrencyEdit
      Left = 390
      Top = 38
      Properties.DisplayFormat = '0;'
      TabOrder = 19
      Visible = False
      Width = 77
    end
    object cxLabel12: TcxLabel
      Left = 5
      Top = 143
      AutoSize = False
      Caption = #48708#44256
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
      Height = 60
      Width = 91
      AnchorX = 51
      AnchorY = 173
    end
    object cxMemo_Remarks: TcxMemo
      Left = 94
      Top = 144
      TabOrder = 21
      Height = 58
      Width = 545
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 448
    Top = 368
    PixelsPerInch = 96
    object cxEditRepository1Label1: TcxEditRepositoryLabel
    end
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Caption = #49325#51228
          Default = True
          Kind = bkText
        end>
      Properties.ViewStyle = vsButtonsAutoWidth
      Properties.OnButtonClick = cxEditRepository1ButtonItem1PropertiesButtonClick
    end
  end
end
