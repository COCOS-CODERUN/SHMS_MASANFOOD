inherited HaccpActionForm: THaccpActionForm
  Caption = #51060#53448' '#48143' '#44060#49440#51312#52824#45236#50669
  OnCreate = FormCreate
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    inherited cxBtn_New: TcxButton
      Visible = False
    end
    inherited cxBtn_Save: TcxButton
      Visible = False
    end
    inherited cxBtn_Delete: TcxButton
      Visible = False
    end
  end
  object cxGBoxMetalSearch: TcxGroupBox
    Left = 0
    Top = 35
    Align = alTop
    Caption = ' '#44160#49353#51312#44148
    Style.Edges = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    Style.TransparentBorder = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 60
    Width = 1258
    object cxDEdit_SDate: TcxDateEdit
      Left = 91
      Top = 18
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
      TabOrder = 0
      Height = 35
      Width = 120
    end
    object cxDEdit_EDate: TcxDateEdit
      Left = 211
      Top = 18
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
      Height = 35
      Width = 120
    end
    object cxLabel1: TcxLabel
      Left = 1
      Top = 18
      Align = alLeft
      AutoSize = False
      Caption = #44160#49353#44592#44036
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
      Height = 35
      Width = 90
      AnchorX = 46
      AnchorY = 36
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 95
    Align = alClient
    Caption = #51060#53448' '#48143' '#44060#49440' '#51312#52824' '#45236#50669
    Style.Edges = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    Style.TransparentBorder = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 547
    Width = 1258
  end
  object cxGridHaccpActionMetal: TcxGrid
    Left = 0
    Top = 95
    Width = 1258
    Height = 547
    Align = alClient
    TabOrder = 3
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    ExplicitLeft = 9
    ExplicitTop = 26
    ExplicitWidth = 1246
    ExplicitHeight = 464
    object cxGridDBTvHaccpActionMetal: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DsMetal
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGridDBTvHaccpActionMetal_Order: TcxGridDBColumn
        Caption = #49692#48264
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        OnGetDisplayText = cxGridDBTvHaccpActionMetal_OrderGetDisplayText
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 40
      end
      object cxGridDBTvHaccpActionMetal_Time: TcxGridDBColumn
        Caption = #49884#44036
        DataBinding.FieldName = 'MetalDatetime'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 150
      end
      object cxGridDBTvHaccpActionMetal_Name: TcxGridDBColumn
        Caption = #49444#48708#47749
        DataBinding.FieldName = 'MetalName'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 150
      end
      object cxGridDBTvHaccpActionMetal_Result: TcxGridDBColumn
        Caption = #44160#52636' '#44208#44284
        DataBinding.FieldName = 'MetalCheckResult'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 80
      end
      object cxGridDBTvHaccpActionMetal_Basic: TcxGridDBColumn
        Caption = #54620#44228' '#44592#51456' '#51060#53448' '#49324#50976
        DataBinding.FieldName = 'MetalBasicReason'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 250
      end
      object cxGridDBTvHaccpActionMetal_Contents: TcxGridDBColumn
        Caption = #51312#52824' '#45236#50669
        DataBinding.FieldName = 'MetalActionContents'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Width = 400
      end
    end
    object cxGridLvHaccpActionMetal: TcxGridLevel
      GridView = cxGridDBTvHaccpActionMetal
    end
  end
  object DsMetal: TDataSource
    DataSet = FDqMetal
    Left = 1184
    Top = 480
  end
  object FDqMetal: TUniQuery
    SQLInsert.Strings = (
      'select MetalDateTime '
      '      ,MetalName '
      '      ,MetalCheckResult'
      '      ,MetalBasicReason '
      '      ,MetalActionContents'
      'from CCPMetalActionContents '
      'where MetalDateTime between :SDate and :EDate'
      'order by MetalDateTime desc')
    SQL.Strings = (
      'select MetalDateTime '
      '      ,MetalName '
      '      ,MetalCheckResult'
      '      ,MetalBasicReason '
      '      ,MetalActionContents'
      'from CCPMetalActionContents '
      'order by MetalDateTime desc')
    Left = 1120
    Top = 480
  end
end
