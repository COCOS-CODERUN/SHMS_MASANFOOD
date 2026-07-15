inherited HaccpBasicForm: THaccpBasicForm
  Caption = 'HaccpBasicForm - HACCP '#44592#51456' '#44288#47532
  OnCreate = FormCreate
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    inherited cxBtn_Save: TcxButton
      OnClick = cxBtn_SaveClick
    end
    inherited cxBtn_Delete: TcxButton
      OnClick = cxBtn_DeleteClick
    end
    inherited cxBtn_Search: TcxButton
      Visible = False
    end
  end
  object cxGBoxInput: TcxGroupBox
    Left = 0
    Top = 35
    Align = alTop
    Caption = #51077#47141' '#51221#48372
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 83
    Width = 1258
    object cxLabel1: TcxLabel
      Left = 184
      Top = 22
      AutoSize = False
      Caption = #46972#51064' '#49373#49457' '#49688
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
      AnchorX = 234
      AnchorY = 35
    end
    object cxCEditCount: TcxCurrencyEdit
      Left = 184
      Top = 46
      EditValue = 15.000000000000000000
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0.;'
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
    object cxBtnLindAdd: TcxButton
      Left = 290
      Top = 24
      Width = 100
      Height = 47
      Caption = #46972#51064' '#49373#49457#54616#44592
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Green'
      TabOrder = 2
      OnClick = cxBtn_LindAddClick
    end
    object cxLabel2: TcxLabel
      Left = 5
      Top = 22
      AutoSize = False
      Caption = 'HACCP '#44288#47532#44396#48516
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
      Width = 180
      AnchorX = 95
      AnchorY = 35
    end
    object cxCBBoxHaccp: TcxComboBox
      Left = 5
      Top = 46
      AutoSize = False
      Properties.Items.Strings = (
        'CCP '#44288#47532
        #51068#48152' '#44288#47532)
      Properties.OnEditValueChanged = cxCBBoxHaccpPropertiesEditValueChanged
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
      Width = 180
    end
    object cxLabel_Title: TcxLabel
      Left = 446
      Top = 23
      AutoSize = False
      Caption = 'HACCP '#45812#45817#54016
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
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
      Height = 48
      Width = 451
      AnchorX = 672
      AnchorY = 47
    end
    object cxBtn_DelOne: TcxButton
      Left = 946
      Top = 24
      Width = 111
      Height = 47
      Caption = #46972#51064' '#54620#51460' '#49325#51228
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Green'
      TabOrder = 6
      OnClick = cxBtn_DelOneClick
    end
    object cxLabel_Division: TcxLabel
      Left = 1118
      Top = 26
      AutoSize = False
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
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
      Visible = False
      Height = 48
      Width = 51
      AnchorX = 1144
      AnchorY = 50
    end
  end
  object cxGridBasic: TcxGrid
    Left = 443
    Top = 118
    Width = 815
    Height = 524
    Align = alClient
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    object cxGridTvBasic: TcxGridTableView
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
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
      OptionsView.CellAutoHeight = True
      OptionsView.DataRowHeight = 40
      OptionsView.GroupByBox = False
      object cxGridTvBasicType: TcxGridColumn
        Caption = #45824#48516#47448
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
        Width = 150
      end
      object cxGridTvBasicLv1: TcxGridColumn
        Caption = #44396#48516' ( Level 1 )'
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object cxGridTvBasicLv2: TcxGridColumn
        Caption = #44396#48516' ( Level 2 )'
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
        Width = 350
      end
      object cxGridTvBasicLv3: TcxGridColumn
        Caption = #44396#48516' ( Level 3 )'
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
        Width = 350
      end
      object cxGridTvBasicCode: TcxGridColumn
        Caption = 'Code'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
      end
    end
    object cxGridLvBasic: TcxGridLevel
      GridView = cxGridTvBasic
    end
  end
  object cxGrid_Menu: TcxGrid
    Left = 0
    Top = 118
    Width = 435
    Height = 524
    Align = alLeft
    TabOrder = 3
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    object cxGridDBTv_Menu: TcxGridDBTableView
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
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = cxGridDBTv_MenuCellDblClick
      DataController.DataSource = DS_M
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
      OptionsView.CellAutoHeight = True
      OptionsView.DataRowHeight = 30
      OptionsView.GroupByBox = False
      object cxGridDBTv_MenuSeq: TcxGridDBColumn
        AlternateCaption = 't'
        Caption = 'No.'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        OnGetDisplayText = cxGridDBTv_MenuSeqGetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object cxGridDBTv_MenuDivision: TcxGridDBColumn
        Caption = #44396#48516
        DataBinding.FieldName = 'DIVISION'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 150
      end
      object cxGridDBTv_MenuName: TcxGridDBColumn
        Caption = #50577#49885#47749
        DataBinding.FieldName = 'FormName'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 180
      end
      object cxGridDBTv_MenuPeriod: TcxGridDBColumn
        Caption = #46321#47197#50668#48512
        DataBinding.FieldName = 'SaveYn'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
    end
    object cxGridLv_Menu: TcxGridLevel
      GridView = cxGridDBTv_Menu
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 435
    Top = 118
    Width = 8
    Height = 524
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGrid_Menu
  end
  object FDQuery_comm: TFDQuery
    Left = 1312
    Top = 72
  end
  object DS_M: TDataSource
    DataSet = UniQuery_Menu
    Left = 32
    Top = 544
  end
  object UniQuery_Menu: TUniQuery
    Left = 32
    Top = 488
  end
  object UniQuery_comm: TUniQuery
    Left = 576
    Top = 448
  end
end
