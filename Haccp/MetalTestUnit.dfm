object MetalTestForm: TMetalTestForm
  Left = 0
  Top = 0
  Caption = #49884#54200#53580#49828#53944
  ClientHeight = 406
  ClientWidth = 1098
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object cxGrid_MetalCheck: TcxGrid
    Left = 0
    Top = 124
    Width = 1098
    Height = 91
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    object cxGridTv_MetalCheck: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.DataRowHeight = 50
      OptionsView.GroupByBox = False
      object cxGridTv_MetalCheck_fe: TcxGridColumn
        Caption = 'Fe'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnCustomDrawCell = cxGridTv_MetalCheck_feCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridTv_MetalCheck_sus: TcxGridColumn
        Caption = 'Sus'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnCustomDrawCell = cxGridTv_MetalCheck_susCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridTv_MetalCheck_goods: TcxGridColumn
        Caption = #51228#54408
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnCustomDrawCell = cxGridTv_MetalCheck_goodsCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridTv_MetalCheck_FeGoods: TcxGridColumn
        Caption = 'Fe + '#51228#54408
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnCustomDrawCell = cxGridTv_MetalCheck_FeGoodsCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridTv_MetalCheck_SusGoods: TcxGridColumn
        Caption = 'Sus + '#51228#54408
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnCustomDrawCell = cxGridTv_MetalCheck_SusGoodsCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
    end
    object cxGridLv_MetalCheck: TcxGridLevel
      GridView = cxGridTv_MetalCheck
    end
  end
  object cxBtn_MetalCheck: TcxButton
    AlignWithMargins = True
    Left = 1
    Top = 216
    Width = 1096
    Height = 189
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alBottom
    Caption = 'Fe'#47564' '#53685#44284#49884#53020' '#51452#49464#50836' !!!'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Green'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxBtn_MetalCheckClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 51
    Width = 1098
    Height = 73
    Align = alTop
    TabOrder = 2
    object cxBtn_finish: TcxButton
      Left = 897
      Top = 1
      Width = 100
      Height = 71
      Align = alRight
      Caption = #46321#47197
      Enabled = False
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
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtn_finishClick
    end
    object cxBtn_Non: TcxButton
      Left = 997
      Top = 1
      Width = 100
      Height = 71
      Align = alRight
      Caption = #52712#49548
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
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxBtn_NonClick
    end
    object Panel_Title: TPanel
      Left = 101
      Top = 1
      Width = 796
      Height = 71
      Align = alClient
      Alignment = taLeftJustify
      Caption = '  '#49884#54200#47560#45796' '#50500#47000' '#48260#53948#51012' '#45580#47084#51452#49464#50836
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label_Cnt: TLabel
        Left = 783
        Top = 1
        Width = 12
        Height = 69
        Align = alRight
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 45
      end
      object Label1: TLabel
        Left = 388
        Top = 16
        Width = 114
        Height = 28
        Caption = #45824#44592#49884#44036'('#52488')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object cxCEdit_Cnt: TcxCurrencyEdit
        Left = 526
        Top = 16
        EditValue = 180.000000000000000000
        Properties.DisplayFormat = ',0'
        TabOrder = 0
        Visible = False
        Width = 53
      end
    end
    object cxButton1: TcxButton
      Left = 1
      Top = 1
      Width = 100
      Height = 71
      Align = alLeft
      Caption = #52488#44592#54868
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000C744558745469746C650052657365743B64CF80690000
        037C49444154785E7D537D4C93471C3E9DC84CB075D9E660B620BCC8AA282B5A
        A5B448410ACC5293452A5DA19DA8630A5BAD6CD6CD40834528858A0E025DE563
        D16D2A1FBA2053C10E862351DC47A81998322653B711179431981A4AD99EBDEF
        9BB23F5CB24B9EDC2F77F77CFC2E77E47FC63C1AF39FC0BCFF102C6764A4AC39
        9194B76C22B6B3492C715F79CC92AAF6578A6B3B365FFFF0B262D6E154CCDA3B
        15D7ED1D9BCD05F6382E2354DF9D46EABB9584143648C8D46C1F99FEDB4D1897
        830E89BCF10BCDAF3D8365B835761E939E7E162363EDE87557E0E32BBA5F2A5B
        E572E6EC71A78290FC6A1199F05E61C9864A91DADEA6C5CDD1D3A045F1BBF74B
        DCF774E281C78909EF57F8F3AF6FF1C3BD16B45CCBC591D6E40CB6ADDD65516C
        6CE51B5450619DFCD1D7C375189BBE88EEC152583E514153B086015D67E0C668
        0DC667BA688353A8BFFCDA237DE9FA40A235091881A7B20E0A8E9CE83460F471
        0BFA6E9720BF2ADEA3783BC418A709A2A4EA402A790FEF706EB9D4DB35508C31
        CF05385D66947C9A504154FB294660E1B6FDE183EDFD7BE19EB4A1BA4D838C03
        1107E8753F269D0F0B958650B3AD598D9F1ED6C175D781432765030CD99F0677
        8B3E64EAFCF0167CFE73128C761956443F13E4DB9BFF87F72ADB66BC8AB75C7F
        3416439395181A77A0B0216E86ECB18826F2AC22BC55B11E67DC6234DD12A2A0
        2E11FB8EC520FF98F8A15C1DC6BDEFE9622F395543051B6B64E8FD6D072EDD7E
        15EFD688A7C8C6CCC0F78A1A537163DC8AA61F4538351C09D783C368E8CCC60E
        93B08489EE6BC13FC7BCD67CFC9216CD2342D4F7899157BE6E902C7ED68F9B90
        FDC29DEAAB1138E15E8593432BE1F86E15761547DF5D16CE592A8C0F7C5E92C6
        5F9E655C6D2C6A48F57CE67A9D365903EBD93868DF5FFD0113CD2F3A8DABCD3C
        C4C74737052CF2ED2F236D57844E961EB26167917066AF4D82A3ADE938D79F83
        73239B607346E2CDD2B58F25CA6561736F3E6043FA921E535B302C1D2F61AB5E
        D043AF2D551956F69CBEB61DBDA30674DCD1A069580ACB4501765BA390A20BCD
        61DB136DE330220B28F1A298E4DCE7BC3A53A45794F2626C5266A82ECF1A8346
        572CAABF0987F90205BD9D82EA9D15F7A45B796A9AF3346BBE4EB5782EC5A228
        65406DCAF6B05ABAE6246753A68D19FCEF13B28291A80D864CC31F90A6F3AAF8
        020E6FEE7DA4EC0C25FF0EDF77F5F761816F66D4B93E0430AE4F7EEB7F004FCE
        9AEBD9E212700000000049454E44AE426082}
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1098
    Height = 51
    Align = alTop
    TabOrder = 3
    object cxLbl1: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      AutoSize = False
      Caption = #49444#48708' '#44396#48516
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
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
      Height = 49
      Width = 120
      AnchorX = 61
      AnchorY = 26
    end
    object cxLkCBBox_Facility: TcxLookupComboBox
      Left = 121
      Top = 1
      Align = alLeft
      AutoSize = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'MetalNo'
      Properties.ListColumns = <
        item
          Width = 150
          FieldName = 'Name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_Facility
      Properties.OnEditValueChanged = cxLkCBBox_FacilityPropertiesEditValueChanged
      Style.Color = 14811105
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
      Style.Font.Name = 'Segoe UI'
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
      TabOrder = 1
      Height = 49
      Width = 160
    end
    object cxLbl2: TcxLabel
      Left = 281
      Top = 1
      Align = alLeft
      AutoSize = False
      Caption = #51216#44160#51068#51088
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -17
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
      Height = 49
      Width = 120
      AnchorX = 341
      AnchorY = 26
    end
    object cxDEdit_date: TcxDateEdit
      Left = 401
      Top = 1
      Align = alLeft
      AutoSize = False
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.DisplayFormat = 'yyyy-MM-dd'
      Properties.EditFormat = 'yyyy-MM-dd'
      Properties.ReadOnly = True
      Style.Color = cl3DLight
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
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
      TabOrder = 3
      Height = 49
      Width = 160
    end
    object cxBtn_Goods: TcxButton
      AlignWithMargins = True
      Left = 562
      Top = 2
      Width = 95
      Height = 47
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #54408#47785' '#50672#44208
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
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxBtn_GoodsClick
    end
    object cxEdit_ItemName: TcxTextEdit
      Left = 658
      Top = 1
      Align = alClient
      AutoSize = False
      Enabled = False
      ParentColor = True
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
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
      TabOrder = 5
      Height = 49
      Width = 439
    end
    object cxEdit_ItemID: TcxTextEdit
      Left = 745
      Top = 15
      AutoSize = False
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
      Visible = False
      Height = 30
      Width = 54
    end
  end
  object Timer_check: TTimer
    Enabled = False
    OnTimer = Timer_checkTimer
    Left = 444
    Top = 276
  end
  object DS_Facility: TDataSource
    DataSet = FDQuery_facility
    Left = 128
    Top = 168
  end
  object FDQuery_facility: TUniQuery
    ObjectView = True
    Left = 48
    Top = 168
  end
  object UniQuery_Temp: TUniQuery
    Left = 552
    Top = 304
  end
end
