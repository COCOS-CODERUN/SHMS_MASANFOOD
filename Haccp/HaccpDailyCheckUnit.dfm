object HaccpDailyCheckForm: THaccpDailyCheckForm
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'HaccpDailyCheck'
  ClientHeight = 661
  ClientWidth = 1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object cxGrid_List: TcxGrid
    Left = 0
    Top = 40
    Width = 1080
    Height = 539
    Align = alClient
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
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGridTv_List_period: TcxGridColumn
        Caption = #51452#44592
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 100
      end
      object cxGridTv_List_division: TcxGridColumn
        Caption = #44396#48516
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.CellMerging = True
        Width = 100
      end
      object cxGridTv_List_CheckItem: TcxGridColumn
        Caption = #51216#44160' '#54637#47785
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 540
      end
      object cxGridTv_List_CheckReport: TcxGridColumn
        Caption = #44592#47197'( '#50696'/'#50500#45768#50724')'
        PropertiesClassName = 'TcxRadioGroupProperties'
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = #50696
            Value = 'OK'
          end
          item
            Caption = #50500#45768#50836
            Value = 'NO'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 120
        OnHeaderClick = cxGridTv_List_CheckReportHeaderClick
      end
      object cxGridTv_List_CheckNote: TcxGridColumn
        Caption = #44592#47197#51089#49457'('#54596#50836#49884')'
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
        Width = 180
      end
      object cxGridTv_List_CheckID: TcxGridColumn
        DataBinding.ValueType = 'Integer'
        Visible = False
      end
    end
    object cxGridLv_List: TcxGridLevel
      GridView = cxGridTv_List
    end
  end
  object cxGBox_Top: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 40
    Width = 1080
    object cxLabel20: TcxLabel
      Left = 3
      Top = 3
      Align = alLeft
      AutoSize = False
      Caption = #51216#44160#51068#51088
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
      Height = 34
      Width = 90
      AnchorX = 48
      AnchorY = 20
    end
    object cxDEdit_date: TcxDateEdit
      Left = 93
      Top = 3
      Align = alLeft
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
      Height = 34
      Width = 120
    end
    object cxRGroup_Type: TcxRadioGroup
      AlignWithMargins = True
      Left = 304
      Top = 4
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #51068#51068#51216#44160
          Value = #51068#51068
        end
        item
          Caption = #51452#44036'~'#50672#44036' '#51216#44160
          Value = #51452#44036#50672#44036
        end>
      Properties.OnChange = cxRGroup_TypePropertiesChange
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 2
      Height = 32
      Width = 260
    end
    object cxLabel6: TcxLabel
      Left = 213
      Top = 3
      Align = alLeft
      AutoSize = False
      Caption = #51216#44160#44396#48516
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
      Height = 34
      Width = 90
      AnchorX = 258
      AnchorY = 20
    end
  end
  object cxGBox_bottom: TcxGroupBox
    Left = 0
    Top = 579
    Align = alBottom
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 82
    Width = 1080
    object cxLabel1: TcxLabel
      Left = 3
      Top = 4
      AutoSize = False
      Caption = #53945#51060#49324#54637
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
      Width = 500
      AnchorX = 253
      AnchorY = 17
    end
    object cxLabel5: TcxLabel
      Left = 502
      Top = 4
      AutoSize = False
      Caption = #44060#49440' '#48143' '#51312#52824' '#45236#50669
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
      Width = 500
      AnchorX = 752
      AnchorY = 17
    end
    object cxMemo_content: TcxMemo
      Left = 502
      Top = 28
      Lines.Strings = (
        'cxMemo1')
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 2
      Height = 49
      Width = 500
    end
    object cxMemo_remark: TcxMemo
      Left = 3
      Top = 28
      Lines.Strings = (
        'cxMemo1')
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 3
      Height = 49
      Width = 500
    end
  end
  object UniQuery_comm: TUniQuery
    Left = 336
    Top = 336
  end
end
