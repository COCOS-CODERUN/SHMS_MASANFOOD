inherited CCPTempCheckForm: TCCPTempCheckForm
  Caption = 'CCPTempCheckForm'
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
    end
    inherited cxBtn_Search: TcxButton
      OnClick = cxBtn_SearchClick
    end
  end
  object cxGBox_Right: TcxGroupBox
    Left = 878
    Top = 35
    Align = alRight
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 607
    Width = 380
    object cxGBoxApproval: TcxGroupBox
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
      Width = 374
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
      object cxBtnQAOK: TcxButton
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
        OnClick = cxBtnQAOKClick
      end
      object cxBtnProdOK: TcxButton
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
        OnClick = cxBtnProdOKClick
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
      object cxBtnHaccpOK: TcxButton
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
        OnClick = cxBtnProdOKClick
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
      Width = 374
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
        Width = 368
      end
      object cxGrid_data: TcxGrid
        Left = 3
        Top = 65
        Width = 368
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
          object cxGridDBTv_data_no: TcxGridDBColumn
            Caption = #49692#48264
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnGetDisplayText = cxGridDBTv_data_noGetDisplayText
            HeaderAlignmentHorz = taCenter
            Width = 40
          end
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
  object cxGbox_Main: TcxGroupBox
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
    Width = 878
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
      Width = 872
      object cxLbl2: TcxLabel
        Left = 202
        Top = 20
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
        Width = 120
        AnchorX = 262
        AnchorY = 34
      end
      object cxDEdit_date: TcxDateEdit
        Left = 202
        Top = 47
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
        TabOrder = 1
        Height = 28
        Width = 120
      end
      object cxLbl1: TcxLabel
        Left = 3
        Top = 20
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
        Width = 200
        AnchorX = 103
        AnchorY = 34
      end
      object cxLkCBBox_Facility: TcxLookupComboBox
        Left = 3
        Top = 47
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
        TabOrder = 3
        Height = 28
        Width = 200
      end
      object cxLabel2: TcxLabel
        Left = 683
        Top = 20
        AutoSize = False
        Caption = #52572#51200#50728#46020
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
        Width = 80
        AnchorX = 723
        AnchorY = 34
      end
      object cxEdit_min: TcxTextEdit
        Left = 683
        Top = 47
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
        TabOrder = 6
        Height = 28
        Width = 80
      end
      object cxLabel3: TcxLabel
        Left = 762
        Top = 20
        AutoSize = False
        Caption = #52572#44256#50728#46020
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
        Width = 80
        AnchorX = 802
        AnchorY = 34
      end
      object cxEdit_max: TcxTextEdit
        Left = 762
        Top = 47
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
        TabOrder = 8
        Height = 28
        Width = 80
      end
      object cxLabel4: TcxLabel
        Left = 603
        Top = 20
        AutoSize = False
        Caption = #54788#51116' '#50728#46020
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
        Width = 80
        AnchorX = 643
        AnchorY = 34
      end
      object cxLabel5: TcxLabel
        Left = 403
        Top = 20
        AutoSize = False
        Caption = #52404#53356' '#49884#44036
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
        Width = 200
        AnchorX = 503
        AnchorY = 34
      end
      object cxEdit_CheckDate: TcxTextEdit
        Left = 403
        Top = 47
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
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 11
        Height = 28
        Width = 200
      end
      object cxEdit_NowTemp: TcxTextEdit
        Left = 603
        Top = 47
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
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 10
        Height = 28
        Width = 80
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 3
      Top = 88
      Align = alTop
      PanelStyle.Active = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 162
      Width = 872
      object cxGrid_TempChart: TcxGrid
        Left = 3
        Top = 3
        Width = 866
        Height = 156
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        object cxGridDBTv_TempChart: TcxGridDBChartView
          Categories.DataBinding.FieldName = 'TempTime'
          DataController.DataSource = DS_TC
          DiagramLine.Active = True
          DiagramLine.Legend.Position = cppNone
          DiagramLine.AxisCategory.GridLines = False
          DiagramLine.AxisValue.GridLines = False
          DiagramLine.Values.CaptionPosition = ldvcpAbove
          DiagramLine.Values.LineWidth = 2
          DiagramLine.Values.MarkerStyle = cmsCircle
          object cxGridDBTv_TempChartSeries1: TcxGridDBChartSeries
            DataBinding.FieldName = 'Temp'
            DisplayText = #50728#46020
            GroupSummaryKind = skCount
          end
        end
        object cxGridLv_TempChart: TcxGridLevel
          GridView = cxGridDBTv_TempChart
        end
      end
    end
    object cxGBox_List: TcxGroupBox
      Left = 3
      Top = 250
      Align = alClient
      PanelStyle.Active = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 2
      Height = 354
      Width = 872
      object cxGBox_All: TcxGroupBox
        Left = 692
        Top = 3
        Align = alRight
        Caption = #50728#46020' '#51204#52404' '#48372#44592
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 0
        Height = 348
        Width = 177
        object cxGrid_List: TcxGrid
          Left = 3
          Top = 20
          Width = 171
          Height = 319
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Lilian'
          object cxGridDBTv_List: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DS_All
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnHorzSizing = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Editing = False
            OptionsView.GroupByBox = False
            object cxGridDBTv_List_seq: TcxGridDBColumn
              Caption = 'No.'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              OnGetDisplayText = cxGridDBTv_data_noGetDisplayText
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
            object cxGridDBTv_List_time: TcxGridDBColumn
              Caption = #49884#44036
              DataBinding.FieldName = 'Time'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object cxGridDBTv_List_temp: TcxGridDBColumn
              Caption = #50728#46020
              DataBinding.FieldName = 'Temp'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
          end
          object cxGridLv_List: TcxGridLevel
            GridView = cxGridDBTv_List
          end
        end
      end
      object cxSplitter_alltemp: TcxSplitter
        Left = 684
        Top = 3
        Width = 8
        Height = 348
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salRight
        Control = cxGBox_All
      end
      object cxGrid_temp: TcxGrid
        Left = 3
        Top = 3
        Width = 681
        Height = 348
        Align = alClient
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        object cxGridTv_temp: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGridTv_tempCustomDrawCell
          OnEditing = cxGridTv_tempEditing
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridTv_temp_time: TcxGridColumn
            Caption = #49884#44036
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 70
          end
          object cxGridTv_temp_temp: TcxGridColumn
            Caption = #50728#46020
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 70
          end
          object cxGridTv_temp_basic: TcxGridColumn
            Caption = #54620#44228#44592#51456' '#51060#53448' '#49324#50976
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.OnEditValueChanged = cxGridTv_temp_EditValueChanged
            RepositoryItem = cxEditRepositoryCBBox_reason
            HeaderAlignmentHorz = taCenter
            Width = 250
          end
          object cxGridTv_temp_contents: TcxGridColumn
            Caption = #51312#52824' '#45236#50669
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.OnEditValueChanged = cxGridTv_temp_EditValueChanged
            HeaderAlignmentHorz = taCenter
            Width = 400
          end
          object cxGridTv_temp_ModifiedTemp: TcxGridColumn
            Caption = #49688#51221#50728#46020
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.0;-,0.0;'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object cxGridTv_temp_ModifiedReason: TcxGridColumn
            Caption = #50728#46020' '#49688#51221' '#49324#50976
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 250
          end
          object cxGridTv_temp_DataCheck: TcxGridColumn
            Visible = False
          end
          object cxGridTv_temp_CheckDate: TcxGridColumn
            Width = 150
          end
        end
        object cxGridLv_temp: TcxGridLevel
          GridView = cxGridTv_temp
        end
      end
    end
  end
  object DS_Data: TDataSource
    DataSet = FDQuery_data
    Left = 1168
    Top = 424
  end
  object DS_Facility: TDataSource
    DataSet = FDQuery_facility
    Left = 48
    Top = 216
  end
  object DS_basic: TDataSource
    DataSet = FDQuery_basic
    Left = 168
    Top = 216
  end
  object cxEditRepository: TcxEditRepository
    Left = 328
    Top = 312
    PixelsPerInch = 96
    object cxEditRepositoryCBBox_reason: TcxEditRepositoryComboBoxItem
    end
  end
  object DS_TC: TDataSource
    DataSet = FDQuery_TC
    Left = 752
    Top = 200
  end
  object DS_All: TDataSource
    DataSet = FDQuery_All
    Left = 816
    Top = 440
  end
  object FDQuery_data: TUniQuery
    ObjectView = True
    Left = 1168
    Top = 376
  end
  object FDQuery_facility: TUniQuery
    ObjectView = True
    Left = 48
    Top = 168
  end
  object FDQuery_basic: TUniQuery
    ObjectView = True
    Left = 168
    Top = 168
  end
  object FDQuery_TC: TUniQuery
    SQL.Strings = (
      'DECLARE @t_datetime char(10)  = '#39'2021-10-07'#39
      'DECLARE @start_date DATETIME = @t_datetime; -- '#49884#51089#49884#44036
      'DECLARE @end_date DATETIME = @t_datetime ; -- '
      ' '
      'WITH    AllDays'
      #9#9#9'AS ( SELECT   @start_date AS [Date]'
      #9#9#9#9'UNION ALL'
      #9#9#9#9'SELECT   DATEADD(HOUR, 1, [Date])'
      #9#9#9#9'FROM     AllDays'
      #9#9#9#9'WHERE    [Date] < DATEADD(HOUR, 23, @end_date)  )'
      'SELECT format(F.Date, '#39'HH'#39')+ '#39#49884#39' as TempTime'
      #9#9',A.[Temp] AS Temp'
      #9'FROM ('
      #9#9'SELECT [Date]'
      #9#9'FROM   AllDays '
      #9#9') AS F'
      #9'LEFT OUTER JOIN('
      #9'SELECT A.[T_DateTime], A.[Temp], A.[FridgeNo]'
      #9#9'FROM ('
      
        #9#9'SELECT DATEADD(HOUR, DATEDIFF(HOUR, 0, [CheckDate]) / 1 * 1, 0' +
        ') AS T_DateTime'
      #9#9#9#9',[Temp] '
      #9#9#9#9',[FridgeNo]'
      
        #9#9#9#9',ROW_NUMBER() OVER (PARTITION BY [FridgeNo], DATEDIFF(HOUR, ' +
        '0, [CheckDate]) / 1 ORDER BY [CheckDate]) AS ROW'
      #9#9#9'FROM [dbo].[TEMPCHECK]'
      #9#9#9'WHERE CONVERT(VARCHAR(10), [CheckDate], 120) = @t_datetime '
      #9#9#9'AND [FridgeNo] = 1'
      #9#9') A'
      #9'WHERE A.[ROW] = 2'
      #9') AS A'
      #9'ON A.[T_DateTime] = F.[Date]'
      ''
      #9'ORDER BY F.[Date]')
    ObjectView = True
    Left = 752
    Top = 152
  end
  object FDQuery_comm: TUniQuery
    SQL.Strings = (
      'DECLARE @t_datetime char(10)  = '#39'2021-10-07'#39
      'DECLARE @start_date DATETIME = @t_datetime; -- '#49884#51089#49884#44036
      'DECLARE @end_date DATETIME = @t_datetime ; -- '
      ' '
      'WITH    AllDays'
      #9#9#9'AS ( SELECT   @start_date AS [Date]'
      #9#9#9#9'UNION ALL'
      #9#9#9#9'SELECT   DATEADD(HOUR, 1, [Date])'
      #9#9#9#9'FROM     AllDays'
      #9#9#9#9'WHERE    [Date] < DATEADD(HOUR, 23, @end_date)  )'
      'SELECT format(F.Date, '#39'HH'#39')+ '#39#49884#39' as TempTime'
      #9#9',A.[Temp] AS Temp'
      #9'FROM ('
      #9#9'SELECT [Date]'
      #9#9'FROM   AllDays '
      #9#9') AS F'
      #9'LEFT OUTER JOIN('
      #9'SELECT A.[T_DateTime], A.[Temp], A.[FridgeNo]'
      #9#9'FROM ('
      
        #9#9'SELECT DATEADD(HOUR, DATEDIFF(HOUR, 0, [CheckDate]) / 1 * 1, 0' +
        ') AS T_DateTime'
      #9#9#9#9',[Temp] '
      #9#9#9#9',[FridgeNo]'
      
        #9#9#9#9',ROW_NUMBER() OVER (PARTITION BY [FridgeNo], DATEDIFF(HOUR, ' +
        '0, [CheckDate]) / 1 ORDER BY [CheckDate]) AS ROW'
      #9#9#9'FROM [dbo].[TEMPCHECK]'
      #9#9#9'WHERE CONVERT(VARCHAR(10), [CheckDate], 120) = @t_datetime '
      #9#9#9'AND [FridgeNo] = 1'
      #9#9') A'
      #9'WHERE A.[ROW] = 2'
      #9') AS A'
      #9'ON A.[T_DateTime] = F.[Date]'
      ''
      #9'ORDER BY F.[Date]')
    ObjectView = True
    Left = 456
    Top = 184
  end
  object FDQuery_All: TUniQuery
    SQL.Strings = (
      'DECLARE @t_datetime char(10)  = '#39'2021-10-07'#39
      'DECLARE @start_date DATETIME = @t_datetime; -- '#49884#51089#49884#44036
      'DECLARE @end_date DATETIME = @t_datetime ; -- '
      ' '
      'WITH    AllDays'
      #9#9#9'AS ( SELECT   @start_date AS [Date]'
      #9#9#9#9'UNION ALL'
      #9#9#9#9'SELECT   DATEADD(HOUR, 1, [Date])'
      #9#9#9#9'FROM     AllDays'
      #9#9#9#9'WHERE    [Date] < DATEADD(HOUR, 23, @end_date)  )'
      'SELECT format(F.Date, '#39'HH'#39')+ '#39#49884#39' as TempTime'
      #9#9',A.[Temp] AS Temp'
      #9'FROM ('
      #9#9'SELECT [Date]'
      #9#9'FROM   AllDays '
      #9#9') AS F'
      #9'LEFT OUTER JOIN('
      #9'SELECT A.[T_DateTime], A.[Temp], A.[FridgeNo]'
      #9#9'FROM ('
      
        #9#9'SELECT DATEADD(HOUR, DATEDIFF(HOUR, 0, [CheckDate]) / 1 * 1, 0' +
        ') AS T_DateTime'
      #9#9#9#9',[Temp] '
      #9#9#9#9',[FridgeNo]'
      
        #9#9#9#9',ROW_NUMBER() OVER (PARTITION BY [FridgeNo], DATEDIFF(HOUR, ' +
        '0, [CheckDate]) / 1 ORDER BY [CheckDate]) AS ROW'
      #9#9#9'FROM [dbo].[TEMPCHECK]'
      #9#9#9'WHERE CONVERT(VARCHAR(10), [CheckDate], 120) = @t_datetime '
      #9#9#9'AND [FridgeNo] = 1'
      #9#9') A'
      #9'WHERE A.[ROW] = 2'
      #9') AS A'
      #9'ON A.[T_DateTime] = F.[Date]'
      ''
      #9'ORDER BY F.[Date]')
    ObjectView = True
    Left = 816
    Top = 392
  end
  object FDQuery_dataDetail: TUniQuery
    ObjectView = True
    Left = 976
    Top = 376
  end
  object FDQuery_check: TUniQuery
    SQL.Strings = (
      'DECLARE @t_datetime char(10)  = '#39'2021-10-07'#39
      'DECLARE @start_date DATETIME = @t_datetime; -- '#49884#51089#49884#44036
      'DECLARE @end_date DATETIME = @t_datetime ; -- '
      ' '
      'WITH    AllDays'
      #9#9#9'AS ( SELECT   @start_date AS [Date]'
      #9#9#9#9'UNION ALL'
      #9#9#9#9'SELECT   DATEADD(HOUR, 1, [Date])'
      #9#9#9#9'FROM     AllDays'
      #9#9#9#9'WHERE    [Date] < DATEADD(HOUR, 23, @end_date)  )'
      'SELECT format(F.Date, '#39'HH'#39')+ '#39#49884#39' as TempTime'
      #9#9',A.[Temp] AS Temp'
      #9'FROM ('
      #9#9'SELECT [Date]'
      #9#9'FROM   AllDays '
      #9#9') AS F'
      #9'LEFT OUTER JOIN('
      #9'SELECT A.[T_DateTime], A.[Temp], A.[FridgeNo]'
      #9#9'FROM ('
      
        #9#9'SELECT DATEADD(HOUR, DATEDIFF(HOUR, 0, [CheckDate]) / 1 * 1, 0' +
        ') AS T_DateTime'
      #9#9#9#9',[Temp] '
      #9#9#9#9',[FridgeNo]'
      
        #9#9#9#9',ROW_NUMBER() OVER (PARTITION BY [FridgeNo], DATEDIFF(HOUR, ' +
        '0, [CheckDate]) / 1 ORDER BY [CheckDate]) AS ROW'
      #9#9#9'FROM [dbo].[TEMPCHECK]'
      #9#9#9'WHERE CONVERT(VARCHAR(10), [CheckDate], 120) = @t_datetime '
      #9#9#9'AND [FridgeNo] = 1'
      #9#9') A'
      #9'WHERE A.[ROW] = 2'
      #9') AS A'
      #9'ON A.[T_DateTime] = F.[Date]'
      ''
      #9'ORDER BY F.[Date]')
    ObjectView = True
    Left = 456
    Top = 240
  end
end
