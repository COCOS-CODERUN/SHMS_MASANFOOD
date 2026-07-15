inherited CCPHeatCheckForm: TCCPHeatCheckForm
  Caption = 'CCPHeatCheckForm'
  OnCreate = FormCreate
  OnResize = FormResize
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
    end
    inherited cxBtn_Search: TcxButton
      OnClick = cxBtn_SearchClick
    end
  end
  object cxGBox_Right: TcxGroupBox
    Left = 888
    Top = 35
    Align = alRight
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 607
    Width = 370
    object cxGBox_Approval: TcxGroupBox
      Left = 3
      Top = 3
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      Caption = #44208#51116#46976
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 132
      Width = 364
      object cxLabel119: TcxLabel
        Left = 224
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
        Width = 110
        AnchorX = 279
        AnchorY = 39
      end
      object cxLabel120: TcxLabel
        Left = 114
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
        Width = 110
        AnchorX = 169
        AnchorY = 39
      end
      object cxLabel121: TcxLabel
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
        Width = 110
        AnchorX = 59
        AnchorY = 39
      end
      object cxBtn_dam: TcxButton
        Tag = 4
        Left = 5
        Top = 85
        Width = 108
        Height = 35
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
        TabOrder = 6
        OnClick = cxBtn_damClick
      end
      object cxBtn_review: TcxButton
        Tag = 5
        Left = 115
        Top = 85
        Width = 108
        Height = 35
        Caption = #44160#53664
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000029744558745469746C650050726F74656374696F6E3B41
          63636573733B477269643B53707265616473686565743B190E0BF4000002B749
          444154785E75934D685C5518869F7BEF99996624D65692564242A9D14A62AC49
          6DA562458AA074214844A8226EBB51D045D08DC64D6915442945578A665103FE
          24158B5829562241C598B135486B423246F2D7E94CBC93FB7BCEF99C846116C1
          BCF0C1F9BEC3FBC077788F0328C0051CB654E34E000BE8C1C1410150031FFE74
          C9CB648F200D04FBF21984BA4490BA5510D2341E3BF1ECC1A3400AA0B4768E1C
          7EB003444060AE58E685639DD4C5E7DF4CD1FF4457A37FEFA3F18701D5004461
          8A586135D220B0702320883402388E43CBCE3C61AC11B178B5FE40CF1D00AAB6
          02EBA5A248F3FB9505CA7EDCD8F2D3AF0A08D0DDD98A572A3071F675081688FD
          0A15AF9D578FB6F59FBAF4CF106054F7ED195E397E2F7EA81111866BE6A78FED
          470494277CFBF1DBDCB9BF978A08AD7BFB7066A76972DC0F80731B006B2C00D6
          0A2058015B7F38AD0D4B4B25BC99BFB1B88C8F5DE0B6E62C6BA13680026265AC
          30F4E5246B410280089C1B9900E0BE7B76916CDF87A8661E3FF1120FCDFCCC67
          EF0F518ECD45C0FA3BCEA38C119E7FEA7E6EFA3122303CFA1BCF3CD98B00590F
          760FBCCBD427AF21918FAB435C0CA3D72AA781C464354AD757C8781E22C2B65C
          868C7201C1019AF27956C4E5CFB1EFA92E5C67992CCB7E527AF3D116335F4D70
          5E1E1CB9ACB2DB1EA90705AC259753EC69DFC1EE965B08A21526AEBDC5AEC580
          388A28EECCA63F7C77E5E01F63E529C038401EC86C8AB2F3D873ED1D773FB07D
          E0D6E6A6FEC37D07729EE7B25C9D238C427EF9B198964AC1F04A313AE9AC8761
          B36A33F5E2999E425F4F57577B5B0BA9C42CADCE12A655ACB538E2B138A7B97C
          F1AFEB8AFF971B8449579C865C9D9D24487C727936CCFFAE26A489A11A688220
          BD6B2B802D2FAEBD71E1EB5F0F696D3AD2D43469633A756C492299AECDA23432
          F3692A85AD00E68B77E64F025EBD1CC005D8F4ADCD7F905765A1BBC80DB30000
          000049454E44AE426082}
        TabOrder = 7
        OnClick = cxBtn_reviewClick
      end
      object cxEdit_Writer: TcxTextEdit
        Tag = 1
        Left = 4
        Top = 55
        AutoSize = False
        Enabled = False
        Properties.Alignment.Horz = taCenter
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
        Width = 110
      end
      object cxEdit_Reviewer: TcxTextEdit
        Tag = 2
        Left = 114
        Top = 55
        AutoSize = False
        Enabled = False
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
        Height = 30
        Width = 110
      end
      object cxBtn_confirm: TcxButton
        Tag = 6
        Left = 225
        Top = 85
        Width = 108
        Height = 35
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
        OnClick = cxBtn_reviewClick
      end
      object cxEdit_Confirmer: TcxTextEdit
        Tag = 3
        Left = 224
        Top = 55
        AutoSize = False
        Enabled = False
        Properties.Alignment.Horz = taCenter
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
        Width = 110
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 3
      Top = 135
      Align = alClient
      Caption = #45936#51060#53552' '#44160#49353
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 469
      Width = 364
      object dxDateTimeWheelPicker: TdxDateTimeWheelPicker
        Left = 3
        Top = 20
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
        Width = 358
      end
      object cxGrid_data: TcxGrid
        Left = 3
        Top = 65
        Width = 358
        Height = 395
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
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 30
          OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
          object cxGridDBTv_data_date: TcxGridDBColumn
            Caption = #51216#44160#51068#51088
            DataBinding.FieldName = 'CheckDate'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object cxGridDBTv_data_facility: TcxGridDBColumn
            Caption = #49444#48708#44396#48516
            DataBinding.FieldName = 'Division'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridDBTv_data_data_reviewer: TcxGridDBColumn
            Caption = #44160#53664#51088
            DataBinding.FieldName = 'Reviewer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object cxGridDBTv_data_confirmer: TcxGridDBColumn
            Caption = #54869#51064#51088
            DataBinding.FieldName = 'Confirmer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
        end
        object cxGridLv_data: TcxGridLevel
          GridView = cxGridDBTv_data
        end
      end
    end
  end
  object cxGBox_Client: TcxGroupBox
    Left = 0
    Top = 35
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 607
    Width = 888
    object cxGBox_input: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #44160#49353#51312#44148
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 85
      Width = 882
      object cxLbl2: TcxLabel
        Left = 301
        Top = 21
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
        Height = 28
        Width = 110
        AnchorX = 356
        AnchorY = 35
      end
      object cxDEdit_date: TcxDateEdit
        Left = 301
        Top = 48
        AutoSize = False
        Properties.DateButtons = [btnClear, btnToday]
        Style.Color = 14811105
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 2
        Height = 28
        Width = 110
      end
      object cxLbl1: TcxLabel
        Left = 3
        Top = 21
        AutoSize = False
        Caption = #49444#48708' '#44396#48516
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
        Height = 28
        Width = 150
        AnchorX = 78
        AnchorY = 35
      end
      object cxLkCBBox_Facility: TcxLookupComboBox
        Left = 3
        Top = 48
        AutoSize = False
        Properties.KeyFieldNames = 'FridgeNo'
        Properties.ListColumns = <
          item
            Width = 150
            FieldName = 'Name'
          end
          item
            Caption = 'Code'
            Width = 50
            FieldName = 'FridgeCode'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_Facility
        Properties.OnEditValueChanged = cxLkCBBox_FacilityPropertiesEditValueChanged
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
        Height = 28
        Width = 150
      end
      object cxBtn_Add: TcxButton
        Tag = 4
        Left = 411
        Top = 22
        Width = 100
        Height = 53
        Caption = #52628#44032#54616#44592
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001B744558745469746C65004164643B506C75733B426172733B526962
          626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
          63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
          E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
          CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
          A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
          C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
          3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
          B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
          E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
          AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
          D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
          B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
          44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
          5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
          F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
          81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
          EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
          8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
          5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
          17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
          CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
          56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
          16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
          1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
          EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
          DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
          D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
          EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
          426082}
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxBtn_AddClick
      end
      object cxBtn_setting: TcxButton
        Tag = 4
        Left = 779
        Top = 20
        Width = 100
        Height = 56
        Align = alRight
        Caption = #54408#47749' '#49444#51221
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000003A744558745469746C650056657273696F6E3B50726F64
          7563743B53657474696E673B50726F706572743B437573746F6D697A3B446573
          69676E3B4974656D84696C47000000A849444154785ECDD2B10DC2301005D048
          2E328667803D90D8C31D45068001180706A0F61A88024A64098BCF3FF423A114
          D8600A8AA7D35DE4CB9D930E4093677239ACF08DFF68F0D33BB84E9CE828E7E9
          F34F56C814A91F29CF350D3AB358EFDD72B39B33264567F55283ACC3A08102DD
          29282FAE10ED4D3A7C2308940FA506BDC60D04DA925784EAB3B70D6C678D0DF2
          5AC913544FCD1334DD01B9D29F56F515AAD8B8942CBED61F5E89CA6AC14F6632
          0000000049454E44AE426082}
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxBtn_settingClick
      end
      object cxLabel1: TcxLabel
        Left = 152
        Top = 21
        AutoSize = False
        Caption = #54408#47785
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
        Height = 28
        Width = 150
        AnchorX = 227
        AnchorY = 35
      end
      object cxCBBox_Item: TcxComboBox
        Left = 152
        Top = 48
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.OnEditValueChanged = cxCBBox_ItemPropertiesEditValueChanged
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
        Height = 28
        Width = 150
      end
      object cxLabel2: TcxLabel
        Left = 630
        Top = 21
        AutoSize = False
        Caption = #44032#50676#49884#44036'/'#50724#52264#48276#50948
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
        Height = 28
        Width = 120
        AnchorX = 690
        AnchorY = 35
      end
      object cxEdit_time: TcxTextEdit
        Left = 630
        Top = 48
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
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
        TabOrder = 9
        Height = 28
        Width = 120
      end
      object cxLabel4: TcxLabel
        Left = 511
        Top = 21
        AutoSize = False
        Caption = #44032#50676#50728#46020'/'#50724#52264#48276#50948
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
        Height = 28
        Width = 120
        AnchorX = 571
        AnchorY = 35
      end
      object cxEdit_temp: TcxTextEdit
        Left = 511
        Top = 48
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Properties.UseLeftAlignmentOnEditing = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = #47569#51008' '#44256#46357
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        Style.TextColor = clWindowText
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 11
        Height = 28
        Width = 120
      end
    end
    object cxGrid_List: TcxGrid
      Left = 411
      Top = 88
      Width = 474
      Height = 516
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      ExplicitLeft = 416
      ExplicitWidth = 469
      object cxGridTv_List: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxGridTv_List_name: TcxGridColumn
          Caption = #54408#47749
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 180
        end
        object cxGridTv_List_time: TcxGridColumn
          Caption = #52769#51221#49884#44036
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.TimeFormat = tfHourMin
          Properties.OnEditValueChanged = cxGridTv_List_timePropertiesEditValueChanged
          HeaderAlignmentHorz = taCenter
          Styles.Content = MainForm.cxStyle_Yellow
          Width = 80
        end
        object cxGridTv_List_temp: TcxGridColumn
          Caption = #44032#50676#50728#46020
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DisplayFormat = ',0.0;-,0.0 '#8451
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridTv_List_htime: TcxGridColumn
          Caption = #44032#50676#49884#44036
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridTv_List_decision: TcxGridColumn
          Caption = #54032#51221'('#51201#54633'/'#48512#51201#54633')'
          RepositoryItem = cxEditRepository_decision
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 150
        end
        object cxGridTv_List_reason: TcxGridColumn
          Caption = #54620#44228#44592#51456' '#51060#53448#49324#50976
          RepositoryItem = cxEditRepository_Reason
          HeaderAlignmentHorz = taCenter
          Width = 250
        end
        object cxGridTv_List_action: TcxGridColumn
          Caption = #51312#52824#45236#50669
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridTv_List_ID: TcxGridColumn
          Caption = 'ID'
        end
      end
      object cxGridLv_List: TcxGridLevel
        GridView = cxGridTv_List
      end
    end
    object cxGBox_set: TcxGroupBox
      Left = 3
      Top = 88
      Align = alLeft
      Caption = #54408#47785' '#49440#53469' '#48143' '#54620#44228' '#44592#51456' '#49444#51221
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 2
      Height = 516
      Width = 400
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 20
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 0
        ExplicitWidth = 399
        Height = 35
        Width = 394
        object cxBtn_Gadd: TcxButton
          Tag = 4
          Left = 3
          Top = 3
          Width = 120
          Height = 29
          Align = alLeft
          Caption = #52628#44032#54616#44592
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Lilian'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001B744558745469746C65004164643B506C75733B426172733B526962
            626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
            63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
            E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
            CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
            A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
            C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
            3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
            B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
            E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
            AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
            D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
            B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
            44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
            5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
            F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
            81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
            EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
            8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
            5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
            17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
            CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
            56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
            16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
            1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
            EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
            DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
            D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
            EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
            426082}
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxBtn_GaddClick
        end
        object cxBtn_Gsave: TcxButton
          Tag = 4
          Left = 123
          Top = 3
          Width = 120
          Height = 29
          Align = alLeft
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
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxBtn_GsaveClick
        end
        object cxBtn_ItemClose: TcxButton
          Left = 306
          Top = 3
          Width = 85
          Height = 29
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alRight
          Caption = #45803#44592
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Lilian'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            6100000023744558745469746C650043616E63656C3B53746F703B457869743B
            426172733B526962626F6E3B4C9696B20000038849444154785E1D906B4C5367
            18C7FF3DBD40CB1A2E32B55C9D598B4CA675D8D13836652E9B0359B67D589665
            3259E644A52571644474CB4CB6ECC23770C4449DD38D2885005E4683AB69C616
            8DA12384264EC8AAAC0C9149A1175ACEE9E939CFDE9EE7E477F2CBFFB924E720
            E6E943CC3B8895D12B00A0FEE3D08167A75A5BBAEEB71D9D081E6B4DA549FBDD
            A3CEEFDD1F3658016818AA98A71FD1915E202DE980A19D741E3EF6E0F8A7FC7F
            673B6979E002C5BC43B4C2581EB8480BE7BA68E6441BEF3B72F03300990C8E1D
            5016554E7B55D6C1ED9543C6C2B5BB739FDF025988838424E4240F10A0D2EAA0
            D26540AD37203CFE17C2C187A3EDBFDE7CF3DAD4748403A06EA8A8E830AC5FB3
            3B7BAB1901B717AE23DFE1CEC5EBEC90A0E0EB71A3CFD981C0B017C6F252180B
            D6BD74BCFA856E003A0CBDFD966DF250532AD4FF038DB734D18557DF21CFB08F
            2E37B5D370ED5E72D7D52BEEF9654CE9F91C1FD392EB0C4D3A0E4BE7F6ECD909
            CFDEFAD381AF4ED0A3D35FD399E272BA3F3D478F971234FD2044BDCE930AF798
            CF2FAED0DF5373CACCFCA92F2970B29DDCAFD7F56B48945E918201C41738945A
            2D581C7461ADA3192AB50AD64F9A010272730CC8D4AA313BE44289D58CF85D3F
            2411504BB28D93845489145E041F9CC1863C09A11BD7E1EFEA86240339463DB2
            B3F59025C0DFD98DD0C83594E6886C360831F408523265D208BC0021B20A35A7
            82B8BC0429C2239A10D812417988007088B14C8A8421EA75A094044A8A48F200
            17E78587629220B370E69F2884EA3750F07E23245946868E43A64EA3B8695F23
            F8EA7A046763EC780AC9640AF155FEB1269AE0BD91AC8CFDF910108E26F15A5B
            33788D1E860CF6CDE7CF225D45FB3F02A0C7CE36076E5CBD84825C3562A20E4B
            097E0CAD051B5FFCA97C9BE4ABAEA05B2FDBE9E6BE0F880F8568FCDB0E1AA9AA
            646C579C654AEF564D15FDB96333FDBCC94A8E751B6A0140DF5168B9E42A7B86
            266AB6D2ED1A1BF559CAC853B58DFCB576F2D7D9D3AE64B777D96862D716EA2F
            2BA76F4CE62B008C1A00C2F9C57F9D8DA2C99212C5E72C85323699F320A77FD2
            72040021DF9885F56BF2204457706F9EC74C4CF2F744169A012430DBF21E00A8
            2B754F98BEC82EEEED7AF2291A306FA451EBD3346633938FF13BF341969D62BD
            CF738AAF6ED6EA4B006882CE77A14ABFD255D2799903606830E4EF28E274070C
            1C67D74255041044C25C9CE43B4149F8B16735F41B8038DB9300E07F6924ECFB
            01D589CC0000000049454E44AE426082}
          TabOrder = 2
          OnClick = cxBtn_ItemCloseClick
          ExplicitLeft = 311
        end
      end
      object cxGrid_item: TcxGrid
        Left = 3
        Top = 55
        Width = 394
        Height = 452
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        ExplicitWidth = 399
        object cxGridTv_item: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnSorting = False
          OptionsView.GroupByBox = False
          object cxGridTv_item_name: TcxGridColumn
            Caption = #54408#47749
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object cxGridTv_item_temp: TcxGridColumn
            Caption = #44032#50676#50728#46020
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object cxGridTv_item_error: TcxGridColumn
            Caption = #54728#50857#48276#50948
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object cxGridTv_item_time: TcxGridColumn
            Caption = #44032#50676#49884#44036
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object cxGridTv_item_TError: TcxGridColumn
            Caption = #54728#50857#48276#50948
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object cxGridTv_item_ID: TcxGridColumn
            Caption = 'ID'
            Visible = False
            Options.Editing = False
            Width = 50
          end
        end
        object cxGridLv_item: TcxGridLevel
          GridView = cxGridTv_item
        end
      end
    end
    object cxSplitter_item: TcxSplitter
      Left = 403
      Top = 88
      Width = 8
      Height = 516
      HotZoneClassName = 'TcxMediaPlayer9Style'
      Control = cxGBox_set
      ExplicitLeft = 408
    end
  end
  object UniQuery_facility: TUniQuery
    ObjectView = True
    Left = 480
    Top = 200
  end
  object DS_Facility: TDataSource
    DataSet = UniQuery_facility
    Left = 480
    Top = 248
  end
  object cxEditRepository: TcxEditRepository
    Left = 488
    Top = 480
    PixelsPerInch = 96
    object cxEditRepository_Name: TcxEditRepositoryComboBoxItem
      Properties.Alignment.Horz = taCenter
    end
    object cxEditRepository_decision: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 2
      Properties.DefaultValue = False
      Properties.Items = <
        item
          Caption = #51201#54633
          Value = True
        end
        item
          Caption = #48512#51201#54633
          Value = False
        end>
    end
    object cxEditRepository_Reason: TcxEditRepositoryComboBoxItem
    end
  end
  object UniQuery_comm: TUniQuery
    ObjectView = True
    Left = 488
    Top = 360
  end
  object UniQuery_data: TUniQuery
    ObjectView = True
    Left = 1168
    Top = 432
  end
  object DS_Data: TDataSource
    DataSet = UniQuery_data
    Left = 1168
    Top = 480
  end
  object UniQuery_basic: TUniQuery
    ObjectView = True
    Left = 488
    Top = 424
  end
end
