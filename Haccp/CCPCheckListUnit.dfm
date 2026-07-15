inherited CCPCheckListForm: TCCPCheckListForm
  Caption = #51473#50836#44288#47532#51216' '#44160#51613#51216#44160#54364
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
      Visible = False
      OnClick = cxBtn_DeleteClick
    end
    inherited cxBtn_Search: TcxButton
      OnClick = cxBtn_SearchClick
    end
  end
  object cxGBox_Contents: TcxGroupBox
    Left = 0
    Top = 35
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    ExplicitTop = 122
    ExplicitWidth = 980
    ExplicitHeight = 520
    Height = 607
    Width = 920
    object cxGrid_List: TcxGrid
      Left = 3
      Top = 63
      Width = 914
      Height = 444
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
      ExplicitTop = 3
      ExplicitWidth = 974
      ExplicitHeight = 417
      object cxGridTv_List: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 30
        OptionsView.GroupByBox = False
        object cxGridTv_List_process: TcxGridColumn
          Caption = #44277#51221
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.CellMerging = True
          Options.Sorting = False
          Width = 87
        end
        object cxGridTv_List_contents: TcxGridColumn
          Caption = #44160#51613' '#45236#50857
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Sorting = False
          Width = 704
        end
        object cxGridTv_List_OkYn: TcxGridColumn
          Caption = #44592#47197
          OnGetProperties = cxGridTv_List_OkYnGetProperties
          HeaderAlignmentHorz = taCenter
          Options.Sorting = False
          Width = 177
          OnHeaderClick = cxGridTv_List_OkYnHeaderClick
        end
        object cxGridTv_List_Code: TcxGridColumn
          Caption = #44288#47532#53076#46300
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
      end
      object cxGridLv_List: TcxGridLevel
        GridView = cxGridTv_List
      end
    end
    object cxGBox_Reform: TcxGroupBox
      Left = 3
      Top = 507
      Align = alBottom
      PanelStyle.Active = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      ExplicitTop = 420
      ExplicitWidth = 974
      Height = 97
      Width = 914
      object cxLabel2: TcxLabel
        Left = 3
        Top = 4
        AutoSize = False
        Caption = #44288#47532#44592#51456' '#51060#53448#45236#50857
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
        Width = 350
        AnchorX = 178
        AnchorY = 19
      end
      object cxMemo_contents: TcxMemo
        Left = 3
        Top = 33
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 1
        Height = 60
        Width = 350
      end
      object cxLabel3: TcxLabel
        Left = 352
        Top = 4
        AutoSize = False
        Caption = #44060#49440#51312#52824' '#49324#54637
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
        Width = 350
        AnchorX = 527
        AnchorY = 19
      end
      object cxMemo_result: TcxMemo
        Left = 352
        Top = 33
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 3
        Height = 60
        Width = 350
      end
      object cxLabel4: TcxLabel
        Left = 701
        Top = 4
        AutoSize = False
        Caption = #51312#52824#51068#51088
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
        Width = 110
        AnchorX = 756
        AnchorY = 19
      end
      object cxMemo_action: TcxMemo
        Left = 701
        Top = 33
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 5
        Height = 60
        Width = 110
      end
      object cxLabel5: TcxLabel
        Left = 810
        Top = 4
        AutoSize = False
        Caption = #54869#51064
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
        Width = 110
        AnchorX = 865
        AnchorY = 19
      end
      object cxMemo_ok: TcxMemo
        Left = 810
        Top = 33
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 7
        Height = 60
        Width = 110
      end
    end
    object cxGBox_input: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #51473#50836#44288#47532#51216'(CCP) '#44160#51613#51216#44160#54364
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 2
      ExplicitTop = 0
      Height = 60
      Width = 914
      object cxLbl2: TcxLabel
        Left = 3
        Top = 20
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
        ExplicitHeight = 58
        Height = 31
        Width = 90
        AnchorX = 48
        AnchorY = 36
      end
      object cxDEdit_date: TcxDateEdit
        Left = 93
        Top = 20
        Align = alLeft
        AutoSize = False
        Properties.DateButtons = [btnClear, btnToday]
        Properties.ImmediateDropDownWhenActivated = True
        Properties.ImmediateDropDownWhenKeyPressed = True
        Properties.ImmediatePost = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 1
        ExplicitLeft = 267
        ExplicitTop = 45
        ExplicitHeight = 30
        Height = 31
        Width = 150
      end
      object cxLabel9: TcxLabel
        Left = 333
        Top = 20
        Align = alLeft
        AutoSize = False
        Caption = #50900#44036' 1'#54924
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
        ExplicitLeft = 353
        Height = 31
        Width = 90
        AnchorX = 378
        AnchorY = 36
      end
      object cxLabel8: TcxLabel
        Left = 243
        Top = 20
        Align = alLeft
        AutoSize = False
        Caption = #49892#49884#51452#44592
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
        Height = 31
        Width = 90
        AnchorX = 288
        AnchorY = 36
      end
      object cxLabel10: TcxLabel
        Left = 423
        Top = 20
        Align = alLeft
        AutoSize = False
        Caption = #51089#49457#48276#47168
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
        Height = 31
        Width = 90
        AnchorX = 468
        AnchorY = 36
      end
      object cxLabel12: TcxLabel
        Left = 513
        Top = 20
        Align = alLeft
        AutoSize = False
        Caption = #51201#54633' : '#50696' / '#48512#51201#54633' : '#50500#45768#50836
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
        ExplicitLeft = 573
        ExplicitHeight = 58
        Height = 31
        Width = 204
        AnchorX = 615
        AnchorY = 36
      end
    end
  end
  object cxGBox_List: TcxGroupBox
    Left = 928
    Top = 35
    Align = alRight
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 607
    Width = 330
    object dxDateTimeWheelPicker: TdxDateTimeWheelPicker
      Left = 3
      Top = 135
      Align = alTop
      ParentFont = False
      Properties.Wheels = [pwYear]
      Properties.OnEditValueChanged = dxDateTimeWheelPickerPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
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
      TabOrder = 0
      ExplicitTop = 20
      ExplicitWidth = 272
      Height = 45
      Width = 324
    end
    object cxGrid_data: TcxGrid
      Left = 3
      Top = 180
      Width = 324
      Height = 424
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      ExplicitTop = 65
      ExplicitWidth = 272
      ExplicitHeight = 446
      object cxGridDBTv_data: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = cxGridDBTv_dataCellDblClick
        DataController.DataSource = DS_Data
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        object cxGridDBTv_data_No: TcxGridDBColumn
          Caption = #49692#48264
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          OnGetDisplayText = cxGridDBTv_data_noGetDisplayText
          HeaderAlignmentHorz = taCenter
          Width = 41
        end
        object cxGridDBTv_data_Date: TcxGridDBColumn
          Caption = #44160#53664#51068#51088
          DataBinding.FieldName = 'WriteDate'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.AutoWidthSizable = False
          Width = 100
        end
        object cxGridDBTv_data_Reviewer: TcxGridDBColumn
          Caption = #44160#53664#51088
          DataBinding.FieldName = 'CheckReviewer'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.AutoWidthSizable = False
          Width = 90
        end
        object cxGridDBTv_data_Confirmer: TcxGridDBColumn
          Caption = #49849#51064#51088
          DataBinding.FieldName = 'CheckConfirmer'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.AutoWidthSizable = False
          Width = 90
        end
      end
      object cxGridLv_data: TcxGridLevel
        GridView = cxGridDBTv_data
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #44208#51116#46976
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 2
      ExplicitLeft = 6
      ExplicitTop = 28
      ExplicitWidth = 272
      Height = 132
      Width = 324
      object cxBtn_approval: TcxButton
        Tag = 4
        AlignWithMargins = True
        Left = 5
        Top = 86
        Width = 103
        Height = 35
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #45812#45817
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
          72733B526962626F6E3B6463C8680000037D49444154785E4D8E7F4C94051CC6
          3FEF7B77E02073EA92742577579B684891E62AB6C4526B6013696BC9DC5A0B33
          D0322DA716D3CA94A21A8E96E976AEB654688E409B46B859CC249500E3F81588
          234EE0F875DC1DF7A3BB7BDFF7DBC16AEBD9F3D9BEFF3CCFF7C13555CB58A801
          40014CC5E5696BF638D24FBEF7EDF2D683550F7B0E5666B4969C5A5EBBEBCB65
          2F0209803A116E6438F82377A66A60385007A0E4EFB2A5BC51B1B4AEF4EC5AB9
          D476583A87AA642C7055BA47CE4A43F72752713157F67D93DE54B0DFBE04308D
          867E9E290050725F4BBDB7F8E8B29EAA86B7C4E5BF203DDEE3D23E71585AC6F6
          48E7E4C7D2E777C870A05E7E68DE277B4F668C6EDE6BCF00D4017F350A607EF5
          48DAB99CECBC9CF4343BC3E1264CAA60C282AAA8288A028A30313E852DE509EE
          0C4D72EEF26967CD17FD4F0EDE0A064DF9BBEDEB6CD6C51F3C9DF5382EFF1540
          104014216E500C2ED6DDA4F67C3BEDB79BC9C95EC3E8F8784AD28288BBADC1D3
          6C4E98652A7C2C7D2543816674430304C4885B0755E1CC99EBCC51D750F14E35
          DBCB32E91DF98DCCA5ABE8FCB36733E0500D3132EF9EAB108C7AE9ED1BA6B4AC
          969F2E39896A11CE5F68212529975D5B4A395A59C40B79CF6049D0489AAD81AA
          3C0A9854436741140FE148809AEA16CA8AAEA34C65F1E9E7F524EBEBD99A7F80
          53751FB2707118EB836642311F31C63174497C286BEE6C55D3F48971DF2088C1
          A60D6BF9BAB6849D0547D8FD520D2F3F5F822FD8C7AFCEEF58B16A11FEC82831
          3DC6A87F8868C488745C9D0C9AF5A8D2E51EF15BE72FD248B127E2F5FE8DE3FB
          FDEC28280755E1FDCFB691BF310B6FC48566C4C030F08D458984B40E4057837E
          ADAAA7CB87A0E2090EB2E491594C1A4DD45C2EC779AB0E53B287C4399384A353
          718288A8F4767B09F8F4F380069094BBDD7AB3E474869CB8B1428E5DCB90AAB6
          0DB2E59055B2B621C72EAF93134D99723C8EE3F79572A83A5336EEB439EF9A67
          990FA82A1071F7855EF9E35AC0D3EB0C010A9EF000799B56F1EEDBAFC7BF87D0
          0D411185BEEE30AD8DFE88AB2B501CF0C4FC5706DE34CC0D7F15E9AB53BF6A17
          784ED78C4AB72BF6803DDD82B6B013D5A420064CB875FABB628CB8A21DEEDBA1
          A2D6FAB11B8066480C7EE92F045000737CD6BCA736DFB77F7D616A63EE769BCC
          B0C326CF6E4D6D5B5D70FF47C9732CF700164099CE4D3373FCA76CAB43052CFF
          62065440001D884E130F19FC4FFF00FE20CB5D5DF1FFF30000000049454E44AE
          426082}
        TabOrder = 0
        OnClick = cxBtn_approvalClick
      end
      object cxBtn_Reviewer: TcxButton
        Tag = 5
        AlignWithMargins = True
        Left = 109
        Top = 86
        Width = 103
        Height = 35
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #44160#53664
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002A744558745469746C6500526576696577416C6C6F77557365727354
          6F4564697452616E6765733B4163636573733B7E2625FD000002B74944415478
          5E75934D685C5518869F7BEF99996624D65692564242A9D14A62AC496DA56245
          8AA074214844A8226EBB51D045D08DC64D6915442945578A665103FE24158B58
          29562241C598B135486B423246F2D7E94CBC93FB7BCEF99C846116C1BCF0C1F9
          BEC3FBC077788F0328C0051CB654E34E000BE8C1C1410150031FFE74C9CB648F
          200D04FBF21984BA4490BA5510D2341E3BF1ECC1A3400AA0B4768E1C7EB00344
          4060AE58E685639DD4C5E7DF4CD1FF4457A37FEFA3F18701D50044618A586135
          D220B0702320883402388E43CBCE3C61AC11B178B5FE40CF1D00AAB602EBA5A2
          48F3FB9505CA7EDCD8F2D3AF0A08D0DDD98A572A3071F675081688FD0A15AF9D
          578FB6F59FBAF4CF106054F7ED195E397E2F7EA81111866BE6A78FED47049427
          7CFBF1DBDCB9BF978A08AD7BFB7066A76972DC0F80731B006B2C00D60A205801
          5B7F38AD0D4B4B25BC99BFB1B88C8F5DE0B6E62C6BA13680026265AC30F4E524
          6B410280089C1B9900E0BE7B76916CDF87A8661E3FF1120FCDFCCC67EF0F518E
          CD45C0FA3BCEA38C119E7FEA7E6EFA3122303CFA1BCF3CD98B00590F760FBCCB
          D427AF21918FAB435C0CA3D72AA781C464354AD757C8781E22C2B65C868C7201
          C1019AF27956C4E5CFB1EFA92E5C67992CCB7E527AF3D116335F4D705E1E1CB9
          ACB2DB1EA90705AC259753EC69DFC1EE965B08A21526AEBDC5AEC580388A28EE
          CCA63F7C77E5E01F63E529C038401EC86C8AB2F3D873ED1D773FB07DE0D6E6A6
          FEC37D07729EE7B25C9D238C427EF9B198964AC1F04A313AE9AC8761B36A33F5
          E2999E425F4F57577B5B0BA9C42CADCE12A655ACB538E2B138A7B97CF1AFEB8A
          FF971B8449579C865C9D9D24487C727936CCFFAE26A489A11A688220BD6B2B80
          2D2FAEBD71E1EB5F0F696D3AD2D43469633A756C492299AECDA23432F3692A85
          AD00E68B77E64F025EBD1CC005D8F4ADCD7F905765A1BBC80DB3000000004945
          4E44AE426082}
        TabOrder = 1
        OnClick = cxBtn_approvalClick
      end
      object cxBtn_Confirmer: TcxButton
        Tag = 6
        AlignWithMargins = True
        Left = 214
        Top = 87
        Width = 103
        Height = 35
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #49849#51064
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000016744558745469746C65005461736B3B49737375653B536F6C76652D
          B55894000002BA49444154785E75916D48956718C77FE7C53A35D987660E75E0
          58AF9C1988B56963707AD1F22CE9C35935A34D868445080E8B461F4C2BB23464
          DB070D6A8C6A606D45851B140C2D27C33A568429099B1B3A8FC16188A9479F73
          9EE7BEAF3A4F473C15BBE1E2BAB8B97FFFFB7F5D172202E0005C801B4889C7B1
          E3A736D69FFC26F8D5FE43C1DD159585C0BCA470030E9B4D08B8FE3A5776FBCF
          735FC88986EFE4687D93D41E3929C17B0FA5B3EB8E3C1790AAEA8352537B4C7A
          9A3F97DEB3E5C1C44738013B3B1DE2CBDCB497E86408EFCAE56C29F984B7D216
          836B3E9BFC256C2DD9425ECE12B20AF790FADEDA0F5E157068AD713A1401EF14
          91C80457AE5CA6EE702DE77F38838E4E321D7D4AC7E3661A6F56D33DD00BB000
          C03D27A0708AC9A2F44C3EFBF853A60D83B8A85642786C84D3D72B29DEBA828C
          6C3747EAAE01786CE7248E28054E0F9EF4F7B975FF324DADE5B4077F66687480
          B3BF56515A9ACBC27746F9B6A58DC20C1F400C90B91694465B51BA07EFD21BBA
          C8C6A265F48FFEC4A94B6504025E229E3EDAAEF6B3C4F1114539F9000620492D
          98A062BCE14AE5DFA130EB8A9FB073572EE80F199E0A72F78F61C61F2DE6C097
          DB19BBD70E20C933E08583082BD3B3D9F6F651CEB454B16377161A83D0E82477
          6E404DD17616CA18FF0CF600385EDA82580A3DF31F1383BF93E7F511C86FE042
          CBDF4C46A6F9E5C73065FE5AD216B8B1C20FD0CA02E0E52D280B6D1944C74328
          0D6B56AD276634D2F0F53E7CB9DB28C82B62EC5A056FBE9B8AD6DA669205504A
          21E60CCA8C619A1A33A62958BD99566F1F2E970B1C2E8CF111442F456C07385E
          71A010CB40992643DFFB515AD90F456BB45680D835CA446B014044E61C48C241
          76CE3288C31287950D21162815071277EAB519585333D1CE81DF3A7C5A297B23
          B3B056769E85D122440CB30B309305621B4EF4F88194D9DE00FEA796041C0578
          0646B47718409CC86E0000000049454E44AE426082}
        TabOrder = 2
        OnClick = cxBtn_approvalClick
      end
      object cxLabel1: TcxLabel
        Left = 212
        Top = 21
        AutoSize = False
        Caption = #49849#51064#51088
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
        Height = 35
        Width = 105
        AnchorX = 265
        AnchorY = 39
      end
      object cxLabel6: TcxLabel
        Left = 108
        Top = 21
        AutoSize = False
        Caption = #44160#53664#51088
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
        Height = 35
        Width = 105
        AnchorX = 161
        AnchorY = 39
      end
      object cxLabel7: TcxLabel
        Left = 4
        Top = 21
        AutoSize = False
        Caption = #51089#49457#51088
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
        Height = 35
        Width = 105
        AnchorX = 57
        AnchorY = 39
      end
      object cxEdit_writer: TcxTextEdit
        Left = 4
        Top = 55
        AutoSize = False
        Enabled = False
        ParentColor = True
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 6
        Height = 30
        Width = 105
      end
      object cxEdit_reviewer: TcxTextEdit
        Left = 108
        Top = 55
        AutoSize = False
        Enabled = False
        ParentColor = True
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 7
        Height = 30
        Width = 105
      end
      object cxEdit_confirmer: TcxTextEdit
        Left = 212
        Top = 55
        AutoSize = False
        Enabled = False
        ParentColor = True
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 8
        Height = 30
        Width = 105
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 920
    Top = 35
    Width = 8
    Height = 607
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salRight
    Control = cxGBox_List
    ExplicitLeft = 632
    ExplicitTop = 288
    ExplicitHeight = 100
  end
  object DS_Data: TDataSource
    DataSet = FDQuery_data
    Left = 1168
    Top = 424
  end
  object FDQuery_data: TUniQuery
    ObjectView = True
    Left = 1168
    Top = 376
  end
  object FDQCheckListTemp: TUniQuery
    ObjectView = True
    Left = 800
    Top = 328
  end
  object cxEditRepository1: TcxEditRepository
    Left = 624
    Top = 328
    PixelsPerInch = 96
    object cxEditRepository1RadioGroupItem1: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #50696
          Value = True
        end
        item
          Caption = #50500#45768#50836
          Value = False
        end>
    end
    object cxEditRepository1TextItem1: TcxEditRepositoryTextItem
    end
  end
end
