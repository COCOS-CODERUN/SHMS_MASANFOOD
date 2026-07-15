object f_hc_ccp4p: Tf_hc_ccp4p
  Left = 0
  Top = 0
  ClientHeight = 720
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object cxGBox_Input: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    Style.TransparentBorder = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 0
    ExplicitWidth = 933
    Height = 720
    Width = 1280
    object cxGBox_Info: TcxGroupBox
      Left = 2
      Top = 31
      Align = alTop
      Caption = #47785#47197
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      ExplicitWidth = 929
      Height = 152
      Width = 1276
      object cxGInfo: TcxGrid
        Left = 3
        Top = 18
        Width = 1270
        Height = 125
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.ScrollMode = scmSmooth
        LookAndFeel.SkinName = 'Lilian'
        ExplicitWidth = 923
        object cxGInfoDBBTv_: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = ds_info
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
          object cxGInfoDBBTv_ccp4p_hid: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ccp4p_hid'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGInfoDBBTv_checkdate: TcxGridDBBandedColumn
            Caption = #51089#49457#51068#51088
            DataBinding.FieldName = 'checkdate'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGInfoDBBTv_cycle1: TcxGridDBBandedColumn
            Caption = #51452#44592'(1)'
            DataBinding.FieldName = 'cycle1'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGInfoDBBTv_cycle2: TcxGridDBBandedColumn
            Caption = #51452#44592'(2)'
            DataBinding.FieldName = 'cycle2'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGInfoDBBTv_cycle3: TcxGridDBBandedColumn
            Caption = #51452#44592'(3)'
            DataBinding.FieldName = 'cycle3'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGInfoDBBTv_cycle4: TcxGridDBBandedColumn
            Caption = #51452#44592'(4)'
            DataBinding.FieldName = 'cycle4'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGInfoDBBTv_Std: TcxGridDBBandedColumn
            Caption = #54620#44228#44592#51456
            DataBinding.FieldName = 'Std'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Properties.PopupHeight = 250
            Properties.PopupWidth = 300
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.LineCount = 2
            Position.RowIndex = 1
          end
          object cxGInfoDBBTv_way: TcxGridDBBandedColumn
            Caption = #48169#48277
            DataBinding.FieldName = 'way'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Properties.PopupHeight = 250
            Properties.PopupWidth = 300
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.LineCount = 2
            Position.RowIndex = 1
          end
          object cxGInfoDBBTv_betterway: TcxGridDBBandedColumn
            Caption = #44060#49440#51312#52824' '#48169#48277
            DataBinding.FieldName = 'betterway'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            Properties.PopupHeight = 250
            Properties.PopupWidth = 300
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.LineCount = 2
            Position.RowIndex = 1
          end
          object cxGInfoDBBTv_writer: TcxGridDBBandedColumn
            Caption = #51216#44160#51088
            DataBinding.FieldName = 'writer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cxGInfoLv: TcxGridLevel
          GridView = cxGInfoDBBTv_
        end
      end
    end
    object cxGBox_Out: TcxGroupBox
      Left = 2
      Top = 543
      Align = alBottom
      Caption = #51060#53448' '#47785#47197
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 4
      ExplicitWidth = 929
      Height = 175
      Width = 1276
      object cxGOut: TcxGrid
        Left = 3
        Top = 18
        Width = 1270
        Height = 148
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.ScrollMode = scmSmooth
        LookAndFeel.SkinName = 'Lilian'
        ExplicitWidth = 923
        object cxGOutDBTv_: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = ds_out
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGOutDBTv_ccp4p_outid: TcxGridDBColumn
            DataBinding.FieldName = 'ccp4p_outid'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGOutDBTv_ccp4p_hid: TcxGridDBColumn
            DataBinding.FieldName = 'ccp4p_hid'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGOutDBTv_details: TcxGridDBColumn
            Caption = #54620#44228#44592#51456' '#51060#53448#45236#50857
            DataBinding.FieldName = 'details'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            HeaderAlignmentHorz = taCenter
            Width = 300
          end
          object cxGOutDBTv_results: TcxGridDBColumn
            Caption = #44060#49440#51312#52824' '#48143' '#44208#44284
            DataBinding.FieldName = 'results'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            HeaderAlignmentHorz = taCenter
            Width = 300
          end
          object cxGOutDBTv_writer: TcxGridDBColumn
            Caption = #51312#52824#51088
            DataBinding.FieldName = 'writer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGOutDBTv_reviewer: TcxGridDBColumn
            Caption = #54869#51064
            DataBinding.FieldName = 'reviewer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGOutDBTv_wdt: TcxGridDBColumn
            DataBinding.FieldName = 'wdt'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGOutDBTv_modifier: TcxGridDBColumn
            DataBinding.FieldName = 'modifier'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGOutDBTv_mdt: TcxGridDBColumn
            DataBinding.FieldName = 'mdt'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
        end
        object cxGOutLv: TcxGridLevel
          GridView = cxGOutDBTv_
        end
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 2
      Align = alTop
      PanelStyle.Active = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      ExplicitWidth = 929
      Height = 29
      Width = 1276
      object cxBtn_AddD2: TcxButton
        Left = 127
        Top = 2
        Width = 125
        Height = 25
        Align = alLeft
        Caption = #52628#44032'('#51228#54408#53685#44284')'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001B744558745469746C65004164643B506C75733B426172
          733B526962626F6E3B9506332F0000007949444154785EA593D109C0200C441D
          2583F89DE9748A0E93750407B011AE20012D721FEF43731E494C52CE39A24E75
          CC69C070A751BF1EC4294E77C6860E8D4403711E887E8156568382C00DE533D0
          43DA09ECCAD184E68C5B035067D008039BC1161F9D08DA461BD025D04DA4BF91
          1C247E94F965A2D7F90519455F5C4B07B1DE0000000049454E44AE426082}
        TabOrder = 1
        OnClick = cxBtn_AddD2Click
      end
      object cxBtn_AddD: TcxButton
        Left = 2
        Top = 2
        Width = 125
        Height = 25
        Align = alLeft
        Caption = #52628#44032'('#47784#45768#53552#47553')'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001B744558745469746C65004164643B506C75733B426172
          733B526962626F6E3B9506332F0000007949444154785EA593D109C0200C441D
          2583F89DE9748A0E93750407B011AE20012D721FEF43731E494C52CE39A24E75
          CC69C070A751BF1EC4294E77C6860E8D4403711E887E8156568382C00DE533D0
          43DA09ECCAD184E68C5B035067D008039BC1161F9D08DA461BD025D04DA4BF91
          1C247E94F965A2D7F90519455F5C4B07B1DE0000000049454E44AE426082}
        TabOrder = 0
        OnClick = cxBtn_AddDClick
      end
      object cxEdit_hid: TcxTextEdit
        Tag = 1
        Left = 752
        Top = 2
        Align = alLeft
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
        TabOrder = 6
        Visible = False
        Height = 25
        Width = 100
      end
      object cxBtn_DelD: TcxButton
        Left = 377
        Top = 2
        Width = 125
        Height = 25
        Align = alLeft
        Caption = #49325#51228'('#47784#45768#53552#47553')'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000018744558745469746C6500436C6561723B52656D6F7665
          3B53746F703B9BE69A1E0000007649444154785EA593C109C0200C451D258378
          CE743A4587C93A8203D82FA420812AED3FBC83F2799898A49C73444105069A63
          7EA731BF1E0414D0C178A17B46A240C0E5A1239E955550C0F8487904BA7BF6A1
          1C4DDE9CF1933A0546086C0A5A08A41D21DB68015D02DD44FA1BC941E247995F
          267A9D6F505F6B5058B8EE9D0000000049454E44AE426082}
        TabOrder = 3
        OnClick = cxBtn_DelDClick
      end
      object cxBtn_DelOut: TcxButton
        Left = 627
        Top = 2
        Width = 125
        Height = 25
        Align = alLeft
        Caption = #49325#51228'('#51060#53448#47785#47197')'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000018744558745469746C6500436C6561723B52656D6F7665
          3B53746F703B9BE69A1E0000007649444154785EA593C109C0200C451D258378
          CE743A4587C93A8203D82FA420812AED3FBC83F2799898A49C73444105069A63
          7EA731BF1E0414D0C178A17B46A240C0E5A1239E955550C0F8487904BA7BF6A1
          1C4DDE9CF1933A0546086C0A5A08A41D21DB68015D02DD44FA1BC941E247995F
          267A9D6F505F6B5058B8EE9D0000000049454E44AE426082}
        TabOrder = 5
        OnClick = cxBtn_DelOutClick
      end
      object cxBtn_AddOut: TcxButton
        Left = 252
        Top = 2
        Width = 125
        Height = 25
        Align = alLeft
        Caption = #52628#44032'('#51060#53448#47785#47197')'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001B744558745469746C65004164643B506C75733B426172
          733B526962626F6E3B9506332F0000007949444154785EA593D109C0200C441D
          2583F89DE9748A0E93750407B011AE20012D721FEF43731E494C52CE39A24E75
          CC69C070A751BF1EC4294E77C6860E8D4403711E887E8156568382C00DE533D0
          43DA09ECCAD184E68C5B035067D008039BC1161F9D08DA461BD025D04DA4BF91
          1C247E94F965A2D7F90519455F5C4B07B1DE0000000049454E44AE426082}
        TabOrder = 2
        OnClick = cxBtn_AddOutClick
      end
      object cxBtn_DelD2: TcxButton
        Left = 502
        Top = 2
        Width = 125
        Height = 25
        Align = alLeft
        Caption = #49325#51228'('#51228#54408#53685#44284')'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Lilian'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000018744558745469746C6500436C6561723B52656D6F7665
          3B53746F703B9BE69A1E0000007649444154785EA593C109C0200C451D258378
          CE743A4587C93A8203D82FA420812AED3FBC83F2799898A49C73444105069A63
          7EA731BF1E0414D0C178A17B46A240C0E5A1239E955550C0F8487904BA7BF6A1
          1C4DDE9CF1933A0546086C0A5A08A41D21DB68015D02DD44FA1BC941E247995F
          267A9D6F505F6B5058B8EE9D0000000049454E44AE426082}
        TabOrder = 4
        OnClick = cxBtn_DelD2Click
      end
    end
    object cxGBox_D: TcxGroupBox
      Left = 2
      Top = 183
      Align = alClient
      Caption = #44552#49549#44160#52636#44592' '#44048#46020' '#47784#45768#53552#47553'('#54032#51221' - '#44160#52636' : O, '#48520#44160#52636' : X)'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 2
      ExplicitWidth = 929
      Height = 185
      Width = 1276
      object cxGD: TcxGrid
        Left = 3
        Top = 18
        Width = 1270
        Height = 158
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.ScrollMode = scmSmooth
        LookAndFeel.SkinName = 'Lilian'
        ExplicitWidth = 923
        object cxGDDBTv_: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = ds_d
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGDDBTv_ccp4p_did: TcxGridDBColumn
            DataBinding.FieldName = 'ccp4p_did'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGDDBTv_ccp4p_hid: TcxGridDBColumn
            DataBinding.FieldName = 'ccp4p_hid'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGDDBTv_f_no: TcxGridDBColumn
            Caption = #54840#44592
            DataBinding.FieldName = 'f_no'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object cxGDDBTv_itemname: TcxGridDBColumn
            Caption = #54408#47749
            DataBinding.FieldName = 'itemname'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 175
          end
          object cxGDDBTv_checktime: TcxGridDBColumn
            Caption = #53685#44284#49884#44036
            DataBinding.FieldName = 'checktime'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cxGDDBTv_pass_fe: TcxGridDBColumn
            Caption = 'Fe'#47564' '#53685#44284'('#51473#50521')'
            DataBinding.FieldName = 'pass_fe'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'O'
              'X')
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGDDBTv_pass_sus: TcxGridDBColumn
            Caption = 'SUS'#47564' '#53685#44284'('#51473#50521')'
            DataBinding.FieldName = 'pass_sus'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'O'
              'X')
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGDDBTv_pass_item: TcxGridDBColumn
            Caption = #51228#54408#47564' '#53685#44284
            DataBinding.FieldName = 'pass_item'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'O'
              'X')
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGDDBTv_pass_feitem: TcxGridDBColumn
            Caption = 'Fe+'#51228#54408' '#53685#44284'('#49345#45800')'
            DataBinding.FieldName = 'pass_feitem'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'O'
              'X')
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGDDBTv_pass_susitem: TcxGridDBColumn
            Caption = 'SUS+'#51228#54408' '#53685#44284'('#49345#45800')'
            DataBinding.FieldName = 'pass_susitem'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'O'
              'X')
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
        end
        object cxGDLv: TcxGridLevel
          GridView = cxGDDBTv_
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 2
      Top = 368
      Align = alBottom
      Caption = #44160#52636#44592' '#51228#54408#53685#44284
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 3
      ExplicitWidth = 929
      Height = 175
      Width = 1276
      object cxGD2: TcxGrid
        Left = 3
        Top = 18
        Width = 1270
        Height = 148
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.ScrollMode = scmSmooth
        LookAndFeel.SkinName = 'Lilian'
        ExplicitWidth = 923
        object cxGD2DBTv_: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = ds_d2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.AlwaysShowEditor = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGD2DBTv_ccp4p_d2id: TcxGridDBColumn
            DataBinding.FieldName = 'ccp4p_d2id'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGD2DBTv_ccp4p_hid: TcxGridDBColumn
            DataBinding.FieldName = 'ccp4p_hid'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGD2DBTv_f_no: TcxGridDBColumn
            Caption = #54840#44592
            DataBinding.FieldName = 'f_no'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cxGD2DBTv_Qty: TcxGridDBColumn
            Caption = #49373#49328#47049'(ea)'
            DataBinding.FieldName = 'Qty'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DecimalPlaces = 4
            Properties.DisplayFormat = ',0.####;-,0.####'
            Properties.EditFormat = ',0.####;-,0.####'
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGD2DBTv_detection: TcxGridDBColumn
            Caption = #44160#52636#47049'(ea)'
            DataBinding.FieldName = 'detection'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DecimalPlaces = 4
            Properties.DisplayFormat = ',0.####;-,0.####'
            Properties.EditFormat = ',0.####;-,0.####'
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGD2DBTv_remark: TcxGridDBColumn
            Caption = #53945#51060#49324#54637
            DataBinding.FieldName = 'remark'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            HeaderAlignmentHorz = taCenter
            Width = 300
          end
        end
        object cxGD2Lv: TcxGridLevel
          GridView = cxGD2DBTv_
        end
      end
    end
  end
  object uq_insert: TUniQuery
    SQLInsert.Strings = (
      'if coalesce(:ccp4p_hid, 0) = 0'
      'begin'
      '    insert into hc_ccp4p_h'
      
        '    (checkdate,Std,cycle1,cycle2,cycle3,cycle4,way,betterway,wri' +
        'ter)'
      '    values'
      
        '    (:checkdate,:Std,:cycle1,:cycle2,:cycle3,:cycle4,:way,:bette' +
        'rway,:writer)'
      '    select @@IDENTITY as "index"'
      'end'
      'else'
      'begin'
      '    update hc_ccp4p_h set'
      '         checkdate = :checkdate         '
      '        ,Std       = :Std  '
      '        ,cycle1    = :cycle1    '
      '        ,cycle2    = :cycle2    '
      '        ,cycle3    = :cycle3    '
      '        ,cycle4    = :cycle4    '
      '        ,way       = :way      '
      '        ,betterway = :betterway '
      '        ,writer    = :writer       '
      '    where ccp4p_hid = :ccp4p_hid'
      '    select :ccp4p_hid as "index"'
      'end')
    SQLDelete.Strings = (
      'if coalesce(:ccp4p_d2id, 0) = 0'
      'begin'
      '    insert into hc_ccp4p_d2'
      '    (ccp4p_hid,f_no,Qty,detection,remark)'
      '    values'
      '    (:ccp4p_hid,:f_no,:Qty,:detection,:remark)'
      '    select @@IDENTITY as "index"'
      'end'
      'else'
      'begin'
      '    update hc_ccp4p_d2 set'
      '         f_no        = :f_no         '
      '        ,Qty         = :Qty  '
      '        ,detection   = :detection    '
      '        ,remark      = :remark'
      '    where ccp4p_d2id = :ccp4p_d2id'
      'end')
    SQLUpdate.Strings = (
      'if coalesce(:ccp4p_did, 0) = 0'
      'begin'
      '    insert into hc_ccp4p_d'
      
        '    (ccp4p_hid,f_no,itemname,checktime,pass_fe,pass_sus,pass_ite' +
        'm,pass_feitem,pass_susitem,writer)'
      '    values'
      
        '    (:ccp4p_hid,:f_no,:itemname,:checktime,:pass_fe,:pass_sus,:p' +
        'ass_item,:pass_feitem,:pass_susitem,:writer)'
      '    select @@IDENTITY as "index"'
      'end'
      'else'
      'begin'
      '    update hc_ccp4p_d set'
      '         f_no = :f_no         '
      '        ,itemname     = :itemname  '
      '        ,checktime    = :checktime    '
      '        ,pass_fe      = :pass_fe    '
      '        ,pass_sus     = :pass_sus    '
      '        ,pass_item    = :pass_item    '
      '        ,pass_feitem  = :pass_feitem    '
      '        ,pass_susitem = :pass_susitem'
      '        ,writer       = :writer       '
      '    where ccp4p_did   = :ccp4p_did'
      'end')
    SQLLock.Strings = (
      'if coalesce(:ccp4p_outid, 0) = 0'
      'begin'
      #9'insert into hc_ccp4p_out'
      #9'(ccp4p_hid, details, results, writer, reviewer)'
      #9'values'
      #9'(:ccp4p_hid, :details, :results, :writer, :reviewer)'
      'end'
      'else'
      'begin'
      #9'update hc_ccp4p_out set '
      #9#9'  details'#9'= :details'#9
      #9#9' ,results'#9'= :results'#9
      #9#9' ,writer'#9'= :writer'#9
      #9#9' ,reviewer'#9'= :reviewer'#9
      #9'where ccp4p_outid = :ccp4p_outid'
      'end')
    Left = 32
    Top = 120
  end
  object uq_delete: TUniQuery
    SQLInsert.Strings = (
      'delete from hc_ccp4p_d'
      'where ccp4p_did = :ccp4p_did')
    SQLDelete.Strings = (
      'delete from hc_ccp4p_out'
      'where ccp4p_outid = :ccp4p_outid')
    SQLUpdate.Strings = (
      'delete from hc_ccp4p_d2'
      'where ccp4p_d2id = :ccp4p_d2id')
    SQLLock.Strings = (
      'delete from hc_ccp4p_out'
      'where ccp4p_hid = :ccp4p_hid'
      'delete from hc_ccp4p_d2'
      'where ccp4p_hid = :ccp4p_hid'
      'delete from hc_ccp4p_d'
      'where ccp4p_hid = :ccp4p_hid'
      'delete from hc_ccp4p_h'
      'where ccp4p_hid = :ccp4p_hid')
    Left = 96
    Top = 120
  end
  object uq_info: TUniQuery
    SQLInsert.Strings = (
      'declare @new bit = :new'
      'if @new = 1'
      'begin'
      '    select'
      '         0 as "ccp2p_hid"'
      '        ,pvt.CheckDate '
      '        ,pvt.[1] as "std"'
      '        ,pvt.[2] as "cycle1"'
      '        ,pvt.[3] as "cycle2"'
      '        ,pvt.[4] as "cycle3"'
      '        ,pvt.[5] as "cycle4"'
      '        ,pvt.[6] as "way"'
      '        ,pvt.[7] as "betterway"'
      '        ,pvt.Writer '
      '    from ('
      '        select '
      '            :CheckDate as "CheckDate"'
      '            , :Writer as "Writer"'
      '            , row_number() over(order by hb.BasicID) as "Idx"'
      '            ,hb.Level3 '
      '        from HaccpBasic hb '
      '        where hb.MenuName = '#39#51473#50836#44288#47532#51216'(CCP-4P) '#47784#45768#53552#47553#51068#51648#39
      '    ) as tbl_hb'
      '    pivot ('
      
        '        max(Level3) for Idx in ([1], [2], [3], [4], [5], [6], [7' +
        '])'
      '    ) as pvt'
      'end'
      'else'
      'begin'
      '    select ccp4p_hid'
      '          ,checkdate'
      '          ,Std'
      '          ,cycle1'
      '          ,cycle2'
      '          ,cycle3'
      '          ,cycle4'
      '          ,way'
      '          ,betterway'
      '          ,writer'
      '      from hc_ccp4p_h'
      '     where ccp4p_hid = :ccp4p_hid'
      'end'
      '')
    SQL.Strings = (
      'select ccp2p_hid'
      '      ,checkdate'
      '      ,Std'
      '      ,cycle1'
      '      ,cycle2'
      '      ,cycle3'
      '      ,cycle4'
      '      ,way'
      '      ,betterway'
      '      ,writer'
      '  from hc_ccp2p_h'
      ' where ccp2p_hid = 1')
    Left = 968
    Top = 112
  end
  object ds_info: TDataSource
    DataSet = uq_info
    Left = 1024
    Top = 112
  end
  object uq_d: TUniQuery
    SQLInsert.Strings = (
      'select ccp4p_did'
      '      ,ccp4p_hid'
      '      ,f_no'
      '      ,itemname'
      '      ,checktime'
      '      ,pass_fe'
      '      ,pass_sus'
      '      ,pass_item'
      '      ,pass_feitem'
      '      ,pass_susitem'
      '  from hc_ccp4p_d hcpd '
      ' where hcpd.ccp4p_hid = :ccp4p_hid')
    SQL.Strings = (
      'select ccp2p_did'
      '      ,ccp2p_hid'
      '      ,f_no'
      '      ,itemname'
      '      ,checktime'
      '      ,pass_fe'
      '      ,pass_sus'
      '      ,pass_item'
      '      ,pass_feitem'
      '      ,pass_susitem'
      '  from hc_ccp2p_d hcpd '
      ' where hcpd.ccp2p_hid = 1')
    Left = 968
    Top = 296
  end
  object ds_d: TDataSource
    DataSet = uq_d
    Left = 1024
    Top = 296
  end
  object uq_d2: TUniQuery
    SQLInsert.Strings = (
      'select ccp4p_d2id '
      '      ,ccp4p_hid'
      '      ,f_no'
      '      ,Qty'
      '      ,detection '
      '      ,remark'
      '  from hc_ccp4p_d2'
      ' where ccp4p_hid = :ccp4p_hid')
    SQL.Strings = (
      'select ccp2p_d2id '
      '      ,ccp2p_hid'
      '      ,f_no'
      '      ,Qty'
      '      ,detection '
      '      ,remark'
      '  from hc_ccp2p_d2'
      ' where ccp2p_hid = 1')
    Left = 968
    Top = 472
  end
  object ds_d2: TDataSource
    DataSet = uq_d2
    Left = 1024
    Top = 472
  end
  object uq_out: TUniQuery
    SQLInsert.Strings = (
      'select hcpo.ccp4p_outid '
      '      ,hcpo.ccp4p_hid '
      '      ,hcpo.details '
      '      ,hcpo.results '
      '      ,hcpo.writer '
      '      ,hcpo.reviewer '
      '      ,hcpo.wdt '
      '      ,hcpo.modifier '
      '      ,hcpo.mdt '
      'from hc_ccp4p_out hcpo '
      'where hcpo.ccp4p_hid = :ccp4p_hid')
    SQL.Strings = (
      'select hcpo.ccp2p_outid '
      '      ,hcpo.ccp2p_hid '
      '      ,hcpo.details '
      '      ,hcpo.results '
      '      ,hcpo.writer '
      '      ,hcpo.reviewer '
      '      ,hcpo.wdt '
      '      ,hcpo.modifier '
      '      ,hcpo.mdt '
      'from hc_ccp2p_out hcpo '
      'where hcpo.ccp2p_hid = 1')
    Left = 968
    Top = 648
  end
  object ds_out: TDataSource
    DataSet = uq_out
    Left = 1024
    Top = 648
  end
  object uq_list: TUniQuery
    SQLInsert.Strings = (
      'select ccp4p_hid'
      '      ,checkdate'
      '      ,writer'
      '      ,reviewer'
      '      ,confirmer'
      '      ,'#39#39' as "div"'
      '  from hc_ccp4p_h'
      ' where checkdate = :checkDate')
    SQL.Strings = (
      'select ccp4p_hid'
      '      ,checkdate'
      '      ,writer'
      '      ,reviewer'
      '      ,confirmer'
      '      ,'#39#39' as "div"'
      '  from hc_ccp4p_h')
    ObjectView = True
    Left = 152
    Top = 120
  end
end
