object f_haccp_verifyresult: Tf_haccp_verifyresult
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
  OnResize = FormResize
  TextHeight = 15
  object cxGBox_Right: TcxGroupBox
    Left = 980
    Top = 0
    Align = alRight
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    Style.TransparentBorder = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 720
    Width = 300
    object cxGBox_User: TcxGroupBox
      Left = 2
      Top = 2
      Align = alTop
      Caption = #44160#51613#54016'('#52628#44032#49884' '#44592#51316' '#47785#47197#51012' '#45934#50612#50433#45768#45796')'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 336
      Width = 296
      object cxGUser: TcxGrid
        Left = 2
        Top = 46
        Width = 292
        Height = 282
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.ScrollMode = scmSmooth
        LookAndFeel.SkinName = 'Lilian'
        ExplicitLeft = 4
        ExplicitTop = 13
        ExplicitHeight = 311
        object cxGUserTv_: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGUserTv_u_id: TcxGridColumn
            Caption = 'u_id'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGUserTv_h_id: TcxGridColumn
            Caption = 'h_id'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGUserTv_userID: TcxGridColumn
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGUserTv_loginID: TcxGridColumn
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGUserTv_username: TcxGridColumn
            Caption = #51060#47492
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGUserTv_u_position: TcxGridColumn
            Caption = #51649#52293
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
        end
        object cxGUserLv: TcxGridLevel
          GridView = cxGUserTv_
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 2
        Top = 17
        Align = alTop
        PanelStyle.Active = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 1
        ExplicitLeft = 4
        ExplicitTop = 25
        Height = 29
        Width = 292
        object cxBtn_Add: TcxButton
          Left = 2
          Top = 2
          Width = 100
          Height = 25
          Align = alLeft
          Caption = #44160#51613#54016' '#52628#44032
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
          OnClick = cxBtn_AddClick
        end
        object cxBtn_Del: TcxButton
          Left = 102
          Top = 2
          Width = 100
          Height = 25
          Align = alLeft
          Caption = #44160#51613#54016' '#49325#51228
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
          OnClick = cxBtn_DelClick
          ExplicitLeft = 154
          ExplicitTop = -2
        end
      end
    end
    object cxGBox_File: TcxGroupBox
      Left = 2
      Top = 338
      Align = alClient
      Caption = #52392#48512#54028#51068'('#54028#51068#51012' '#46300#47000#44536#54616#50668' '#46321#47197' '#44032#45733')'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 380
      Width = 296
      object cxLbl_ExtInfo: TcxLabel
        Left = 2
        Top = 17
        Align = alTop
        AutoSize = False
        ParentColor = False
        Style.BorderStyle = ebsUltraFlat
        Style.Color = clBtnFace
        Style.Edges = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        Style.TransparentBorder = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        ExplicitLeft = 1
        ExplicitTop = 11
        Height = 25
        Width = 292
        AnchorY = 30
      end
      object cxGfile: TcxGrid
        Left = 2
        Top = 42
        Width = 292
        Height = 330
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Lilian'
        ExplicitLeft = 3
        ExplicitTop = 61
        ExplicitWidth = 474
        ExplicitHeight = 212
        object cxGfileTv_: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          FindPanel.ApplyInputDelay = 100
          FindPanel.Behavior = fcbFilter
          FindPanel.DisplayMode = fpdmManual
          FindPanel.InfoText = #44160#49353#54624' '#53581#49828#53944#47484' '#51077#47141'...'
          FindPanel.UseExtendedSyntax = True
          FindPanel.Location = fplGroupByBox
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CopyCaptionsToClipboard = False
          OptionsBehavior.CopyPreviewToClipboard = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebForFocusedRecord
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 60
          object cxGfileTv_btn: TcxGridColumn
            Caption = #48260#53948
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Caption = #49325#51228
                Default = True
                Kind = bkText
              end
              item
                Caption = #48372#44592
                Kind = bkText
              end>
            Properties.ViewStyle = vsButtonsAutoWidth
            Properties.OnButtonClick = cxGfileTv_btnPropertiesButtonClick
            Width = 100
          end
          object cxGfileTv_f_id: TcxGridColumn
            Caption = 'fileID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxGfileTv_h_id: TcxGridColumn
            Caption = 'reqID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxGfileTv_fpath: TcxGridColumn
            Caption = #54028#51068#44221#47196
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxGfileTv_fname: TcxGridColumn
            Caption = #54028#51068#47749
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxGfileTv_foriname: TcxGridColumn
            Caption = #54028#51068#47749
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 200
          end
          object cxGfileTv_fextention: TcxGridColumn
            Caption = #54869#51109#51088#47749
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object cxGfileTv_fsize: TcxGridColumn
            Caption = #53356#44592'(KB)'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.;-,0.'
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGfileTv_cuser: TcxGridColumn
            Caption = #46321#47197#51088
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.UseLeftAlignmentOnEditing = False
            Visible = False
            Width = 100
          end
        end
        object cxGfileLv: TcxGridLevel
          GridView = cxGfileTv_
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 972
    Top = 0
    Width = 8
    Height = 720
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salRight
  end
  object cxGBox_Client: TcxGroupBox
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
    Height = 720
    Width = 972
    object cxGBox_Info: TcxGroupBox
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
      Height = 29
      Width = 968
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
        TabOrder = 1
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
      Left = 2
      Top = 31
      Width = 968
      Height = 687
      Align = alClient
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.ScrollMode = scmSmooth
      LookAndFeel.SkinName = 'Lilian'
      ExplicitLeft = 1
      ExplicitTop = 35
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
        object cxGDTv_h_id: TcxGridColumn
          Caption = 'h_id'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 25
        end
        object cxGDTv_d_id: TcxGridColumn
          Caption = 'd_id'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          Visible = False
          GroupSummaryAlignment = taCenter
          Width = 25
        end
        object cxGDTv_div: TcxGridColumn
          Caption = #44396#48516
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object cxGDTv_d_text: TcxGridColumn
          Caption = #45236#50857
          OnGetProperties = cxGDTv_d_textGetProperties
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
      end
      object cxGDLv: TcxGridLevel
        GridView = cxGDTv_
      end
    end
  end
  object uq_d: TUniQuery
    SQLInsert.Strings = (
      'if :new = 1'
      'begin'
      '    select top 1'
      '           0 as "d_id"'
      '          ,0 as "h_id"'
      '          ,hb.Level1 as "div"'
      '          ,hb.Level2 as "d_text"'
      '    from HaccpBasic hb'
      '    where hb.MenuName = '#39#44160#51613' '#44208#44284' '#48372#44256#49436#39
      '    and hb.Level1 = '#39#44160#51613#44396#48516#39
      '    union all'
      '    select 0 as "d_id"'
      '          ,0 as "h_id"'
      '          ,hb.Level1 as "div"'
      '          ,hb.Level2 as "d_text"'
      '    from HaccpBasic hb'
      '    where hb.MenuName = '#39#44160#51613' '#44208#44284' '#48372#44256#49436#39
      
        '    and hb.Level1 in ('#39#44160#51613#51068#49884#39', '#39#44160#51613#48276#50948#39', '#39#54217#44032#48169#48277#39', '#39#54217#44032#44208#44284#39', '#39#48512#51201#54633#49324#54637#39', '#39 +
        #44060#49440#49324#54637#39', '#39#51201#54633#49457#54217#44032#39', '#39#53945#51060#49324#54637#39')'
      'end'
      'else'
      'begin'
      '    select hvrd.d_id'
      '          ,hvrd.h_id'
      '          ,hvrd.div'
      '          ,hvrd.d_text'
      '    from hc_v_result_d hvrd'
      '    where h_id = :h_id'
      'end')
    Left = 896
    Top = 568
  end
  object uq_user: TUniQuery
    SQLInsert.Strings = (
      '    select hvru.u_id'
      '          ,hvru.h_id'
      '          ,hvru.UserID as "userID"'
      '          ,hvru.LoginID as "loginID"'
      '          ,mu.[Name] as "username"'
      '          ,mu.[Position] as "u_position"'
      '      from hc_v_result_user hvru'
      ' left join MasterUser mu on hvru.UserID = mu.userID'
      '     where hvru.h_id = :h_id')
    Connection = DataModuleForm.FDConnection
    Left = 1208
    Top = 192
  end
  object uq_file: TUniQuery
    SQLInsert.Strings = (
      'select hvrf.h_id'
      '      ,hvrf.f_id'
      '      ,hvrf.fpath'
      '      ,hvrf.fname'
      '      ,hvrf.foriname'
      '      ,hvrf.fextention'
      '      ,hvrf.fsize'
      '      ,hvrf.cuser'
      '      ,hvrf.cdatetime'
      'from hc_v_result_f hvrf'
      'where hvrf.h_id = :h_id')
    Connection = DataModuleForm.FDConnection
    Left = 1216
    Top = 568
  end
  object uq: TUniQuery
    SQLInsert.Strings = (
      'if :h_id = 0'
      'begin'
      '    insert into hc_v_result_h'
      '        (checkdate'
      '        ,writer)'
      '    values'
      '        (:checkdate'
      '        ,:writer)'
      '    select @@identity as "h_id"'
      'end'
      'else'
      'begin'
      '    update hc_v_result_h set'
      '           checkdate = :checkdate'
      '          ,writer    = :writer'
      '     where h_id      = :h_id'
      'end')
    SQLDelete.Strings = (
      
        'if not exists (select u_id from hc_v_result_user where u_id = :u' +
        '_id)'
      'begin'
      '    insert into hc_v_result_user'
      '        (h_id'
      '        ,userID'
      '        ,loginID'
      '        ,username'
      '        ,u_position)'
      '    values'
      '        (:h_id'
      '        ,:userID'
      '        ,:loginID'
      '        ,:username'
      '        ,:u_position)    '
      'end')
    SQLUpdate.Strings = (
      'if :d_id = 0'
      'begin'
      '    insert into hc_v_result_d'
      '        (h_id'
      '        ,div'
      '        ,d_text)'
      '    values'
      '        (:h_id'
      '        ,:div'
      '        ,:d_text)    '
      'end'
      'else'
      'begin'
      '    update hc_v_result_d set'
      '           d_text = :d_text'
      '     where d_id = :d_id'
      'end')
    SQLLock.Strings = (
      
        'if not exists (select f_id from hc_v_result_f where f_id = :f_id' +
        ')'
      'begin'
      '    insert into hc_v_result_f'
      '        (h_id'
      '        ,fpath'
      '        ,fname'
      '        ,foriname'
      '        ,fextention'
      '        ,fsize'
      '        ,cuser'
      '        ,cdatetime)'
      '    values'
      '        (:h_id'
      '        ,:fpath'
      '        ,:fname'
      '        ,:foriname'
      '        ,:fextention'
      '        ,:fsize'
      '        ,:cuser'
      '        ,getdate()) '
      'end')
    Left = 32
    Top = 136
  end
  object uq_list: TUniQuery
    SQLInsert.Strings = (
      'select'
      '     h_id'
      '    ,checkdate'
      '    ,writer'
      'from hc_v_result_h'
      'where checkdate = :checkdate')
    SQL.Strings = (
      'select'
      '     h_id'
      '    ,checkdate'
      '    ,writer'
      'from hc_v_result_h'
      'where checkdate = :checkdate')
    Left = 32
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'checkdate'
        Value = nil
      end>
  end
  object cxER: TcxEditRepository
    Left = 896
    Top = 504
    PixelsPerInch = 96
    object cxERComboBox: TcxEditRepositoryComboBoxItem
    end
    object cxERRadioGroup: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #51201#54633
          Value = #51201#54633
        end
        item
          Caption = #44060#49440#54596#50836
          Value = #44060#49440#54596#50836
        end>
    end
    object cxERBlob: TcxEditRepositoryBlobItem
      Properties.BlobEditKind = bekMemo
      Properties.BlobPaintStyle = bpsText
    end
    object cxERMemo: TcxEditRepositoryMemoItem
      Properties.ScrollBars = ssVertical
    end
  end
  object uq_cbox: TUniQuery
    SQLInsert.Strings = (
      'select hb.BasicID '
      '      ,hb.Level2 '
      '  from HaccpBasic hb '
      ' where hb.MenuName = '#39#44160#51613' '#44208#44284' '#48372#44256#49436#39
      '   and level1 = '#39#44160#51613#44396#48516#39)
    Left = 88
    Top = 72
  end
  object uq_ext: TUniQuery
    SQLInsert.Strings = (
      'declare @FExt nvarchar(10) = :FExt'
      ' select Level2 '
      '   from HaccpBasic'
      '  where MenuName = '#39#44160#51613' '#44208#44284' '#48372#44256#49436#39
      '    and Level1 = '#39#54028#51068#54869#51109#51088#39
      '    and @FExt IN (SELECT value FROM STRING_SPLIT(Level2, '#39','#39'))')
    SQLUpdate.Strings = (
      'select hb.Level2 '
      '  from HaccpBasic hb '
      ' where hb.MenuName = '#39#44160#51613' '#44208#44284' '#48372#44256#49436#39
      '   and hb.Level1 = '#39#54028#51068#54869#51109#51088#39)
    Connection = DataModuleForm.FDConnection
    Left = 1008
    Top = 416
  end
  object uq_del: TUniQuery
    SQLInsert.Strings = (
      'delete from hc_v_result_f'
      'where h_id = :h_id'
      'delete from hc_v_result_user'
      'where h_id = :h_id'
      'delete from hc_v_result_d'
      'where h_id = :h_id'
      'delete from hc_v_result_h'
      'where h_id = :h_id')
    SQLDelete.Strings = (
      'delete from hc_v_result_f'
      'where f_id = :f_id')
    SQLUpdate.Strings = (
      'delete from hc_v_result_user'
      'where u_id = :u_id')
    Connection = DataModuleForm.FDConnection
    Left = 88
    Top = 136
  end
end
