inherited CCPListForm: TCCPListForm
  Caption = 'CCPListForm'
  ClientHeight = 741
  OnCreate = FormCreate
  ExplicitHeight = 780
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
  end
  object cxGBox_Left: TcxGroupBox
    Left = 0
    Top = 35
    Align = alLeft
    Caption = #49444#48708' '#47785#47197
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Visible = False
    Height = 706
    Width = 200
    object cxGrid_Fridge: TcxGrid
      Left = 3
      Top = 50
      Width = 194
      Height = 647
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      object cxGridTv_Fridge: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGridTv_Fridge_Name: TcxGridColumn
          Caption = #49444#48708#47749
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 120
        end
        object cxGridTv_Fridge_Yn: TcxGridColumn
          Caption = #48372#51060#44592#50668#48512
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 75
        end
        object cxGridTv_Fridge_ID: TcxGridColumn
          Caption = 'id'
          DataBinding.ValueType = 'Integer'
          Visible = False
        end
      end
      object cxGridLv_Fridge: TcxGridLevel
        GridView = cxGridTv_Fridge
      end
    end
    object cxBtn_apply: TcxButton
      Left = 3
      Top = 20
      Width = 194
      Height = 30
      Align = alTop
      Caption = #51201#50857#54616#44592
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Green'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000041744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E53657453796D626F6C73333B436F6E646974696F6E616C46
        6F726D617474696E673B9DC5ED720000025449444154785EAD935D6C4B6118C7
        DF2A1BFD38DA4E6DB122D5B5DBAC92CA1CC4B0656CA9CE6ABE3A22662C9DB656
        5F4985359D91655DCC47EDA327CA120417222415DA1925F4424AB6650BDD8A0B
        71C1848CC415B3C7FB9EB4F45CB8907993DFB938CFF3FFE579DEE445003021D8
        CF3F1C1E66322605C3C7FC11D8996C54C768D01EAF06D93A311D1A646D57234B
        7B16DADD96C586153902E10EB7F2AA95A9800D0E8581C81202B6F92BC4D097F1
        281A1D7F813EFF1C409FC6FAD0C71FCFD8B09A164BAA9A95FE5BCF1BA07F8401
        739B9104A7FD16D49E51E1F01037FC9D0D4FCA2DA0E455CDAAF0EDBE2608BF3D
        06CECB4B416F4B77E15A6AF21DF0E3BB4D21A14478CE02816CEBF1798FBB074F
        42E84D3D345D2F84129BFC12AE89493D21E097EFCF5C53E32907936BB69F5E27
        53113B46B4FE50A6FF66A411824307E0ECDD52D0D765448452FE0C124EBEC4A9
        D5A7CBA0F7C33908F47B60674BDE68F1AE9916833DC3D7756F2F04861DC0840C
        603CA878AFA40579E4F25659B123499052B05DEA719C5F043DAF9C303872031A
        2E1AC1D76D879E980BBAC26B61E391B9633945227D7C32DE4A731A47C0C38868
        93A4639F570757222678FAAE13825127F89EE8C17C6A3EE82AA813A4878443AF
        5BD0B26A294780E23B51B891B178B4C03C2A01EFC3D5E0BAB618E8CAE9BDB826
        273D0F626E148C36227A9B842B58827FC425126D99D857D39A0DAD779643716D
        FAB759DAD41564CDFBC36E14787914F9070EA3FC4A8A2BC8DF42111212596EA9
        F04291350DD48582FAC4E80B378B114147D824E60AB8203E868A8F2D62A57F39
        FFE5354E885F4F2C8B1CABF609A90000000049454E44AE426082}
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxBtn_applyClick
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 208
    Top = 35
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 706
    Width = 1050
    object cxGBox_input: TcxGroupBox
      Left = 3
      Top = 30
      Align = alTop
      Caption = #51312#44148
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 60
      Width = 1044
      object cxLbl2: TcxLabel
        Left = 243
        Top = 20
        Align = alLeft
        AutoSize = False
        Caption = #44160#49353#51068#51088
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
        Height = 31
        Width = 100
        AnchorX = 293
        AnchorY = 36
      end
      object cxDEdit_EDate: TcxDateEdit
        Left = 493
        Top = 20
        Align = alLeft
        AutoSize = False
        Properties.DateButtons = [btnClear, btnToday]
        Properties.OnEditValueChanged = cxBtn_SearchClick
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 3
        Height = 31
        Width = 150
      end
      object cxBtnSearchMetal: TcxButton
        AlignWithMargins = True
        Left = 644
        Top = 21
        Width = 80
        Height = 29
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
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
        TabOrder = 4
        OnClick = cxBtn_SearchClick
      end
      object cxbtn_auto: TcxButton
        AlignWithMargins = True
        Left = 726
        Top = 21
        Width = 113
        Height = 29
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = #47784#45768#53552#47553#49884#51089
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000D744558745469746C65005265636F72643B61F05A1A00
          00021A49444154785EAD915F4853711CC5675CDA2A2246180549905BD94379E3
          A220D532D4ACB9B0F225A23F4241116E456F116668596B08455820482E2A2828
          58841425F4074DCD87B9BA45D3D9823518222151912FA7DFF932F2765F6B70B8
          87733EDF03F7CE01E09FF47F06745D771886217AD47CDA3970F1FC89C170FBD0
          50F8C2378A9E19BB3CC79BD9018FC723CF672DCD45FDE75A4793376F20D71BC3
          74DF634A3C337664C87ABDDED901B7DBEDE80936B95EB59C191DEFE9C6D7FBB7
          3115BD8EC9AECB14BD64EC1493B8753C348F377F06D4AFA037183A695EBD82C9
          EE4E6423AD180E1DC393C6468A9E997464C8F2C63AA0DDDBD5F06622D28E2FAD
          A730DC7404FD9D5D30DF7D8269A6C58F048F4A47862C6FAC03CE3BB58199F1C3
          FB903AB4174F0F1E402A994126374DD133938E8C627FF1C63AE08AFA6A663E34
          F8F13E5085079B37213D91456EEA87289DCA3293CEDCED47D457FD9D377F0D5C
          3336C407AB2BF176AB0FCFEBFD18084790F99CA3C4BFDC59271D19B2F60167DB
          AAD2B3B1B20AC42B2B90D8518B17F57578B8C547894F046AA42343D6FE0ADA9A
          F90B9775AC5C978CE90646369623BEBD0AE6FE3D14BD64EC143346D6FE110B94
          5CDB16159687979724EF96AC45DFFA52BC2ED329F1CC54374686ACFD6FA4E628
          2D58AACD2D0EB98B3ADA0A8B3F5E5AE2FD49D133634726CF3AAC03F264915F5F
          ACB442693545CF8C1D19B2F601ABF83A9A92530E44E235765690B7BF01D76404
          F64F3219EB0000000049454E44AE426082}
        TabOrder = 6
        Visible = False
        OnClick = cxbtn_autoClick
      end
      object cxDEdit_SDate: TcxDateEdit
        Left = 343
        Top = 20
        Align = alLeft
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
        Height = 31
        Width = 150
      end
      object cxLabel2: TcxLabel
        Left = 3
        Top = 20
        Align = alLeft
        AutoSize = False
        Caption = #49444#48708#44396#48516
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
        Height = 31
        Width = 90
        AnchorX = 48
        AnchorY = 36
      end
      object cxLCBox_Gubun: TcxLookupComboBox
        Left = 93
        Top = 20
        Align = alLeft
        Properties.KeyFieldNames = 'MetalNo'
        Properties.ListColumns = <
          item
            FieldName = 'Name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds_gubun
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
        Width = 150
      end
    end
    object cxGrid_TempList: TcxGrid
      Left = 3
      Top = 17
      Width = 1044
      Height = 13
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      object cxGridDBTv_TempList: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DS_List
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Editing = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 55
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 65
      end
      object cxGridTv_TempList: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 60
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 60
      end
      object cxGridLv_TempList: TcxGridLevel
        GridView = cxGridTv_TempList
      end
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 3
      Align = alTop
      AutoSize = False
      Caption = #49892#49884#44036' '#50728#46020' '#54869#51064'(30'#52488#47560#46356' '#47532#49483#46121#45768#45796'!!!)'
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      Style.TextColor = clFuchsia
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Visible = False
      Height = 14
      Width = 1044
      AnchorX = 525
      AnchorY = 10
    end
    object cxl_metal: TcxLabel
      Left = 3
      Top = 90
      Align = alTop
      AutoSize = False
      Caption = #44160#49353#50900#51032' '#44552#49549#44160#52636#44592' '#54788#54889
      ParentColor = False
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
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
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 40
      Width = 1044
      AnchorX = 525
      AnchorY = 110
    end
    object cxGrid_List: TcxGrid
      Left = 3
      Top = 130
      Width = 1044
      Height = 573
      Align = alClient
      TabOrder = 4
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      object cxGridDBTv_List: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DS_metal
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 40
        OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
        object cxGridDBTv_List_datetime: TcxGridDBColumn
          Caption = #49884#44036
          DataBinding.FieldName = 'CheckDate'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTv_List_name: TcxGridDBColumn
          Caption = #49444#48708#47749
          DataBinding.FieldName = 'MetalName'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTv_List_result: TcxGridDBColumn
          Caption = #44160#52636#44208#44284
          DataBinding.FieldName = 'MetalResult'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object cxGridDBTv_List_Reason: TcxGridDBColumn
          Caption = #54620#44228' '#44592#51456' '#51060#53448' '#51060#50976
          DataBinding.FieldName = 'MetalBasicReason'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 300
        end
        object cxGridDBTv_List_Contents: TcxGridDBColumn
          Caption = #44060#49440#51312#52824' '#49324#54637
          DataBinding.FieldName = 'MetalActionContents'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 300
        end
      end
      object cxGridTv_List: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridTv_List_time: TcxGridColumn
          Caption = #49884#44036
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 180
        end
        object cxGridTv_List_name: TcxGridColumn
          Caption = #49444#48708#47749
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridTv_List_result: TcxGridColumn
          Caption = #44160#52636' '#44208#44284
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridTv_List_contents: TcxGridColumn
          Caption = #44060#49440#51312#52824' '#49324#54637
          HeaderAlignmentHorz = taCenter
          Width = 450
        end
        object cxGridTv_List_no: TcxGridColumn
          Caption = 'MetalNo'
          DataBinding.ValueType = 'Integer'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGridLv_List: TcxGridLevel
        GridView = cxGridDBTv_List
      end
    end
  end
  object cxSplitter_Left: TcxSplitter
    Left = 200
    Top = 35
    Width = 8
    Height = 706
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGBox_Left
    Visible = False
  end
  object DS_TC: TDataSource
    DataSet = UniQuery_TC
    Left = 104
    Top = 576
  end
  object Timer_check: TTimer
    Enabled = False
    Interval = 30000
    OnTimer = Timer_checkTimer
    Left = 112
    Top = 544
  end
  object DS_List: TDataSource
    DataSet = UniQuery_List
    Left = 120
    Top = 608
  end
  object DS_metal: TDataSource
    DataSet = UniQuery_metal
    Left = 1016
    Top = 592
  end
  object UniQuery_TC: TUniQuery
    SQL.Strings = (
      'EXEC usp_CCPCheckTemp @OPTION ='#39'1'#39', @t_datetime = '#39'2021-10-28'#39)
    ObjectView = True
    Left = 40
    Top = 576
  end
  object UniQuery_List: TUniQuery
    ObjectView = True
    Left = 32
    Top = 608
  end
  object UniQuery_metal: TUniQuery
    ObjectView = True
    Left = 1016
    Top = 544
  end
  object UniQuery_comm: TUniQuery
    SQL.Strings = (
      'EXEC usp_CCPCheckTemp @OPTION ='#39'1'#39', @t_datetime = '#39'2021-10-28'#39)
    ObjectView = True
    Left = 40
    Top = 544
  end
  object autoTimer: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = autoTimerTimer
    Left = 712
    Top = 88
  end
  object ds_gubun: TDataSource
    DataSet = uq_gubun
    Left = 296
    Top = 200
  end
  object uq_gubun: TUniQuery
    SQLInsert.Strings = (
      'select 0 as "MetalNo"'
      '      ,'#39#51204#52404#39' as "Name"'
      'union all'
      'select distinct '
      '       MetalNo'
      '      ,Name'
      'from Metal')
    Left = 240
    Top = 200
  end
end
