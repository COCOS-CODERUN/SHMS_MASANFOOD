inherited PlaceCheckForm: TPlaceCheckForm
  Caption = #51089#50629#51109#51216#44160#54364
  OnCreate = FormCreate
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    inherited cxBtnNew: TcxButton
      OnClick = cxBtnNewClick
    end
    inherited cxBtnSave: TcxButton
      OnClick = cxBtnSaveClick
    end
    inherited cxBtnDelete: TcxButton
      OnClick = cxBtnDeleteClick
    end
    inherited cxBtnRegister: TcxButton
      OnClick = cxBtnRegisterClick
    end
  end
  object cxGBox_Input: TcxGroupBox
    Left = 0
    Top = 40
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 671
    Width = 914
    object cxGbox_date: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      PanelStyle.Active = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 35
      Width = 908
      object cxLabel13: TcxLabel
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
        Height = 29
        Width = 100
        AnchorX = 53
        AnchorY = 18
      end
      object cxDEdit_date: TcxDateEdit
        Left = 103
        Top = 3
        Align = alLeft
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
        Height = 29
        Width = 150
      end
      object cxLabel1: TcxLabel
        Left = 453
        Top = 3
        Align = alLeft
        AutoSize = False
        Caption = #51216#44160#51452#44592' : 1'#54924'/'#51068
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
        Height = 29
        Width = 200
        AnchorX = 553
        AnchorY = 18
      end
      object cxLabel2: TcxLabel
        Left = 253
        Top = 3
        Align = alLeft
        AutoSize = False
        Caption = #48276#47168' : '#50577#54840' O, '#48520#47049' X'
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
        Height = 29
        Width = 200
        AnchorX = 353
        AnchorY = 18
      end
    end
    object cxGrid_List: TcxGrid
      Left = 3
      Top = 38
      Width = 908
      Height = 525
      Align = alClient
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
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object cxGridTv_List_division: TcxGridColumn
          Caption = #44396#48516
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.CellMerging = True
          Options.Moving = False
          Options.Sorting = False
          Width = 100
        end
        object cxGridTv_List_check: TcxGridColumn
          Caption = #51216#44160#49324#54637
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 400
        end
        object cxGridTv_List_Standard: TcxGridColumn
          Caption = #44288#47532#44592#51456
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
        end
        object cxGridTv_List_Value: TcxGridColumn
          Caption = #54032#51221
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          RepositoryItem = MainForm.cxEditRepository1CBBoxOX
          HeaderAlignmentHorz = taCenter
          Width = 80
          OnHeaderClick = cxGridTv_List_ValueHeaderClick
        end
        object cxGridTv_List_Remarks: TcxGridColumn
          Caption = #48512#51201#54633' '#49324#54637' '#48143' '#44060#49440#51312#52824' '#45236#50669
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 300
        end
        object cxGridTv_List_CheckID: TcxGridColumn
          Caption = 'LineID'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
        end
      end
      object cxGridLv_List: TcxGridLevel
        GridView = cxGridTv_List
      end
    end
    object cxGBox_remark: TcxGroupBox
      Left = 3
      Top = 563
      Align = alBottom
      Caption = #53945#51060#49324#54637
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 2
      Height = 105
      Width = 908
      object cxMemo_remarks: TcxMemo
        Left = 3
        Top = 20
        Align = alClient
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 0
        Height = 76
        Width = 902
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 914
    Top = 40
    Align = alRight
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 671
    Width = 320
    object dxDateTimeWheelPicker: TdxDateTimeWheelPicker
      Left = 3
      Top = 124
      Align = alTop
      ParentFont = False
      Properties.Wheels = [pwYear, pwMonth]
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
      Height = 45
      Width = 314
    end
    object cxGrid_data: TcxGrid
      Left = 3
      Top = 169
      Width = 314
      Height = 499
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
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
        object cxGridDBTv_data_no: TcxGridDBColumn
          Caption = #49692#48264
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          OnGetDisplayText = cxGridDBTv_data_noGetDisplayText
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object cxGridDBTv_data_date: TcxGridDBColumn
          Caption = #51089#49457#51068#51088
          DataBinding.FieldName = 'WriteDate'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridDBTv_data_reviewer: TcxGridDBColumn
          Caption = #44160#53664#51088
          DataBinding.FieldName = 'CheckReviewer'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object cxGridDBTv_data_confirmer: TcxGridDBColumn
          Caption = #49849#51064#51088
          DataBinding.FieldName = 'CheckConfirmer'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object cxGridDBTv_data_Cflag: TcxGridDBColumn
          DataBinding.FieldName = 'C_Flag'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object cxGridDBTv_data_RFlag: TcxGridDBColumn
          DataBinding.FieldName = 'R_Flag'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object cxGridDBTv_data_division: TcxGridDBColumn
          Caption = #44396#48516
          DataBinding.FieldName = 'division'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 150
        end
      end
      object cxGridLv_data: TcxGridLevel
        GridView = cxGridDBTv_data
      end
    end
    object cxGBox_Approval: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #44208#51116#51221#48372
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 2
      Height = 121
      Width = 314
      object cxLabel3: TcxLabel
        Left = 4
        Top = 79
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
        Height = 30
        Width = 87
        AnchorX = 48
        AnchorY = 94
      end
      object cxLabel6: TcxLabel
        Left = 4
        Top = 50
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
        Height = 30
        Width = 87
        AnchorX = 48
        AnchorY = 65
      end
      object cxLabel8: TcxLabel
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
        Height = 30
        Width = 87
        AnchorX = 48
        AnchorY = 36
      end
      object cxEDit_Writer: TcxTextEdit
        Left = 88
        Top = 21
        AutoSize = False
        ParentColor = True
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
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
        Width = 128
      end
      object cxEdit_reviewer: TcxTextEdit
        Left = 88
        Top = 50
        AutoSize = False
        ParentColor = True
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 4
        Height = 30
        Width = 128
      end
      object cxEdit_confirmer: TcxTextEdit
        Left = 88
        Top = 79
        AutoSize = False
        ParentColor = True
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 5
        Height = 30
        Width = 128
      end
      object cxBtn_approval: TcxButton
        Tag = 1
        AlignWithMargins = True
        Left = 216
        Top = 22
        Width = 95
        Height = 28
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #44208#51116#50836#52397
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
        TabOrder = 6
        OnClick = cxBtn_approvalClick
      end
      object cxBtn_Reviewer: TcxButton
        Tag = 2
        AlignWithMargins = True
        Left = 216
        Top = 51
        Width = 95
        Height = 28
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
        TabOrder = 7
        OnClick = cxBtn_approvalClick
      end
      object cxBtn_Confirmer: TcxButton
        Tag = 3
        AlignWithMargins = True
        Left = 216
        Top = 80
        Width = 95
        Height = 28
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
        TabOrder = 8
        OnClick = cxBtn_approvalClick
      end
    end
  end
  object FDQuery_data: TFDQuery
    Connection = MainForm.FDConnection
    Left = 1144
    Top = 496
  end
  object DS_Data: TDataSource
    DataSet = FDQuery_data
    Left = 1144
    Top = 544
  end
end
