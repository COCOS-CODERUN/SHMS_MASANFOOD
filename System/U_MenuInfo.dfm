inherited FrmMenuInfo: TFrmMenuInfo
  Caption = #47700#45684' '#44288#47532
  OnCreate = FormCreate
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    inherited cxBtn_New: TcxButton
      OnClick = cxBtn_NewClick
    end
    inherited cxBtn_Save: TcxButton
      OnClick = cxBtn_SaveClick
    end
    inherited cxBtn_Search: TcxButton
      Visible = False
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 35
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 110
    Width = 1258
    object cxGBox_search: TcxGroupBox
      Left = 3
      Top = 3
      Align = alLeft
      Caption = #44160#49353' '#51312#44148
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 104
      Width = 265
      object cxLabel9: TcxLabel
        Left = 3
        Top = 21
        AutoSize = False
        Caption = #47700#51064#47700#45684
        Style.BorderStyle = ebsUltraFlat
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
        Height = 30
        Width = 130
        AnchorX = 68
        AnchorY = 36
      end
      object cxCBBox_Main: TcxComboBox
        Left = 3
        Top = 50
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 12
        Properties.OnEditValueChanged = edtMAINPropertiesEditValueChanged
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
        Width = 130
      end
      object cxLabel10: TcxLabel
        Left = 132
        Top = 21
        AutoSize = False
        Caption = #47700#45684'('#51473#48516#47448')'
        Style.BorderStyle = ebsUltraFlat
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
        Height = 30
        Width = 130
        AnchorX = 197
        AnchorY = 36
      end
      object cxCBBox_MENU: TcxComboBox
        Left = 132
        Top = 50
        AutoSize = False
        Properties.DropDownRows = 12
        Properties.OnEditValueChanged = edtMENUPropertiesEditValueChanged
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
        Width = 130
      end
    end
    object cxGBox_Input: TcxGroupBox
      Left = 268
      Top = 3
      Align = alClient
      Caption = #47700#45684' '#51221#48372
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 104
      Width = 987
      object cxEdit_name: TcxTextEdit
        Left = 103
        Top = 44
        AutoSize = False
        ParentFont = False
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
        Width = 217
      end
      object cxLabel4: TcxLabel
        Left = 4
        Top = 44
        AutoSize = False
        Caption = #47700#45684#47749
        Style.BorderStyle = ebsUltraFlat
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
        AnchorX = 54
        AnchorY = 57
      end
      object cxLabel1: TcxLabel
        Left = 4
        Top = 68
        AutoSize = False
        Caption = 'FormName'
        Style.BorderStyle = ebsUltraFlat
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
        AnchorX = 54
        AnchorY = 81
      end
      object cxEdit_FNAME: TcxTextEdit
        Left = 103
        Top = 68
        AutoSize = False
        ParentFont = False
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
        Width = 217
      end
      object cxLabel2: TcxLabel
        Left = 319
        Top = 20
        AutoSize = False
        Caption = 'Menu Lv1'
        Style.BorderStyle = ebsUltraFlat
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
        AnchorX = 369
        AnchorY = 33
      end
      object cxEdit_LV: TcxTextEdit
        Left = 418
        Top = 20
        AutoSize = False
        ParentFont = False
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
        Width = 150
      end
      object cxLabel3: TcxLabel
        Left = 319
        Top = 44
        AutoSize = False
        Caption = 'Menu Lv2'
        Style.BorderStyle = ebsUltraFlat
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
        AnchorX = 369
        AnchorY = 57
      end
      object cxEdit_LV2: TcxTextEdit
        Left = 418
        Top = 44
        AutoSize = False
        ParentFont = False
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
        Width = 150
      end
      object cxLabel5: TcxLabel
        Left = 319
        Top = 68
        AutoSize = False
        Caption = 'Menu Lv3'
        Style.BorderStyle = ebsUltraFlat
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
        AnchorX = 369
        AnchorY = 81
      end
      object cxEdit_LV3: TcxTextEdit
        Left = 418
        Top = 68
        AutoSize = False
        ParentFont = False
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
        Width = 150
      end
      object cxLabel6: TcxLabel
        Left = 567
        Top = 68
        AutoSize = False
        Caption = #49324#50857#50668#48512
        Style.BorderStyle = ebsUltraFlat
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
        AnchorX = 617
        AnchorY = 81
      end
      object cxRGRoup_Use: TcxRadioGroup
        Left = 667
        Top = 69
        Alignment = alCenterCenter
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = #49324#50857
            Value = 'Y'
          end
          item
            Caption = #48120#49324#50857
            Value = 'N'
          end>
        ItemIndex = 0
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 6
        Height = 23
        Width = 148
      end
      object cxLabel7: TcxLabel
        Left = 567
        Top = 44
        AutoSize = False
        Caption = 'DisplayIndex'
        Style.BorderStyle = ebsUltraFlat
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
        AnchorX = 617
        AnchorY = 57
      end
      object cxEdit_Index: TcxTextEdit
        Left = 666
        Top = 44
        AutoSize = False
        ParentFont = False
        Properties.MaxLength = 5
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 5
        Height = 25
        Width = 150
      end
      object cxLabel8: TcxLabel
        Left = 4
        Top = 20
        AutoSize = False
        Caption = #47700#45684' '#53440#51077
        Style.BorderStyle = ebsUltraFlat
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
        AnchorX = 54
        AnchorY = 33
      end
      object cxEdit_ID: TcxTextEdit
        Left = 591
        Top = 20
        AutoSize = False
        ParentFont = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 15
        Visible = False
        Height = 25
        Width = 34
      end
      object cxRGroup_TYPE: TcxRadioGroup
        Left = 104
        Top = 21
        Alignment = alCenterCenter
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'M('#49345#49464#47700#45684')'
            Value = 'M'
          end
          item
            Caption = '2('#51473#48516#47448')'
            Value = '2'
          end>
        ItemIndex = 0
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 16
        Height = 23
        Width = 215
      end
    end
  end
  object cxGrid_menu: TcxGrid
    Left = 0
    Top = 145
    Width = 1258
    Height = 497
    Align = alClient
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    object cxGridDBTv_menu: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = cxGridDBTv_menuCellDblClick
      OnCustomDrawCell = cxGridDBTv_menuCustomDrawCell
      DataController.DataSource = DS_List
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGridDBTv_menu_MENUID: TcxGridDBColumn
        DataBinding.FieldName = 'MENUID'
        DataBinding.IsNullValueType = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object cxGridDBTv_menu_MENUTYPE: TcxGridDBColumn
        Caption = #47700#45684#53440#51077
        DataBinding.FieldName = 'MENUTYPE'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
      object cxGridDBTv_menu_MENUNAME: TcxGridDBColumn
        Caption = #47700#45684#47749
        DataBinding.FieldName = 'MENUNAME'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object cxGridDBTv_menu_FORMNAME: TcxGridDBColumn
        DataBinding.FieldName = 'FORMNAME'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 150
      end
      object cxGridDBTv_menu_MENULV1: TcxGridDBColumn
        DataBinding.FieldName = 'MENULV1'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTv_menu_MENULV2: TcxGridDBColumn
        DataBinding.FieldName = 'MENULV2'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTv_menu_MENULV3: TcxGridDBColumn
        DataBinding.FieldName = 'MENULV3'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTv_menu_USEYN: TcxGridDBColumn
        Caption = #49324#50857#50668#48512
        DataBinding.FieldName = 'USEYN'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBTv_menu_DISINDEX: TcxGridDBColumn
        Caption = 'DisplayIndex'
        DataBinding.FieldName = 'DISINDEX'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
    end
    object cxGridLv_menu: TcxGridLevel
      GridView = cxGridDBTv_menu
    end
  end
  object DS_List: TDataSource
    DataSet = UniQuery_List
    Left = 1016
    Top = 496
  end
  object UniQuery_Find: TUniQuery
    ObjectView = True
    Left = 64
    Top = 184
  end
  object UniQuery_List: TUniQuery
    ObjectView = True
    Left = 1016
    Top = 440
  end
  object UniQuery_Exec: TUniQuery
    ObjectView = True
    Left = 920
    Top = 176
  end
end
