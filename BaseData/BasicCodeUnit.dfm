inherited BasicCodeForm: TBasicCodeForm
  ClientHeight = 661
  OnResize = FormResize
  ExplicitHeight = 700
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
  end
  object cxGBox_Code: TcxGroupBox
    Left = 0
    Top = 35
    Align = alLeft
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 626
    Width = 601
    object cxGBoxCodeInfo: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #44592#52488#53076#46300' '#47785#47197
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 58
      Width = 595
      object cxEdit_CodeName: TcxTextEdit
        Left = 122
        Top = 22
        TabStop = False
        AutoSize = False
        Properties.ReadOnly = True
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
      object cxLbl2: TcxLabel
        Left = 5
        Top = 22
        AutoSize = False
        Caption = #44592#52488#53076#46300' '#51060#47492
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
        AnchorX = 65
        AnchorY = 35
      end
      object cxEdit_BCID: TcxTextEdit
        Left = 392
        Top = 21
        TabStop = False
        AutoSize = False
        Properties.ReadOnly = True
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
        Width = 85
      end
    end
    object cxGrid_Code: TcxGrid
      Left = 3
      Top = 61
      Width = 595
      Height = 562
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.SkinName = 'Lilian'
      object cxGridDBTv_Code: TcxGridDBTableView
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
        FindPanel.Behavior = fcbSearch
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.InfoText = #44160#49353#54624' '#53581#49828#53944#47484' '#51077#47141#54616#49901#49884#50724'...'
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = cxGridDBTv_CodeCellDblClick
        DataController.DataSource = DS_Code
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 35
        OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
        object cxGridDBTv_Code_ID: TcxGridDBColumn
          DataBinding.FieldName = 'BCID'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object cxGridDBTv_Code_Name: TcxGridDBColumn
          Caption = #44592#52488#53076#46300' '#51060#47492
          DataBinding.FieldName = 'BCName'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 350
        end
        object cxGridDBTv_Code_Menu: TcxGridDBColumn
          Caption = #44396#48516
          DataBinding.FieldName = 'BCMenu'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 139
        end
      end
      object cxGridLv_Code: TcxGridLevel
        GridView = cxGridDBTv_Code
      end
    end
  end
  object cxGBox_Detail: TcxGroupBox
    Left = 609
    Top = 35
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 626
    Width = 649
    object cxGrid_Detail: TcxGrid
      Left = 3
      Top = 111
      Width = 643
      Height = 512
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.SkinName = 'Lilian'
      object cxGridDBTv_Detail: TcxGridDBTableView
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
        OnCellDblClick = cxGridDBTv_DetailCellDblClick
        DataController.DataSource = DS_Detail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object cxGridDBTv_Detail_BCDID: TcxGridDBColumn
          DataBinding.FieldName = 'BCDID'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
        object cxGridDBTv_Detail_BCID: TcxGridDBColumn
          DataBinding.FieldName = 'BCID'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
        object cxGridDBTv_Detail_BCDName: TcxGridDBColumn
          Caption = #49345#49464' '#54637#47785
          DataBinding.FieldName = 'BCDName'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 400
        end
        object cxGridDBTv_Detail_IsUsableText: TcxGridDBColumn
          Caption = #49324#50857' '#50668#48512
          DataBinding.FieldName = 'IsUsableText'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Sorting = False
          Width = 100
        end
        object cxGridDBTv_Detail_IsUsable: TcxGridDBColumn
          Caption = #49324#50857' '#50668#48512
          DataBinding.FieldName = 'IsUsable'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Width = 100
        end
        object cxGridDBTv_Detail_DisIndex: TcxGridDBColumn
          Caption = #48372#51060#44592' '#49692#49436
          DataBinding.FieldName = 'DisIndex'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DisplayFormat = ',0.;'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridDBTv_Detail_Writer: TcxGridDBColumn
          DataBinding.FieldName = 'Writer'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
        object cxGridDBTv_Detail_WDT: TcxGridDBColumn
          DataBinding.FieldName = 'WritingDateTime'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
        object cxGridDBTv_Detail_Modifier: TcxGridDBColumn
          DataBinding.FieldName = 'Modifier'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
        object cxGridDBTv_Detail_MDT: TcxGridDBColumn
          DataBinding.FieldName = 'ModifiedDateTime'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
      end
      object cxGridTv_Detail: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridTv_Detail_Order: TcxGridColumn
          Caption = #49692#48264
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 50
        end
        object cxGridTv_Detail_ID: TcxGridColumn
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
        end
        object cxGridTv_Detail_BasicCodeID: TcxGridColumn
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
        end
        object cxGridTv_Detail_Name: TcxGridColumn
          Caption = #49345#49464#54637#47785
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 400
        end
        object cxGridTv_Detail_Index: TcxGridColumn
          Caption = #51064#45937#49828
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 100
        end
        object cxGridTv_Detail_IsUsableText: TcxGridColumn
          Caption = #49324#50857' '#50668#48512
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 100
        end
        object cxGridTv_Detail_IsUsable: TcxGridColumn
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
        end
        object cxGridTv_Detail_Writer: TcxGridColumn
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
        end
        object cxGridTv_Detail_WDT: TcxGridColumn
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
        end
        object cxGridTv_Detail_Modifier: TcxGridColumn
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
        end
        object cxGridTv_Detail_MDT: TcxGridColumn
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
        end
      end
      object cxGridLv_Detail: TcxGridLevel
        GridView = cxGridDBTv_Detail
      end
    end
    object cxGBox_DetailInfo: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #44592#52488#53076#46300' '#51221#48372
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 108
      Width = 643
      object cxEdit_DetailName: TcxTextEdit
        Left = 102
        Top = 22
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
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
      object cxRGroup_IsUsable: TcxRadioGroup
        Left = 103
        Top = 71
        Alignment = alCenterCenter
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = #49324#50857
            Value = True
          end
          item
            Caption = #48120#49324#50857
            Value = False
          end>
        ItemIndex = 0
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 2
        Height = 23
        Width = 198
      end
      object cxEdit_Writer: TcxTextEdit
        Left = 398
        Top = 22
        TabStop = False
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
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
        TabOrder = 3
        Height = 25
        Width = 200
      end
      object cxEdit_Modifier: TcxTextEdit
        Left = 398
        Top = 46
        TabStop = False
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
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
        TabOrder = 4
        Height = 25
        Width = 200
      end
      object cxLbl5: TcxLabel
        Left = 301
        Top = 46
        AutoSize = False
        Caption = #49688#51221#51088
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
        AnchorX = 351
        AnchorY = 59
      end
      object cxLbl7: TcxLabel
        Left = 5
        Top = 70
        AutoSize = False
        Caption = #49324#50857' '#50668#48512
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
        AnchorX = 55
        AnchorY = 83
      end
      object cxLbl14: TcxLabel
        Left = 301
        Top = 22
        AutoSize = False
        Caption = #51089#49457#51088
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
        AnchorX = 351
        AnchorY = 35
      end
      object cxLbl3: TcxLabel
        Left = 5
        Top = 22
        AutoSize = False
        Caption = #49345#49464' '#54637#47785
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
        AnchorX = 55
        AnchorY = 35
      end
      object cxLabel2: TcxLabel
        Left = 5
        Top = 46
        AutoSize = False
        Caption = #48372#51060#44592' '#49692#49436
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
        AnchorX = 55
        AnchorY = 59
      end
      object cxBEdit_Index: TcxButtonEdit
        Left = 102
        Top = 46
        Properties.Buttons = <
          item
            Caption = #49688#51221
            Default = True
            Kind = bkText
            Width = 70
          end>
        Properties.OnButtonClick = cxBEditIndexPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 1
        Width = 200
      end
      object cxEdit_BCDID: TcxTextEdit
        Left = 328
        Top = 71
        TabStop = False
        AutoSize = False
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 10
        Visible = False
        Height = 25
        Width = 85
      end
    end
  end
  object cxSplitter: TcxSplitter
    Left = 601
    Top = 35
    Width = 8
    Height = 626
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGBox_Code
  end
  object DS_Detail: TDataSource
    DataSet = FDQuery_Detail
    Left = 1194
    Top = 488
  end
  object DS_Code: TDataSource
    DataSet = FDQuery_Code
    Left = 384
    Top = 488
  end
  object FDQuery_Detail: TUniQuery
    ObjectView = True
    Left = 1130
    Top = 488
  end
  object FDQuery_Code: TUniQuery
    ObjectView = True
    Left = 312
    Top = 488
  end
end
