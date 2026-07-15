inherited HaccpGeneralForm: THaccpGeneralForm
  Caption = 'HaccpGeneralForm'
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
      OnClick = cxBtn_DeleteClick
    end
    inherited cxBtn_Search: TcxButton
      Visible = False
    end
  end
  object cxGBox_list: TcxGroupBox
    Left = 708
    Top = 35
    Align = alRight
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 607
    Width = 550
    object cxGBox_ApprovalList: TcxGroupBox
      Left = 3
      Top = 3
      Align = alLeft
      PanelStyle.Active = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 601
      Width = 339
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
        Height = 126
        Width = 333
        object cxLabel119: TcxLabel
          Left = 202
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
          Height = 30
          Width = 100
          AnchorX = 252
          AnchorY = 36
        end
        object cxLabel120: TcxLabel
          Left = 103
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
          Height = 30
          Width = 100
          AnchorX = 153
          AnchorY = 36
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
          Height = 30
          Width = 100
          AnchorX = 54
          AnchorY = 36
        end
        object cxBtn_writer: TcxButton
          Tag = 4
          Left = 5
          Top = 80
          Width = 98
          Height = 35
          Caption = #45812#45817
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Green'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            6100000023744558745469746C65004164643B46696C653B41646446696C653B
            426172733B526962626F6E3B15DCAA0A000002E049444154785E65927F689555
            18C73FE7BDEFBDCDFD52BBCAC6AC3FC67E68615830DB168DB491DBAC086566B8
            612B35D655D141121B42E48FFE501B28669BD860FB4316CE864284DA2854C28A
            A9685413993437595DC7D6DDDAEEDEF73DE7E9EECD3B821D78CEF71C9E733E7C
            9F874701EAD0A99F7A14AC061004115080117F4766540C82C218F7FBBD91B272
            11310036A0C4C8EA0FB63D0F0002B387B9570E9EF86115A00066019E18109876
            34028800BE26210A0152420AED19E600B4A301D02290FC0C042C0502CA02E3E7
            66201680DADF550180E5033C0D08227E801226E27F71E9D6715A7BDEE6F0F9B5
            B47E5BC737D78FF1F4B22040A0697D37C6083EC0D506010C0AA5147F446FD0F6
            5D84901DA0BAE4431AD79D65434283B6CDCDE801229F9656D98134CB73CDFF1D
            8018884DFE49F7B583BCF94223E52B6A387FB593C6935B3877A583179757B0B1
            AC81F9E194F6773E2ECA3B50DBA32CC0725C8D08584AB8FA6B27CFE5AE21279C
            C368FC37EEDEEF636BE58984DE233A758B507A8CA2C2F28CB405A13D40C0F64B
            987560B8DD7F859AAA77F9BCFB10030F1E20C092AC4C3C2D34B79D263B2B8392
            E26C8C31AF033BFF2B41FB0E40C1586C84096ED27F7F906DAFB5B06FEB693C23
            EC4FE8F186AF181A1C6378FA471C47870165270188F85DB55506A3B128E90B27
            3976760B087C12F992A6CF3622C0FCC57146C727884FE991E41C589E0101DF66
            414E31BFDFF985C295634C7B717ABF7E824599F3F05CCDCA37061081A1BE2013
            31E722602C00ED6904782C6853595C4B6FEF20EEDFA96871487B7C92CD1F5591
            16FE07573B8C465DFAAE3B93C3F7C69B010D90FAD6FB1D976B779F914DBBCEC8
            919397E5687B8754EF79561ABE7846F65DCC97E69FF3129A27DB5B0A645DC372
            5DB2FEC95A20F4EA8EC2D9694C0516000B813090BDB464D14B2FD7E57655D6E7
            3FAC8C14C89AFAFC91559B73BB9E2A5B5C0ACC0354457D3E4A4448AEC44310B8
            D072573D0207937D0204701F8579E5BD3C01F817E1E75F4F0B44B2A300000000
            49454E44AE426082}
          TabOrder = 6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxBtn_writerClick
        end
        object cxBtn_review: TcxButton
          Tag = 5
          Left = 104
          Top = 80
          Width = 98
          Height = 35
          Caption = #44160#53664
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Green'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            6100000015744558745469746C6500436865636B3B4D61726B3B5469636B0B00
            C7240000026B49444154785E95924D48156B18C77F338D7A94B436816090828B
            8B94919BBE886304C5599CEA9A14145177211246AB3641F6B16861044610B408
            23C842FB2410B4ACB06BDDD55510823072532267A19E93E76BE6FDCAF3323910
            44F4303CFF7786797EFFE77978BD9B2FF6BE715DA7955F8589040CC63818345A
            99B13389D13D5EA9B87DDB05FE341EFC7B310EB89E5286824A912ABC8FDCA2F4
            F3BB9575952D48A9019C6580466B89D63FAAED4F51B11558585CA27A75259EE7
            A2748092060B2891941168AD4213EB132930323AC1FF935FA85B5FC3F12371A4
            F6114202E009A12C512AB5E2684AC931F67C7F708CB565BBB8717690AEAB5B48
            67965853E12382B003DF170855442AC9CC4C8AFEC7236C6DD9C4EE783323AF26
            A8ADDEC7A9F66EAEF49DA03D99205659812F0A148A3E165022E5FD1CD97C9EFE
            872FE9E9FA8F47AF6ED1737D809D1B4FD2D176817BC397A9AD536C68A822574C
            53EE6411225C621048842C10C880B644923BCFBA39DF7997C9E9C3FC55BF994C
            EE33E3538374FC93643E9BB2E355951510221C41488D6F013E750D352C6632DC
            7E728ED3477BC175B874AD93FD895616B2B380C618F0450E1128003C19683B93
            54826F6A9EA6E675BC1B9FE2E9EB5E1AEB9B70631962D5057C195877005FE6A3
            7B2084A628F30825D00616E51CDB7734F27CA88FBEE14F1C3BF437393F83C158
            773025C368075228029127500227BC44F3B9AF1C4CB652597E80B9F4478A4202
            7A05501405A20EA4B11DC4BC1AB02E1A6D0CE9FC1C0BB95930066F5585FD8E01
            6DECCE501680F18A3931363CF4210E267C88344CB6D605B4E5E1601081790B48
            6FA0673A017880CBEFC309D50002F0BF03C5148A5699E7E19C0000000049454E
            44AE426082}
          TabOrder = 7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxBtn_writerClick
        end
        object cxEdit_writer: TcxTextEdit
          Tag = 1
          Left = 4
          Top = 50
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
          Width = 100
        end
        object cxEdit_review: TcxTextEdit
          Tag = 2
          Left = 103
          Top = 50
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
          Width = 100
        end
        object cxBtn_confirm: TcxButton
          Tag = 6
          Left = 203
          Top = 80
          Width = 98
          Height = 35
          Caption = #49849#51064
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
          TabOrder = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxBtn_writerClick
        end
        object cxEdit_confirm: TcxTextEdit
          Tag = 3
          Left = 202
          Top = 50
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
          Width = 100
        end
      end
      object cxGrid_List: TcxGrid
        Left = 3
        Top = 207
        Width = 333
        Height = 391
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        object cxGridDBTv_List: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxGridDBTv_ListCellDblClick
          DataController.DataSource = DS_L
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTv_List_Date: TcxGridDBColumn
            Caption = #51216#44160#51068
            DataBinding.FieldName = 'CheckDate'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object cxGridDBTv_List_writer: TcxGridDBColumn
            Caption = #51089#49457#51088
            DataBinding.FieldName = 'Writer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object cxGridDBTv_List_review: TcxGridDBColumn
            Caption = #44160#53664#51088
            DataBinding.FieldName = 'Reviewer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object cxGridDBTv_List_confirm: TcxGridDBColumn
            Caption = #49849#51064#51088
            DataBinding.FieldName = 'Confirmer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object cxGridDBTv_List_division: TcxGridDBColumn
            Caption = #44396#48516
            DataBinding.FieldName = 'Division'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGridDBTv_List_id: TcxGridDBColumn
            Caption = 'id'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
        end
        object cxGridLv_List: TcxGridLevel
          GridView = cxGridDBTv_List
        end
      end
      object cxGBox_search: TcxGroupBox
        Left = 3
        Top = 129
        Align = alTop
        Caption = #47785#47197
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 2
        Height = 78
        Width = 333
        object cxDEdit_edate: TcxDateEdit
          Left = 101
          Top = 44
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
          TabOrder = 0
          Height = 25
          Width = 100
        end
        object cxLabel20: TcxLabel
          Left = 2
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
          Height = 25
          Width = 199
          AnchorX = 102
          AnchorY = 33
        end
        object cxDEdit_sdate: TcxDateEdit
          Left = 2
          Top = 44
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
          TabOrder = 2
          Height = 25
          Width = 100
        end
        object cxBtn_CSearch: TcxButton
          Left = 201
          Top = 21
          Width = 80
          Height = 47
          Caption = #44160#49353
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Lilian'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000000097048597300000EC200000EC20115284A8000000012744558745469
            746C650046696E643B5365617263683BAD078F620000016A49444154785EA591
            CD4A02611486BD8A46A789F1278568DFD65DB408341A1DB5C69F748CB983C84D
            942EEC565A0981E6FC383FB60964EA0A0A6951B619086C33703A332048F6CDC6
            17DE8FB3799F73CE774200B096FD67A16DD14CC71B660FFD1EAB1B9E7BD19A99
            0EAD6A159014CD56B26941EA7C0C471D1BB2373624C43144AB06B015BD1504F0
            3B27450B326D1BA65F3FB090571F5E4D802D8F80A98C0E8800EC64ED4A8F7EE0
            AF5E3FE6906A18C008EA3D11106F584EF1F60548CA759E8139D1666440DD740A
            5D32806BDB0850C880E89961ED4816BC7DCEFF5D2151D7812E05ACE09D8AAD99
            AEF761D3D9D22762BD7FF9049B25052225B51D7846B632BAC07341ACAA43F67A
            0219342B6818D6BC30448AAA4BF3324F02F862CACADE96A0F79953CDA105348E
            4D17D52E861180531414974208014056981F4A1886302F4398935D8A93791280
            0CE18612951F009597813AEE7F1300C1DAC83D34A97CDFD9E00677CB8075BC3E
            E0171A811CE8F7E0E9CD0000000049454E44AE426082}
          TabOrder = 3
          OnClick = cxBtn_CSearchClick
        end
      end
    end
    object cxGBox_category: TcxGroupBox
      Left = 342
      Top = 3
      Align = alClient
      Caption = #44288#47532' '#47785#47197
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      Style.TransparentBorder = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 601
      Width = 205
      object cxGridDB_Category: TcxGrid
        Left = 3
        Top = 20
        Width = 199
        Height = 572
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        object cxGridDBTv_Cagtegory: TcxGridDBTableView
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
          OnCellDblClick = cxGridDBTv_CagtegoryCellDblClick
          DataController.DataSource = DS_C
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
          OptionsView.CellAutoHeight = True
          OptionsView.DataRowHeight = 30
          OptionsView.GroupByBox = False
          object cxGridDBTv_Cagtegory_No: TcxGridDBColumn
            Caption = #50577#49885#48264#54840
            DataBinding.FieldName = 'FormNo'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cxGridDBTv_Cagtegory_Name: TcxGridDBColumn
            Caption = #50577#49885#47749
            DataBinding.FieldName = 'FormName'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 200
          end
          object cxGridDBTv_Cagtegory_NameEng: TcxGridDBColumn
            DataBinding.FieldName = 'FormNameEng'
            DataBinding.IsNullValueType = True
          end
        end
        object cxGridLv_Cagtegory: TcxGridLevel
          GridView = cxGridDBTv_Cagtegory
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 700
    Top = 35
    Width = 8
    Height = 607
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salRight
  end
  object cxGBox_Input: TcxGroupBox
    Left = 0
    Top = 35
    Align = alClient
    Caption = 'cxGBox_Input'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 3
    Height = 607
    Width = 700
  end
  object UniQuery_C: TUniQuery
    Left = 1152
    Top = 416
  end
  object DS_C: TDataSource
    DataSet = UniQuery_C
    Left = 1152
    Top = 464
  end
  object DS_L: TDataSource
    DataSet = UniSP_L
    Left = 912
    Top = 472
  end
  object UniSP_L: TUniStoredProc
    Left = 912
    Top = 424
  end
end
