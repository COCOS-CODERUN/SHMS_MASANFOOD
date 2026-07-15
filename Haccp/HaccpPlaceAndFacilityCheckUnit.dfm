object HaccpPlaceAndFacilityCheckForm: THaccpPlaceAndFacilityCheckForm
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = []
  Caption = 'HaccpPlaceAndFacilityCheckForm'
  ClientHeight = 651
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object cxGBox_Top: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 0
    Height = 65
    Width = 749
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
      Height = 30
      Width = 90
      AnchorX = 48
      AnchorY = 18
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
      Height = 30
      Width = 120
    end
    object cxLabel4: TcxLabel
      Left = 3
      Top = 33
      Align = alBottom
      AutoSize = False
      Caption = ' '#8251' '#54217#44032' '#48143' '#44592#47197' '#48169#48277' : '#50577#54840' '#9675', '#48512#51201#54633' X'#51004#47196' '#44592#51116
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
      Height = 29
      Width = 743
      AnchorY = 48
    end
  end
  object cxGrid_List: TcxGrid
    Left = 0
    Top = 65
    Width = 749
    Height = 504
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
      OptionsView.GroupByBox = False
      object cxGridTv_List_PlaceName: TcxGridColumn
        Caption = #51089#50629#49892#47749
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.CellMerging = True
        Width = 100
      end
      object cxGridTv_List_division: TcxGridColumn
        Caption = #44396#48516
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.CellMerging = True
        Width = 100
      end
      object cxGridTv_List_CheckItem: TcxGridColumn
        Caption = #54217#44032' '#45236#50857
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 480
      end
      object cxGridTv_List_CheckReport: TcxGridColumn
        Caption = #44592#47197
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items.Strings = (
          #9675
          #9651
          'X')
        HeaderAlignmentHorz = taCenter
        Width = 80
        OnHeaderClick = cxGridTv_List_CheckReportHeaderClick
      end
      object cxGridTv_List_CheckID: TcxGridColumn
        DataBinding.ValueType = 'Integer'
      end
    end
    object cxGridLv_List: TcxGridLevel
      GridView = cxGridTv_List
    end
  end
  object cxGBox_bottom: TcxGroupBox
    Left = 0
    Top = 569
    Align = alBottom
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 82
    Width = 749
    object cxLabel5: TcxLabel
      Left = 3
      Top = 3
      Align = alTop
      AutoSize = False
      Caption = #44288#47532' '#44592#51456' '#51060#53448' '#49884' '#51312#52824#45236#50669
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
      Width = 743
      AnchorX = 375
      AnchorY = 16
    end
    object cxMemo_content: TcxMemo
      Left = 3
      Top = 28
      Align = alClient
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
      TabOrder = 1
      Height = 51
      Width = 743
    end
  end
  object UniQuery_comm: TUniQuery
    Left = 368
    Top = 328
  end
end
