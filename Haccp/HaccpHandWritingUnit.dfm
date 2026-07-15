inherited HaccpHandWritingForm: THaccpHandWritingForm
  Caption = 'HaccpHandWritingForm'
  ClientWidth = 1245
  OnCreate = FormCreate
  ExplicitWidth = 1261
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    ExplicitWidth = 1245
    Width = 1245
    inherited cxBtn_New: TcxButton
      OnClick = cxBtn_NewClick
    end
    inherited cxBtn_Save: TcxButton
      OnClick = cxBtn_SaveClick
    end
    inherited cxBtn_Delete: TcxButton
      OnClick = cxBtn_DeleteClick
    end
    inherited cxBtn_Close: TcxButton
      Left = 1156
      ExplicitLeft = 1156
    end
    inherited cxBtn_Search: TcxButton
      Visible = False
      OnClick = cxBtn_searchClick
    end
  end
  object cxGBoxLeft: TcxGroupBox
    Left = 0
    Top = 35
    Align = alLeft
    PanelStyle.Active = True
    Style.Edges = [bLeft, bRight]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 607
    Width = 300
    object cxGBoxCustomerSearch: TcxGroupBox
      Left = 3
      Top = 1
      Align = alClient
      Caption = 'HACCP'#45824#51109' '#47785#47197
      Style.Edges = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 605
      Width = 294
      object cxGridFormName: TcxGrid
        Left = 1
        Top = 18
        Width = 292
        Height = 580
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Lilian'
        object cxGridDBTvFormName: TcxGridDBTableView
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
          FindPanel.Behavior = fcbFilter
          FindPanel.DisplayMode = fpdmAlways
          FindPanel.InfoText = #44160#49353#54624' '#53581#49828#53944#47484' '#51077#47141#54616#49901#49884#50724'...'
          FindPanel.ShowClearButton = False
          FindPanel.ShowCloseButton = False
          FindPanel.ShowFindButton = False
          FindPanel.ShowNextButton = False
          FindPanel.ShowPreviousButton = False
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxGridDBTvFormNameCellDblClick
          DataController.DataSource = DS_Menu
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          object cxGridDBTvFormNameListID: TcxGridDBColumn
            DataBinding.FieldName = 'ListID'
            DataBinding.IsNullValueType = True
            Visible = False
          end
          object cxGridDBTvFormNameDivision: TcxGridDBColumn
            Caption = #44396#48516
            DataBinding.FieldName = 'FormNo'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
            Width = 80
          end
          object cxGridDBTvFormNameFormName: TcxGridDBColumn
            Caption = 'HACCP'#45824#51109
            DataBinding.FieldName = 'FormName'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 200
          end
        end
        object cxGridLvFormName: TcxGridLevel
          GridView = cxGridDBTvFormName
        end
      end
    end
  end
  object cxSplitter: TcxSplitter
    Left = 300
    Top = 35
    Width = 8
    Height = 607
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGBoxLeft
  end
  object cxGroupBox2: TcxGroupBox
    Left = 308
    Top = 35
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 3
    Height = 607
    Width = 937
    object cxGBoxSearch: TcxGroupBox
      Left = 3
      Top = 3
      Align = alClient
      PanelStyle.Active = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 601
      Width = 931
      object cxGBox_list: TcxGroupBox
        Left = 3
        Top = 172
        Align = alClient
        Caption = #47785#47197
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 0
        Height = 426
        Width = 925
        object cxGrid_list: TcxGrid
          Left = 3
          Top = 20
          Width = 919
          Height = 397
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'Lilian'
          object cxGridDBTV_list: TcxGridDBTableView
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
            OnCellDblClick = cxGridDBTV_listCellDblClick
            DataController.DataSource = DS_L
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.NavigatorHints = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Appending = True
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.GroupByHeaderLayout = ghlHorizontal
            OptionsView.GroupSummaryLayout = gslAlignWithColumns
            object cxGridDBTV_list_ListID: TcxGridDBColumn
              DataBinding.FieldName = 'hdw_Id'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
            end
            object cxGridDBTV_list_date: TcxGridDBColumn
              Caption = #46321#47197#51068#51088
              DataBinding.FieldName = 'Rdate'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Width = 120
            end
            object cxGridDBTV_list_FormName: TcxGridDBColumn
              Caption = 'HACCP '#44288#47532' '#45824#51109#47749
              DataBinding.FieldName = 'FormName'
              DataBinding.IsNullValueType = True
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Width = 250
            end
            object cxGridDBTV_list_FileName: TcxGridDBColumn
              Caption = #52392#48512#54028#51068#47749
              DataBinding.FieldName = 'FileName'
              DataBinding.IsNullValueType = True
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Width = 300
            end
            object cxGridDBTV_list_Remarks: TcxGridDBColumn
              Caption = #48708#44256
              DataBinding.FieldName = 'Remarks'
              DataBinding.IsNullValueType = True
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Moving = False
              Width = 300
            end
            object cxGridDBTV_list_Writer: TcxGridDBColumn
              Caption = #51089#49457#51088
              DataBinding.FieldName = 'Writer'
              DataBinding.IsNullValueType = True
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
          end
          object cxGridLv_list: TcxGridLevel
            GridView = cxGridDBTV_list
          end
        end
      end
      object cxGBox_Report: TcxGroupBox
        Left = 3
        Top = 3
        Align = alTop
        PanelStyle.Active = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 1
        Height = 169
        Width = 925
        object cxLabel1: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 30
          Margins.Left = 1
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 0
          AutoSize = False
          Caption = 'HACCP '#44288#47532' '#45824#51109#47749
          Style.BorderStyle = ebsOffice11
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
          Height = 26
          Width = 140
          AnchorX = 75
          AnchorY = 43
        end
        object cxLabel2: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 5
          Margins.Left = 1
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 0
          AutoSize = False
          Caption = #46321#47197#51068#51088
          Style.BorderStyle = ebsOffice11
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
          Height = 26
          Width = 140
          AnchorX = 75
          AnchorY = 18
        end
        object cxDEdit_Date: TcxDateEdit
          Left = 142
          Top = 5
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
          Height = 26
          Width = 170
        end
        object cxLabel3: TcxLabel
          AlignWithMargins = True
          Left = 311
          Top = 5
          Margins.Left = 1
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 0
          AutoSize = False
          Caption = #51089#49457#51088
          Style.BorderStyle = ebsOffice11
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
          Height = 26
          Width = 100
          AnchorX = 361
          AnchorY = 18
        end
        object cxEdit_writer: TcxTextEdit
          Left = 408
          Top = 5
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
          TabOrder = 4
          Height = 26
          Width = 185
        end
        object cxEdit_FormName: TcxTextEdit
          Left = 142
          Top = 30
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
          TabOrder = 5
          Height = 26
          Width = 451
        end
        object cxLabel7: TcxLabel
          Left = 5
          Top = 55
          AutoSize = False
          Caption = #52392#48512#54028#51068
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
          Width = 140
          AnchorX = 75
          AnchorY = 69
        end
        object cxEdit_FileName: TcxTextEdit
          Left = 142
          Top = 55
          AutoSize = False
          Style.Color = 14811105
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Lilian'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Lilian'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Lilian'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Lilian'
          TabOrder = 7
          Height = 28
          Width = 271
        end
        object cxBtn_filesave: TcxButton
          AlignWithMargins = True
          Left = 413
          Top = 56
          Width = 89
          Height = 26
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = #54028#51068#46321#47197
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Lilian'
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
          TabOrder = 8
          OnClick = cxBtn_filesaveClick
        end
        object cxBtn_fileopen: TcxButton
          AlignWithMargins = True
          Left = 503
          Top = 56
          Width = 89
          Height = 26
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = #54028#51068#48372#44592
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Lilian'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000011744558745469746C6500446F776E3B4172726F773BBD
            FC82580000021E49444154785E6591316814411885BF99DDBD530435510B0BC3
            555E95144A8C46F48AEBA2A43016F65A182CB4104CAF9D8D6550B4B2B4508895
            0A625288A26050E4AC0425C110C9C588DEEDEECCEFF90FC31679ECEE3FF398FF
            EDFBE799B987CB2F8DB52D2F20FA0A4E40BCE009A4F75AF08272225016F9E2FD
            2B13EDF47F73FBD821D0C328C4104E0736D05E79A50B272C2C7E3D0524A90079
            E1F8F0FD37C1016050886EA23691A4797057DC9B543C7CFAB2C6FAAF1C412058
            0551ABCA89AE4DA840BFBB151549F76EAC327BAEC5DFBE0BA43188F794AED406
            630C6992626CB405F52CE1F6FCB3E0C0791F6C63102318449BEF2C7488B83AD5
            24AB6720AA1FEEC27B6DB2DEABADF0B79884F3ACAC6C70E6EC513A9D55BC4477
            5552DE4910709A110A2F425114F4F2FEA03ADEAD09CE09BD5E9FBC9F23311901
            ED03AC739A2C106C3D78FA911BF7DE52964ED3C952CBF5F937DC7DB23CE04A84
            00EF258EE0ABAC314C4F8ED0FDB1CEE1F649F24268B627D95AFFC9F956036B6D
            8CB7BA03E784A860AC65FFF01E2E4D8FF2FAF10B7AA51FD4E7CCCE8C313CB41B
            6393102FA61A411D082132046B138E1F69307AC0F079E93DE32375C6C71A2469
            169A0540AA1182928041950D50ABD5B97CE10443DD6F5C9C99A056DF01860815
            F11204527141354BACE61B3E967D83516E5D9B22491275054284203111493737
            375FCDDD7C745A88EA02FA5491C5855021EFFF59020A03EC0432C0B21DC1F876
            085000BD7F8CA0608FE53C7C9B0000000049454E44AE426082}
          TabOrder = 9
          OnClick = cxBtn_fileopenClick
        end
        object cxLabel5: TcxLabel
          Left = 5
          Top = 82
          AutoSize = False
          Caption = #48708#44256
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
          Height = 82
          Width = 140
          AnchorX = 75
          AnchorY = 123
        end
        object cxMemo_Remark: TcxMemo
          Left = 142
          Top = 82
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Lilian'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Lilian'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Lilian'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Lilian'
          TabOrder = 11
          Height = 82
          Width = 451
        end
        object cxLabel4: TcxLabel
          AlignWithMargins = True
          Left = 592
          Top = 5
          Margins.Left = 1
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 0
          AutoSize = False
          Caption = #52392#48512' '#49324#51652' '#54028#51068
          Style.BorderStyle = ebsOffice11
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
          Height = 26
          Width = 250
          AnchorX = 717
          AnchorY = 18
        end
        object cxImage: TcxImage
          Left = 592
          Top = 28
          Properties.GraphicClassName = 'TdxSmartImage'
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Lilian'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Lilian'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Lilian'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Lilian'
          TabOrder = 13
          Height = 136
          Width = 250
        end
        object cxEdit_ListID: TcxTextEdit
          Left = 237
          Top = 133
          Enabled = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Lilian'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Lilian'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Lilian'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Lilian'
          TabOrder = 14
          Width = 100
        end
      end
    end
  end
  object DS_L: TDataSource
    DataSet = UniQuery_List
    Left = 1160
    Top = 496
  end
  object OpenDialog: TOpenDialog
    Filter = #51060#48120#51648'(*.png;*.jpg;*jpeg;*.bmp)|*.png;*.jpg;*jpeg;*.bmp'
    Left = 572
    Top = 520
  end
  object DS_Menu: TDataSource
    DataSet = UniQuery_Menu
    Left = 168
    Top = 480
  end
  object UniQuery_List: TUniQuery
    SQL.Strings = (
      #9'SELECT [hdw_Id]'
      #9#9'  ,[hdw_doc_name]'
      #9#9'  ,[hdw_write_user]'
      #9#9'  ,[hdw_write_date]'
      #9#9'  ,[hdw_doc_Remarks]'
      #9#9'  ,[hdw_doc_ImageCk]'
      #9#9'  ,[hdw_Form_name]'
      #9#9'  ,[hdw_Form_ID]'
      #9'  FROM [dbo].[HACCP_HANDWRITING]')
    CachedUpdates = True
    ObjectView = True
    Left = 1160
    Top = 440
  end
  object UniQuery_Menu: TUniQuery
    SQL.Strings = (
      'SELECT ListID,Division, FormName'
      #9'FROM HaccpManagementList'
      '        ORDER BY DIVISION'
      '')
    ObjectView = True
    Left = 168
    Top = 424
  end
end
