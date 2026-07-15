object HaccpLightForm: THaccpLightForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsSingle
  Caption = #51312#46020#44288#47532#45824#51109
  ClientHeight = 666
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 17
  object cxGroupBox25: TcxGroupBox
    Left = 564
    Top = 35
    Align = alRight
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 0
    Height = 631
    Width = 348
    object cxGridLS: TcxGrid
      Left = 3
      Top = 3
      Width = 342
      Height = 313
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      object cxGridTvLS: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object cxGridTvLSDivision: TcxGridColumn
          Caption = #44396#48516
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.CellMerging = True
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 60
        end
        object cxGridTvLSWorkplace: TcxGridColumn
          Caption = #51089#50629#49892
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 170
        end
        object cxGridTvLSTemp: TcxGridColumn
          Caption = #44288#47532#50728#46020
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 70
        end
        object cxGridTvLSBasic: TcxGridColumn
          Caption = #51312#46020#44592#51456
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.CellMerging = True
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 104
        end
        object cxGridTvLSCode: TcxGridColumn
          Caption = #44288#47532#53076#46300
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
      end
      object cxGridLvLS: TcxGridLevel
        GridView = cxGridTvLS
      end
    end
    object cxGridLightCheck: TcxGrid
      Left = 3
      Top = 316
      Width = 342
      Height = 312
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      object cxGridTvLightCheck: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGridTvLightCheckWorkPlace: TcxGridColumn
          Caption = #51089#50629#49892
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 198
        end
        object cxGridTvLightCheckStandard: TcxGridColumn
          Caption = #51312#46020#44592#51456
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 83
        end
        object cxGridTvLightCheckValue: TcxGridColumn
          Caption = #52769#51221#44050
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.AssignedValues.DisplayFormat = True
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Styles.Content = MainForm.cxStyle_Green
          Width = 53
        end
        object cxGridTvLightCheckCode: TcxGridColumn
          Caption = #44288#47532#53076#46300
          DataBinding.ValueType = 'Integer'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 60
        end
      end
      object cxGridLvLightCheck: TcxGridLevel
        GridView = cxGridTvLightCheck
      end
    end
  end
  object cxImgLightingT02: TcxImage
    Left = 0
    Top = 35
    Align = alClient
    Properties.FitMode = ifmProportionalStretch
    Properties.GraphicClassName = 'TdxSmartImage'
    Properties.PopupMenuLayout.MenuItems = [pmiLoad]
    TabOrder = 1
    Height = 631
    Width = 564
  end
  object cxGroupBox5: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 35
    Width = 912
    object cxLabel64: TcxLabel
      Left = 203
      Top = 3
      Align = alLeft
      AutoSize = False
      Caption = #52769#51221#51068
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
      Height = 29
      Width = 100
      AnchorX = 253
      AnchorY = 18
    end
    object cxDEdit_date: TcxDateEdit
      Left = 303
      Top = 3
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
      TabOrder = 3
      Height = 29
      Width = 100
    end
    object cxLabel85: TcxLabel
      Left = 3
      Top = 3
      Align = alLeft
      AutoSize = False
      Caption = #47560#51648#47561' '#52769#51221#51068
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
      Height = 29
      Width = 100
      AnchorX = 53
      AnchorY = 18
    end
    object cxEdit_LastDate: TcxTextEdit
      Left = 103
      Top = 3
      Align = alLeft
      AutoSize = False
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 1
      Height = 29
      Width = 100
    end
    object cxCBoxModifyT02: TcxCheckBox
      Left = 749
      Top = 3
      Align = alRight
      Caption = #44592#51456' '#49688#51221
      Properties.OnChange = cxCBoxModifyT02PropertiesChange
      Style.TransparentBorder = False
      TabOrder = 4
      ExplicitLeft = 703
    end
    object cxBtnSaveStandardT02: TcxButton
      Left = 824
      Top = 3
      Width = 85
      Height = 29
      Align = alRight
      Caption = #44592#51456' '#51200#51109
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000B744558745469746C6500536176653BF9E8F9090000020349444154
        785E7D52316B145110FEDEE6EE9A03EF2E57284A6C6DAC42C0262185829D0A36
        16820AFE010BADC47F60AB2022585A588875B01041822158D858081204956872
        DC5DD6DD3733CF99D93DD713CCC0F7BEF776E7FB66E6ED0654912982633EFCFC
        9F67A2603B2CAC9DBFB2810CEB4B274EE1E4D271B0303832A24450A94C113112
        2846ECED8F301A7DB59CD76F379E9F6D9901425A5F3DB38C4F9FC7B87BE70690
        60E1E49C80BC886049B87EF33656964F6373EBFD1A8096190466017352B0ABA6
        BF22C4D5C9C5972E5CD632010F1F3F0553C4CECE17088B8F9ED99292B898884C
        EFE2548B270711D942867E7F114717BB9E0308582A83962D2C6EE0EE2925EFA6
        245671899205ED561B9D4EA77EC7CA6D887063904CCCE29735C923BEEF4F91C4
        A771DC7FF008C7865DEF88896B23FA6310BC03226FEFEAB55B9A203E63823143
        5490445C3883D05F23F8FCC228F26F180C06B3CB730059BD57866F20229EDF18
        D42358BC78F60487C5EAB98B5A6408E63903B1F6BD358B9FE302F06D729610BC
        B2AE20B63CF9D780602072579FB9F98B6082E6DF8D044932FF156CA648EC89F7
        5E7E844802299851B3C26667F30BCAF31D043B3091DFC3917E0F5C895C1C4D3C
        03E095C79303A4CA20984111CBFCDDE6D6F6CA70D0C39B571F2A7164AF129589
        14C65E59B0FB631765596C03C8030033E929BA8A0C4D8443F6A2982AF67E037E
        F6AC9379188DF20000000049454E44AE426082}
      TabOrder = 5
      Visible = False
      OnClick = cxBtnSaveStandardT02Click
    end
    object cxBtn_Image: TcxButton
      AlignWithMargins = True
      Left = 404
      Top = 4
      Width = 120
      Height = 27
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #51060#48120#51648' '#51200#51109
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Green'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000B744558745469746C6500536176653BF9E8F9090000020349444154
        785E7D52316B145110FEDEE6EE9A03EF2E57284A6C6DAC42C0262185829D0A36
        16820AFE010BADC47F60AB2022585A588875B01041822158D858081204956872
        DC5DD6DD3733CF99D93DD713CCC0F7BEF776E7FB66E6ED0654912982633EFCFC
        9F67A2603B2CAC9DBFB2810CEB4B274EE1E4D271B0303832A24450A94C113112
        2846ECED8F301A7DB59CD76F379E9F6D9901425A5F3DB38C4F9FC7B87BE70690
        60E1E49C80BC886049B87EF33656964F6373EBFD1A8096190466017352B0ABA6
        BF22C4D5C9C5972E5CD632010F1F3F0553C4CECE17088B8F9ED99292B898884C
        EFE2548B270711D942867E7F114717BB9E0308582A83962D2C6EE0EE2925EFA6
        245671899205ED561B9D4EA77EC7CA6D887063904CCCE29735C923BEEF4F91C4
        A771DC7FF008C7865DEF88896B23FA6310BC03226FEFEAB55B9A203E63823143
        5490445C3883D05F23F8FCC228F26F180C06B3CB730059BD57866F20229EDF18
        D42358BC78F60487C5EAB98B5A6408E63903B1F6BD358B9FE302F06D729610BC
        B2AE20B63CF9D780602072579FB9F98B6082E6DF8D044932FF156CA648EC89F7
        5E7E844802299851B3C26667F30BCAF31D043B3091DFC3917E0F5C895C1C4D3C
        03E095C79303A4CA20984111CBFCDDE6D6F6CA70D0C39B571F2A7164AF129589
        14C65E59B0FB631765596C03C8030033E929BA8A0C4D8443F6A2982AF67E037E
        F6AC9379188DF20000000049454E44AE426082}
      TabOrder = 6
      OnClick = cxBtn_ImageClick
    end
  end
  object UniQuery_comm: TUniQuery
    Left = 776
    Top = 464
  end
end
