object f_hc_ccp3b: Tf_hc_ccp3b
  Left = 0
  Top = 0
  Caption = 'ds_info'
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
          object cxGInfoDBBTv_ccp3b_hid: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ccp1b_hid'
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
          object cxGInfoDBBTv_temp1: TcxGridDBBandedColumn
            Caption = #44396#51060#50728#46020'(1'#52264')'
            DataBinding.FieldName = 'temp1'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGInfoDBBTv_temp2: TcxGridDBBandedColumn
            Caption = #44396#51060#50728#46020'(2'#52264')'
            DataBinding.FieldName = 'temp2'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGInfoDBBTv_temp3: TcxGridDBBandedColumn
            Caption = #44396#51060#50728#46020'(3'#52264')'
            DataBinding.FieldName = 'temp3'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGInfoDBBTv_temp4: TcxGridDBBandedColumn
            Caption = #44396#51060#50728#46020'(4'#52264')'
            DataBinding.FieldName = 'temp4'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGInfoDBBTv_speed: TcxGridDBBandedColumn
            Caption = #54620#44228#44592#51456' '#44396#51060#49884#44036'(Hz)'
            DataBinding.FieldName = 'speed'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGInfoDBBTv_cycle: TcxGridDBBandedColumn
            Caption = #51452#44592
            DataBinding.FieldName = 'cycle'
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
      Top = 468
      Align = alBottom
      Caption = #51060#53448' '#47785#47197
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 3
      ExplicitWidth = 929
      Height = 250
      Width = 1276
      object cxGOut: TcxGrid
        Left = 3
        Top = 18
        Width = 1270
        Height = 223
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
          object cxGOutDBTv_ccp3b_hid: TcxGridDBColumn
            DataBinding.FieldName = 'ccp1b_hid'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGOutDBTv_ccp3b_outid: TcxGridDBColumn
            DataBinding.FieldName = 'ccp3b_outid'
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
            Width = 250
          end
          object cxGOutDBTv_results: TcxGridDBColumn
            Caption = #44060#49440#51312#52824' '#48143' '#44208#44284
            DataBinding.FieldName = 'results'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            HeaderAlignmentHorz = taCenter
            Width = 250
          end
          object cxGOutDBTv_writer: TcxGridDBColumn
            Caption = #51312#52824#51088
            DataBinding.FieldName = 'writer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cxGOutDBTv_reviewer: TcxGridDBColumn
            Caption = #54869#51064
            DataBinding.FieldName = 'reviewer'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 60
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
      object cxBtn_AddOut: TcxButton
        Left = 127
        Top = 2
        Width = 125
        Height = 25
        Align = alLeft
        Caption = #51060#53448#47785#47197' '#52628#44032
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
        OnClick = cxBtn_AddOutClick
      end
      object cxBtn_AddD: TcxButton
        Left = 2
        Top = 2
        Width = 125
        Height = 25
        Align = alLeft
        Caption = #49345#49464#47785#47197' '#52628#44032
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
        Left = 502
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
        TabOrder = 4
        Visible = False
        Height = 25
        Width = 100
      end
      object cxBtn_DelD: TcxButton
        Left = 252
        Top = 2
        Width = 125
        Height = 25
        Align = alLeft
        Caption = #49345#49464#47785#47197' '#49325#51228
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
        TabOrder = 2
        OnClick = cxBtn_DelDClick
      end
      object cxBtn_DelOut: TcxButton
        Left = 377
        Top = 2
        Width = 125
        Height = 25
        Align = alLeft
        Caption = #51060#53448#47785#47197' '#49325#51228
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
        OnClick = cxBtn_DelOutClick
      end
    end
    object cxGBox_D: TcxGroupBox
      Left = 2
      Top = 183
      Align = alClient
      Caption = #49345#49464' '#47785#47197
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 2
      ExplicitWidth = 929
      Height = 285
      Width = 1276
      object cxGD: TcxGrid
        Left = 3
        Top = 18
        Width = 1270
        Height = 258
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
          object cxGDDBTv_ccp3b_did: TcxGridDBColumn
            DataBinding.FieldName = 'ccp3b_did'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = False
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGDDBTv_ccp3b_hid: TcxGridDBColumn
            DataBinding.FieldName = 'ccp3b_hid'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
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
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cxGDDBTv_itemname: TcxGridDBColumn
            Caption = #51228#54408#47749
            DataBinding.FieldName = 'itemname'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 150
          end
          object cxGDDBTv_checktime: TcxGridDBColumn
            Caption = #52769#51221#49884#44036
            DataBinding.FieldName = 'checktime'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cxGDDBTv_temp1: TcxGridDBColumn
            Caption = #44396#51060#50728#46020'1('#8451')'
            DataBinding.FieldName = 'temp1'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGDDBTv_temp2: TcxGridDBColumn
            Caption = #44396#51060#50728#46020'2('#8451')'
            DataBinding.FieldName = 'temp2'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGDDBTv_temp3: TcxGridDBColumn
            Caption = #44396#51060#50728#46020'3('#8451')'
            DataBinding.FieldName = 'temp3'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGDDBTv_temp4: TcxGridDBColumn
            Caption = #44396#51060#50728#46020'4('#8451')'
            DataBinding.FieldName = 'temp4'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGDDBTv_speed: TcxGridDBColumn
            Caption = #44396#51060#49884#44036'(Hz)'
            DataBinding.FieldName = 'speed'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGDDBTv_remark: TcxGridDBColumn
            Caption = #48708#44256
            DataBinding.FieldName = 'remark'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Properties.BlobPaintStyle = bpsText
            HeaderAlignmentHorz = taCenter
            Width = 150
          end
        end
        object cxGDLv: TcxGridLevel
          GridView = cxGDDBTv_
        end
      end
    end
  end
  object uq: TUniQuery
    SQLInsert.Strings = (
      'if coalesce(:ccp3b_hid, 0) = 0'
      'begin'
      #9'insert into hc_ccp3b_h'
      
        #9'(checkdate, writer, temp1, temp2, temp3, temp4, speed, cycle, w' +
        'ay, betterway)'
      #9'values'
      
        #9'(:checkdate, :writer, :temp1, :temp2, :temp3, :temp4, :speed, :' +
        'cycle, :way, :betterway)'
      #9'select @@IDENTITY as "index"'
      'end'
      'else'
      'begin'
      #9'update hc_ccp3b_h set'
      #9#9' checkdate = :checkdate '
      #9#9',writer'#9'   = :writer'#9'   '
      #9#9',temp1'#9'   = :temp1'#9'   '
      #9#9',temp2'#9'   = :temp2'#9'   '
      #9#9',temp3'#9'   = :temp3'#9'   '
      #9#9',temp4'#9'   = :temp4'#9'   '
      #9#9',speed'#9'   = :speed'#9'   '
      #9#9',cycle'#9'   = :cycle'#9'   '
      #9#9',way'#9'   = :way'#9'   '
      #9#9',betterway = :betterway '
      #9'where ccp3b_hid = :ccp3b_hid'
      '        select :ccp3b_hid as "index"'
      'end')
    SQLDelete.Strings = (
      'if coalesce(:ccp3b_outid, 0) = 0'
      'begin'
      #9'insert into hc_ccp3b_out'
      #9'(ccp3b_hid, details, results, writer, reviewer)'
      #9'values'
      #9'(:ccp3b_hid, :details, :results, :writer, :reviewer)'
      'end'
      'else'
      'begin'
      #9'update hc_ccp3b_out set '
      #9#9'  details'#9'= :details'#9
      #9#9' ,results'#9'= :results'#9
      #9#9' ,writer'#9'= :writer'#9
      #9#9' ,reviewer'#9'= :reviewer'#9
      #9'where ccp3b_outid = :ccp3b_outid'
      'end')
    SQLUpdate.Strings = (
      'if coalesce(:ccp3b_did, 0) = 0'
      'begin'
      #9'insert into hc_ccp3b_d'
      
        #9'(ccp3b_hid, f_no, itemname, checktime, temp1, temp2, temp3, tem' +
        'p4, speed, remark, writer)'
      #9'values'
      
        #9'(:ccp3b_hid, :f_no, :itemname, :checktime, :temp1, :temp2, :tem' +
        'p3, :temp4, :speed, :remark, :writer)'
      'end'
      'else'
      'begin'
      #9'update hc_ccp3b_d set'
      #9#9' f_no'#9'   = :f_no'#9'   '
      #9#9',itemname  = :itemname  '
      #9#9',checktime = :checktime '
      #9#9',temp1'#9'   = :temp1'#9'   '
      #9#9',temp2'#9'   = :temp2'#9'   '
      #9#9',temp3'#9'   = :temp3'#9'   '
      #9#9',temp4'#9'   = :temp4'#9'   '
      #9#9',speed'#9'   = :speed'#9'   '
      #9#9',remark'#9'   = :remark'#9'   '
      #9#9',writer'#9'   = :writer'#9'   '
      #9'where ccp3b_did = :ccp3b_did'
      'end')
    SQLLock.Strings = (
      'delete from hc_ccp3b_out'
      'where ccp3b_hid = :ccp3b_hid'
      'delete from hc_ccp3b_d'
      'where ccp3b_hid = :ccp3b_hid'
      'delete from hc_ccp3b_h'
      'where ccp3b_hid = :ccp3b_hid')
    SQLRefresh.Strings = (
      'delete from hc_ccp3b_d'
      'where ccp3b_did = :ccp3b_did')
    SQLRecCount.Strings = (
      'delete from hc_ccp3b_out'
      'where ccp3b_outid = :ccp3b_outid')
    Left = 32
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
      '        ,pvt.[1] as "temp1"'
      '        ,pvt.[2] as "temp2"'
      '        ,pvt.[3] as "temp3"'
      '        ,pvt.[4] as "temp4"'
      '        ,pvt.[5] as "speed"'
      '        ,pvt.[6] as "cycle"'
      '        ,pvt.[7] as "way"'
      '        ,pvt.[8] as "betterway"'
      '        ,pvt.Writer '
      '    from ('
      '        select '
      '            :CheckDate as "CheckDate"'
      '            , :Writer as "Writer"'
      '            , row_number() over(order by hb.BasicID) as "Idx"'
      '            ,hb.Level3 '
      '        from HaccpBasic hb '
      '        where hb.MenuName = '#39#51473#50836#44288#47532#51216'(CCP-3B) '#47784#45768#53552#47553#51068#51648#39
      '    ) as tbl_hb'
      '    pivot ('
      
        '        max(Level3) for Idx in ([1], [2], [3], [4], [5], [6], [7' +
        '], [8])'
      '    ) as pvt'
      'end'
      'else'
      'begin'
      '    select ccp3b_hid'
      '          ,checkdate'
      '          ,temp1'
      '          ,temp2'
      '          ,temp3'
      '          ,temp4'
      '          ,speed'
      '          ,cycle'
      '          ,way'
      '          ,betterway'
      '          ,writer'
      '      from hc_ccp3b_h'
      '     where ccp3b_hid = :ccp3b_hid'
      'end')
    SQL.Strings = (
      'select ccp3b_hid'
      '      ,checkdate'
      '      ,temp1'
      '      ,temp2'
      '      ,temp3'
      '      ,temp4'
      '      ,speed'
      '      ,cycle'
      '      ,way'
      '      ,betterway'
      '      ,writer'
      '  from hc_ccp3b_h'
      ' where ccp3b_hid = 1')
    Left = 976
    Top = 112
  end
  object ds_info: TDataSource
    DataSet = uq_info
    Left = 1032
    Top = 112
  end
  object uq_d: TUniQuery
    SQLInsert.Strings = (
      'select ccp3b_did'
      '      ,ccp3b_hid'
      '      ,f_no'
      '      ,itemname'
      '      ,checktime'
      '      ,temp1'
      '      ,temp2'
      '      ,temp3'
      '      ,temp4'
      '      ,speed'
      '      ,remark'
      '  from hc_ccp3b_d'
      ' where ccp3b_hid = :ccp3b_hid')
    SQL.Strings = (
      'select ccp1b_did'
      '      ,ccp1b_hid'
      '      ,f_no'
      '      ,itemname'
      '      ,checktime'
      '      ,temp1'
      '      ,temp2'
      '      ,temp3'
      '      ,speed'
      '      ,remark'
      '  from hc_ccp1b_d'
      ' where ccp1b_hid = 7')
    Left = 984
    Top = 392
  end
  object ds_d: TDataSource
    DataSet = uq_d
    Left = 1040
    Top = 392
  end
  object uq_out: TUniQuery
    SQLInsert.Strings = (
      '   select ccp3b_hid'
      '         ,ccp3b_outid'
      '         ,details'
      '         ,results'
      '         ,writer'
      '         ,reviewer'
      '     from hc_ccp3b_out'
      '    where ccp3b_hid = :ccp3b_hid')
    SQL.Strings = (
      '   select ccp1b_hid'
      '         ,ccp1b_outid'
      '         ,details'
      '         ,results'
      '         ,writer'
      '         ,reviewer'
      '     from hc_ccp1b_out'
      '    where ccp1b_hid = 1')
    Left = 976
    Top = 648
  end
  object ds_out: TDataSource
    DataSet = uq_out
    Left = 1032
    Top = 648
  end
  object uq_list: TUniQuery
    SQLInsert.Strings = (
      'select ccp3b_hid'
      '      ,checkdate'
      '      ,temp1'
      '      ,temp2'
      '      ,temp3'
      '      ,temp4'
      '      ,speed'
      '      ,cycle'
      '      ,way'
      '      ,betterway'
      '      ,writer'
      '  from hc_ccp3b_h'
      ' where checkdate = :checkdate')
    SQL.Strings = (
      'select ccp3b_hid'
      '      ,checkdate'
      '      ,temp1'
      '      ,temp2'
      '      ,temp3'
      '      ,temp4'
      '      ,speed'
      '      ,cycle'
      '      ,way'
      '      ,betterway'
      '      ,writer'
      '  from hc_ccp3b_h')
    Left = 88
    Top = 120
  end
end
