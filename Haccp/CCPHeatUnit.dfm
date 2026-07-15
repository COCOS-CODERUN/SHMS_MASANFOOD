inherited CCPHeatForm: TCCPHeatForm
  Caption = 'CCPHeatForm'
  ClientHeight = 699
  ClientWidth = 1353
  OnActivate = FormActivate
  OnCreate = FormCreate
  ExplicitWidth = 1369
  ExplicitHeight = 738
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    ExplicitWidth = 1353
    Width = 1353
    inherited cxBtn_New: TcxButton
      Enabled = False
      Visible = False
    end
    inherited cxBtn_Delete: TcxButton
      Visible = False
    end
    inherited cxBtn_Close: TcxButton
      Left = 1264
      ExplicitLeft = 1264
    end
    inherited cxBtn_Search: TcxButton
      Enabled = False
      Visible = False
    end
  end
  object cxGBox_Client: TcxGroupBox
    Left = 0
    Top = 35
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 664
    Width = 983
    object cxGBox_input: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = #44160#49353#51312#44148
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 62
      Width = 977
      object cxLbl1: TcxLabel
        Left = 3
        Top = 20
        Align = alLeft
        AutoSize = False
        Caption = #49444#48708' '#44396#48516
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
        Height = 33
        Width = 94
        AnchorX = 50
        AnchorY = 37
      end
      object cxLkCBBox_Facility: TcxLookupComboBox
        Left = 97
        Top = 20
        Align = alLeft
        AutoSize = False
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 12
        Properties.KeyFieldNames = 'Line'
        Properties.ListColumns = <
          item
            FieldName = 'BCDName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_Fridge
        Style.Color = 14811105
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.LookAndFeel.ScrollMode = scmClassic
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
        StyleDisabled.LookAndFeel.ScrollMode = scmClassic
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
        StyleFocused.LookAndFeel.ScrollMode = scmClassic
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
        StyleHot.LookAndFeel.ScrollMode = scmClassic
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 0
        Height = 33
        Width = 150
      end
      object cxDEdit_date: TcxDateEdit
        Left = 341
        Top = 20
        Align = alLeft
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
        Height = 33
        Width = 124
      end
      object cxTEdit_ItemID: TcxTextEdit
        Left = 742
        Top = 25
        Style.Color = 13684991
        TabOrder = 3
        Visible = False
        Width = 88
      end
      object cxBtnSearch: TcxButton
        AlignWithMargins = True
        Left = 466
        Top = 21
        Width = 100
        Height = 31
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
          610000000B744558745469746C65005A6F6F6D3BCF09FEBC0000035A49444154
          785E7D936B4C1C7514C57F33BBB0BBBC7641046A2AD0D242B616ABB605D41462
          7996F8819268254693A6311AF41BA6180214A4055A959AC6588DB18FB0049342
          237DA821585B405AB1A948080F53A3B5B42C9447175876766699BF5308899F3C
          C9B92737B9E7E4DE0F1721C40A01D3C79F77EC38F54D5FFBD9B6FEFB67DB6F8A
          33E7FA27BF6AE9B950FB514B26100C486BF3D547DB015869720BF759BE7475D7
          B67D37A88EFE392516BD7E616045476E4F0AD7F9FEC0E1A6F39FEEC8C87500B2
          E1E1FDDA16D660FAA2F9DAE1CEEE31A16ACBE287BE7F44F5C95FC581DAABA2CA
          D04BBD7F0BEF922A5ABFFD4594D7B95A011B2095967F0D80FCC9C94BDBA31CF6
          83BBD236D2E41AA4F3C63D0AD2E229CE4B25608DA2A3D7CDF1D62172B2B6E270
          D85F2B39F0E11EC0E4F3F901904342EC155B926383AEDE9A60CAE3A766FF76E2
          9F70101F63E3796734492949B83D1A3FDD9CE099D44482ADF652204851140064
          1D9196B83E8A1F6F8DB3775722F37EC1AC6F9939839884618064E77A6E0C4FB2
          31218E40403C07981545E5C25BE9C89AA6AFB35ACD3C58505892830C73803925
          C0BCA61B5C263C44223A3204AFAA116C09C6AF6A9180E1D3305BACC88AE29F5A
          F269C6908D2BB73D8CCDAA3C547566D4004B0822224CE8928AC36165EEA11763
          F579004D0BA0EB3AF2C282B767E48F09763A63989D79C0A8C7CFC8829F2509C2
          C34D58424CDC754FB32DE9318686FFC2E75B1C00960D1845204FBAC74F5DECFC
          8DF4CD51C44698718FDFC32C544243C1A72A0C8EDE415AD6D8141B46C7C51E3C
          3313CD802684BE1220019637DEFDECF453290925050569FC7EDF38C3ED61DAD8
          22CE6E2525CEC106870D97EB32E18B6344DEF9BEFE83CBC34781C573FB5FD065
          40FDB9ABB9B4EFFAC089A6136D3AD3D3BCEC5CC77BBB9DE427C7B078779C63C7
          CE10ED1DA2B67433D9D9CF561CC9771E04425F39DD27AFFD810C583372DECECB
          2EAAE8CA2D3EA4E4141F12D945556A6661D9B56D19FB4A2AB3363474D7BF2AC4
          40A3B85EBF5754BF94DC08D8FFFB4C1260066C4038605F2561800588284B7FB2
          BEABB25088DE32D1539927EAF2B71E917617D5201020745851C12A044820B1DA
          5FE9689081B0779E8EAB28CCDA549E9F9380CB35E6E5FFD0F2FA4E1A3213A87B
          319E9A8CF8B55323DE4C7EBCEE78EE16AD714F6ACBBF059CA12764F2DBD90000
          000049454E44AE426082}
        TabOrder = 4
        OnClick = cxBtnSearchClick
      end
      object cxLabel1: TcxLabel
        Left = 247
        Top = 20
        Align = alLeft
        AutoSize = False
        Caption = #51068#51088
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
        Height = 33
        Width = 94
        AnchorX = 294
        AnchorY = 37
      end
      object cxBtn_Setting: TcxButton
        AlignWithMargins = True
        Left = 873
        Top = 21
        Width = 100
        Height = 31
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alRight
        Caption = #49444#51221
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000F744558745469746C650053657474696E67733B0E6B2757000000D3
          49444154785EA5D0B18AC2401485E1F1B16211B7748BD9560C5849DE63F129B6
          B252B452B10A46F4B9B26C72FD8B1391214E942DBE0C17720E97EBCCEC2D5F8B
          C2E33EBF1BFC86E9F570CEF3E9A382365CB4252F17686D85995502FF2C94E117
          7315BCB4C11807A428613823C14A81E80DD60AD57A2D988FDAC4EB850A64A870
          8325267A1BF9080F8B7BC14CEB1A7EE05A9A0D05A65D0503540A433F896693EA
          D906194E3D1B5C917716C82872831A43B858C10EA680C9E3BCE92B18638B0417
          854AA4D8E3335610CAF1171EB4B380CFBFDC00878E26CDBB1558410000000049
          454E44AE426082}
        TabOrder = 6
        Visible = False
        OnClick = cxBtn_SettingClick
      end
    end
    object cxGrid_List: TcxGrid
      Left = 3
      Top = 105
      Width = 977
      Height = 556
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.SkinName = 'Lilian'
      object cxGridTv_List: TcxGridBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGridTv_ListCustomDrawCell
        OnEditing = cxGridTv_ListEditing
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsSelection.InvertSelect = False
        OptionsView.DataRowHeight = 35
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 50
        OptionsView.BandHeaderHeight = 30
        OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
        Bands = <
          item
            Caption = #49692#49436
            Visible = False
            Width = 60
          end
          item
            Caption = #49692#52264
            Width = 65
          end
          item
            Caption = #46972#51064' '#48264#54840
            Visible = False
            Width = 66
          end
          item
            Caption = #44396#48516
            Visible = False
            Width = 70
          end
          item
            Caption = #49884#44036
            Width = 200
          end
          item
            Caption = #54408#47749
            Width = 150
          end
          item
            Caption = #46321#47197#49884#44036
            Visible = False
            Width = 91
          end
          item
            Caption = #50728#46020'1('#8451')'
            Width = 100
          end
          item
            Caption = #54620#44228#44592#51456' '#51060#53448#49324#50976
            Width = 200
          end
          item
            Caption = #51312#52824#45236#50669
            Width = 200
          end
          item
            Caption = #44221#44284#49884#44036
          end>
        object cxGridTv_ListColumn2: TcxGridBandedColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Caption = #51312#54924
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsAutoWidth
          Options.ShowEditButtons = isebAlways
          Width = 63
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridTv_List_Line: TcxGridBandedColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridTv_List_ItemName: TcxGridBandedColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridTv_List_Start: TcxGridBandedColumn
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridTv_List_HeatTimeText: TcxGridBandedColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Width = 200
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridTv_List_Number: TcxGridBandedColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          OnCustomDrawCell = cxGridTv_List_NumberCustomDrawCell
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridTv_List_RealNumber: TcxGridBandedColumn
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridTv_List_Temp1: TcxGridBandedColumn
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DecimalPlaces = 1
          Properties.DisplayFormat = ',0.0;-,0.0'
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          Options.Editing = False
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridTv_List_reason: TcxGridBandedColumn
          RepositoryItem = cxEditRepositoryCBBox_reason
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridTv_List_action: TcxGridBandedColumn
          RepositoryItem = cxEditRepositoryCBBox_action
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridTv_List_Division: TcxGridBandedColumn
          Caption = 'Division'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridTv_List_HeatTime: TcxGridBandedColumn
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGridTv_List_FinishTime: TcxGridBandedColumn
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGridTv_List_CCPHeatID: TcxGridBandedColumn
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridTv_List_ItemID: TcxGridBandedColumn
          Visible = False
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridTv_List_GroupIdx: TcxGridBandedColumn
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Options.Editing = False
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridTv_List_GoTime: TcxGridBandedColumn
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Width = 80
          Position.BandIndex = 10
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGridLv_List: TcxGridLevel
        GridView = cxGridTv_List
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 3
      Top = 65
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 2
      Height = 40
      Width = 977
      object cxCBBox_reason: TcxComboBox
        Left = 152
        Top = 2
        Align = alLeft
        RepositoryItem = cxEditRepositoryCBBox_reason
        Properties.DropDownListStyle = lsFixedList
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 0
        Width = 250
      end
      object cxLabel5: TcxLabel
        Left = 2
        Top = 2
        Align = alLeft
        AutoSize = False
        Caption = #54620#44228#44592#51456' '#51060#53448' '#49324#50976
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
        Height = 36
        Width = 150
        AnchorX = 77
        AnchorY = 20
      end
      object cxCBBox_action: TcxComboBox
        Left = 634
        Top = 2
        Align = alLeft
        RepositoryItem = cxEditRepositoryCBBox_action
        Properties.DropDownListStyle = lsFixedList
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 2
        Width = 250
      end
      object cxLabel6: TcxLabel
        Left = 484
        Top = 2
        Align = alLeft
        AutoSize = False
        Caption = #51312#52824#45236#50669
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
        Height = 36
        Width = 150
        AnchorX = 559
        AnchorY = 20
      end
      object cxBtn_ok: TcxButton
        Tag = 1
        AlignWithMargins = True
        Left = 403
        Top = 3
        Width = 80
        Height = 34
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = #51201#50857
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000B744558745469746C65005A6F6F6D3BCF09FEBC0000035A49444154
          785E7D936B4C1C7514C57F33BBB0BBBC7641046A2AD0D242B616ABB605D41462
          7996F8819268254693A6311AF41BA6180214A4055A959AC6588DB18FB0049342
          237DA821585B405AB1A948080F53A3B5B42C9447175876766699BF5308899F3C
          C9B92737B9E7E4DE0F1721C40A01D3C79F77EC38F54D5FFBD9B6FEFB67DB6F8A
          33E7FA27BF6AE9B950FB514B26100C486BF3D547DB015869720BF759BE7475D7
          B67D37A88EFE392516BD7E616045476E4F0AD7F9FEC0E1A6F39FEEC8C87500B2
          E1E1FDDA16D660FAA2F9DAE1CEEE31A16ACBE287BE7F44F5C95FC581DAABA2CA
          D04BBD7F0BEF922A5ABFFD4594D7B95A011B2095967F0D80FCC9C94BDBA31CF6
          83BBD236D2E41AA4F3C63D0AD2E229CE4B25608DA2A3D7CDF1D62172B2B6E270
          D85F2B39F0E11EC0E4F3F901904342EC155B926383AEDE9A60CAE3A766FF76E2
          9F70101F63E3796734492949B83D1A3FDD9CE099D44482ADF652204851140064
          1D9196B83E8A1F6F8DB3775722F37EC1AC6F9939839884618064E77A6E0C4FB2
          31218E40403C07981545E5C25BE9C89AA6AFB35ACD3C58505892830C73803925
          C0BCA61B5C263C44223A3204AFAA116C09C6AF6A9180E1D3305BACC88AE29F5A
          F269C6908D2BB73D8CCDAA3C547566D4004B0822224CE8928AC36165EEA11763
          F579004D0BA0EB3AF2C282B767E48F09763A63989D79C0A8C7CFC8829F2509C2
          C34D58424CDC754FB32DE9318686FFC2E75B1C00960D1845204FBAC74F5DECFC
          8DF4CD51C44698718FDFC32C544243C1A72A0C8EDE415AD6D8141B46C7C51E3C
          3313CD802684BE1220019637DEFDECF453290925050569FC7EDF38C3ED61DAD8
          22CE6E2525CEC106870D97EB32E18B6344DEF9BEFE83CBC34781C573FB5FD065
          40FDB9ABB9B4EFFAC089A6136D3AD3D3BCEC5CC77BBB9DE427C7B078779C63C7
          CE10ED1DA2B67433D9D9CF561CC9771E04425F39DD27AFFD810C583372DECECB
          2EAAE8CA2D3EA4E4141F12D945556A6661D9B56D19FB4A2AB3363474D7BF2AC4
          40A3B85EBF5754BF94DC08D8FFFB4C1260066C4038605F2561800588284B7FB2
          BEABB25088DE32D1539927EAF2B71E917617D5201020745851C12A044820B1DA
          5FE9689081B0779E8EAB28CCDA549E9F9380CB35E6E5FFD0F2FA4E1A3213A87B
          319E9A8CF8B55323DE4C7EBCEE78EE16AD714F6ACBBF059CA12764F2DBD90000
          000049454E44AE426082}
        TabOrder = 4
        OnClick = cxBtn_okClick
      end
      object cxBtn_ok2: TcxButton
        Tag = 2
        AlignWithMargins = True
        Left = 885
        Top = 3
        Width = 80
        Height = 34
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = #51201#50857
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000B744558745469746C65005A6F6F6D3BCF09FEBC0000035A49444154
          785E7D936B4C1C7514C57F33BBB0BBBC7641046A2AD0D242B616ABB605D41462
          7996F8819268254693A6311AF41BA6180214A4055A959AC6588DB18FB0049342
          237DA821585B405AB1A948080F53A3B5B42C9447175876766699BF5308899F3C
          C9B92737B9E7E4DE0F1721C40A01D3C79F77EC38F54D5FFBD9B6FEFB67DB6F8A
          33E7FA27BF6AE9B950FB514B26100C486BF3D547DB015869720BF759BE7475D7
          B67D37A88EFE392516BD7E616045476E4F0AD7F9FEC0E1A6F39FEEC8C87500B2
          E1E1FDDA16D660FAA2F9DAE1CEEE31A16ACBE287BE7F44F5C95FC581DAABA2CA
          D04BBD7F0BEF922A5ABFFD4594D7B95A011B2095967F0D80FCC9C94BDBA31CF6
          83BBD236D2E41AA4F3C63D0AD2E229CE4B25608DA2A3D7CDF1D62172B2B6E270
          D85F2B39F0E11EC0E4F3F901904342EC155B926383AEDE9A60CAE3A766FF76E2
          9F70101F63E3796734492949B83D1A3FDD9CE099D44482ADF652204851140064
          1D9196B83E8A1F6F8DB3775722F37EC1AC6F9939839884618064E77A6E0C4FB2
          31218E40403C07981545E5C25BE9C89AA6AFB35ACD3C58505892830C73803925
          C0BCA61B5C263C44223A3204AFAA116C09C6AF6A9180E1D3305BACC88AE29F5A
          F269C6908D2BB73D8CCDAA3C547566D4004B0822224CE8928AC36165EEA11763
          F579004D0BA0EB3AF2C282B767E48F09763A63989D79C0A8C7CFC8829F2509C2
          C34D58424CDC754FB32DE9318686FFC2E75B1C00960D1845204FBAC74F5DECFC
          8DF4CD51C44698718FDFC32C544243C1A72A0C8EDE415AD6D8141B46C7C51E3C
          3313CD802684BE1220019637DEFDECF453290925050569FC7EDF38C3ED61DAD8
          22CE6E2525CEC106870D97EB32E18B6344DEF9BEFE83CBC34781C573FB5FD065
          40FDB9ABB9B4EFFAC089A6136D3AD3D3BCEC5CC77BBB9DE427C7B078779C63C7
          CE10ED1DA2B67433D9D9CF561CC9771E04425F39DD27AFFD810C583372DECECB
          2EAAE8CA2D3EA4E4141F12D945556A6661D9B56D19FB4A2AB3363474D7BF2AC4
          40A3B85EBF5754BF94DC08D8FFFB4C1260066C4038605F2561800588284B7FB2
          BEABB25088DE32D1539927EAF2B71E917617D5201020745851C12A044820B1DA
          5FE9689081B0779E8EAB28CCDA549E9F9380CB35E6E5FFD0F2FA4E1A3213A87B
          319E9A8CF8B55323DE4C7EBCEE78EE16AD714F6ACBBF059CA12764F2DBD90000
          000049454E44AE426082}
        TabOrder = 5
        OnClick = cxBtn_okClick
      end
    end
  end
  object cxGBox_Right: TcxGroupBox
    Left = 983
    Top = 35
    Align = alRight
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 664
    Width = 370
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
      Height = 132
      Width = 364
      object cxLabel119: TcxLabel
        Left = 224
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
        Height = 35
        Width = 110
        AnchorX = 279
        AnchorY = 39
      end
      object cxLabel120: TcxLabel
        Left = 114
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
        Height = 35
        Width = 110
        AnchorX = 169
        AnchorY = 39
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
        Height = 35
        Width = 110
        AnchorX = 59
        AnchorY = 39
      end
      object cxBtn_approval: TcxButton
        Tag = 4
        Left = 5
        Top = 85
        Width = 108
        Height = 35
        Caption = #45812#45817
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
        TabOrder = 6
      end
      object cxBtn_reviewer: TcxButton
        Tag = 5
        Left = 115
        Top = 85
        Width = 108
        Height = 35
        Caption = #44160#53664
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000029744558745469746C650050726F74656374696F6E3B41
          63636573733B477269643B53707265616473686565743B190E0BF4000002B749
          444154785E75934D685C5518869F7BEF99996624D65692564242A9D14A62AC49
          6DA562458AA074214844A8226EBB51D045D08DC64D6915442945578A665103FE
          24158B5829562241C598B135486B423246F2D7E94CBC93FB7BCEF99C846116C1
          BCF0C1F9BEC3FBC077788F0328C0051CB654E34E000BE8C1C1410150031FFE74
          C9CB648F200D04FBF21984BA4490BA5510D2341E3BF1ECC1A3400AA0B4768E1C
          7EB003444060AE58E685639DD4C5E7DF4CD1FF4457A37FEFA3F18701D5004461
          8A586135D220B0702320883402388E43CBCE3C61AC11B178B5FE40CF1D00AAB6
          02EBA5A248F3FB9505CA7EDCD8F2D3AF0A08D0DDD98A572A3071F675081688FD
          0A15AF9D578FB6F59FBAF4CF106054F7ED195E397E2F7EA81111866BE6A78FED
          470494277CFBF1DBDCB9BF978A08AD7BFB7066A76972DC0F80731B006B2C00D6
          0A2058015B7F38AD0D4B4B25BC99BFB1B88C8F5DE0B6E62C6BA13680026265AC
          30F4E5246B410280089C1B9900E0BE7B76916CDF87A8661E3FF1120FCDFCCC67
          EF0F518ECD45C0FA3BCEA38C119E7FEA7E6EFA3122303CFA1BCF3CD98B00590F
          760FBCCBD427AF21918FAB435C0CA3D72AA781C464354AD757C8781E22C2B65C
          868C7201C1019AF27956C4E5CFB1EFA92E5C67992CCB7E527AF3D116335F4D70
          5E1E1CB9ACB2DB1EA90705AC259753EC69DFC1EE965B08A21526AEBDC5AEC580
          388A28EECCA63F7C77E5E01F63E529C038401EC86C8AB2F3D873ED1D773FB07D
          E0D6E6A6FEC37D07729EE7B25C9D238C427EF9B198964AC1F04A313AE9AC8761
          B36A33F5E2999E425F4F57577B5B0BA9C42CADCE12A655ACB538E2B138A7B97C
          F1AFEB8AFF971B8449579C865C9D9D24487C727936CCFFAE26A489A11A688220
          BD6B2B802D2FAEBD71E1EB5F0F696D3AD2D43469633A756C492299AECDA23432
          F3692A85AD00E68B77E64F025EBD1CC005D8F4ADCD7F905765A1BBC80DB30000
          000049454E44AE426082}
        TabOrder = 7
        OnClick = cxBtn_reviewerClick
      end
      object cxEdit_Writer: TcxTextEdit
        Tag = 1
        Left = 4
        Top = 55
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
        Width = 110
      end
      object cxEdit_Reviewer: TcxTextEdit
        Tag = 2
        Left = 114
        Top = 55
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
        Width = 110
      end
      object cxBtn_confirmer: TcxButton
        Tag = 6
        Left = 225
        Top = 85
        Width = 108
        Height = 35
        Caption = #49849#51064
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Green'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000016744558745469746C65005461736B3B49737375653B536F6C76652D
          B55894000002BA49444154785E75916D48956718C77FE7C53A35D987660E75E0
          58AF9C1988B56963707AD1F22CE9C35935A34D868445080E8B461F4C2BB23464
          DB070D6A8C6A606D45851B140C2D27C33A568429099B1B3A8FC16188A9479F73
          9EE7BEAF3A4F473C15BBE1E2BAB8B97FFFFB7F5D172202E0005C801B4889C7B1
          E3A736D69FFC26F8D5FE43C1DD159585C0BCA470030E9B4D08B8FE3A5776FBCF
          735FC88986EFE4687D93D41E3929C17B0FA5B3EB8E3C1790AAEA8352537B4C7A
          9A3F97DEB3E5C1C44738013B3B1DE2CBDCB497E86408EFCAE56C29F984B7D216
          836B3E9BFC256C2DD9425ECE12B20AF790FADEDA0F5E157068AD713A1401EF14
          91C80457AE5CA6EE702DE77F38838E4E321D7D4AC7E3661A6F56D33DD00BB000
          C03D27A0708AC9A2F44C3EFBF853A60D83B8A85642786C84D3D72B29DEBA828C
          6C3747EAAE01786CE7248E28054E0F9EF4F7B975FF324DADE5B4077F66687480
          B3BF56515A9ACBC27746F9B6A58DC20C1F400C90B91694465B51BA07EFD21BBA
          C8C6A265F48FFEC4A94B6504025E229E3EDAAEF6B3C4F1114539F9000620492D
          98A062BCE14AE5DFA130EB8A9FB073572EE80F199E0A72F78F61C61F2DE6C097
          DB19BBD70E20C933E08583082BD3B3D9F6F651CEB454B16377161A83D0E82477
          6E404DD17616CA18FF0CF600385EDA82580A3DF31F1383BF93E7F511C86FE042
          CBDF4C46A6F9E5C73065FE5AD216B8B1C20FD0CA02E0E52D280B6D1944C74328
          0D6B56AD276634D2F0F53E7CB9DB28C82B62EC5A056FBE9B8AD6DA669205504A
          21E60CCA8C619A1A33A62958BD99566F1F2E970B1C2E8CF111442F456C07385E
          71A010CB40992643DFFB515AD90F456BB45680D835CA446B014044E61C48C241
          76CE3288C31287950D21162815071277EAB519585333D1CE81DF3A7C5A297B23
          B3B056769E85D122440CB30B309305621B4EF4F88194D9DE00FEA796041C0578
          0646B47718409CC86E0000000049454E44AE426082}
        TabOrder = 8
        OnClick = cxBtn_reviewerClick
      end
      object cxEdit_Confirmer: TcxTextEdit
        Tag = 3
        Left = 224
        Top = 55
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
        Width = 110
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 3
      Top = 135
      Align = alClient
      Caption = #45936#51060#53552' '#44160#49353
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 526
      Width = 364
      object cxGrid_data: TcxGrid
        Left = 3
        Top = 70
        Width = 358
        Height = 447
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        ExplicitTop = 65
        ExplicitHeight = 452
        object cxGridDBTv_data: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellClick = cxGridDBTv_dataCellClick
          DataController.DataSource = DS_Data
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.DataRowHeight = 35
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 30
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 30
          OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
          object cxGridDBTv_data_date: TcxGridDBColumn
            Caption = #51216#44160#51068#51088
            DataBinding.FieldName = 'CheckDate'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 102
          end
          object cxGridDBTv_data_writer: TcxGridDBColumn
            Caption = #51089#49457#51088
            DataBinding.FieldName = 'writer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGridDBTv_data_Division: TcxGridDBColumn
            Caption = #49444#48708#47749
            DataBinding.FieldName = 'Division'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 77
          end
          object cxGridDBTv_data_data_reviewer: TcxGridDBColumn
            Caption = #44160#53664#51088
            DataBinding.FieldName = 'Reviewer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
          object cxGridDBTv_data_confirmer: TcxGridDBColumn
            Caption = #54869#51064#51088
            DataBinding.FieldName = 'Confirmer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
        end
        object cxGridLv_data: TcxGridLevel
          GridView = cxGridDBTv_data
        end
      end
      object TcxGroupBox
        Left = 3
        Top = 20
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 1
        Height = 50
        Width = 358
        object cxCBBox_yy: TcxComboBox
          Left = 2
          Top = 2
          Align = alLeft
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            '2025'
            '2026'
            '2027'
            '2028'
            '2029'
            '2030'
            '2031'
            '2032'
            '2033'
            '2035'
            '2036'
            '2037'
            '2038'
            '2039'
            '2040')
          Properties.OnEditValueChanged = cxCBBox_yyPropertiesEditValueChanged
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -24
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
          TabOrder = 0
          ExplicitLeft = -30
          ExplicitTop = 1
          ExplicitHeight = 101
          Width = 176
        end
        object cxCBBox_mm: TcxComboBox
          Left = 178
          Top = 2
          Align = alLeft
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 12
          Properties.Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
          Properties.OnEditValueChanged = cxCBBox_yyPropertiesEditValueChanged
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -20
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
          TabOrder = 1
          ExplicitLeft = 10
          ExplicitTop = 4
          ExplicitHeight = 101
          Width = 176
        end
      end
    end
  end
  object cxGBox_Setting: TcxGroupBox
    Left = 771
    Top = 196
    Caption = #44396#51060#44277#51221' '#51312#54924' '#48320#44221
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 3
    Visible = False
    Height = 189
    Width = 185
    object cxLabel2: TcxLabel
      Left = 3
      Top = 19
      AutoSize = False
      Caption = #49884#51089#49884#44036'(h)'
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
      Height = 33
      Width = 80
      AnchorX = 43
      AnchorY = 36
    end
    object cxLabel3: TcxLabel
      Left = 3
      Top = 51
      AutoSize = False
      Caption = #51452#44592'(min)'
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
      Height = 33
      Width = 80
      AnchorX = 43
      AnchorY = 68
    end
    object cxLabel4: TcxLabel
      Left = 3
      Top = 83
      AutoSize = False
      Caption = #52509#49884#44036'(h)'
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
      Height = 33
      Width = 80
      AnchorX = 43
      AnchorY = 100
    end
    object cxCEdit_Cycle: TcxCurrencyEdit
      Left = 82
      Top = 51
      AutoSize = False
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0;-,0'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 3
      Height = 33
      Width = 100
    end
    object cxCEdit_StartTime: TcxCurrencyEdit
      Left = 82
      Top = 19
      AutoSize = False
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0;-,0'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 1
      Height = 33
      Width = 100
    end
    object cxCEdit_TotalTime: TcxCurrencyEdit
      Left = 82
      Top = 83
      AutoSize = False
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0;-,0'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 5
      Height = 33
      Width = 100
    end
    object cxBtn_Default: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 116
      Width = 177
      Height = 31
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Caption = #44592#48376#44050' '#49444#51221
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000027744558745469746C6500526566726573683B52657065
        61743B426172733B526962626F6E3B52656C6F6164CD4DF6E9000000B1494441
        54785EC593B10D02310C454162001688D8E0FA1BC2A2A3A14F895241CF128C40
        7B5DE86E1F96301FE947F249761A4EA2784DBEF3EC28C946557F623D81DC5F8D
        040AA8E04D2AD7126B42C1165C80064C608C047B2094DC40060792C16C24C913
        9C5920A683CD0723290B0137A941107A92CCBCB66CB1399230F3E8875FC1F5F9
        D8F59AD8F12A83EC8C1F1ED30A0A83190C8EC04AC4BB8504A62671AEF16424E1
        431A9B24E048C97A4FF9FFBFF103FFEC875AFFDCA9F30000000049454E44AE42
        6082}
      TabOrder = 6
      OnClick = cxBtn_DefaultClick
    end
    object cxBtn_Submit: TcxButton
      AlignWithMargins = True
      Left = 4
      Top = 148
      Width = 88
      Height = 31
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Caption = #51201#50857
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000021744558745469746C65004170706C793B4F4B3B436865
        636B3B426172733B526962626F6E3B6463C8680000009449444154785EC59341
        0A83400C4547BAEAB6E0097A912E2DB8D2BBB8F1201EC19BD82B74E3294AC159
        C52F2464182498B6D0C5239B798F309040445FF1FB40370E4728787E14A8C004
        2EBE80CA0B20F0008523A032CF3B08B97CF2C81BA97C054F703B220B229FC1CC
        8FDE1AB1E57C8316C424D2677295CB7B7FD0680498B206AC4894B53D0189BC40
        0D823720943C4DFE7F8D2B585260AAC36B7FD80000000049454E44AE426082}
      TabOrder = 7
      OnClick = cxBtn_SubmitClick
    end
    object cxBtn_Visible: TcxButton
      AlignWithMargins = True
      Left = 93
      Top = 148
      Width = 88
      Height = 31
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Caption = #45803#44592
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000023744558745469746C650043616E63656C3B53746F703B
        457869743B426172733B526962626F6E3B4C9696B20000009449444154785E95
        93410A834010047D5C2027F3093F104C6461C5CD37F312C5D3641AD27810BAF1
        5030CC587510B68B88EE3BDCFAA46236F0FB190E66CA7B12C9125EFE24F1771E
        584C9009234626230FE514F1F21B2E8E22A2650654A42999011951320322A265
        E0FFF6411301219B88935F49511129F3A622567611C8B3905DA462794FD693EC
        231B5C2C19795E78CE131CCC3FD2409CCC2C3656140000000049454E44AE4260
        82}
      TabOrder = 8
      OnClick = cxBtn_VisibleClick
    end
  end
  object UniQuery_data: TUniQuery
    ObjectView = True
    Left = 1168
    Top = 432
  end
  object DS_Data: TDataSource
    DataSet = UniQuery_data
    Left = 1168
    Top = 480
  end
  object DS_Fridge: TDataSource
    DataSet = UniQuery_Fridge
    Left = 152
    Top = 451
  end
  object DS_Item: TDataSource
    DataSet = UniQuery_Item
    Left = 328
    Top = 451
  end
  object UniQuery_Fridge: TUniQuery
    Left = 136
    Top = 403
  end
  object UniQuery_Item: TUniQuery
    Left = 320
    Top = 395
  end
  object UniQuery_temp: TUniQuery
    SQLInsert.Strings = (
      'update ccp_heat_chk '
      'set  Reviewer = :Writer'
      'where h_date = :h_date'
      'and GroupIndex = :GroupIndex'
      ''
      'update HaccpApproval '
      'set  CheckReviewer = :Writer'
      'where MenuName = '#39#44396#51060#39
      'and writeDate = :h_date'
      'and Division = :Division')
    SQLUpdate.Strings = (
      'update ccp_heat_chk '
      'set  Confirmer = :Writer'
      'where h_date = :h_date'
      'and GroupIndex = :GroupIndex'
      ''
      'update HaccpApproval '
      'set  CheckConfirmer = :Writer'
      'where MenuName = '#39#44396#51060#39
      'and writeDate = :h_date'
      'and Division = :Division')
    SQL.Strings = (
      '')
    Left = 752
    Top = 339
  end
  object cxEditRepository: TcxEditRepository
    Left = 224
    Top = 584
    PixelsPerInch = 96
    object cxEditRepositoryCBBox_reason: TcxEditRepositoryComboBoxItem
      Properties.DropDownListStyle = lsFixedList
    end
    object cxER_TextEdit: TcxEditRepositoryTextItem
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = True
      Properties.UseLeftAlignmentOnEditing = False
    end
    object cxER_Memo_Write: TcxEditRepositoryMemoItem
      Properties.ScrollBars = ssBoth
    end
    object cxER_Memo_Read: TcxEditRepositoryMemoItem
      Properties.ReadOnly = True
      Properties.ScrollBars = ssBoth
    end
    object cxEditRepositoryCBBox_action: TcxEditRepositoryComboBoxItem
      Properties.DropDownListStyle = lsFixedList
    end
  end
  object uq_setting: TUniQuery
    SQLInsert.Strings = (
      'select * from ccp_heat_setting')
    SQL.Strings = (
      '')
    Left = 824
    Top = 155
  end
  object usp_list: TUniStoredProc
    StoredProcName = 'SHMS_HANILFOOD.dbo.usp_MaterialStockDirectly'
    ObjectView = True
    Left = 904
    Top = 536
  end
end
