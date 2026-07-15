inherited SalesListForm: TSalesListForm
  Margins.Top = 1
  Caption = #47588#52636#54788#54889
  OnCreate = FormCreate
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    inherited cxBtn_New: TcxButton
      Visible = False
    end
    inherited cxBtn_Save: TcxButton
      Visible = False
    end
    inherited cxBtn_Delete: TcxButton
      Visible = False
    end
    inherited cxBtn_Print: TcxButton
      Visible = True
      OnClick = cxBtn_PrintClick
    end
    inherited cxBtn_Excel: TcxButton
      Visible = True
    end
    inherited cxBtn_Search: TcxButton
      OnClick = cxBtn_SearchClick
    end
  end
  object cxGBoxOrderSearch: TcxGroupBox
    Left = 0
    Top = 35
    Align = alTop
    Caption = #44160#49353' '#51312#44148
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.ScrollbarMode = sbmDefault
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmDefault
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 55
    Width = 1258
    object cxDEdit_edate: TcxDateEdit
      Left = 695
      Top = 20
      Align = alLeft
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnToday]
      Properties.DisplayFormat = 'yyyy-mm-dd'
      Properties.ImmediateDropDownWhenActivated = True
      Properties.ImmediateDropDownWhenKeyPressed = True
      Properties.ImmediatePost = True
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
      Height = 26
      Width = 110
    end
    object cxDEdit_sdate: TcxDateEdit
      Left = 585
      Top = 20
      Align = alLeft
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnToday]
      Properties.DisplayFormat = 'yyyy-mm-dd'
      Properties.ImmediateDropDownWhenActivated = True
      Properties.ImmediateDropDownWhenKeyPressed = True
      Properties.ImmediatePost = True
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
      TabOrder = 0
      Height = 26
      Width = 110
    end
    object cxRGroup_Group: TcxRadioGroup
      AlignWithMargins = True
      Left = 4
      Top = 21
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Alignment = alCenterCenter
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      ParentFont = False
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #44036#45800' '#48372#44592
        end
        item
          Caption = #49345#49464' '#48372#44592
        end>
      Properties.OnChange = cxRGroup_GroupPropertiesChange
      ItemIndex = 0
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 2
      Height = 24
      Width = 200
    end
    object cxLbl1: TcxLabel
      Left = 205
      Top = 20
      Align = alLeft
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
      Height = 26
      Width = 90
      AnchorX = 250
      AnchorY = 33
    end
    object cxLCBBox_Cus: TcxLookupComboBox
      Left = 295
      Top = 20
      Align = alLeft
      AutoSize = False
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownRows = 20
      Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
      Properties.KeyFieldNames = 'CustomerID'
      Properties.ListColumns = <
        item
          FieldName = 'CustomerName'
        end>
      Properties.ListOptions.RowSelect = False
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_cus
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
      Width = 200
    end
    object cxLabel1: TcxLabel
      Left = 495
      Top = 20
      Align = alLeft
      AutoSize = False
      Caption = #44160#49353#44592#44036
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
      Height = 26
      Width = 90
      AnchorX = 540
      AnchorY = 33
    end
  end
  object cxGrid_List: TcxGrid
    Left = 0
    Top = 90
    Width = 1258
    Height = 552
    Align = alClient
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    object cxGridDBTv_List: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DS_L
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0'
          Kind = skSum
          Column = cxGridDBTv_List_cost
        end
        item
          Format = ',0'
          Kind = skSum
          Column = cxGridDBTv_List_tax
        end
        item
          Format = ',0'
          Kind = skSum
          Column = cxGridDBTv_List_amount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 35
      OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
      object cxGridDBTv_List_Sano: TcxGridDBColumn
        Caption = #49324#50629#51088#48264#54840
        DataBinding.FieldName = 'BusinessNo'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 140
      end
      object cxGridDBTv_List_division: TcxGridDBColumn
        Caption = #49345#49464#44396#48516
        DataBinding.FieldName = 'DIVISION'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTv_List_name: TcxGridDBColumn
        Caption = #44144#47000#52376#47749
        DataBinding.FieldName = 'CustomerName'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        HeaderAlignmentHorz = taCenter
        Width = 300
      end
      object cxGridDBTv_List_cost: TcxGridDBColumn
        Caption = #44277#44553#44032#50529
        DataBinding.FieldName = 'Cost'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.;-,0.'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBTv_List_tax: TcxGridDBColumn
        Caption = #48512#44032#49464
        DataBinding.FieldName = 'Tax'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.;-,0.'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTv_List_amount: TcxGridDBColumn
        Caption = #52509#44552#50529
        DataBinding.FieldName = 'Amount'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.;-,0.'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
    end
    object cxGridDBTv_Detail: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DS_D
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0'
          Kind = skSum
          Column = cxGridDBTv_Detail_Cost
        end
        item
          Format = ',0'
          Kind = skSum
          Column = cxGridDBTv_Detail_Tax
        end
        item
          Format = ',0'
          Kind = skSum
          Column = cxGridDBTv_Detail_Amount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 35
      object cxGridDBTv_Detail_CusName: TcxGridDBColumn
        Caption = #44144#47000#52432#47749
        DataBinding.FieldName = 'CusName'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 250
      end
      object cxGridDBTv_Detail_ItemName: TcxGridDBColumn
        Caption = #54408#47785#47749
        DataBinding.FieldName = 'ItemName'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 250
      end
      object cxGridDBTv_Detail_Qty: TcxGridDBColumn
        Caption = #49688#47049
        DataBinding.FieldName = 'InOutQty'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',0.;-,0.'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object cxGridDBTv_Detail_Cost: TcxGridDBColumn
        Caption = #44277#44553#44032#50529
        DataBinding.FieldName = 'Cost'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.;-,0.'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBTv_Detail_Tax: TcxGridDBColumn
        Caption = #48512#44032#49464
        DataBinding.FieldName = 'Tax'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.;-,0.'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTv_Detail_Amount: TcxGridDBColumn
        Caption = #52509#44552#50529
        DataBinding.FieldName = 'Amount'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.;-,0.'
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
    end
    object cxGridLv_List: TcxGridLevel
      GridView = cxGridDBTv_Detail
    end
  end
  object DS_cus: TDataSource
    DataSet = UniQuery_cus
    Left = 80
    Top = 152
  end
  object UniQuery_cus: TUniQuery
    Left = 80
    Top = 104
  end
  object UniSP_List: TUniStoredProc
    Left = 1104
    Top = 384
  end
  object DS_L: TDataSource
    DataSet = UniSP_List
    Left = 1104
    Top = 440
  end
  object UniSP_Detail: TUniStoredProc
    Left = 1000
    Top = 384
  end
  object DS_D: TDataSource
    DataSet = UniSP_Detail
    Left = 1000
    Top = 440
  end
  object frxReport_List: TfrxReport
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45288.416764224540000000
    ReportOptions.LastChange = 45288.416764224540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 640
    Top = 440
    Datasets = <
      item
        DataSet = FUDS_S
        DataSetName = 'FUDS_S'
      end
      item
        DataSet = FDS_L
        DataSetName = 'FDS_L'
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
      TopMargin = 15.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #49352#44404#47548
        Font.Style = []
        Height = 75.590600000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 56.692913390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = #44404#47548
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #47588#52636' '#54788#54889)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 56.692950000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44144#47000#52432#47749'  :  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 56.692950000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataSet = FUDS_S
          DataSetName = 'FUDS_S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FUDS_S."cusname"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 56.692950000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44160#49353#44592#44036'  :  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 56.692950000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'sdate'
          DataSet = FUDS_S
          DataSetName = 'FUDS_S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FUDS_S."sdate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 56.692950000000000000
          Width = 30.236220470000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '~')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 56.692950000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'edate'
          DataSet = FUDS_S
          DataSetName = 'FUDS_S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FUDS_S."edate"]')
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #49352#44404#47548
        Font.Style = []
        Height = 18.897637800000000000
        ParentFont = False
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 94.488188980000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49324#50629#51088#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #44396#48516)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Width = 238.110236220000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #44144#47000#52376#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 94.488250000000000000
          Height = 18.897637795275590000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #44277#44553#44032#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 83.149606300000000000
          Height = 18.897637795275590000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #48512#44032#49464)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897637795275590000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #52509#44552#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #49352#44404#47548
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object TotalPages: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] / [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'comname'
          DataSet = FUDS_S
          DataSetName = 'FUDS_S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FUDS_S."comname"]')
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
        Font.Height = -13
        Font.Name = #49352#44404#47548
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16383993
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FDS_L."Cost">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16383993
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FDS_L."Tax">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16383993
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FDS_L."Amount">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Width = 445.984540000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16383993
          HAlign = haCenter
          Memo.UTF8W = (
            #54633'                          '#44228)
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
        Font.Height = -13
        Font.Name = #49352#44404#47548
        Font.Style = []
        Height = 18.897637800000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = FDS_L
        DataSetName = 'FDS_L'
        RowCount = 0
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FDS_L."BusinessNo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FDS_L."Division"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
            '[FDS_L."Cost"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
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
            '[FDS_L."Tax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
            '[FDS_L."Amount"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Width = 238.110236220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FDS_L."CustomerName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object FUDS_S: TfrxUserDataSet
    UserName = 'FUDS_S'
    Fields.Strings = (
      'comname'
      'cusname'
      'sdate'
      'edate')
    OnGetValue = FUDS_SGetValue
    Left = 696
    Top = 496
  end
  object FDS_L: TfrxDBDataset
    UserName = 'FDS_L'
    CloseDataSource = False
    DataSource = DS_L
    BCDToCurrency = False
    DataSetOptions = []
    Left = 640
    Top = 496
  end
  object frxReport_Detail: TfrxReport
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45288.416764224540000000
    ReportOptions.LastChange = 45288.416764224540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 752
    Top = 440
    Datasets = <
      item
        DataSet = FUDS_S
        DataSetName = 'FUDS_S'
      end
      item
        DataSet = FDS_D
        DataSetName = 'FDS_D'
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
      TopMargin = 15.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #49352#44404#47548
        Font.Style = []
        Height = 75.590600000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 56.692913390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = #44404#47548
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #47588#52636' '#54788#54889)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 56.692950000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44144#47000#52432#47749'  :  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 56.692950000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          DataSet = FUDS_S
          DataSetName = 'FUDS_S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FUDS_S."cusname"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 56.692950000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #44160#49353#44592#44036'  :  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 56.692950000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'sdate'
          DataSet = FUDS_S
          DataSetName = 'FUDS_S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FUDS_S."sdate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 56.692950000000000000
          Width = 30.236220470000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '~')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 56.692950000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          DataField = 'edate'
          DataSet = FUDS_S
          DataSetName = 'FUDS_S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FUDS_S."edate"]')
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #49352#44404#47548
        Font.Style = []
        Height = 18.897637800000000000
        ParentFont = False
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 188.976377950000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #44144#47000#52376#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 83.149606300000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #44277#44553#44032#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 68.031496060000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #48512#44032#49464)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #52509#44552#50529)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Width = 196.535433070000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #54408#47785#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Width = 56.692913390000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #49352#44404#47548
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object TotalPages: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] / [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'comname'
          DataSet = FUDS_S
          DataSetName = 'FUDS_S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[FUDS_S."comname"]')
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
        Font.Height = -13
        Font.Name = #49352#44404#47548
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16383993
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FDS_D."Cost">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16383993
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FDS_D."Tax">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16383993
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<FDS_D."Amount">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Width = 480.000310000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 16383993
          HAlign = haCenter
          Memo.UTF8W = (
            #54633'                          '#44228)
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
        Font.Height = -13
        Font.Name = #49352#44404#47548
        Font.Style = []
        Height = 18.897637800000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = FDS_D
        DataSetName = 'FDS_D'
        RowCount = 0
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
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
            '[FDS_D."Cost"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
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
            '[FDS_D."Tax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
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
            '[FDS_D."Amount"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
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
            '[FDS_D."InOutQty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 188.976377952755900000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FDS_D."CusName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Width = 196.535433070866100000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[FDS_D."ItemName"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object FDS_D: TfrxDBDataset
    UserName = 'FDS_D'
    CloseDataSource = False
    DataSource = DS_D
    BCDToCurrency = False
    DataSetOptions = []
    Left = 752
    Top = 496
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
    Left = 696
    Top = 384
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 696
    Top = 320
  end
end
