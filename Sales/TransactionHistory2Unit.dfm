inherited TransactionHistory2ModalForm: TTransactionHistory2ModalForm
  Caption = #44144#47000#45236#50669#46321#47197
  ClientHeight = 615
  ClientWidth = 1484
  ExplicitLeft = -142
  ExplicitWidth = 1500
  ExplicitHeight = 654
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    Top = 580
    ExplicitTop = 580
    ExplicitWidth = 1924
    Width = 1484
    inherited cxBtn_Save: TcxButton
      Left = 526
      Visible = True
      OnClick = cxBtnSaveClick
      ExplicitLeft = 526
    end
    inherited cxBtn_Delete: TcxButton
      Left = 91
      ExplicitLeft = 91
    end
    inherited cxBtn_Print: TcxButton
      Left = 178
      ExplicitLeft = 178
    end
    inherited cxBtn_Excel: TcxButton
      Left = 352
      ExplicitLeft = 352
    end
    inherited cxBtn_Close: TcxButton
      Left = 1395
      ExplicitLeft = 1835
    end
    inherited cxBtn_Barcode: TcxButton
      Left = 265
      ExplicitLeft = 265
    end
    inherited cxBtn_Cancel: TcxButton
      Left = 439
      ExplicitLeft = 439
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
    Width = 522
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
      Width = 516
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
        Width = 514
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
        Width = 514
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
          object cxGridDBTvCustomerOrders: TcxGridDBColumn
            Caption = #49692#48264
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            OnGetDisplayText = cxGridDBTvCustomerOrdersGetDisplayText
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 37
          end
          object cxGridDBTvCustomer_Division: TcxGridDBColumn
            Caption = #49345#49464
            DataBinding.FieldName = 'SubDivisionTxT'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 70
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
            Width = 263
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
            OnGetDisplayText = cxGridDBTvPartnerColumn1GetDisplayText
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
    Left = 530
    Top = 0
    Align = alClient
    Caption = #44144#47000#44552#50529' '#51221#48372
    Style.Edges = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    ExplicitWidth = 1394
    Height = 580
    Width = 954
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
      ExplicitWidth = 1392
      Height = 498
      Width = 952
      object cxGridTransactionhistory: TcxGrid
        Left = 3
        Top = 43
        Width = 946
        Height = 446
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Lilian'
        ExplicitWidth = 1386
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
          FindPanel.Behavior = fcbFilter
          FindPanel.InfoText = #44160#49353#54624' '#53581#49828#53944#47484' '#51077#47141#54616#49901#49884#50724'...'
          FindPanel.ShowClearButton = False
          FindPanel.ShowCloseButton = False
          FindPanel.ShowFindButton = False
          FindPanel.ShowNextButton = False
          FindPanel.ShowPreviousButton = False
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
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 41
          end
          object cxGridTvTransactionhistoryCName: TcxGridColumn
            Caption = #44144#47000#52376#47749
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
            Width = 248
          end
          object cxGridTvTransactionhistoryColumn1: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn2: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn3: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn4: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn5: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn6: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn7: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn8: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn9: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn10: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn11: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn12: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn13: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn14: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn15: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn16: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn17: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn18: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn19: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryColumn20: TcxGridColumn
            Options.Sorting = False
            Width = 80
          end
          object cxGridTvTransactionhistoryCustomerID: TcxGridColumn
            Visible = False
          end
          object cxGridTvTransactionhistoryPartnerID: TcxGridColumn
            Visible = False
          end
          object cxGridTvTransactionhistoryBankID: TcxGridColumn
            Visible = False
          end
        end
        object cxGridLvTransactionhistory: TcxGridLevel
          GridView = cxGridTvTransactionhistory
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 3
        Top = 20
        Align = alTop
        PanelStyle.Active = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 1
        ExplicitWidth = 1386
        Height = 23
        Width = 946
        object cxLabel2: TcxLabel
          Left = 0
          Top = 0
          AutoSize = False
          Caption = #49692#48264
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
          Width = 40
          AnchorX = 20
          AnchorY = 13
        end
        object cxLabel3: TcxLabel
          Left = 37
          Top = 0
          AutoSize = False
          Caption = #44144#47000#52376#47749
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
          AnchorX = 162
          AnchorY = 13
        end
        object cxLabel4: TcxLabel
          Left = 284
          Top = 0
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
          Height = 25
          Width = 85
          AnchorX = 327
          AnchorY = 13
        end
        object cxLabel5: TcxLabel
          Left = 366
          Top = 0
          AutoSize = False
          Caption = #52636#44552#44552#50529
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
          Width = 85
          AnchorX = 409
          AnchorY = 13
        end
        object cxLabel6: TcxLabel
          Left = 448
          Top = 0
          AutoSize = False
          Caption = #51077#44552#44552#50529
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
          Width = 85
          AnchorX = 491
          AnchorY = 13
        end
        object cxLabel7: TcxLabel
          Left = 530
          Top = 0
          AutoSize = False
          Caption = #44144#47000#54980#51092#50529
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
          AnchorX = 570
          AnchorY = 13
        end
        object cxLabel8: TcxLabel
          Left = 607
          Top = 0
          AutoSize = False
          Caption = #44144#47000#45236#50857
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
          Width = 85
          AnchorX = 650
          AnchorY = 13
        end
        object cxLabel10: TcxLabel
          Left = 689
          Top = 0
          AutoSize = False
          Caption = #44144#47000#44592#47197#49324#54637
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
          Width = 85
          AnchorX = 732
          AnchorY = 13
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
      ExplicitWidth = 1392
      Height = 57
      Width = 952
      object cxBtnAddItem: TcxButton
        Left = 356
        Top = 7
        Width = 120
        Height = 45
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
        Visible = False
        OnClick = cxBtnAddItemClick
      end
      object cxBtnExcelUpload: TcxButton
        AlignWithMargins = True
        Left = 478
        Top = 7
        Width = 75
        Height = 45
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #45453#54801
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
        TabOrder = 1
        OnClick = cxBtnExcelUploadClick
      end
      object cxCEditBankID: TcxCurrencyEdit
        Left = 643
        Top = 6
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
        TabOrder = 2
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
        TabOrder = 4
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
        TabOrder = 5
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
        Left = 643
        Top = 29
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
        TabOrder = 7
        Visible = False
        Height = 25
        Width = 121
      end
      object cxDEditTemp: TcxDateEdit
        Left = 699
        Top = 3
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
        TabOrder = 8
        Visible = False
        Height = 25
        Width = 121
      end
      object cxButton1: TcxButton
        AlignWithMargins = True
        Left = 565
        Top = 7
        Width = 103
        Height = 45
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #44592#53440#51008#54665
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
        TabOrder = 9
        OnClick = cxButton1Click
      end
    end
  end
  object cxSplitter: TcxSplitter
    Left = 522
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
    Left = 988
    Top = 144
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
  object DsAccount: TDataSource
    DataSet = FDSpAccount
    Left = 344
    Top = 184
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
  object FDSpBank: TUniStoredProc
    StoredProcName = 'SHMS_ILE..usp_Bank'
    ObjectView = True
    Left = 64
    Top = 352
  end
  object FDSpAccount: TUniStoredProc
    StoredProcName = 'SHMS_ILE..usp_Account'
    ObjectView = True
    Left = 248
    Top = 184
  end
end
