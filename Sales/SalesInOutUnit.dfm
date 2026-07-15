inherited SalesInOutForm: TSalesInOutForm
  Caption = #49688#51452#44288#47532
  ClientHeight = 712
  ClientWidth = 1371
  OnCreate = FormCreate
  ExplicitWidth = 1387
  ExplicitHeight = 751
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    ExplicitWidth = 1371
    Width = 1371
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
      Left = 1282
      ExplicitLeft = 1282
    end
    inherited cxBtn_Search: TcxButton
      OnClick = cxBtn_SearchClick
    end
  end
  object cxGBox_ComList: TcxGroupBox
    Left = 0
    Top = 35
    Align = alLeft
    Caption = #47588#52636#52376' '#47785#47197
    Style.Edges = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 677
    Width = 300
    object cxGrid_com: TcxGrid
      Left = 1
      Top = 18
      Width = 298
      Height = 652
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.SkinName = 'Lilian'
      object cxGridDBTv_com: TcxGridDBTableView
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
        OnCellClick = cxGridDBTv_comCellClick
        DataController.DataSource = DS_C
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
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 35
        OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
        object cxGridDBTv_com_Division: TcxGridDBColumn
          Caption = #49345#49464
          DataBinding.FieldName = 'SubDivisionTxT'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 61
        end
        object cxGridDBTv_com_name: TcxGridDBColumn
          Caption = #47588#52636#52376#47749
          DataBinding.FieldName = 'CustomerName'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 209
        end
      end
      object cxGridLv_com: TcxGridLevel
        GridView = cxGridDBTv_com
      end
    end
  end
  object cxSplitter_List: TcxSplitter
    Left = 300
    Top = 35
    Width = 8
    Height = 677
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGBox_ComList
  end
  object cxGBox_Input: TcxGroupBox
    Left = 308
    Top = 35
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 3
    Height = 677
    Width = 1063
    object cxGBox_Search: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #51077#47141' '#51221#48372
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 80
      Width = 1057
      object cxLabel9: TcxLabel
        Left = 5
        Top = 21
        AutoSize = False
        Caption = #47588#52636#52376#47749
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
        Width = 300
        AnchorX = 155
        AnchorY = 34
      end
      object cxEdit_CustomerName: TcxTextEdit
        Left = 5
        Top = 45
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
        Width = 300
      end
      object cxLabel3: TcxLabel
        Left = 304
        Top = 21
        AutoSize = False
        Caption = #51312#54924' '#50672#50900
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
        Width = 199
        AnchorX = 404
        AnchorY = 34
      end
      object cxDEdit_sdate: TcxDateEdit
        Left = 304
        Top = 45
        AutoSize = False
        Properties.Alignment.Horz = taCenter
        Properties.DateButtons = [btnClear, btnToday]
        Properties.DisplayFormat = 'yyyy-mm-dd'
        Properties.SaveTime = False
        Properties.ShowTime = False
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
        Width = 100
      end
      object cxDEdit_Edate: TcxDateEdit
        Left = 403
        Top = 45
        AutoSize = False
        Properties.Alignment.Horz = taCenter
        Properties.DateButtons = [btnClear, btnToday]
        Properties.DisplayFormat = 'yyyy-mm-dd'
        Properties.SaveTime = False
        Properties.ShowTime = False
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
        Width = 100
      end
      object cxCEdit_CustomerID: TcxCurrencyEdit
        Left = 169
        Top = 45
        AutoSize = False
        Properties.DisplayFormat = ',0.;-,0.'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 5
        Visible = False
        Height = 25
        Width = 54
      end
      object cxCEdit_InOutID: TcxCurrencyEdit
        Left = 109
        Top = 44
        AutoSize = False
        Properties.DisplayFormat = ',0.;-,0.'
        Style.Color = 7697919
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
        Height = 25
        Width = 54
      end
      object cxBtn_pay: TcxButton
        AlignWithMargins = True
        Left = 506
        Top = 22
        Width = 100
        Height = 47
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #51077#52636#44552' '#46321#47197
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000011744558745469746C65004163636F756E74696E673B4A
          8739E80000029D49444154785E75935B48145118C7FF333BEA9A8A372C48BBA0
          0FA55D1EF2292B2C8A1EC224A4A054B0178D5E2AA8B014C234A2072B958AE842
          901A62A860A6081B595866912D76C11597C4BCB4784957732F73E67C9D3DAE96
          62BFC3E137CC7CF3FF0E7C1CE561CDA736C5644AC50204222C8240E0CC789597
          99BC97880CFC8306554DCD3A948425C890004D85CE387C3CAEEBF63551012C0E
          E09C03045C68EC073708063118C2DC003817160FC5E9F1E29D0C52B004CD300C
          700242834D485C1D0A99E75B7E77D9A76490A8FB7F0011C1ED31F0D13EE92FE6
          D29C4818C21C8C312C87C6982F0028D81F07092D926472C603C6963D810C909D
          AEDC684176E60E543D7983ACA329A8AE792B1D7E2E07A6FBB5D8101F0D814951
          140D7F7B9072EDCE4B3A999382BEC149F98A2F7CE59867DDCA3074B735C3FDBE
          A25D5368A7C13874AFFE7A6AD65B8E2BE5169A9C76D3D9E206EAFC363CE7AF73
          EEF07B78CC492D4507C8F1B999E619FCD04035B95B1CCAA5D2163A9DB707B681
          8985730507AA08350720304095135289C1722619472E5F44C8AA4DE87B568988
          84F568BC7917AAAE333985BAFA4E3083A35E383C24087D1DADE8AF2B404FC541
          7C294B47587414866CBDD03D1E30B70B86D8BE7ACDEB657264C7B377C1478EB0
          5974567BAA91947102311BAF828863C46AC1BBEAEB88DD9A0ADDF55B0489105F
          8073DAD9965F54BB9B40F2243ED2F66DC6B8D58AED19DFC126CCB03D7D80C884
          3518B6FF80C7350BE6961B864E72AE4100B4253336DF4A8B1D3D56988B153189
          B0D5DE43647C1C1A1EB5E2704909069E57011191686FEA18D388C80340ECBF88
          59339DF1D1919EDE98B55A1474E7381C76062F2356995FA8692AE0D6C93AEE32
          4A352C0F734CEBA79A2A2DE735E5C53602891F86AC3F6758D9EDAE5F4D0074FF
          ADF4FE015F5E92DDFF70CFE20000000049454E44AE426082}
        TabOrder = 8
        OnClick = cxBtn_payClick
      end
      object cxLabel_memo: TcxLabel
        Left = 606
        Top = 21
        AutoSize = False
        Caption = #47700#47784
        Style.BorderStyle = ebsSingle
        Style.Edges = [bLeft, bTop, bRight]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taBottomJustify
        Height = 26
        Width = 100
        AnchorX = 656
        AnchorY = 47
      end
      object cxLabel15: TcxLabel
        Left = 606
        Top = 44
        AutoSize = False
        Caption = '('#44592#47197#49884' '#51088#46041#51200#51109')'
        ParentFont = False
        Style.BorderStyle = ebsSingle
        Style.Edges = [bLeft, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
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
        Height = 26
        Width = 100
        AnchorX = 656
        AnchorY = 57
      end
      object cxMemo_CusRemark: TcxMemo
        Left = 705
        Top = 21
        Properties.OnEditValueChanged = cxMemo_CusRemarkPropertiesEditValueChanged
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 10
        Height = 49
        Width = 300
      end
    end
    object cxGBoxPaymentList: TcxGroupBox
      Left = 3
      Top = 83
      Align = alClient
      Caption = #44144#47000#44552#50529' '#51221#48372' ('#52628#44032' '#46321#47197'/'#48373#49324' '#44592#45733#51008' '#47560#50864#49828' '#50864#53364#47533#51004#47196' '#44032#45733#54633#45768#45796'!!)'
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 591
      Width = 1057
      object cxGrid_List: TcxGrid
        Left = 3
        Top = 20
        Width = 1051
        Height = 304
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Lilian'
        object cxGridTv_List: TcxGridTableView
          PopupMenu = PopupMenu_Head
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellClick = cxGridTv_ListCellClick
          OnEditing = cxGridTv_ListEditing
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridTv_List_Division: TcxGridColumn
            Caption = #44396#48516
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #52636#44256
              #51077#44552
              #52636#44552
              #48152#51077
              #47700#47784)
            OnCustomDrawCell = cxGridTv_List_DivisionCustomDrawCell
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 60
          end
          object cxGridTv_List_InOutDate: TcxGridColumn
            Caption = #51068#51088
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridTv_List_ItemName: TcxGridColumn
            Caption = #54408#47785
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 270
          end
          object cxGridTv_List_Cost: TcxGridColumn
            Caption = #44277#44553#44032#50529
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',#.;-,#.'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridTv_List_Tax: TcxGridColumn
            Caption = #49464#50529
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',#.;-,#.'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridTv_List_Amount: TcxGridColumn
            Caption = #44144#47000#44552#50529
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',#.;-,#.'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridTv_List_Charge: TcxGridColumn
            Caption = #51077#44552#50529
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',#.;-,#.'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridTv_List_OutCharge: TcxGridColumn
            Caption = #52636#44552#50529
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',#.;-,#.'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridTv_List_Balance: TcxGridColumn
            Caption = #51092#50529
            DataBinding.ValueType = 'Currency'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',#.;-,#.'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridTv_List_Driver: TcxGridColumn
            Caption = #51064#49688#51088
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGridTv_List_ID: TcxGridColumn
            Caption = 'InOutID'
            DataBinding.ValueType = 'Integer'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 60
          end
          object cxGridTv_List_check: TcxGridColumn
            Caption = 'Check'
            Visible = False
            Options.Editing = False
            Width = 60
          end
          object cxGridTv_List_BName: TcxGridColumn
            Caption = #51077#44552' '#44228#51340
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
        end
        object cxGridLv_List: TcxGridLevel
          GridView = cxGridTv_List
        end
      end
      object cxGBox_Detail: TcxGroupBox
        Left = 3
        Top = 332
        Align = alBottom
        Caption = #51077#47141' '#51221#48372' ('#52628#44032' '#46321#47197#51008' F9 '#46608#45716' '#47560#50864#49828' '#50864#53364#47533#51004#47196' '#44032#45733#54633#45768#45796'!!)'
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 1
        Height = 250
        Width = 1051
        object cxGrid_Detail: TcxGrid
          Left = 3
          Top = 55
          Width = 875
          Height = 186
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Lilian'
          object cxGridTv_Detail: TcxGridTableView
            PopupMenu = PopupMenu_detail
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellClick = cxGridTv_DetailCellClick
            OnEditKeyDown = cxGridTv_DetailEditKeyDown
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0'
                Kind = skSum
                Column = cxGridTv_Detail_Amount
              end
              item
                Format = ',0'
                Kind = skSum
                Column = cxGridTv_Detail_tax
              end
              item
                Format = ',0'
                Kind = skSum
                Column = cxGridTv_Detail_TotalPrice
              end
              item
                Format = ',0'
                Kind = skSum
                Column = cxGridTv_Detail_InOutCharge
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxGridTv_Detail_code: TcxGridColumn
              Caption = #54408#48264
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.OnEditValueChanged = cxGridTv_Detail_codePropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridTv_Detail_name: TcxGridColumn
              Caption = #54408#47785#47749
              HeaderAlignmentHorz = taCenter
              Width = 250
            end
            object cxGridTv_Detail_standard: TcxGridColumn
              Caption = #51060#47141#48264#54840
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridTv_Detail_qty: TcxGridColumn
              Caption = #49688#47049
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DecimalPlaces = 1
              Properties.DisplayFormat = ',#.#;-,#.#'
              Properties.OnEditValueChanged = cxGridTv_Detail_qtyPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object cxGridTv_Detail_unitPrice: TcxGridColumn
              Caption = #45800#44032
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',#.;-,#.'
              Properties.OnEditValueChanged = cxGridTv_Detail_qtyPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGridTv_Detail_Amount: TcxGridColumn
              Caption = #44277#44553#44032#50529
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',#.;-,#.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridTv_Detail_tax: TcxGridColumn
              Caption = #48512#44032#49464
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',#.;-,#.'
              Properties.OnEditValueChanged = cxGridTv_Detail_taxPropertiesEditValueChanged
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGridTv_Detail_TotalPrice: TcxGridColumn
              Caption = #44144#47000#44552#50529
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',#.;-,#.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridTv_Detail_InOutCharge: TcxGridColumn
              Caption = #44208#51228#50529
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',#.;-,#.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridTv_Detail_remark: TcxGridColumn
              Caption = #48708#44256
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 200
            end
            object cxGridTv_Detail_ItemID: TcxGridColumn
              Caption = 'ITEM ID'
              Options.Editing = False
            end
            object cxGridTv_Detail_InOutID: TcxGridColumn
              Caption = 'INOUTID'
              DataBinding.ValueType = 'Integer'
            end
            object cxGridTv_Detail_ID: TcxGridColumn
              Caption = 'ID'
              DataBinding.ValueType = 'Integer'
            end
            object cxGridTv_Detail_TaxCheck: TcxGridColumn
              Caption = 'TAXCHECK'
              DataBinding.ValueType = 'Boolean'
              PropertiesClassName = 'TcxCheckBoxProperties'
            end
          end
          object cxGridLv_Detail: TcxGridLevel
            GridView = cxGridTv_Detail
          end
        end
        object cxGBox_InputDetail: TcxGroupBox
          Left = 3
          Top = 20
          Align = alTop
          PanelStyle.Active = True
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'LondonLiquidSky'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
          TabOrder = 1
          Height = 35
          Width = 1045
          object cxLabel1: TcxLabel
            Left = 185
            Top = 3
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            AutoSize = False
            Caption = #44144#47000#51068#51088
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
            Height = 29
            Width = 80
            AnchorX = 225
            AnchorY = 18
          end
          object cxDEdit_date: TcxDateEdit
            Left = 265
            Top = 3
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            AutoSize = False
            Properties.Alignment.Horz = taCenter
            Properties.DateButtons = [btnClear, btnToday]
            Properties.DisplayFormat = 'yyyy-mm-dd'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.UseLeftAlignmentOnEditing = False
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
            Width = 100
          end
          object cxButton1: TcxButton
            AlignWithMargins = True
            Left = 941
            Top = 4
            Width = 100
            Height = 27
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alRight
            Caption = #49440#53469' '#49325#51228
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Lilian'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000029744558745469746C650052656D6F76653B44656C6574653B426172
              733B526962626F6E3B5374616E646172643B635648300000026449444154785E
              A551494C5351146568194A2B583746627F458902118892AAB811369246043462
              8556D032A82D831664486D8C3FB40B8128E3C68998A289625720314469022591
              26566BC484681C22C6012B5A1556C7F73EBF507FDCF193F3DFBBE7DC7BDE7BF7
              86005811B820E80B2310F16B6880E4F7E10462AAF3F1B2014F889E961FBB307D
              AAE2EBC8FEDC137C72280FB1AB546BA0DAE4F11296C491940F36089F2CD5593F
              DFE8C682771453E71B31909D6D207C044D76166B8C339D1789E6C4A76B5D18D7
              15D9A869B04184A744E7FBED72C03FD08EF9B13BF09CADC1F50C55CDE08182DA
              B7ED562CB807E1BFDB06FF701F3C47753E52131D6C20B2EFCA343C31EAF1D3D1
              89B93E167F1EF5E37155255ED92C989F70E0C74D96E3C734F9B89498749A1E2A
              EC41644F4A6AF5B8F6107C7D2D98ED6D847FE80A7EDDBF8A6FBD4D98ED69C088
              3A0BD678A589E44A843D089844DB141B4D0FF3D5F8D251878FAC9EA08C5B87F6
              EC44B37C6D23C991F2530AF99F81E472BAAA7E42AFC307B612EFEA0E2FC1A52D
              446B5A4633C991090D968A5B93D24D4EAD06336DF5982E5363BA9C07D9BF674F
              62B4F020AC9B53976EF1CF145A36249B1EE4E5E28DA5022F8AB23045706B1383
              DB498974CFE1F599620CAB736061B63409A720ED5624CFBD341E81B760379EE5
              65A23F410183487ACE208EB1F42728E1CDCFE4F0BC641FBA9894395213176C10
              655EA3EC706CDF06778E0A76C57A5447C8E87B63298C91B166BB92817BEF0EDC
              4BDB8A0639D34DF8986083309A58278BEFB0C631BEAAC5E255940F6886A8D566
              A27DAF95ADEB22B15CD883808984208E209A8F859A9C6F6078F0145684BF98E8
              BFC080A205F60000000049454E44AE426082}
            TabOrder = 2
            OnClick = Line_DelClick
          end
          object cxBtn_Priview: TcxButton
            AlignWithMargins = True
            Left = 808
            Top = 4
            Width = 131
            Height = 27
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alRight
            Caption = #48120#47532#48372#44592
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Lilian'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000C744558745469746C65005072696E743BC83632EA00000267494441
              54785E7D93CB6B135114C6BF99C434A60F05698B1B5716752582E84AAD2822B6
              88B8101F50B45441210BEBC285150591A250A326462AA218F20FB810178A482C
              AD165AD0958216051F68D1966426F3B82FCFDCCC0C71512F7C73EE3DDCEF77EE
              DC87A19442D40C6AB74A332F4CD3EC05745E7FA33982F1CAF0E0D65D34E69127
              897F9B49EA3D7374A376AA901041F2E5D9ED0012A4A5019C0B28092C5A5E58D9
              808244476B0B38135111C4005AB55E7D587D191712928C147579052308908272
              5C03D2E4610064A0C0648E8E5776DF2EBF7D33385CB0BF7C7E0F2915494288C0
              28C0833E69EEE33B1C3E35FA67ECE1CCF4C5DCD33D0012C9E0B33CD3513EB477
              6DD744E54930D4D5852008240CD55807A3B1EB3AB0EC1A8EF4ADDF547A2C4B00
              D66880E0AAAB7B550675CB42329186904A5754A119000125015C38561DAB3B33
              604C75462B303D5F5042229D4AE0E78FEF3878EC4274046150210C686F4BE8B9
              9EC7D00460700832347000378B252C2C542145E0931AA1A4D23BBC72453B4E0F
              1D87C3380138026F03E032D409D2B3A107C5FC95C6A1C8F0084D8A8D0C744602
              B6CB41459B003E47CDE1A8D7194E666FE07FED5EFE2C7C9102F385E60600C3F7
              04AA1643D576B0BFBF0FD981CD284CCDEBCD6402641038BFA31BC5F22C7E2FDA
              A03F81CF1A0013009BFFF5753277E719EE8E3F070FCFDD63244E002E29070DE3
              D4B976BD8C91CB0FF0E9C3E46B10C708EF762BA985D43632F6722E7B628BDE79
              4087F846161E4DE3EAB99DEB0054490EC94E2AA54490085FA3655BD6ABDCFDA9
              6DF1B6A9F8ADC2756B1300BE91C75EEA31F9B94BFDFB00A44866EC44FCB23D92
              DB6CF80BF54A6944F3A08E160000000049454E44AE426082}
            TabOrder = 3
            OnClick = cxBtn_PriviewClick
          end
          object cxRGroup_PrintType: TcxRadioGroup
            AlignWithMargins = True
            Left = 435
            Top = 4
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alRight
            Alignment = alCenterCenter
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = #48152#51901
                Value = #48152#51901
              end
              item
                Caption = #54620#51109
                Value = #54620#51109
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Lilian'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Lilian'
            TabOrder = 4
            Visible = False
            Height = 27
            Width = 158
          end
          object cxLabel11: TcxLabel
            Left = 594
            Top = 3
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alRight
            AutoSize = False
            Caption = #52636#47141' '#44396#48516
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
            Visible = False
            Height = 29
            Width = 80
            AnchorX = 634
            AnchorY = 18
          end
          object cxRGroup_Division: TcxRadioGroup
            AlignWithMargins = True
            Left = 64
            Top = 4
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alLeft
            Alignment = alCenterCenter
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = #52636#44256
                Value = #52636#44256
              end
              item
                Caption = #48152#51077
                Value = #48152#51077
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Lilian'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Lilian'
            TabOrder = 6
            Height = 27
            Width = 120
          end
          object cxLabel12: TcxLabel
            Left = 3
            Top = 3
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            AutoSize = False
            Caption = #44396#48516
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
            Height = 29
            Width = 60
            AnchorX = 33
            AnchorY = 18
          end
          object cxBtn_print2: TcxButton
            AlignWithMargins = True
            Left = 675
            Top = 4
            Width = 131
            Height = 27
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alRight
            Caption = #44144#47000#47749#49464#54364' '#52636#47141
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Lilian'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000C744558745469746C65005072696E743BC83632EA00000267494441
              54785E7D93CB6B135114C6BF99C434A60F05698B1B5716752582E84AAD2822B6
              88B8101F50B45441210BEBC285150591A250A326462AA218F20FB810178A482C
              AD165AD0958216051F68D1966426F3B82FCFDCCC0C71512F7C73EE3DDCEF77EE
              DC87A19442D40C6AB74A332F4CD3EC05745E7FA33982F1CAF0E0D65D34E69127
              897F9B49EA3D7374A376AA901041F2E5D9ED0012A4A5019C0B28092C5A5E58D9
              808244476B0B38135111C4005AB55E7D587D191712928C147579052308908272
              5C03D2E4610064A0C0648E8E5776DF2EBF7D33385CB0BF7C7E0F2915494288C0
              28C0833E69EEE33B1C3E35FA67ECE1CCF4C5DCD33D0012C9E0B33CD3513EB477
              6DD744E54930D4D5852008240CD55807A3B1EB3AB0EC1A8EF4ADDF547A2C4B00
              D66880E0AAAB7B550675CB42329186904A5754A119000125015C38561DAB3B33
              604C75462B303D5F5042229D4AE0E78FEF3878EC4274046150210C686F4BE8B9
              9EC7D00460700832347000378B252C2C542145E0931AA1A4D23BBC72453B4E0F
              1D87C3380138026F03E032D409D2B3A107C5FC95C6A1C8F0084D8A8D0C744602
              B6CB41459B003E47CDE1A8D7194E666FE07FED5EFE2C7C9102F385E60600C3F7
              04AA1643D576B0BFBF0FD981CD284CCDEBCD6402641038BFA31BC5F22C7E2FDA
              A03F81CF1A0013009BFFF5753277E719EE8E3F070FCFDD63244E002E29070DE3
              D4B976BD8C91CB0FF0E9C3E46B10C708EF762BA985D43632F6722E7B628BDE79
              4087F846161E4DE3EAB99DEB0054490EC94E2AA54490085FA3655BD6ABDCFDA9
              6DF1B6A9F8ADC2756B1300BE91C75EEA31F9B94BFDFB00A44866EC44FCB23D92
              DB6CF80BF54A6944F3A08E160000000049454E44AE426082}
            TabOrder = 8
            OnClick = cxBtn_print2Click
          end
        end
        object cxGBox_History: TcxGroupBox
          Left = 878
          Top = 55
          Align = alRight
          Caption = #45800#44032#48320#46041' '#45236#50669
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'LondonLiquidSky'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
          TabOrder = 2
          Visible = False
          Height = 186
          Width = 170
          object cxGrid_history: TcxGrid
            Left = 3
            Top = 20
            Width = 164
            Height = 157
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2007Green'
            object cxGridDBTv_history: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = DS_H
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsView.GroupByBox = False
              object cxGridDBTv_history_date: TcxGridDBColumn
                Caption = #51068#51088
                DataBinding.FieldName = 'InOutDate'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
              object cxGridDBTv_history_price: TcxGridDBColumn
                Caption = #45800#44032
                DataBinding.FieldName = 'UnitPrice'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = ',0.;-,0.'
                HeaderAlignmentHorz = taCenter
                Width = 80
              end
            end
            object cxGridLv_history: TcxGridLevel
              GridView = cxGridDBTv_history
            end
          end
        end
      end
      object cxSplitter_Detail: TcxSplitter
        Left = 3
        Top = 324
        Width = 1051
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salBottom
        Control = cxGBox_Detail
      end
      object cxGBox_Payment: TcxGroupBox
        Left = 351
        Top = 60
        Caption = #52636#44552' '#51221#48372' '#46321#47197
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 3
        Visible = False
        Height = 237
        Width = 250
        object cxLabel2: TcxLabel
          Left = 7
          Top = 47
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          AutoSize = False
          Caption = #51068#51088
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
          Width = 80
          AnchorX = 47
          AnchorY = 60
        end
        object cxDEdit_Pdate: TcxDateEdit
          Left = 84
          Top = 47
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          AutoSize = False
          Properties.Alignment.Horz = taCenter
          Properties.DateButtons = [btnClear, btnToday]
          Properties.DisplayFormat = 'yyyy-mm-dd'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.UseLeftAlignmentOnEditing = False
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
          Width = 160
        end
        object cxLCBBox_Bank: TcxLookupComboBox
          Left = 84
          Top = 95
          AutoSize = False
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'BankID'
          Properties.ListColumns = <
            item
              Caption = #51008#54665#47749
              HeaderAlignment = taCenter
              Width = 75
              FieldName = 'BName'
            end
            item
              Caption = #44228#51340#48264#54840
              HeaderAlignment = taCenter
              Width = 120
              FieldName = 'AccNo'
            end
            item
              Caption = #48708#44256
              HeaderAlignment = taCenter
              Width = 120
              FieldName = 'Remarks'
            end>
          Properties.ListSource = DsBank
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
          Width = 160
        end
        object cxLabel4: TcxLabel
          Left = 7
          Top = 95
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          AutoSize = False
          Caption = #51008#54665' '#51221#48372
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
          Width = 80
          AnchorX = 47
          AnchorY = 108
        end
        object cxCEdit_payment: TcxCurrencyEdit
          Left = 84
          Top = 143
          AutoSize = False
          Properties.DisplayFormat = ',0.;-,0.'
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Lilian'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Lilian'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Lilian'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Lilian'
          TabOrder = 4
          OnKeyDown = cxCEdit_paymentKeyDown
          Height = 25
          Width = 160
        end
        object cxLabel5: TcxLabel
          Left = 7
          Top = 143
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          AutoSize = False
          Caption = #51077#52636#44552' '#44552#50529
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
          Width = 80
          AnchorX = 47
          AnchorY = 156
        end
        object cxLabel6: TcxLabel
          Left = 7
          Top = 167
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          AutoSize = False
          Caption = #54788' '#51092#50529
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
          Width = 80
          AnchorX = 47
          AnchorY = 180
        end
        object cxCEdit_Balance: TcxCurrencyEdit
          Left = 84
          Top = 167
          AutoSize = False
          Enabled = False
          Properties.DisplayFormat = ',0.;-,0.'
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
          Width = 160
        end
        object cxLabel7: TcxLabel
          Left = 7
          Top = 119
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          AutoSize = False
          Caption = #51077#52636#44552' '#45236#50857
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
          Width = 80
          AnchorX = 47
          AnchorY = 132
        end
        object cxEdit_contents: TcxTextEdit
          Left = 84
          Top = 119
          TabStop = False
          AutoSize = False
          Properties.ReadOnly = False
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
          Width = 160
        end
        object cxBtn_save2: TcxButton
          AlignWithMargins = True
          Left = 7
          Top = 192
          Width = 117
          Height = 29
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = #46321#47197
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
          TabOrder = 10
          OnClick = cxBtn_save2Click
        end
        object cxBtn_cancel2: TcxButton
          AlignWithMargins = True
          Left = 126
          Top = 192
          Width = 117
          Height = 29
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = #52712#49548
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Green'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            6100000011744558745469746C6500436C6F73653B457869743B0519FF850000
            009549444154785EC5D33B0A84401004D0C904F1738385DD4CC4C03B78130F29
            C606A686867A0941161D0B99A0719012073178060D55748B2AADB593FDD19785
            BEE3D182FFF98C17F490402B6635A430B08219BEA02086D6847D33CB60611B54
            E0994024C201346C03BBC40EF302B9B63C8717D8E1103C59C20A26F888707338
            2787956DD0C1EF707305098CF4046376F8905EF8179C6CA903753534AA4B6600
            00000049454E44AE426082}
          TabOrder = 11
          OnClick = cxBtn_cancel2Click
        end
        object cxLabel8: TcxLabel
          Left = 7
          Top = 71
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          AutoSize = False
          Caption = #44208#51116' '#48169#48277
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
          Width = 80
          AnchorX = 47
          AnchorY = 84
        end
        object cxLCBBox_Kind: TcxLookupComboBox
          Left = 84
          Top = 71
          AutoSize = False
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'BCDID'
          Properties.ListColumns = <
            item
              FieldName = 'BCDName'
            end>
          Properties.ListSource = DS_Kind
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Lilian'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Lilian'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Lilian'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Lilian'
          TabOrder = 13
          Height = 25
          Width = 160
        end
        object cxLabel10: TcxLabel
          Left = 7
          Top = 23
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          AutoSize = False
          Caption = #44396#48516
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
          Width = 80
          AnchorX = 47
          AnchorY = 36
        end
        object cxRGroup_Type: TcxRadioGroup
          Left = 85
          Top = 24
          Alignment = alCenterCenter
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = #52636#44552
              Value = #52636#44552
            end
            item
              Caption = #51077#44552
              Value = #51077#44552
            end>
          ItemIndex = 1
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Lilian'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Lilian'
          TabOrder = 15
          Height = 23
          Width = 158
        end
      end
    end
  end
  object DS_C: TDataSource
    DataSet = FDQuery_com
    Left = 52
    Top = 432
  end
  object PopupMenu_detail: TPopupMenu
    Left = 488
    Top = 576
    object Line_Add: TMenuItem
      Caption = #52628#44032' '#46321#47197'(F9)'
      OnClick = Line_AddClick
    end
    object N2: TMenuItem
      Caption = '------------'
    end
    object Line_Del: TMenuItem
      Caption = #49440#53469' '#49325#51228
      OnClick = Line_DelClick
    end
  end
  object DS_L: TDataSource
    DataSet = FDSP_list
    Left = 1160
    Top = 272
  end
  object DsBank: TDataSource
    DataSet = FDSpBank
    Left = 624
    Top = 264
  end
  object PopupMenu_Head: TPopupMenu
    Left = 480
    Top = 304
    object Head_Add: TMenuItem
      Caption = #47700#47784' '#46321#47197
      OnClick = Head_AddClick
    end
    object N1: TMenuItem
      Caption = '------------'
    end
    object Driver_Save: TMenuItem
      Caption = #51064#49688#51088' '#46321#47197
      OnClick = Driver_SaveClick
    end
    object Data_Copy: TMenuItem
      Caption = #48373#49324' '#54616#44592
      OnClick = Data_CopyClick
    end
  end
  object DS_Kind: TDataSource
    DataSet = FDQuery_Kind
    Left = 552
    Top = 264
  end
  object frxReport_half: TfrxReport
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44551.653344537000000000
    ReportOptions.LastChange = 44588.671464780100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 152
    Top = 200
    Datasets = <
      item
        DataSet = fds_company
        DataSetName = 'fds_company'
      end
      item
        DataSet = fds_cutomer
        DataSetName = 'fds_Daily'
      end
      item
        DataSet = fuds_delivery
        DataSetName = 'fuds_delivery'
      end
      item
        DataSet = fuds_price
        DataSetName = 'fuds_price'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 190.000000000000000000
      ColumnPositions.Strings = (
        '0')
      Frame.Typ = []
      MirrorMode = []
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Height = 215.433070870000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 64.252010000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #46321#47197#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 86.929190000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49345'     '#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 109.606370000000000000
          Width = 75.590551180000000000
          Height = 30.236220472440900000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51452'     '#49548)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 64.252010000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49457'     '#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 64.252010000000000000
          Width = 117.165354330000000000
          Height = 22.677165350000000000
          DataField = 'BusinessNo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessNo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 86.929190000000000000
          Width = 294.803164250000000000
          Height = 22.677165350000000000
          DataField = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."CustomerName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 109.606370000000000000
          Width = 294.803164250000000000
          Height = 30.236220472440900000
          DataField = 'Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."Address"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 64.252010000000000000
          Width = 102.047244090000000000
          Height = 22.677165350000000000
          DataField = 'CeoName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."CeoName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 196.535560000000000000
          Width = 113.385826770000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51060#47141#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 196.535560000000000000
          Width = 56.692913390000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #49688'   '#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 196.535560000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #45800'   '#44032)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44277#44553#44032#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Top = 196.535560000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #49464'   '#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #48708'   '#44256)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Top = 196.535560000000000000
          Width = 207.874027950000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #54408' '#47785' '#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 64.252010000000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51068'     '#51088' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929190000000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #49345'     '#54840' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 86.929190000000000000
          Width = 283.464566930000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fds_cutomer."CustomerName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Top = 109.606370000000000000
          Width = 60.472440940000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51452'     '#49548' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 109.606370000000000000
          Width = 283.464566930000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fds_cutomer."Address"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Top = 139.842610000000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#54868#48264#54840' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 139.842610000000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #54057#49828#48264#54840' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 139.842610000000000000
          Width = 120.944891650000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fds_cutomer."Tel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 139.842610000000000000
          Width = 102.047244090000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fds_cutomer."Fax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 64.252010000000000000
          Width = 283.464566930000000000
          Height = 22.677165350000000000
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fuds_delivery."Date"] [fuds_price."Date"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 56.692935350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44144' '#47000' '#47749' '#49464' '#54364)
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 37.795300000000000000
          Width = 173.858331180000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#44277#44553#51088' '#48372#44288#50857')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 139.842610000000000000
          Width = 75.590551180000000000
          Height = 30.236220472440900000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #50629'     '#53468)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 139.842610000000000000
          Width = 75.590551180000000000
          Height = 30.236220472440900000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51333'     '#47785)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 139.842610000000000000
          Width = 117.165354330000000000
          Height = 30.236220472440900000
          DataField = 'BusinessType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessType"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 139.842610000000000000
          Width = 102.047244090000000000
          Height = 30.236220472440900000
          DataField = 'BusinessItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessItem"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 170.078850000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#54868#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 170.078850000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #54057#49828#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 170.078850000000000000
          Width = 117.165354330000000000
          Height = 22.677165350000000000
          DataField = 'Tel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."Tel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 170.078850000000000000
          Width = 102.047244090000000000
          Height = 22.677165350000000000
          DataField = 'Fax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."Fax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 64.252010000000000000
          Width = 370.393900940000000000
          Height = 128.503937010000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 166.299320000000000000
          Width = 257.008040000000000000
          Height = 26.456692910000000000
          DataField = 'TotalPrice'
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_price."TotalPrice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Top = 166.299320000000000000
          Width = 86.929150940000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #54633#44228#44552#50529)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Height = 26.456692913385830000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = fuds_delivery
        DataSetName = 'fuds_delivery'
        RowCount = 0
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Width = 113.385826770000000000
          Height = 26.456692913385830000
          DataField = 'standard'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fuds_delivery."standard"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 56.692913390000000000
          Height = 26.456692913385830000
          DataField = 'qty'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fuds_delivery."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 75.590551180000000000
          Height = 26.456692913385830000
          DataField = 'unitprice'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fuds_delivery."unitprice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 94.488250000000000000
          Height = 26.456692913385830000
          DataField = 'amount'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fuds_delivery."amount"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Width = 75.590551180000000000
          Height = 26.456692913385830000
          DataField = 'tax'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fuds_delivery."tax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 26.456692913385830000
          DataField = 'remark'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_delivery."remark"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Width = 207.874027950000000000
          Height = 26.456692913385830000
          DataField = 'goods'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fuds_delivery."goods"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Height = 26.456692910000000000
        ParentFont = False
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590551180000000000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#51092#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Width = 75.590551180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #48120#49688#52509#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Width = 75.590551180000000000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51077#44552#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Width = 75.590551180000000000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51064' '#49688' '#51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 102.047244090000000000
          Height = 26.456692910000000000
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."BeforeBalance"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Width = 102.047244090000000000
          Height = 26.456692910000000000
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."Balance"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 102.047244090000000000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Width = 109.606304090000000000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Width = 109.606304090000000000
          Height = 26.456692910000000000
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_delivery."Driver"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Subreport1: TfrxSubreport
        AllowVectorExport = True
        Top = 548.031850000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Page = frxReport_half.Page2
      end
      object Memo135: TfrxMemoView
        AllowVectorExport = True
        Top = 521.574822680000000000
        Width = 718.110700000000000000
        Height = 7.559055120000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Style = fsDashDot
        Frame.Typ = [ftBottom]
        ParentFont = False
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 190.000000000000000000
      ColumnPositions.Strings = (
        '0')
      Frame.Typ = []
      MirrorMode = []
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Height = 26.456692913385830000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = fuds_delivery
        DataSetName = 'fuds_delivery'
        RowCount = 0
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Width = 113.385826770000000000
          Height = 26.456692913385830000
          DataField = 'standard'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fuds_delivery."standard"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 56.692913390000000000
          Height = 26.456692913385830000
          DataField = 'qty'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fuds_delivery."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 75.590551180000000000
          Height = 26.456692913385830000
          DataField = 'unitprice'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fuds_delivery."unitprice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 94.488250000000000000
          Height = 26.456692913385830000
          DataField = 'amount'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fuds_delivery."amount"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Width = 75.590551180000000000
          Height = 26.456692913385830000
          DataField = 'tax'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fuds_delivery."tax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 26.456692913385830000
          DataField = 'remark'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_delivery."remark"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Width = 207.874027950000000000
          Height = 26.456692913385830000
          DataField = 'goods'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fuds_delivery."goods"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Height = 45.354347800000000000
        ParentFont = False
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590551180000000000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#51092#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Width = 75.590551180000000000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #48120#49688#52509#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Width = 75.590551180000000000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51077#44552#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Width = 75.590551180000000000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51064' '#49688' '#51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 102.047244090000000000
          Height = 26.456692913385830000
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."BeforeBalance"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Width = 102.047244090000000000
          Height = 26.456692910000000000
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."Balance"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 102.047244090000000000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Width = 109.606304090000000000
          Height = 26.456692913385830000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 718.110660940000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #9632#44228#51340#48264#54840' : '#45453#54801' 317-0006-2645-21 '#51068#50689#51060#54044#50689#45453#51312#54633#48277#51064)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        Height = 215.433070866142000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 64.252010000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #46321#47197#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 86.929190000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49345'     '#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 109.606370000000000000
          Width = 75.590551180000000000
          Height = 30.236220472440900000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51452'     '#49548)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 64.252010000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49457'     '#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 64.252010000000000000
          Width = 117.165354330000000000
          Height = 22.677165350000000000
          DataField = 'BusinessNo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessNo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 86.929190000000000000
          Width = 294.803164250000000000
          Height = 22.677165350000000000
          DataField = 'CustomerName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."CustomerName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 109.606370000000000000
          Width = 294.803164250000000000
          Height = 30.236220472440900000
          DataField = 'Address'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."Address"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 64.252010000000000000
          Width = 102.047244090000000000
          Height = 22.677165350000000000
          DataField = 'CeoName'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."CeoName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 196.535560000000000000
          Width = 113.385826770000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51060#47141#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 196.535560000000000000
          Width = 56.692913390000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #49688'   '#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 196.535560000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #45800'   '#44032)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44277#44553#44032#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Top = 196.535560000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #49464'   '#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 196.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #48708'   '#44256)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Top = 196.535560000000000000
          Width = 207.874027950000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #54408' '#47785' '#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 56.692935350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44144' '#47000' '#47749' '#49464' '#54364)
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 37.795300000000000000
          Width = 173.858331180000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#44277#44553#48155#45716#51088' '#48372#44288#50857')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 139.842610000000000000
          Width = 75.590551180000000000
          Height = 30.236220472440900000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #50629'     '#53468)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 139.842610000000000000
          Width = 75.590551180000000000
          Height = 30.236220472440900000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51333'     '#47785)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 139.842610000000000000
          Width = 117.165354330000000000
          Height = 30.236220472440900000
          DataField = 'BusinessType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessType"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 139.842610000000000000
          Width = 102.047244090000000000
          Height = 30.236220472440900000
          DataField = 'BusinessItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessItem"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Top = 64.252010000000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51068'     '#51088' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929190000000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #49345'     '#54840' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 86.929190000000000000
          Width = 283.464566930000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[fds_cutomer."CustomerName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Top = 109.606370000000000000
          Width = 60.472440940000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51452'     '#49548' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 109.606370000000000000
          Width = 283.464566930000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fds_cutomer."Address"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Top = 139.842610000000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#54868#48264#54840' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 139.842610000000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #54057#49828#48264#54840' :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 139.842610000000000000
          Width = 120.944891650000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fds_cutomer."Tel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 139.842610000000000000
          Width = 102.047244090000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fds_cutomer."Fax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 64.252010000000000000
          Width = 283.464566930000000000
          Height = 22.677165350000000000
          DataSetName = 'fds_delivery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fuds_delivery."Date"] [fuds_price."Date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 170.078850000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#54868#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 170.078850000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #54057#49828#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 170.078850000000000000
          Width = 117.165354330000000000
          Height = 22.677165350000000000
          DataField = 'Tel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."Tel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 170.078850000000000000
          Width = 102.047244090000000000
          Height = 22.677165350000000000
          DataField = 'Fax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."Fax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 64.252010000000000000
          Width = 370.393900940000000000
          Height = 128.503937010000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 166.299320000000000000
          Width = 257.008040000000000000
          Height = 26.456692910000000000
          DataField = 'TotalPrice'
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_price."TotalPrice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Top = 166.299320000000000000
          Width = 86.929150940000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #54633#44228#44552#50529)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxReport_All: TfrxReport
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44370.746975451400000000
    ReportOptions.LastChange = 44970.496526377310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 248
    Top = 200
    Datasets = <
      item
        DataSet = fds_company
        DataSetName = 'fds_company'
      end
      item
        DataSet = fds_cutomer
        DataSetName = 'fds_Daily'
      end
      item
        DataSet = fuds_delivery
        DataSetName = 'fuds_delivery'
      end
      item
        DataSet = fuds_price
        DataSetName = 'fuds_price'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        Height = 37.795287800000000000
        ParentFont = False
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        DataSet = fuds_delivery
        DataSetName = 'fuds_delivery'
        RowCount = 0
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 45.354330710000000000
          Height = 37.795287800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 45.354330710000000000
          Height = 37.795287800000000000
          DataField = 'qty'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_delivery."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 68.031496060000000000
          Height = 37.795287800000000000
          DataField = 'unitprice'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_delivery."unitprice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 109.606299212598400000
          Height = 37.795287800000000000
          DataField = 'amount'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_delivery."amount"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858267716535400000
          Width = 64.251968503937010000
          Height = 37.795287800000000000
          DataField = 'tax'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_delivery."tax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456692910000000000
          Height = 37.039382280000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456692910000000000
          Height = 37.795287800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10898943
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 306.142137480000000000
          Width = 79.370078740000000000
          Height = 37.795287800000000000
          DataField = 'standard'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_delivery."standard"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 279.685220000000000000
          Height = 37.795287800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10898943
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo205: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456636770000000000
          Width = 279.307130550000000000
          Height = 18.897637800000000000
          DataField = 'goods'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Color = 9786581
          Frame.Typ = []
          Memo.UTF8W = (
            '[fuds_delivery."goods"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 18.897650000000000000
          Width = 279.685220000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #51060#47141#48264#54840)
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 166.299320000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        object Memo192: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 173.858380000000000000
          Height = 26.456692910000000000
          DataField = 'TotalPrice'
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."TotalPrice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Width = 64.251968503937010000
          Height = 26.456692910000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fuds_delivery."tax">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo208: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 109.606299212598400000
          Height = 26.456692910000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fuds_delivery."amount">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo215: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 68.031491180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo216: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 45.354330710000000000
          Height = 26.456692910000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fuds_delivery."qty">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo217: TfrxMemoView
          AllowVectorExport = True
          Top = 52.913432200000000000
          Width = 45.354325830000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204' '#51092' '#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo218: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 52.913432200000000000
          Width = 90.708658980000000000
          Height = 26.456692910000000000
          DataField = 'BeforeBalance'
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."BeforeBalance"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo219: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 52.913432200000000000
          Width = 45.354325830000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204' '#51092' '#50529
            '+'#44144#47000#44552#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo220: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 52.913432200000000000
          Width = 90.708658980000000000
          Height = 26.456692910000000000
          DataField = 'Balance'
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."Balance"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo225: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 52.913432200000000000
          Width = 45.354325830000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #54788' '#51092' '#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo227: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 52.913432200000000000
          Width = 113.385836540000000000
          Height = 26.456692910000000000
          DataField = 'Balance'
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."Balance"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo228: TfrxMemoView
          AllowVectorExport = True
          Width = 430.866371180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #54633'                   '#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo229: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102367090000000000
          Top = 120.944960000000000000
          Width = 128.503937010000000000
          Height = 45.354311180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo230: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606338270000000000
          Top = 120.944960000000000000
          Width = 128.503937010000000000
          Height = 45.354311180000000000
          DataField = 'Driver'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_delivery."Driver"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo231: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354316060000000000
          Top = 71.811070000000000000
          Width = 64.251968500000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo232: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606277240000000000
          Top = 71.811070000000000000
          Width = 64.251968500000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo233: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354352680000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51077#44256#49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo234: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606277240000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #52636#44256#49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo235: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102367090000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#51116#44256)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo236: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866151500000000000
          Top = 52.913420000000000000
          Width = 30.236220470000000000
          Height = 49.133877800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'BOX'
            #49688#48520)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo237: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 102.047310000000000000
          Width = 30.236220470000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #54869
            ''
            #51064)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo238: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102367090000000000
          Top = 102.047310000000000000
          Width = 128.503937010000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #48176#49569#51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo239: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606338270000000000
          Top = 102.047310000000000000
          Width = 128.503937010000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51064#49688#51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo240: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102367090000000000
          Top = 71.811070000000000000
          Width = 64.251968500000000000
          Height = 30.236225350000000000
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo241: TfrxMemoView
          AllowVectorExport = True
          Top = 79.370130000000000000
          Width = 45.354347800000000000
          Height = 86.929190000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #52280
            #44256
            #49324
            #54637)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo242: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 79.370130000000000000
          Width = 385.511996540000000000
          Height = 86.929190000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object Memo243: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #54633#44228#44552#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo245: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Top = 71.811070000000000000
          Width = 64.251968500000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo246: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51092#50668#49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 430.866371180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 215.433263700000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = [fsBold]
          Frame.Color = 10898943
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44144' '#47000' '#47749' '#49464' '#54364'(             )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 8.338590000000000000
          Width = 90.708551570000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44277#44553#51088#50857)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 188.976553700000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."Tel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 188.976553700000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_company."MailAddress"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 128.504073700000000000
          Width = 264.567100000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_company."Address"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 75.590653700000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."CeoName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 98.267833700000000000
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_company."Name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 75.590653700000000000
          Width = 120.944791570000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessNo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 188.976553700000000000
          Width = 26.456692910000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#54868)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 162.519843700000000000
          Width = 26.456697800000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51333#47785)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 75.590653700000000000
          Width = 60.472443390000000000
          Height = 22.677160470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49457'    '#47749
            '('#45824#54364#51088')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 188.976553700000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'E - mail')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 75.590653700000000000
          Width = 68.031496060000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49324#50629#51088#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 162.519843700000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #50629'    '#53468)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 128.504073700000000000
          Width = 68.031496060000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49324'  '#50629'  '#51109
            #51452'       '#49548)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 98.267833700000000000
          Width = 68.031496060000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49345'    '#54840
            '('#48277#51064#47749')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 26.456695350000000000
          Height = 139.842610000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #44277
            ' '
            ''
            #44553
            ''
            ''
            #51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 188.976553700000000000
          Width = 120.944803780000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_cutomer."MailAddress"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 128.504073700000000000
          Width = 264.566943780000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_cutomer."Address"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 75.590653700000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_cutomer."CeoName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 98.267833700000000000
          Width = 264.566973070000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_cutomer."Name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 75.590653700000000000
          Width = 120.944881890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_cutomer."BusinessNo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 188.976553700000000000
          Width = 26.456692910000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#54868)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 162.519843700000000000
          Width = 26.456692910000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51333#47785)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 188.976553700000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'E - mail')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 75.590653700000000000
          Width = 68.031496060000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49324#50629#51088#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 162.519843700000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #50629'    '#53468)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 128.504073700000000000
          Width = 68.031496060000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49324'  '#50629'  '#51109
            #51452'       '#49548)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 98.267833700000000000
          Width = 68.031496060000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49345'    '#54840
            '('#48277#51064#47749')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 75.590653700000000000
          Width = 26.456692910000000000
          Height = 139.842610000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #44277
            ''
            #44553
            ''
            #48155
            ''
            #45716
            ''
            #51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 75.590653700000000000
          Width = 60.472443390000000000
          Height = 22.677160470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49457'    '#47749
            '('#45824#54364#51088')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 162.519843700000000000
          Width = 117.165368980000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_cutomer."BusinessItem"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 162.519843700000000000
          Width = 120.944881890000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_cutomer."BusinessType"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 162.519843700000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessItem"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 162.519843700000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessType"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 188.976553700000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_cutomer."Tel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 52.913420000000000000
          Width = 219.212661890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #51068#51088' : [fuds_delivery."Date"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #49464'    '#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 109.606308980000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44277' '#44553' '#44032' '#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #45800'    '#44032)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 45.354330710000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #49688' '#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 45.354330710000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #45800' '#50948)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 279.685220000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #54408#47785#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456692910000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Width = 79.370078740157500000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44508#44201'(g)')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle2: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 215.433210000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = [fsBold]
          Frame.Color = 10898943
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44144' '#47000' '#47749' '#49464' '#54364'(             )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 8.338590000000000000
          Width = 90.708551570000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44277#44553#48155#45716#51088#50857)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo261: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 188.976553700000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."Tel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo262: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 188.976553700000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_company."MailAddress"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo263: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 128.504073700000000000
          Width = 264.567100000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_company."Address"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo264: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 75.590653700000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."CeoName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo265: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 98.267833700000000000
          Width = 264.567100000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_company."Name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo266: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 75.590653700000000000
          Width = 120.944791570000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessNo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo267: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 188.976553700000000000
          Width = 26.456692910000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#54868)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo268: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 162.519843700000000000
          Width = 26.456697800000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51333#47785)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo269: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 75.590653700000000000
          Width = 60.472443390000000000
          Height = 22.677160470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49457'    '#47749
            '('#45824#54364#51088')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo270: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 188.976553700000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'E - mail')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo271: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 75.590653700000000000
          Width = 68.031496060000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49324#50629#51088#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo272: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 162.519843700000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #50629'    '#53468)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo273: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 128.504073700000000000
          Width = 68.031496060000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49324'  '#50629'  '#51109
            #51452'       '#49548)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo274: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 98.267833700000000000
          Width = 68.031496060000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49345'    '#54840
            '('#48277#51064#47749')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo275: TfrxMemoView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 26.456695350000000000
          Height = 139.842610000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #44277
            ' '
            ''
            #44553
            ''
            ''
            #51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo276: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 188.976553700000000000
          Width = 120.944803780000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_cutomer."MailAddress"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo277: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 128.504073700000000000
          Width = 264.566943780000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_cutomer."Address"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo278: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 75.590653700000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_cutomer."CeoName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo279: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 98.267833700000000000
          Width = 264.566973070000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_cutomer."Name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo280: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 75.590653700000000000
          Width = 120.944881890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_cutomer."BusinessNo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo281: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 188.976553700000000000
          Width = 26.456692910000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#54868)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo282: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 162.519843700000000000
          Width = 26.456692910000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51333#47785)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo283: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 188.976553700000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'E - mail')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo284: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 75.590653700000000000
          Width = 68.031496060000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49324#50629#51088#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo285: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 162.519843700000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #50629'    '#53468)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo286: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 128.504073700000000000
          Width = 68.031496060000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49324'  '#50629'  '#51109
            #51452'       '#49548)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo287: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 98.267833700000000000
          Width = 68.031496060000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49345'    '#54840
            '('#48277#51064#47749')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo288: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 75.590653700000000000
          Width = 26.456692910000000000
          Height = 139.842610000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #44277
            ''
            #44553
            ''
            #48155
            ''
            #45716
            ''
            #51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo289: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 75.590653700000000000
          Width = 60.472443390000000000
          Height = 22.677160470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49457'    '#47749
            '('#45824#54364#51088')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo290: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 162.519843700000000000
          Width = 117.165368980000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_cutomer."BusinessItem"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo291: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 162.519843700000000000
          Width = 120.944881890000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_cutomer."BusinessType"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo292: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 162.519843700000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessItem"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo293: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 162.519843700000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_company."BusinessType"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo294: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 188.976553700000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_cutomer."Tel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo295: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Top = 52.913420000000000000
          Width = 219.212661890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #51068#51088' : [fuds_delivery."Date"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader2: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456692910000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #49464'    '#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 109.606308980000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44277' '#44553' '#44032' '#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #45800'    '#44032)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 45.354330710000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #49688' '#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 45.354330710000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #45800' '#50948)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 279.685220000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #54408#47785#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456692910000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Width = 79.370078740000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44508#44201'(g)')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        Height = 37.795287800000000000
        ParentFont = False
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        DataSet = fuds_delivery
        DataSetName = 'fuds_delivery'
        RowCount = 0
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 45.354330710000000000
          Height = 37.795287800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 45.354330710000000000
          Height = 37.795287800000000000
          DataField = 'qty'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_delivery."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 68.031496060000000000
          Height = 37.795287800000000000
          DataField = 'unitprice'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_delivery."unitprice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 105.826778980000000000
          Height = 37.795287800000000000
          DataField = 'amount'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_delivery."amount"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Width = 68.031491180000000000
          Height = 37.795287800000000000
          DataField = 'tax'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_delivery."tax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456692910000000000
          Height = 37.039382280000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456692910000000000
          Height = 37.795287800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10898943
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 306.142137480000000000
          Width = 79.370078740000000000
          Height = 37.795287800000000000
          DataField = 'standard'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_delivery."standard"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 279.685220000000000000
          Height = 37.795287800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10898943
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456636770000000000
          Width = 279.307130550000000000
          Height = 18.897637800000000000
          DataField = 'goods'
          DataSet = fuds_delivery
          DataSetName = 'fuds_delivery'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Color = 9786581
          Frame.Typ = []
          Memo.UTF8W = (
            '[fuds_delivery."goods"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 18.897650000000000000
          Width = 279.685220000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #51060#47141#48264#54840)
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 188.976500000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 173.858380000000000000
          Height = 26.456692910000000000
          DataField = 'TotalPrice'
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."TotalPrice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Width = 68.031496060000000000
          Height = 26.456692910000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fuds_delivery."tax">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo191: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 105.826786300000000000
          Height = 26.456692910000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fuds_delivery."amount">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 68.031491180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo194: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Width = 45.354330710000000000
          Height = 26.456692910000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fuds_delivery."qty">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Top = 52.913432200000000000
          Width = 45.354325830000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204' '#51092' '#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo209: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 52.913432200000000000
          Width = 90.708658980000000000
          Height = 26.456692910000000000
          DataField = 'BeforeBalance'
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."BeforeBalance"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 52.913432200000000000
          Width = 45.354325830000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204' '#51092' '#50529
            '+'#44144#47000#44552#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo211: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 52.913432200000000000
          Width = 90.708658980000000000
          Height = 26.456692910000000000
          DataField = 'Balance'
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."Balance"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 52.913432200000000000
          Width = 45.354325830000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #54788' '#51092' '#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo213: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 52.913432200000000000
          Width = 113.385836540000000000
          Height = 26.456692910000000000
          DataField = 'Balance'
          DataSet = fuds_price
          DataSetName = 'fuds_price'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fuds_price."Balance"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo214: TfrxMemoView
          AllowVectorExport = True
          Width = 430.866371180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #54633'                   '#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo221: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102367090000000000
          Top = 120.944960000000000000
          Width = 128.503937010000000000
          Height = 45.354311180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo222: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606338270000000000
          Top = 120.944960000000000000
          Width = 128.503937010000000000
          Height = 45.354311180000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo223: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354316060000000000
          Top = 71.811070000000000000
          Width = 64.251968500000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo224: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606277240000000000
          Top = 71.811070000000000000
          Width = 64.251968500000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo226: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354352680000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51077#44256#49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo247: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606277240000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #52636#44256#49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo248: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102367090000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51204#51116#44256)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo249: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866151500000000000
          Top = 52.913420000000000000
          Width = 30.236220470000000000
          Height = 49.133877800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'BOX'
            #49688#48520)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo250: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 102.047310000000000000
          Width = 30.236220470000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #54869
            ''
            #51064)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo251: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102367090000000000
          Top = 102.047310000000000000
          Width = 128.503937010000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #48176#49569#51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo252: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606338270000000000
          Top = 102.047310000000000000
          Width = 128.503937010000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #54620#52980' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51064#49688#51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo253: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102367090000000000
          Top = 71.811070000000000000
          Width = 64.251968500000000000
          Height = 30.236225350000000000
          DisplayFormat.FormatStr = '%2.0f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo254: TfrxMemoView
          AllowVectorExport = True
          Top = 79.370130000000000000
          Width = 45.354347800000000000
          Height = 86.929190000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #52280
            #44256
            #49324
            #54637)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo255: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 79.370130000000000000
          Width = 385.511996540000000000
          Height = 86.929190000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo256: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #54633#44228#44552#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo257: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Top = 71.811070000000000000
          Width = 64.251968500000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo258: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858690000000000000
          Top = 52.913420000000000000
          Width = 64.251968500000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51092#50668#49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo259: TfrxMemoView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 430.866371180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Top = 166.299320000000000000
          Width = 718.110660940000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #9632#44228#51340#48264#54840' : '#45453#54801' 317-0006-2645-21 '#51068#50689#51060#54044#50689#45453#51312#54633#48277#51064)
          ParentFont = False
        end
      end
    end
  end
  object fds_company: TfrxDBDataset
    UserName = 'fds_company'
    CloseDataSource = False
    DataSet = FDSP_Company
    BCDToCurrency = False
    DataSetOptions = []
    Left = 247
    Top = 254
  end
  object fds_cutomer: TfrxDBDataset
    UserName = 'fds_Daily'
    CloseDataSource = False
    DataSet = FDSP_customer
    BCDToCurrency = False
    DataSetOptions = []
    Left = 247
    Top = 310
  end
  object fuds_delivery: TfrxUserDataSet
    UserName = 'fuds_delivery'
    OnCheckEOF = fuds_deliveryCheckEOF
    OnFirst = fuds_deliveryFirst
    OnNext = fuds_deliveryNext
    Fields.Strings = (
      'Date'
      'goods'
      'standard'
      'qty'
      'unitprice'
      'amount'
      'tax'
      'remark'
      'totalprice'
      'beforebal'
      'balance'
      'Driver')
    OnGetValue = fuds_deliveryGetValue
    Left = 248
    Top = 368
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 191
    Top = 142
  end
  object fuds_price: TfrxUserDataSet
    UserName = 'fuds_price'
    Fields.Strings = (
      'TotalPrice'
      'BeforeBalance'
      'Balance'
      'Date')
    OnGetValue = fuds_priceGetValue
    Left = 152
    Top = 368
  end
  object DS_H: TDataSource
    DataSet = FDSP_H
    Left = 1208
    Top = 624
  end
  object FDQuery_com: TUniQuery
    SQL.Strings = (
      'SELECT CustomerID, Name,TypeDetail FROM MasterCustomer')
    ObjectView = True
    Left = 52
    Top = 376
  end
  object FDQuery_Kind: TUniQuery
    ObjectView = True
    Left = 552
    Top = 216
  end
  object FDSP_list: TUniStoredProc
    ObjectView = True
    Left = 1096
    Top = 272
  end
  object FDSpBank: TUniStoredProc
    ObjectView = True
    Left = 624
    Top = 208
  end
  object FDSP_INPUT: TUniStoredProc
    ObjectView = True
    Left = 784
    Top = 576
  end
  object FDSP_Company: TUniStoredProc
    ObjectView = True
    Left = 152
    Top = 256
  end
  object FDSP_customer: TUniStoredProc
    ObjectView = True
    Left = 152
    Top = 312
  end
  object FDSP_H: TUniStoredProc
    ObjectView = True
    Left = 1208
    Top = 568
  end
end
