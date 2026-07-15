inherited OriginalReportForm: TOriginalReportForm
  Caption = #50896#49328#51648' '#54869#51064#49436' '#44288#47532
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
    inherited cxBtn_Barcode: TcxButton
      OnClick = cxBtn_BarcodeClick
    end
    inherited cxBtn_Search: TcxButton
      OnClick = cxBtn_SearchClick
    end
  end
  object cxGBox_Search: TcxGroupBox
    Left = 0
    Top = 35
    Align = alTop
    PanelStyle.Active = True
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 86
    Width = 1258
    object cxGroupBox1: TcxGroupBox
      Left = 3
      Top = 3
      Align = alLeft
      Caption = #44160#49353' '#51312#44148
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 80
      Width = 209
      object cxLabel3: TcxLabel
        Left = 5
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
        AnchorX = 105
        AnchorY = 34
      end
      object cxDEdit_sdate: TcxDateEdit
        Left = 5
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
        TabOrder = 2
        Height = 25
        Width = 100
      end
      object cxDEdit_Edate: TcxDateEdit
        Left = 104
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
        TabOrder = 1
        Height = 25
        Width = 100
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 212
      Top = 3
      Align = alLeft
      Caption = #54028#51068' '#46321#47197
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 80
      Width = 541
      object cxLabel1: TcxLabel
        Left = 6
        Top = 21
        AutoSize = False
        Caption = #52392#48512#54028#51068' 1'
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
        Width = 100
        AnchorX = 56
        AnchorY = 34
      end
      object cxLabel2: TcxLabel
        Left = 6
        Top = 45
        AutoSize = False
        Caption = #52392#48512#54028#51068' 2'
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
        Width = 100
        AnchorX = 56
        AnchorY = 58
      end
      object cxEdit_file1: TcxTextEdit
        Left = 103
        Top = 21
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
        TabOrder = 2
        Height = 25
        Width = 250
      end
      object cxEdit_file2: TcxTextEdit
        Left = 103
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
        TabOrder = 3
        Height = 25
        Width = 250
      end
      object cxBtn_Load1: TcxButton
        AlignWithMargins = True
        Left = 353
        Top = 22
        Width = 90
        Height = 23
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #54028#51068' '#52286#44592
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001D744558745469746C65004C6F61643B53656C6563743B
          466F6C6465723B4F70656E96333E78000000A449444154785EA5CEB10DC2400C
          85E16B99818221B2000B58A24B66A06401A4E496A0600A84449728A264031A26
          C80AE619C914E1153E527C72F57E39A96A31696F0A15A4E8C07530807AA424F0
          009DFB0C72CE024A08D8F8040A4FF3F3C177C0AD3078410F0DAC7D6CDB4860B3
          6BAF17BBB0B5918B06EA7D773EDA9DC7A381D191380970028920013298EE0701
          655840D82012E0E378A07C0CE281BFC6902CB0C4F2C01BC649A89EA2B44B2F00
          00000049454E44AE426082}
        TabOrder = 4
        OnClick = cxBtn_Load1Click
      end
      object cxBtn_Load2: TcxButton
        AlignWithMargins = True
        Left = 353
        Top = 46
        Width = 90
        Height = 23
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #54028#51068' '#52286#44592
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001D744558745469746C65004C6F61643B53656C6563743B
          466F6C6465723B4F70656E96333E78000000A449444154785EA5CEB10DC2400C
          85E16B99818221B2000B58A24B66A06401A4E496A0600A84449728A264031A26
          C80AE619C914E1153E527C72F57E39A96A31696F0A15A4E8C07530807AA424F0
          009DFB0C72CE024A08D8F8040A4FF3F3C177C0AD3078410F0DAC7D6CDB4860B3
          6BAF17BBB0B5918B06EA7D773EDA9DC7A381D191380970028920013298EE0701
          655840D82012E0E378A07C0CE281BFC6902CB0C4F2C01BC649A89EA2B44B2F00
          00000049454E44AE426082}
        TabOrder = 5
        OnClick = cxBtn_Load2Click
      end
      object cxBtn_open1: TcxButton
        AlignWithMargins = True
        Left = 444
        Top = 22
        Width = 90
        Height = 23
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #54028#51068' '#48372#44592
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000015744558745469746C6500446F776E6C6F61643B4172726F773BEC8F
          1AD00000023949444154785E75534D681341187DB3C98A37C18358A197D2AA85
          A220463C252D6AC5D26841F0E2A958905044114F9E440A82964A2E22A2077B11
          29D22262A968D5A412436D14FCA944A836C664B149BAA469F3373FCE245D1C08
          79F0F83EBE8FF786997D4B84105020844003A9B111DC691C9D010D63CF7A6AB3
          D1A7DDB3B2673AE56C5AED640F1D6E68E0655315C22AEEEEE1817BD071637CB0
          5719E42CCA9B19902BA75F186A46CB0C25B6827CF52B8400B618DB50A9504898
          2343615599A49084FE06AE6BE33E2A38A054E7CF5C855DFA0281BAC19D870F6A
          122E77C1CB5153EA68C31B247EAE4EEC6DDF8D813E3FAC7C0CAB450B76318D84
          3D0FFFA983E8DCD381CF0BD664B32BF0F8C75C4088E861BEF56FAB30F3E09C41
          080E0182D29A81278F13C9F4D27A60F30A0D5F41CC4D256D2B59189C9BFD2DB5
          04555691AC8231819793299EB58A438B914C0680D00D74F0E9FB4BA1E5B87DEB
          5BCC06E50C8C732C84B358FE51188BCD58AFB52C341AF407DA95338D3E4F8F7C
          7A6FCFAFA42AF89328E2C31B3BB618C95E07503D74729780829E284585E3E7DA
          107CB75FB5AE034777EEF30FB7157ACEB66E7478B6ABA1EB76B80B9EFE165D07
          A7D1236C6CD2E5E96BB9D0E5DB7171332F2E67A71BE839708F4EF95E11837819
          15608C4B8A1AB9EC29ADD78D751A0A5E8A1D7172A027D1CC66CADEDE639DC8E5
          53A08C81720EE690A94A313351F0AA6C493618885F71FBEDDD78C4C79D931505
          A4B07E3AE7808C79A859902A8F6E7E3F01C0D47E65557508C9AA64C919FC03C9
          195863EE9BB9A50000000049454E44AE426082}
        TabOrder = 6
        OnClick = cxBtn_open1Click
      end
      object cxBtn_open2: TcxButton
        AlignWithMargins = True
        Left = 444
        Top = 46
        Width = 90
        Height = 23
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #54028#51068' '#48372#44592
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000015744558745469746C6500446F776E6C6F61643B4172726F773BEC8F
          1AD00000023949444154785E75534D681341187DB3C98A37C18358A197D2AA85
          A220463C252D6AC5D26841F0E2A958905044114F9E440A82964A2E22A2077B11
          29D22262A968D5A412436D14FCA944A836C664B149BAA469F3373FCE245D1C08
          79F0F83EBE8FF786997D4B84105020844003A9B111DC691C9D010D63CF7A6AB3
          D1A7DDB3B2673AE56C5AED640F1D6E68E0655315C22AEEEEE1817BD071637CB0
          5719E42CCA9B19902BA75F186A46CB0C25B6827CF52B8400B618DB50A9504898
          2343615599A49084FE06AE6BE33E2A38A054E7CF5C855DFA0281BAC19D870F6A
          122E77C1CB5153EA68C31B247EAE4EEC6DDF8D813E3FAC7C0CAB450B76318D84
          3D0FFFA983E8DCD381CF0BD664B32BF0F8C75C4088E861BEF56FAB30F3E09C41
          080E0182D29A81278F13C9F4D27A60F30A0D5F41CC4D256D2B59189C9BFD2DB5
          04555691AC8231819793299EB58A438B914C0680D00D74F0E9FB4BA1E5B87DEB
          5BCC06E50C8C732C84B358FE51188BCD58AFB52C341AF407DA95338D3E4F8F7C
          7A6FCFAFA42AF89328E2C31B3BB618C95E07503D74729780829E284585E3E7DA
          107CB75FB5AE034777EEF30FB7157ACEB66E7478B6ABA1EB76B80B9EFE165D07
          A7D1236C6CD2E5E96BB9D0E5DB7171332F2E67A71BE839708F4EF95E11837819
          15608C4B8A1AB9EC29ADD78D751A0A5E8A1D7172A027D1CC66CADEDE639DC8E5
          53A08C81720EE690A94A313351F0AA6C493618885F71FBEDDD78C4C79D931505
          A4B07E3AE7808C79A859902A8F6E7E3F01C0D47E65557508C9AA64C919FC03C9
          195863EE9BB9A50000000049454E44AE426082}
        TabOrder = 7
        OnClick = cxBtn_open2Click
      end
    end
  end
  object cxGrid_List: TcxGrid
    Left = 0
    Top = 121
    Width = 1258
    Height = 521
    Align = alClient
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    object cxGridTv_List: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = cxGridTv_ListCellDblClick
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CheckBoxPosition = cbpIndicator
      OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 40
      OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
      object cxGridTv_List_date: TcxGridColumn
        Caption = #51077#44256#51068#51088
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object cxGridTv_List_name: TcxGridColumn
        Caption = #54408#47749
        HeaderAlignmentHorz = taCenter
        Width = 280
      end
      object cxGridTv_List_standard: TcxGridColumn
        Caption = #51060#47141#48264#54840
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridTv_List_qty: TcxGridColumn
        Caption = #49688#47049
        DataBinding.ValueType = 'Integer'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',#.;-,#.'
        HeaderAlignmentHorz = taCenter
        Width = 70
      end
      object cxGridTv_List_remark: TcxGridColumn
        Caption = #48708#44256
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object cxGridTv_List_file1: TcxGridColumn
        Caption = #52392#48512#54028#51068' 1'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 250
      end
      object cxGridTv_List_file2: TcxGridColumn
        Caption = #52392#48512#54028#51068' 2'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 250
      end
      object cxGridTv_List_InoutID: TcxGridColumn
        Caption = 'InOutID'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxGridTv_List_DetailID: TcxGridColumn
        Caption = 'DetailID'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxGridTv_List_ItemID: TcxGridColumn
        Caption = 'ItemID'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxGridTv_List_QR: TcxGridColumn
        Caption = 'qrcode'
        Visible = False
      end
    end
    object cxGridLv_List: TcxGridLevel
      GridView = cxGridTv_List
    end
  end
  object frxReport_qrcode: TfrxReport
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44978.712945185200000000
    ReportOptions.LastChange = 44978.712945185200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 320
    Top = 336
    Datasets = <
      item
        DataSet = fuds_QR
        DataSetName = 'fuds_QR'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      PaperWidth = 100.000000000000000000
      PaperHeight = 100.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 359.055350000000000000
        Top = 18.897650000000000000
        Width = 377.953000000000000000
        DataSet = fuds_QR
        DataSetName = 'fuds_QR'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 177.637910000000000000
          Width = 279.685168740000000000
          Height = 162.519772910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 109.606370000000000000
          Width = 75.590551180000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 75.590600000000000000
          Width = 75.590551180000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51060#47141#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 75.590600000000000000
          Width = 279.685105280000000000
          Height = 34.015748030000000000
          DataField = 'Standard'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_QR."Standard"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 109.606370000000000000
          Width = 279.685105280000000000
          Height = 34.015748030000000000
          DataField = 'Qty'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_QR."Qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Barcode2D1: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 147.041714530000000000
          Top = 191.136231890000000000
          Width = 136.616445430000000000
          Height = 136.616445430000000000
          StretchMode = smActualHeight
          AutoSize = False
          Expression = '<fuds_QR."QRCodeText">'
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          DataField = 'QRCodeText'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = '320030003200330030003100300033003100'
          Zoom = 1.626386255119048000
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 41.574830000000000000
          Width = 75.590551180000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51077#44256#51068#51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 75.590551180000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #54408#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 41.574830000000000000
          Width = 279.685105280000000000
          Height = 34.015748030000000000
          DataField = 'InOutDate'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_QR."InOutDate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 7.559060000000000000
          Width = 279.685171180000000000
          Height = 34.015748030000000000
          DataField = 'ItemName'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_QR."ItemName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 143.622140000000000000
          Width = 75.590551180000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #46020#50517#51109)
          ParentFont = False
          VAlign = vaCenter
        end
        object fuds_QRRemark: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 143.622140000000000000
          Width = 279.685220000000000000
          Height = 34.015770000000000000
          DataField = 'Remark'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_QR."Remark"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 177.637910000000000000
          Width = 75.590551180000000000
          Height = 162.519768030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'QR'
            'CODE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object fuds_QR: TfrxUserDataSet
    UserName = 'fuds_QR'
    OnCheckEOF = fuds_QRCheckEOF
    OnFirst = fuds_QRFirst
    OnNext = fuds_QRNext
    Fields.Strings = (
      'InOutDate'
      'ItemName'
      'Standard'
      'Qty'
      'Remark'
      'QRCodeText')
    OnGetValue = fuds_QRGetValue
    Left = 320
    Top = 392
  end
  object frxReport_qrcode2: TfrxReport
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44978.712945185200000000
    ReportOptions.LastChange = 44978.712945185200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 312
    Top = 272
    Datasets = <
      item
        DataSet = fuds_QR
        DataSetName = 'fuds_QR'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      PaperWidth = 100.000000000000000000
      PaperHeight = 80.000000000000000000
      PaperSize = 256
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 283.464566929133900000
        Top = 18.897650000000000000
        Width = 377.953000000000000000
        DataSet = fuds_QR
        DataSetName = 'fuds_QR'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 177.637910000000000000
          Width = 279.685168740000000000
          Height = 98.267716540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 109.606370000000000000
          Width = 75.590551180000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 75.590600000000000000
          Width = 75.590551180000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51060#47141#48264#54840)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 75.590600000000000000
          Width = 279.685105280000000000
          Height = 34.015748030000000000
          DataField = 'Standard'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_QR."Standard"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 109.606370000000000000
          Width = 279.685105280000000000
          Height = 34.015748030000000000
          DataField = 'Qty'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_QR."Qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Barcode2D1: TfrxBarcode2DView
          AllowVectorExport = True
          Left = 97.907824530000000000
          Top = 183.577171890000000000
          Width = 83.149606300000000000
          Height = 83.149606300000000000
          StretchMode = smActualHeight
          AutoSize = False
          Expression = '<fuds_QR."QRCodeText">'
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          BarProperties.CodePage = 0
          DataField = 'QRCodeText'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Frame.Typ = []
          Rotation = 0
          ShowText = False
          HexData = '320030003200330030003100300033003100'
          Zoom = 0.989876265476190500
          FontScaled = True
          QuietZone = 0
          ColorBar = clBlack
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 41.574830000000000000
          Width = 75.590551180000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #51077#44256#51068#51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 75.590551180000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #54408#47749)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 41.574830000000000000
          Width = 279.685105280000000000
          Height = 34.015748030000000000
          DataField = 'InOutDate'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_QR."InOutDate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 7.559060000000000000
          Width = 279.685171180000000000
          Height = 34.015748030000000000
          DataField = 'ItemName'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_QR."ItemName"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 143.622140000000000000
          Width = 75.590551180000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #46020#50517#51109)
          ParentFont = False
          VAlign = vaCenter
        end
        object fuds_QRRemark: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 143.622140000000000000
          Width = 279.685220000000000000
          Height = 34.015770000000000000
          DataField = 'Remark'
          DataSet = fuds_QR
          DataSetName = 'fuds_QR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_QR."Remark"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 177.637910000000000000
          Width = 75.590551180000000000
          Height = 98.267716535433070000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'QR'
            'CODE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
