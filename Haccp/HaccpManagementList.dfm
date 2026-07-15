inherited HaccpMenuForm: THaccpMenuForm
  Caption = 'HaccpMenuForm'
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    inherited cxBtn_New: TcxButton
      OnClick = cxBtnNewClick
    end
    inherited cxBtn_Save: TcxButton
      OnClick = cxBtnSaveClick
    end
    inherited cxBtn_Delete: TcxButton
      OnClick = cxBtnDeleteClick
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
    Height = 81
    Width = 1258
    object cxLbl20: TcxLabel
      Left = 124
      Top = 21
      AutoSize = False
      Caption = #50577#49885#48264#54840
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
      Height = 25
      Width = 100
      AnchorX = 174
      AnchorY = 34
    end
    object cxEditFormNo: TcxTextEdit
      Left = 124
      Top = 45
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
    object cxLbl1: TcxLabel
      Left = 223
      Top = 21
      AutoSize = False
      Caption = #50577#49885#47749
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
      Height = 25
      Width = 250
      AnchorX = 348
      AnchorY = 34
    end
    object cxEditFormName: TcxTextEdit
      Left = 223
      Top = 45
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
    object cxLbl2: TcxLabel
      Left = 472
      Top = 21
      AutoSize = False
      Caption = #51216#44160#51452#44592
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
      Height = 25
      Width = 150
      AnchorX = 547
      AnchorY = 34
    end
    object cxEditPeriod: TcxTextEdit
      Left = 472
      Top = 45
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 3
      Width = 150
    end
    object cxLbl3: TcxLabel
      Left = 621
      Top = 21
      AutoSize = False
      Caption = #45812#45817'('#51221')'
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
      Height = 25
      Width = 120
      AnchorX = 681
      AnchorY = 34
    end
    object cxEditManagerMain: TcxTextEdit
      Left = 621
      Top = 45
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 4
      Width = 120
    end
    object cxLbl4: TcxLabel
      Left = 740
      Top = 21
      AutoSize = False
      Caption = #45812#45817'('#48512')'
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
      Height = 25
      Width = 120
      AnchorX = 800
      AnchorY = 34
    end
    object cxEditManagerSub: TcxTextEdit
      Left = 740
      Top = 45
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 5
      Width = 120
    end
    object cxLbl5: TcxLabel
      Left = 859
      Top = 21
      AutoSize = False
      Caption = #54869#51064
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
      Height = 25
      Width = 120
      AnchorX = 919
      AnchorY = 34
    end
    object cxEditManagerOK: TcxTextEdit
      Left = 859
      Top = 45
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 6
      Width = 120
    end
    object cxLbl6: TcxLabel
      Left = 978
      Top = 21
      AutoSize = False
      Caption = #44288#47532#48264#54840
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
      Visible = False
      Height = 25
      Width = 100
      AnchorX = 1028
      AnchorY = 34
    end
    object cxEditListID: TcxTextEdit
      Left = 978
      Top = 45
      Enabled = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 7
      Visible = False
      Width = 100
    end
    object cxLbl7: TcxLabel
      Left = 5
      Top = 21
      AutoSize = False
      Caption = 'HACCP'#54016' '#44396#48516
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
      Height = 25
      Width = 120
      AnchorX = 65
      AnchorY = 34
    end
    object cxCBBoxDivision: TcxComboBox
      Left = 5
      Top = 45
      AutoSize = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 0
      Height = 25
      Width = 120
    end
  end
  object cxGridList: TcxGrid
    Left = 0
    Top = 116
    Width = 1258
    Height = 526
    Align = alClient
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    object cxGridDBTvList: TcxGridDBTableView
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
      OnCellDblClick = cxGridDBTvListCellDblClick
      DataController.DataSource = DS_List
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      object cxGridDBTvListNo: TcxGridDBColumn
        Caption = 'No.'
        DataBinding.IsNullValueType = True
        OnGetDisplayText = cxGridDBTvListNoGetDisplayText
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object cxGridDBTvListDivision: TcxGridDBColumn
        DataBinding.FieldName = 'Division'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTvListLintNo: TcxGridDBColumn
        Caption = #50577#49885#48264#54840
        DataBinding.FieldName = 'FormNo'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTvListFormName: TcxGridDBColumn
        Caption = #50577#49885#47749
        DataBinding.FieldName = 'FormName'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 300
      end
      object cxGridDBTvListPeriod: TcxGridDBColumn
        Caption = #51216#44160#51452#44592
        DataBinding.FieldName = 'Period'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 150
      end
      object cxGridDBTvListManagerMain: TcxGridDBColumn
        Caption = #45812#45817'('#51221')'
        DataBinding.FieldName = 'ManagerMain'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBTvListManagerSub: TcxGridDBColumn
        Caption = #45812#45817'('#48512')'
        DataBinding.FieldName = 'ManagerSub'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBTvListManagerOK: TcxGridDBColumn
        Caption = #54869#51064
        DataBinding.FieldName = 'ManagerOK'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBTvListListID: TcxGridDBColumn
        Caption = #44288#47532#48264#54840
        DataBinding.FieldName = 'ListID'
        DataBinding.IsNullValueType = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
    end
    object cxGridLvList: TcxGridLevel
      GridView = cxGridDBTvList
    end
  end
  object DS_List: TDataSource
    DataSet = FDQuery_list
    Left = 1184
    Top = 496
  end
  object FDQuery_list: TFDQuery
    SQL.Strings = (
      '')
    Left = 1184
    Top = 448
  end
  object FDQuery_comm: TFDQuery
    SQL.Strings = (
      '')
    Left = 1040
    Top = 448
  end
end
