inherited TransactionHistoryModalForm: TTransactionHistoryModalForm
  Caption = #44144#47000#45236#50669#46321#47197
  ClientHeight = 615
  ClientWidth = 1284
  ExplicitWidth = 1300
  ExplicitHeight = 654
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    Top = 580
    ExplicitTop = 580
    ExplicitWidth = 1284
    Width = 1284
    inherited cxBtn_Save: TcxButton
      Visible = True
      OnClick = cxBtnSaveClick
    end
    inherited cxBtn_Close: TcxButton
      Left = 1195
      ExplicitLeft = 1195
    end
  end
  object cxGBoxLeft: TcxGroupBox
    Left = 0
    Top = 0
    Align = alLeft
    PanelStyle.Active = True
    Style.Edges = [bLeft, bRight]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 580
    Width = 380
    object cxGBoxCustomerSearch: TcxGroupBox
      Left = 3
      Top = 1
      Align = alClient
      Caption = #47588#52636#52376' '#47785#47197
      Style.Edges = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 578
      Width = 374
      object cxGBoxPurchaseSearch: TcxGroupBox
        Left = 1
        Top = 18
        Align = alTop
        PanelStyle.Active = True
        Style.Edges = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 0
        Height = 37
        Width = 372
        object cxLabel17: TcxLabel
          Left = 5
          Top = 5
          AutoSize = False
          Caption = #50629#52404' '#44396#48516
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
          Width = 97
          AnchorX = 54
          AnchorY = 18
        end
        object cxRGroupType: TcxRadioGroup
          Left = 100
          Top = 6
          Alignment = alCenterCenter
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = #47588#52636#52376
              Value = '1'
            end
            item
              Caption = #47588#51077#52376
              Value = '2'
            end
            item
              Caption = #51008#54665
              Value = '3'
            end>
          Properties.OnEditValueChanged = cxRGroupTypePropertiesEditValueChanged
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Lilian'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Lilian'
          TabOrder = 1
          Height = 23
          Width = 221
        end
      end
      object cxGridCustomer: TcxGrid
        Left = 1
        Top = 55
        Width = 372
        Height = 516
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Lilian'
        object cxGridDBTvCustomer: TcxGridDBTableView
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
          OnCellDblClick = cxGridDBTvCustomerCellDblClick
          DataController.DataSource = DsCustomer
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 0
          object cxGridDBTvCustomerSeq: TcxGridDBColumn
            Caption = #49692#48264
            DataBinding.IsNullValueType = True
            OnGetDisplayText = cxGridDBTvCustomerSeqGetDisplayText
            HeaderAlignmentHorz = taCenter
            Width = 40
          end
          object cxGridDBTvCustomer_Division: TcxGridDBColumn
            Caption = #49345#49464
            DataBinding.FieldName = 'SubDivisionTxT'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 59
          end
          object cxGridDBTvCustomerName: TcxGridDBColumn
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
            Width = 187
          end
          object cxGridDBTvCustomerCeoName: TcxGridDBColumn
            Caption = #45824#54364#51088#47749
            DataBinding.FieldName = 'CeoName'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 90
          end
        end
        object cxGridDBTvPartner: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FindPanel.Behavior = fcbFilter
          FindPanel.DisplayMode = fpdmAlways
          FindPanel.InfoText = #44160#49353#54624' '#53581#49828#53944#47484' '#51077#47141#54616#49901#49884#50724'...'
          FindPanel.ShowClearButton = False
          FindPanel.ShowCloseButton = False
          FindPanel.ShowFindButton = False
          FindPanel.ShowNextButton = False
          FindPanel.ShowPreviousButton = False
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxGridDBTvCustomerCellDblClick
          DataController.DataSource = DsPartner
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTvPartnerColumn1: TcxGridDBColumn
            Caption = #49692#48264
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
            Width = 36
          end
          object cxGridDBTvPartnerPartnerID: TcxGridDBColumn
            DataBinding.FieldName = 'PartnerID'
            DataBinding.IsNullValueType = True
            Visible = False
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBTvPartner_Division: TcxGridDBColumn
            Caption = #49345#49464
            DataBinding.FieldName = 'SubDivisionTxT'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object cxGridDBTvPartnerName: TcxGridDBColumn
            Caption = #47588#51077#52376#47749
            DataBinding.FieldName = 'CustomerName'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
            Width = 264
          end
          object cxGridDBTvPartnerIstax: TcxGridDBColumn
            DataBinding.FieldName = 'Istax'
            DataBinding.IsNullValueType = True
            Visible = False
            Options.Editing = False
            Options.Moving = False
          end
          object cxGridDBTvPartnerCeoName: TcxGridDBColumn
            Caption = #45824#54364#51088#47749
            DataBinding.FieldName = 'CeoName'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 90
          end
        end
        object cxGridDBTvBank: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FindPanel.Behavior = fcbFilter
          FindPanel.DisplayMode = fpdmAlways
          FindPanel.InfoText = #44160#49353#54624' '#53581#49828#53944#47484' '#51077#47141#54616#49901#49884#50724'...'
          FindPanel.ShowClearButton = False
          FindPanel.ShowCloseButton = False
          FindPanel.ShowFindButton = False
          FindPanel.ShowNextButton = False
          FindPanel.ShowPreviousButton = False
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxGridDBTvCustomerCellDblClick
          DataController.DataSource = DsBank
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBTvBankBankID: TcxGridDBColumn
            DataBinding.FieldName = 'BankID'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
          end
          object cxGridDBTvBankBName: TcxGridDBColumn
            Caption = #51008#54665#47749
            DataBinding.FieldName = 'BName'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Width = 183
          end
          object cxGridDBTvBankAccountNum: TcxGridDBColumn
            Caption = #44228#51340#48264#54840
            DataBinding.FieldName = 'AccountNum'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Width = 150
          end
          object cxGridDBTvBankBalance: TcxGridDBColumn
            Caption = #51092#50529
            DataBinding.FieldName = 'Balance'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Width = 100
          end
          object cxGridDBTvBankUName: TcxGridDBColumn
            Caption = #50696#44552#51452
            DataBinding.FieldName = 'UName'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Width = 80
          end
        end
        object cxGridLvCustomer: TcxGridLevel
          GridView = cxGridDBTvCustomer
        end
      end
    end
  end
  object cxGBoxPaymentList: TcxGroupBox
    Left = 388
    Top = 0
    Align = alClient
    Caption = #44144#47000#44552#50529' '#51221#48372
    Style.Edges = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 580
    Width = 896
    object cxGBoxSearch: TcxGroupBox
      Left = 1
      Top = 75
      Align = alClient
      Caption = #44144#47000#44552#50529' '#51221#48372
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 498
      Width = 894
      object cxGridTransactionhistory: TcxGrid
        Left = 3
        Top = 20
        Width = 888
        Height = 469
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Lilian'
        object cxGridTvTransactionhistory: TcxGridTableView
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
          OnCustomDrawCell = cxGridTvTransactionhistoryCustomDrawCell
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          object cxGridTvTransactionhistoryOrder: TcxGridColumn
            Caption = #49692#48264
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            OnGetDisplayText = cxGridDBTvCustomerSeqGetDisplayText
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 40
          end
          object cxGridTvTransactionhistoryCName: TcxGridColumn
            Caption = #44144#47000#52376#47749
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 200
          end
          object cxGridTvTransactionhistoryTransactionDate: TcxGridColumn
            Caption = #44144#47000#51068#51088
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Properties.AssignedValues.EditFormat = True
            Properties.DateButtons = [btnClear, btnToday]
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 85
          end
          object cxGridTvTransactionhistoryWithdraw: TcxGridColumn
            Caption = #52636#44552#44552#50529
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryDeposit: TcxGridColumn
            Caption = #51077#44552#44552#50529
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryBalance: TcxGridColumn
            Caption = #44144#47000#54980#51092#50529
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 100
          end
          object cxGridTvTransactionhistoryRemark: TcxGridColumn
            Caption = #44144#47000#45236#50857
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 150
          end
          object cxGridTvTransactionhistoryRecord: TcxGridColumn
            Caption = #44144#47000#44592#47197#49324#54637
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 150
          end
          object cxGridTvTransactionhistoryPoint: TcxGridColumn
            Caption = #44144#47000#51216
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.Sorting = False
            Width = 150
          end
          object cxGridTvTransactionhistoryCustomerID: TcxGridColumn
            Caption = #47588#52636#52376
            Visible = False
            Options.Filtering = False
            Options.Sorting = False
          end
          object cxGridTvTransactionhistoryPartnerID: TcxGridColumn
            Caption = #47588#51077#52376
            Visible = False
            Options.Filtering = False
            Options.Sorting = False
          end
          object cxGridTvTransactionhistoryTransactionHistoryID: TcxGridColumn
            Visible = False
          end
          object cxGridTvTransactionhistoryBankID: TcxGridColumn
          end
        end
        object cxGridLvTransactionhistory: TcxGridLevel
          GridView = cxGridTvTransactionhistory
        end
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 18
      Align = alTop
      Caption = ' '
      PanelStyle.Active = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 57
      Width = 894
      object cxBtnAddItem: TcxButton
        Left = 356
        Top = 5
        Width = 120
        Height = 47
        Caption = #44144#47000' '#45236#50669' '#52628#44032
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000016744558745469746C650050726F647563743B426F783B4974656D0E
          F51A640000018749444154785EA5933D6B145114869FBB7EB06B982211043592
          465D1044B60FD849ACE24FB04A993A10D7F5A3B60982FD56FE81C44E194865A1
          550A9B988058B8286C3221BB999CF3EAC0CC85759D34BE70E170CF39CF7D6FF1
          06490084102815E299960302A8F6CE33A946BADEE95D5F987D8A842410B80412
          FBBB3F5F3E78B5F31C30600AD0F8B076EFD9D51B33DDCBF3CDB22D022020085C
          79F7DD6A3B3CDCF8D2037C0A9024ADEECDC7AF414238C840426E20E3D6A2F3AD
          B7F20478F12F4070776419479FFBF175000442B4EE2CE366406C4D02BEEF0D48
          B6DE32DEFB1817E31F1017F7737EFDC86A015C999FE3DADD0ED9E8137F4B824B
          EDDB7CDD4EEB1DC8452B99E1B4D988DEA510EB66EB1CEE5E0F7033FC24436695
          6B2016F8E810B7B300EEC550091013932A000715801A07056088EC1401216240
          80153D9DE140EEF8F110378BCB51123A2E1CA8168059013880D2415489B23F70
          49B55FB0A3719EBEEF6FDE97400804382854B91830CA95D665E1E4D19BDD25E0
          424D12AB58E4C0385E4AE27FF41B1118E993BC5835950000000049454E44AE42
          6082}
        TabOrder = 0
        OnClick = cxBtnAddItemClick
      end
      object cxCEditBankID: TcxCurrencyEdit
        Left = 785
        Top = 3
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
        TabOrder = 1
        Visible = False
        Height = 25
        Width = 50
      end
      object cxLabel9: TcxLabel
        Left = 5
        Top = 5
        AutoSize = False
        Caption = #51008#54665#47749
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
        Width = 150
        AnchorX = 80
        AnchorY = 18
      end
      object cxEditCustomerName: TcxTextEdit
        Left = 5
        Top = 27
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
        TabOrder = 3
        Height = 25
        Width = 150
      end
      object cxEditAccountNum: TcxTextEdit
        Left = 155
        Top = 27
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
        TabOrder = 4
        Height = 25
        Width = 200
      end
      object cxLabel1: TcxLabel
        Left = 155
        Top = 5
        AutoSize = False
        Caption = #44228#51340#48264#54840
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
        Width = 200
        AnchorX = 255
        AnchorY = 18
      end
      object cxDEditCheckDate: TcxDateEdit
        Left = 499
        Top = 26
        AutoSize = False
        Properties.Alignment.Horz = taCenter
        Properties.DateButtons = [btnClear, btnToday]
        Properties.DisplayFormat = 'yyyy-mm-dd'
        Properties.SaveTime = False
        Properties.ShowTime = False
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
        Width = 121
      end
    end
  end
  object cxSplitter: TcxSplitter
    Left = 380
    Top = 0
    Width = 8
    Height = 580
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGBoxLeft
  end
  object DsCustomer: TDataSource
    DataSet = FDqCustomer
    Left = 148
    Top = 208
  end
  object DsPartner: TDataSource
    DataSet = FDqPartner
    Left = 144
    Top = 272
  end
  object OpenDialog1: TOpenDialog
    Left = 496
    Top = 272
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 980
    Top = 8
    PixelsPerInch = 96
    object cxStyle_InputQty: TcxStyle
      AssignedValues = [svColor]
      Color = 14286809
    end
    object cxStyle_InCome: TcxStyle
      AssignedValues = [svColor]
      Color = 14417919
    end
    object cxStyle_BlueDuck: TcxStyle
      AssignedValues = [svColor]
      Color = 16773603
    end
    object cxStyle_Center: TcxStyle
      AssignedValues = [svColor]
      Color = 13688831
    end
    object cxStyleSelect: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlight
    end
  end
  object DsBank: TDataSource
    DataSet = FDSpBank
    Left = 144
    Top = 352
  end
  object FDSpBank: TUniStoredProc
    ObjectView = True
    Left = 64
    Top = 352
  end
  object FDqCustomer: TUniQuery
    SQL.Strings = (
      'SELECT CustomerID, Name FROM MasterCustomer')
    ObjectView = True
    Left = 76
    Top = 200
  end
  object FDqPartner: TUniQuery
    SQL.Strings = (
      
        'SELECT PartnerID, Name,Istax FROM MasterPartner Where IsUsable =' +
        ' 1')
    ObjectView = True
    Left = 64
    Top = 280
  end
end
