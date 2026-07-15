inherited PurchaseInOutForm: TPurchaseInOutForm
  ClientHeight = 712
  ClientWidth = 1294
  OnCreate = FormCreate
  ExplicitWidth = 1310
  ExplicitHeight = 751
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    ExplicitWidth = 1294
    Width = 1294
    inherited cxBtn_New: TcxButton
      OnClick = cxBtn_NewClick
    end
    inherited cxBtn_Save: TcxButton
      OnClick = cxBtn_SaveClick
    end
    inherited cxBtn_Delete: TcxButton
      OnClick = cxBtn_DeleteClick
    end
    inherited cxBtn_Print: TcxButton
      OnClick = cxBtn_PrintClick
    end
    inherited cxBtn_Close: TcxButton
      Left = 1205
      ExplicitLeft = 1205
    end
    inherited cxBtn_Search: TcxButton
      OnClick = cxBtn_SearchClick
    end
  end
  object cxGBox_ComList: TcxGroupBox
    Left = 0
    Top = 35
    Align = alLeft
    Caption = #47588#51077#52376' '#47785#47197
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
        object cxGridDBTv_com_seq: TcxGridDBColumn
          Caption = #49692#48264
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          OnGetDisplayText = cxGridDBTv_com_seqGetDisplayText
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 40
        end
        object cxGridDBTv_com_Division: TcxGridDBColumn
          Caption = #49345#49464
          DataBinding.FieldName = 'SubDivisionTxT'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object cxGridDBTv_com_name: TcxGridDBColumn
          Caption = #47588#51077#52376#47749
          DataBinding.FieldName = 'CustomerName'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 199
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
    Width = 986
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
      Width = 980
      object cxLabel9: TcxLabel
        Left = 5
        Top = 21
        AutoSize = False
        Caption = #47588#51077#52376#47749
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
        Width = 250
        AnchorX = 130
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
        Width = 250
      end
      object cxLabel3: TcxLabel
        Left = 254
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
        AnchorX = 354
        AnchorY = 34
      end
      object cxDEdit_sdate: TcxDateEdit
        Left = 254
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
        Left = 353
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
        Left = 185
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
        Left = 125
        Top = 44
        AutoSize = False
        Properties.DisplayFormat = ',0.;-,0.'
        Style.Color = 16742263
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
        Left = 455
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
        Left = 555
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
        AnchorX = 605
        AnchorY = 47
      end
      object cxLabel15: TcxLabel
        Left = 555
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
        AnchorX = 605
        AnchorY = 57
      end
      object cxMemo_CusRemark: TcxMemo
        Left = 654
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
      Width = 980
      object cxGrid_List: TcxGrid
        Left = 3
        Top = 20
        Width = 974
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
              #51077#44256
              #48152#52636
              #52636#44552
              #51077#44552
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
            Width = 300
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
            Width = 90
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
          object cxGridTv_List_ID: TcxGridColumn
            Caption = 'InOutID'
            DataBinding.ValueType = 'Integer'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 60
          end
          object cxGridTv_List_check: TcxGridColumn
            Caption = 'Check'
            Options.Editing = False
            Width = 60
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
        Width = 974
        object cxGrid_Detail: TcxGrid
          Left = 3
          Top = 55
          Width = 798
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
            object cxGridTv_Detail_seq: TcxGridColumn
              Caption = #49692#48264
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              OnGetDisplayText = cxGridDBTv_com_seqGetDisplayText
              HeaderAlignmentHorz = taCenter
              Width = 40
            end
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
              Caption = #44208#51116#50529
              DataBinding.ValueType = 'Currency'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',#.;-,#.'
              FooterAlignmentHorz = taRightJustify
              HeaderAlignmentHorz = taCenter
              Width = 100
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
          Width = 968
          object cxLabel1: TcxLabel
            Left = 243
            Top = 3
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            AutoSize = False
            Caption = #51077#44256#51068#51088
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
            AnchorX = 283
            AnchorY = 18
          end
          object cxDEdit_date: TcxDateEdit
            Left = 323
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
            Left = 864
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
          object cxRGroup_Division: TcxRadioGroup
            AlignWithMargins = True
            Left = 84
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
                Caption = #51077#44256
                Value = #51077#44256
              end
              item
                Caption = #48152#52636
                Value = #48152#52636
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Lilian'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Lilian'
            TabOrder = 3
            Height = 27
            Width = 158
          end
          object cxLabel11: TcxLabel
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
            Width = 80
            AnchorX = 43
            AnchorY = 18
          end
          object cxButton2: TcxButton
            AlignWithMargins = True
            Left = 424
            Top = 4
            Width = 85
            Height = 27
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alLeft
            Caption = #50641#49472' '#48320#54872
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Lilian'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001F744558745469746C65004578706F72743B58736C743B4578706F72
              74546F58736C743B13D67B9B000001F649444154785E8593BF6E134110C6BF39
              1CA0404282868E07A046E048C84854202544A60D20022555CE261D0552003BA9
              5324B1808ACAC6E10122A1C4162F410D8248E18F80F87237C3ECDC8E74920BD6
              77FE8DB5F37DB3EBD9251101E900507DE19C8E0DA2C84547CD133A5B1F77134A
              1A361B3E52AA58EC1B12284A10F2FC68EFE9E3EB37001CBB4102A146FAE8B2FB
              C383E99FC0EAC6F89AE244D5807261134EB222C05600A39B90E94F9F24143997
              4501B801152A54A2080217C7BFC4BC49A231212F2C97AA06EA5A9844A2811059
              2C65AAC766D6B87211AB5EF9D4F3077D65139610ABBB90A3997069CC45499091
              048324887FB636ADCC8F74CB4A1CB6B65D8C27F5391CA43D1CB47A1024F8DA7A
              6D865FD2574A69D6AC2E07476F550266C4AD08DAB3F338DF5D321158C26354B1
              691212C28BF10EBEA7DB46963C6EA54CEA8C76F04D5714F2048CF5D1109FDB6F
              B03E1EDAAA93E0B2529FC7D9B525AC5C9D03845C6CECECBF4377F45E97DCB3B9
              E5D9DBB8D0BD87E5FA82CDD71013513E251961CF2A1EA2AD892C82B550D18D41
              9100CD3C5BEC43A8E9158D16B209C0DE7F73F69E228E815FA633F7D3FEAFCD97
              0B9864EC77C1FB1E638E04F6C69F70E7D6A573AA3DF48394677FFF7C78D81E34
              5880241E9C101359972AA753904D7EEF03C8AA27317BBB71F7A672E6FF57DAAC
              8E95474AFC03299E64332F8635120000000049454E44AE426082}
            TabOrder = 5
            OnClick = cxButton2Click
          end
          object cxBtn_Upload: TcxButton
            AlignWithMargins = True
            Left = 511
            Top = 4
            Width = 150
            Height = 27
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alLeft
            Caption = #50641#49472#50629#47196#46300' ('#52852#46300')'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Lilian'
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              6100000017744558745469746C650050726576696F75733B4172726F773B5570
              5E034A020000038E49444154785E1D926B6C53651C879F73CEDBDAC1B6AE532E
              1BBB2097C1348B820232029565A10926220C3562203865199025E2080625F10B
              C62F22265ED04818122221C14B02193003713A1C904844C2A6D4CD41D9D6D16D
              BD6C6D777ACE795F69BFFDBF3CCFEFF9F017BDE39F912766A16B828A824D5AD3
              C7F34BBDC5EE373D795ABD21F4D968B8A49423D614976263D6C9237B82770019
              9A38A3D2CE28C2A5E7A16B7A16D65B3EAFDA575834FD83250B577A4A675432C3
              5B8161E844E2A1B943637757DCFCB76BEF9EAF177D79F1F8C8FEF282CDE67F89
              134A6497B76CDFEDDAF969D5F1AACA27B6046A1B50AE048E13A7E3EA69901A75
              AB96F398AF9AEA8A67DC1DD7CEBC5DBF95EAFC22B1F9F1C26D4931CFBB5D6FFC
              A8EADDF915555B02AB033C98EA02C7223666D2DE1E4449C5BC05F9F87CD3D0F4
              4758BF6613E73BCF05D275B73EB97E7E74B7D8F84E65799EC7B3BFAEF6794213
              5DE8BA9E5B3D71B29B1D1B0E6318066DDFB6D0D2E247CA294266276B57F8E9BF
              DFDFD8D05A7954B8F3C4B69AC535D362D66D6C69626070F952909A8A06D62CAF
              C7D0356EF5BF4A7BC7CFACAB5F842D25A3E65F3C5BBDCC88842F370B90EB4A4A
              F299B446D09084EF4D3210F470B0791F1EB70B348DADEBF7F2DE912BF4CD1F61
              4E99970C198A6796A260AD701CE6EA9E24A695C4B135CE9E0BD2DAF03DBEA202
              1CA9B23C5E6F014D2F1EE2F08FAFF0DAEB8B102E8D7C4F0A2555F9438174C7CD
              07089745C7857E5E5E7D80DA254B11C2209E3401F04E77F3DC534BD91C799F0B
              170F1258BF80586A18CB5652383677A3B1E84CAFCF203434CE7791564E75EF45
              D3146DAD915CC10B070A91B6C276405990B1CA884727702C191199B4BA323830
              B5CC95AFD1D21CC06DB8C9525F1C3F8B2325A0A1E9B067E706945248693398B8
              433804664A5D1793D1CCB1BEDEE4EE390BF35CA1584FEE2B85217205B38BA701
              391FA1582F8EB4701C07A441B0274D62DCFA4A749D0EFF1D682AFFE6CF2E6DD7
              D37E81D21CA4B22929F1B1F1C342A484B2521FA6950624A073F3F714D1D1CC4F
              BF9D1AFE5500766F776CBFA6FB9E94487FCD2A8110E05F5589CB588C06A4ED34
              B17484A9B4E4767786F03DA7A7FFC6C44EC0149DA13794BFBC6DD2C9C897AC8C
              EFD0585835562ED689960E51F8A89ECB8F8F29C68715033D92D484D3DE7F23F1
              56DF1FF1C843560A80ECF1509218FC27B96BE5A659475331D70EC3A5F975439F
              A75048C97D69C9AB1351FBD8B51FC2BF00669601F81F11C0A388F468F7560000
              000049454E44AE426082}
            TabOrder = 6
            Visible = False
            OnClick = cxBtn_UploadClick
          end
        end
        object cxGBox_History: TcxGroupBox
          Left = 801
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
        Width = 974
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
          Left = 8
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
          ItemIndex = 0
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
    Left = 1152
    Top = 328
  end
  object DsBank: TDataSource
    DataSet = FDSpBank
    Left = 1016
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
    object Data_Copy: TMenuItem
      Caption = #48373#49324' '#54616#44592
      OnClick = Data_CopyClick
    end
  end
  object DS_Kind: TDataSource
    DataSet = FDQuery_Kind
    Left = 944
    Top = 264
  end
  object DS_H: TDataSource
    DataSet = FDSP_H
    Left = 1208
    Top = 624
  end
  object frxReport_List: TfrxReport
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44370.746975451400000000
    ReportOptions.LastChange = 44970.496526377300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '       '
      'end.')
    Left = 368
    Top = 208
    Datasets = <
      item
        DataSet = fds_List
        DataSetName = 'fds_List'
      end
      item
        DataSet = fuds_Data
        DataSetName = 'fuds_Data'
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
        Height = 18.897637800000000000
        ParentFont = False
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = fds_List
        DataSetName = 'fds_List'
        RowCount = 0
        Stretched = True
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Width = 321.260020710000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fds_List."itemname"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 90.708661420000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fds_List."outcharge"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 90.708661420000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fds_List."Balance"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708927480000000000
          Width = 34.015718740000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_List."division"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_List."InOutDate"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 90.708661420000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fds_List."amount"]')
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
        Height = 79.370100710000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Memo242: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110636540000000000
          Height = 79.370130000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 52.913420000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #51077#44552#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 30.236240000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #52636#44552#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 52.913420000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."IpGm"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 30.236240000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."CGm"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 30.236240000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #51077#44256#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 30.236240000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."IpGo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 52.913420000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #48152#52636#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 52.913420000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."BC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 52.913420000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #49692#51077#44256#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 52.913420000000000000
          Width = 124.724411890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."TotalSum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 5.779530000000000000
          Width = 79.370051890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #54633'  '#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 5.779530000000000000
          Width = 90.708690710000000000
          Height = 18.897637800000000000
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<fds_List."amount">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 5.779530000000000000
          Width = 90.708690710000000000
          Height = 18.897637800000000000
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<fds_List."outcharge">,MasterData1)]')
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
        Height = 113.385882910000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 86.929190000000000000
          Width = 90.708661420000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51092#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 86.929190000000000000
          Width = 90.708661420000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44208#51228#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 86.929190000000000000
          Width = 321.260020710000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51201#50836'/'#54408#47785#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929190000000000000
          Width = 90.708720000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #45216#51676)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 86.929190000000000000
          Width = 34.015718740000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44396#48516)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 37.795300000000000000
          Width = 351.496211890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #48372#44256#44592#44036' : [fuds_Data."SDate"] - [fuds_Data."EDate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 340.157656060000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #44592#44036#48324' '#44144#47000#48372#44256)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 37.795300000000000000
          Width = 143.622061890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51068#50689#51060#54044#50689#45453#51312#54633#48277#51064)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 60.472480000000000000
          Width = 102.047231890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #54168#51060#51648' : [Page]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 60.472480000000000000
          Width = 241.889841890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #52636#47141#51068#51088' : [fuds_Data."TDate"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Top = 60.472480000000000000
          Width = 340.157621890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fuds_Data."CustomerName"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 86.929190000000000000
          Width = 90.708661420000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44144#47000#44552#50529)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object fds_List: TfrxDBDataset
    UserName = 'fds_List'
    CloseDataSource = False
    DataSource = DS_L
    BCDToCurrency = False
    DataSetOptions = []
    Left = 367
    Top = 294
  end
  object fuds_Data: TfrxUserDataSet
    UserName = 'fuds_Data'
    Fields.Strings = (
      'SDate'
      'EDate'
      'DailyDate'
      'IpGo'
      'IpGm'
      'CGo'
      'CGm'
      'BI'
      'BC'
      'detailname'
      'customername'
      'division'
      'itemname'
      'TotalOut'
      'TotalIn'
      'SalesBalance'
      'PurChaseBalance'
      'YBalance'
      'InAmount'
      'OutAmount'
      'TBalance')
    OnGetValue = fuds_DataGetValue
    Left = 376
    Top = 376
  end
  object FDConnection2: TFDConnection
    Params.Strings = (
      'DriverID=oDBC')
    Left = 1000
    Top = 480
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 1072
    Top = 480
  end
  object frxReport_Daily: TfrxReport
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
      '       '
      'end.')
    Left = 536
    Top = 208
    Datasets = <
      item
        DataSet = fuds_Data
        DataSetName = 'fuds_Data'
      end
      item
        DataSet = fds_Daily
        DataSetName = 'fds_Daily'
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
        Height = 18.897637800000000000
        ParentFont = False
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = fds_Daily
        DataSetName = 'fds_Daily'
        RowCount = 0
        Stretched = True
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 215.433180710000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fds_Daily."itemname"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fds_Daily."TotalIn"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fds_Daily."TotalOut"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149867480000000000
          Width = 34.015718740000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_Daily."division"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_Daily."InOutDate"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 56.692913385826770000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_Daily."UnitPrice"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 56.692908500000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_Daily."Tax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Width = 45.354308740000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_Daily."InOutQty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[fds_Daily."Balance"]')
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
        Height = 136.063050710000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Memo242: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110636540000000000
          Height = 45.354360000000000000
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
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Width = 158.740181890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #51077#44552#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 158.740181890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #52636#44552#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."IpGm"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 22.677180000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."CGm"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #51077#44256#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 22.677180000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #52636#44256#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."IpGo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 22.677180000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."CGo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #48152#51077#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 22.677180000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #48152#52636#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."BI"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 22.677180000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."BC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 103.826840000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #51077#44552#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 81.149660000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #52636#44552#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 103.826840000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."IpGm"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 81.149660000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."CGm"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 81.149660000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #51077#44256#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 81.149660000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."IpGo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 103.826840000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #48152#52636#54633#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 103.826840000000000000
          Width = 120.944881890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."BC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 103.826840000000000000
          Width = 71.810991890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #49692#51077#44256#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 103.826840000000000000
          Width = 124.724411890000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Data."TotalSum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 56.692950000000000000
          Width = 79.370051890000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #54633'  '#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 56.692950000000000000
          Width = 90.708690710000000000
          Height = 18.897637800000000000
          DataSet = fuds_Data
          DataSetName = 'fuds_Data'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<fds_List."amount">,MasterData1)]')
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
        Height = 113.385882910000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 86.929190000000000000
          Width = 75.590551180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #52636#44552#52636#44256#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 86.929190000000000000
          Width = 75.590551180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51077#44552#51077#44256#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 86.929190000000000000
          Width = 215.433180710000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51201#50836'/'#54408#47785#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Top = 86.929190000000000000
          Width = 83.149660000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #45216'  '#51676)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 86.929190000000000000
          Width = 34.015718740000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #44396#48516)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 37.795300000000000000
          Width = 359.055271890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #48372#44256#44592#44036' : [fuds_Data."SDate"] ~ [fuds_Data."EDate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 340.157656060000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #44592#44036#48324' '#44144#47000#48372#44256)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 143.622061890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #51068#50689#51060#54044#50689#45453#51312#54633#48277#51064)
          ParentFont = False
          VAlign = vaCenter
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 3.779530000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          GapY = 3.000000000000000000
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 45.354281890000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #54168#51060#51648)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 332.598640000000000000
          Top = 86.929190000000000000
          Width = 45.354311180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 64.252010000000000000
          Width = 359.055271890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #52636#47141#51068#51088' : [fuds_Data."TDate"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 64.252010000000000000
          Width = 359.055271890000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[fuds_Data."CustomerName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 86.929190000000000000
          Width = 56.692913385826770000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #45800#44032)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 86.929190000000000000
          Width = 56.692901180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #48512#44032#49464)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 86.929190000000000000
          Width = 75.590551180000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51092#50529)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object fds_Daily: TfrxDBDataset
    UserName = 'fds_Daily'
    CloseDataSource = False
    BCDToCurrency = False
    DataSetOptions = []
    Left = 551
    Top = 270
  end
  object FDSP_list: TUniStoredProc
    ObjectView = True
    Left = 1152
    Top = 272
  end
  object FDSpBank: TUniStoredProc
    ObjectView = True
    Left = 1016
    Top = 208
  end
  object FDSP_INPUT: TUniStoredProc
    ObjectView = True
    Left = 784
    Top = 576
  end
  object FDSP_H: TUniStoredProc
    ObjectView = True
    Left = 1208
    Top = 568
  end
  object FDSp_Temp: TUniStoredProc
    ObjectView = True
    Left = 463
    Top = 374
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
    Left = 944
    Top = 216
  end
  object UniQuery_comm: TUniQuery
    SQL.Strings = (
      'SELECT CustomerID, Name,TypeDetail FROM MasterCustomer')
    ObjectView = True
    Left = 340
    Top = 560
  end
end
