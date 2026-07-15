inherited BOMForm: TBOMForm
  Caption = 'BOM '#44288#47532
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
      Left = 367
      OnClick = cxBtn_DeleteClick
      ExplicitLeft = 367
    end
    inherited cxBtn_Print: TcxButton
      Left = 454
      ExplicitLeft = 454
    end
    inherited cxBtn_Excel: TcxButton
      Left = 541
      ExplicitLeft = 541
    end
    inherited cxBtn_Register: TcxButton
      Left = 280
      Visible = True
      OnClick = cxBtn_RegisterClick
      ExplicitLeft = 280
    end
    inherited cxBtn_Search: TcxButton
      Visible = False
    end
  end
  object cxGBox_List: TcxGroupBox
    Left = 0
    Top = 35
    Align = alLeft
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 607
    Width = 510
    object cxGrid_List: TcxGrid
      Left = 3
      Top = 63
      Width = 504
      Height = 516
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Green'
      object cxGridDBTv_List: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.ShowClearButton = False
        FindPanel.ShowFindButton = False
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = cxGridDBTv_ListCellDblClick
        DataController.DataSource = DS_L
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 40
        OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
        object cxGridDBTv_List_type: TcxGridDBColumn
          Caption = #54408#47785#44396#48516
          DataBinding.FieldName = 'TypeName'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTv_List_NAME: TcxGridDBColumn
          Caption = #54408#47749
          DataBinding.FieldName = 'ItemName'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTv_List_STD: TcxGridDBColumn
          Caption = #44508#44201
          DataBinding.FieldName = 'ItemStd'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTv_List_YN: TcxGridDBColumn
          Caption = 'BOM'#50668#48512
          DataBinding.FieldName = 'BomYn'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object cxGridDBTv_List_ID: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'ItemID'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBTv_List_Unit: TcxGridDBColumn
          DataBinding.FieldName = 'ItemUnit'
          DataBinding.IsNullValueType = True
        end
        object cxGridDBTv_List_UPrice: TcxGridDBColumn
          DataBinding.FieldName = 'ItemUPrice'
          DataBinding.IsNullValueType = True
        end
      end
      object cxGridLv_List: TcxGridLevel
        GridView = cxGridDBTv_List
      end
    end
    object cxGBox_search: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #47785#47197' '#44160#49353
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 60
      Width = 504
      object cxLabel8: TcxLabel
        Left = 3
        Top = 20
        Align = alLeft
        AutoSize = False
        Caption = #54408#47785' '#44396#48516
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
        Height = 31
        Width = 90
        AnchorX = 48
        AnchorY = 36
      end
      object cxLCBBox_type: TcxLookupComboBox
        Left = 93
        Top = 20
        TabStop = False
        Align = alLeft
        AutoSize = False
        Properties.Alignment.Horz = taCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 20
        Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
        Properties.KeyFieldNames = 'BCDID'
        Properties.ListColumns = <
          item
            FieldName = 'BCDName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_Type
        Properties.OnEditValueChanged = cxLCBBox_typePropertiesEditValueChanged
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 1
        Height = 31
        Width = 120
      end
    end
    object cxLabel3: TcxLabel
      Left = 3
      Top = 579
      Align = alBottom
      AutoSize = False
      Caption = 'BOM '#46321#47197' '#54624' '#51228#54408' '#49440#53469#51008' '#45908#48660' '#53364#47533' '#54616#49464#50836' !!!'
      Style.BorderStyle = ebsSingle
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      Style.TextColor = clBlue
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 25
      Width = 504
      AnchorX = 255
      AnchorY = 592
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 518
    Top = 35
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 607
    Width = 740
    object cxGBox_Info: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #51228#54408' '#51221#48372
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 60
      Width = 734
      object cxLabel1: TcxLabel
        Left = 3
        Top = 20
        Align = alLeft
        AutoSize = False
        Caption = #51228#54408#47749
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
        Height = 31
        Width = 90
        AnchorX = 48
        AnchorY = 36
      end
      object cxEdit_name: TcxTextEdit
        Left = 93
        Top = 20
        Align = alLeft
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        Properties.UseLeftAlignmentOnEditing = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 1
        Height = 31
        Width = 250
      end
      object cxLabel2: TcxLabel
        Left = 343
        Top = 20
        Align = alLeft
        AutoSize = False
        Caption = #44508#44201
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
        Height = 31
        Width = 90
        AnchorX = 388
        AnchorY = 36
      end
      object cxEdit_std: TcxTextEdit
        Left = 433
        Top = 20
        Align = alLeft
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        Properties.UseLeftAlignmentOnEditing = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 3
        Height = 31
        Width = 150
      end
      object cxEdit_ID: TcxTextEdit
        Left = 583
        Top = 20
        Align = alLeft
        AutoSize = False
        Enabled = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.UseLeftAlignmentOnEditing = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 4
        Visible = False
        Height = 31
        Width = 64
      end
    end
    object cxGrid_Bom: TcxGrid
      Left = 3
      Top = 63
      Width = 734
      Height = 516
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      ExplicitLeft = 59
      ExplicitHeight = 541
      object cxGridTv_Bom: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = cxGridTv_BomCellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 30
        OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
        object cxGridTv_Bom_name: TcxGridColumn
          Caption = #54408#47785
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 250
        end
        object cxGridTv_Bom_std: TcxGridColumn
          Caption = #44508#44201
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 100
        end
        object cxGridTv_Bom_unit: TcxGridColumn
          Caption = #45800#50948
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 70
        end
        object cxGridTv_Bom_qty: TcxGridColumn
          Caption = #49688#47049
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = ',0.0000;-,0.0000'
          Properties.OnEditValueChanged = cxGridTv_Bom_qtyPropertiesEditValueChanged
          HeaderAlignmentHorz = taCenter
          Styles.Content = MainForm.cxStyle1
          Width = 80
        end
        object cxGridTv_Bom_uprice: TcxGridColumn
          Caption = #45800#44032
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Styles.Content = MainForm.cxStyle1
          Width = 80
        end
        object cxGridTv_Bom_amount: TcxGridColumn
          Caption = #44552#50529
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Styles.Content = MainForm.cxStyle1
          Width = 90
        end
        object cxGridTv_Bom_remark: TcxGridColumn
          Caption = #48708#44256
          HeaderAlignmentHorz = taCenter
          Styles.Content = MainForm.cxStyle1
          Width = 150
        end
        object cxGridTv_Bom_ID: TcxGridColumn
          Caption = 'ID'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
      end
      object cxGridLv_Bom: TcxGridLevel
        GridView = cxGridTv_Bom
      end
    end
    object cxLabel4: TcxLabel
      Left = 3
      Top = 579
      Align = alBottom
      AutoSize = False
      Caption = #49440#53469' '#54408#47785' '#49325#51228#45716' '#45908#48660#53364#47533#51077#45768#45796'. !!!'
      Style.BorderStyle = ebsSingle
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      Style.TextColor = clBlue
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      ExplicitLeft = 6
      ExplicitTop = 582
      Height = 25
      Width = 734
      AnchorX = 370
      AnchorY = 592
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 510
    Top = 35
    Width = 8
    Height = 607
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGBox_List
  end
  object UniQuery_type: TUniQuery
    SQL.Strings = (
      'exec usp_BasicCode @option = '#39'B'#39' ,@BasicCodeID = 23')
    ObjectView = True
    Left = 48
    Top = 214
  end
  object DS_Type: TDataSource
    DataSet = UniQuery_type
    Left = 48
    Top = 270
  end
  object DS_L: TDataSource
    DataSet = UniQuery_List
    Left = 336
    Top = 486
  end
  object UniQuery_List: TUniQuery
    SQL.Strings = (
      'SELECT *, dbo.GetBCDName(ItemType) As TypeName FROM MasterItem')
    ObjectView = True
    Left = 336
    Top = 430
  end
end
