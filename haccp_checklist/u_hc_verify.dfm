object f_hc_verify: Tf_hc_verify
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    Style.TransparentBorder = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 0
    ExplicitTop = -6
    Height = 29
    Width = 1280
    object cxLabel1: TcxLabel
      Left = 2
      Top = 2
      Align = alLeft
      AutoSize = False
      Caption = #51216#44160#51068#51088
      Style.BorderStyle = ebsUltraFlat
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
      AnchorX = 42
      AnchorY = 15
    end
    object cxLabel2: TcxLabel
      Left = 182
      Top = 2
      Align = alLeft
      AutoSize = False
      Caption = #51216#44160#51088
      Style.BorderStyle = ebsUltraFlat
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
      AnchorX = 222
      AnchorY = 15
    end
    object cxDEdit_Date: TcxDateEdit
      Left = 82
      Top = 2
      Align = alLeft
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 2
      Width = 100
    end
    object cxEdit_Writer: TcxTextEdit
      Left = 262
      Top = 2
      Align = alLeft
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 3
      Width = 100
    end
  end
  object cxGD: TcxGrid
    Left = 0
    Top = 29
    Width = 1280
    Height = 441
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    LookAndFeel.ScrollMode = scmSmooth
    LookAndFeel.SkinName = 'Lilian'
    object cxGDTv_: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ShowEditButtons = gsebForFocusedRecord
      OptionsView.ColumnAutoWidth = True
      OptionsView.DataRowHeight = 30
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 30
      object cxGDTv_d_id: TcxGridColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Properties.UseLeftAlignmentOnEditing = False
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGDTv_div: TcxGridColumn
        Caption = #44277#51221' '#44396#48516
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Properties.UseLeftAlignmentOnEditing = False
        HeaderAlignmentHorz = taCenter
        Options.CellMerging = True
        Width = 45
      end
      object cxGDTv_d_text: TcxGridColumn
        Caption = #44160#51613' '#45236#50857
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekMemo
        Properties.BlobPaintStyle = bpsText
        Properties.PopupWidth = 450
        HeaderAlignmentHorz = taCenter
        Width = 450
      end
      object cxGDTv_d_state: TcxGridColumn
        DataBinding.ValueType = 'Boolean'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGDTv_check_yn: TcxGridColumn
        Caption = #44592#47197'('#50696'/'#50500#45768#50724')'
        DataBinding.ValueType = 'Boolean'
        OnGetProperties = cxGDTv_check_ynGetProperties
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
    end
    object cxGDLv: TcxGridLevel
      GridView = cxGDTv_
    end
  end
  object cxGBox_Out: TcxGroupBox
    Left = 0
    Top = 470
    Align = alBottom
    Caption = #51060#53448' '#47785#47197
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 250
    Width = 1280
    object cxGOut: TcxGrid
      Left = 3
      Top = 47
      Width = 1274
      Height = 194
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.ScrollMode = scmSmooth
      LookAndFeel.SkinName = 'Lilian'
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
        object cxGOutDBTv_h_id: TcxGridDBColumn
          DataBinding.FieldName = 'h_id'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.UseLeftAlignmentOnEditing = False
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGOutDBTv_outid: TcxGridDBColumn
          DataBinding.FieldName = 'outid'
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
    object cxGroupBox2: TcxGroupBox
      Left = 3
      Top = 18
      Align = alTop
      PanelStyle.Active = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 29
      Width = 1274
      object cxBtn_AddOut: TcxButton
        Left = 2
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
        TabOrder = 0
        OnClick = cxBtn_AddOutClick
      end
      object cxBtn_DelOut: TcxButton
        Left = 127
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
        TabOrder = 1
        OnClick = cxBtn_DelOutClick
      end
    end
  end
  object ds_d: TDataSource
    DataSet = uq_d
    Left = 1216
    Top = 328
  end
  object cxER: TcxEditRepository
    Left = 1216
    Top = 264
    PixelsPerInch = 96
    object cxERText: TcxEditRepositoryTextItem
    end
    object cxERRG_yn: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #50696
          Value = True
        end
        item
          Caption = #50500#45768#50724
          Value = False
        end>
    end
  end
  object uq_d: TUniQuery
    SQLInsert.Strings = (
      'if :new = 1'
      'begin'
      '    select '
      '         0 as "h_id"'
      '        ,0 as "d_id"'
      '        ,hb.Level1 as "div"'
      '        ,hb.Level2 '
      '        ,hb.Level3 as "d_text"'
      
        '        ,case hb.Level2 when '#39'Main'#39' then 1 when '#39'Sub'#39' then 0 end' +
        ' as "d_state"'
      
        '        ,case hb.Level2 when '#39'Main'#39' then 1 when '#39'Sub'#39' then 0 end' +
        ' as "check_yn"'
      '        ,'#39#39' as "division"'
      '    from HaccpBasic hb '
      '    where hb.MenuName = '#39#51473#50836#44288#47532#51216'(CCP) '#44160#51613#51216#44160#54364#39
      '    order by hb.BasicID '
      'end'
      'else'
      'begin'
      '    select'
      '         hvh.h_id'
      '        ,hvd.d_id'
      '        ,hvd.div'
      '        ,hvd.d_text'
      '        ,hvd.d_state'
      '        ,hvd.check_yn'
      '        ,hvh.division'
      '    from hc_verify_h hvh'
      '    inner join hc_verify_d hvd on hvd.h_id = hvh.h_id'
      '    where hvh.h_id = :h_id'
      'end')
    SQL.Strings = (
      'if 1 = 1'
      'begin'
      '    select '
      '         0 as "v_id"'
      '        ,row_number() over(order by hb.BasicID) as "v_idx"'
      '        ,hb.Level1 as "v_div"'
      '        ,hb.Level2 '
      '        ,hb.Level3 as "v_content"'
      
        '        ,case hb.Level2 when '#39'Main'#39' then 1 when '#39'Sub'#39' then 0 end' +
        ' as "v_state"'
      
        '        ,case hb.Level2 when '#39'Main'#39' then 1 when '#39'Sub'#39' then 0 end' +
        ' as "check_yn"'
      '    from HaccpBasic hb '
      '    where hb.MenuName = '#39#51473#50836#44288#47532#51216'(CCP) '#44160#51613#51216#44160#54364#39
      '    order by hb.BasicID '
      'end'
      'else'
      'begin'
      '    select'
      '         v_id'
      '        ,v_idx'
      '        ,v_div'
      '        ,v_content'
      '        ,v_state'
      '        ,check_yn'
      '    from hc_verify'
      '    where v_id = :v_id'
      'end')
    Left = 1160
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_id'
        Value = nil
      end>
  end
  object uq: TUniQuery
    SQLInsert.Strings = (
      'if :h_id = 0'
      'begin'
      '    insert into hc_verify_h'
      '        (checkdate'
      '        ,writer)'
      '    values'
      '        (:checkdate'
      '        ,:writer)'
      '    select @@identity as "h_id"'
      'end'
      'else'
      'begin'
      '    update hc_verify_h set'
      '         checkdate = :checkdate'
      '        ,writer    = :writer'
      '    where h_id     = :h_id'
      'end')
    SQLDelete.Strings = (
      'delete from hc_verify_out'
      'where h_id = :h_id'
      'delete from hc_verify_d'
      'where h_id = :h_id'
      'delete from hc_verify_h'
      'where h_id = :h_id')
    SQLUpdate.Strings = (
      'if :d_id = 0'
      'begin'
      '    insert into hc_verify_d'
      '        (h_id'
      '        ,div'
      '        ,d_text'
      '        ,d_state'
      '        ,check_yn)'
      '    values'
      '        (:h_id'
      '        ,:div'
      '        ,:d_text'
      '        ,:d_state'
      '        ,:check_yn)'
      'end'
      'else'
      'begin'
      '    update hc_verify_d set'
      '         d_text   = :d_text'
      '        ,check_yn = :check_yn'
      '    where d_id    = :d_id'
      'end')
    SQLLock.Strings = (
      'if coalesce(:outid, 0) = 0'
      'begin'
      '    insert into hc_verify_out'
      '        (h_id'
      '        ,details'
      '        ,results'
      '        ,writer'
      '        ,reviewer)'
      '    values'
      '        (:h_id'
      '        ,:details'
      '        ,:results'
      '        ,:writer'
      '        ,:reviewer)'
      'end'
      'else'
      'begin'
      '    update hc_verify_out set'
      '         details  = :details'
      '        ,results  = :results'
      '        ,writer   = :writer'
      '        ,reviewer = :reviewer'
      '    where outid   = :outid'
      'end')
    SQLRecCount.Strings = (
      'delete from hc_verify_out'
      'where outid = :outid')
    Left = 24
    Top = 72
  end
  object uq_list: TUniQuery
    SQLInsert.Strings = (
      'select'
      '     h_id'
      '    ,checkdate'
      '    ,writer'
      'from hc_verify_h'
      'where checkdate = :checkdate')
    Left = 72
    Top = 72
  end
  object uq_out: TUniQuery
    SQLInsert.Strings = (
      '   select h_id'
      '         ,outid'
      '         ,details'
      '         ,results'
      '         ,writer'
      '         ,reviewer'
      '     from hc_verify_out'
      '    where h_id = :h_id')
    SQL.Strings = (
      '   select h_id'
      '         ,outid'
      '         ,details'
      '         ,results'
      '         ,writer'
      '         ,reviewer'
      '     from hc_verify_out'
      '    where h_id = 1')
    Left = 1168
    Top = 568
  end
  object ds_out: TDataSource
    DataSet = uq_out
    Left = 1224
    Top = 568
  end
end
