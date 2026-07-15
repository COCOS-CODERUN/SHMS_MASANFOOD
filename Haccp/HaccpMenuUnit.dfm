inherited HaccpMenuForm: THaccpMenuForm
  Caption = 'Haccp '#44288#47532#45824#51109
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
    Height = 81
    Width = 1258
    object cxLbl20: TcxLabel
      Left = 202
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
      AnchorX = 252
      AnchorY = 34
    end
    object cxEdit_FormNo: TcxTextEdit
      Left = 202
      Top = 45
      Style.Color = 14811105
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
      Left = 301
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
      AnchorX = 426
      AnchorY = 34
    end
    object cxEdit_FormName: TcxTextEdit
      Left = 301
      Top = 45
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
      Width = 250
    end
    object cxLbl2: TcxLabel
      Left = 550
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
      AnchorX = 625
      AnchorY = 34
    end
    object cxEdit_Period: TcxTextEdit
      Left = 550
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
    object cxLbl6: TcxLabel
      Left = 1056
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
      AnchorX = 1106
      AnchorY = 34
    end
    object cxEdit_ListID: TcxTextEdit
      Left = 1056
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
      TabOrder = 4
      Visible = False
      Width = 100
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 21
      AutoSize = False
      Caption = 'HACCP '#44396#48516
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
      Width = 200
      AnchorX = 103
      AnchorY = 34
    end
    object cxEdit_division: TcxTextEdit
      Left = 3
      Top = 45
      Style.Color = 14811105
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 0
      Width = 200
    end
    object cxLabel10: TcxLabel
      Left = 699
      Top = 21
      AutoSize = False
      Caption = #49324#50857#50668#48512
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
      Width = 170
      AnchorX = 784
      AnchorY = 34
    end
    object cxRGroup_use: TcxRadioGroup
      Left = 700
      Top = 46
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #49324#50857
          Value = True
        end
        item
          Caption = #48120#49324#50857
          Value = False
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 11
      Height = 23
      Width = 168
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
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 35
      OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
      object cxGridDBTvList_division: TcxGridDBColumn
        Caption = 'HACCP '#44396#48516
        DataBinding.FieldName = 'Division'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object cxGridDBTvList_LintNo: TcxGridDBColumn
        Caption = #50577#49885#48264#54840
        DataBinding.FieldName = 'FormNo'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTvList_FormName: TcxGridDBColumn
        Caption = #50577#49885#47749
        DataBinding.FieldName = 'FormName'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 300
      end
      object cxGridDBTvList_Period: TcxGridDBColumn
        Caption = #51216#44160#51452#44592
        DataBinding.FieldName = 'Period'
        DataBinding.IsNullValueType = True
        HeaderAlignmentHorz = taCenter
        Width = 150
      end
      object cxGridDBTvList_ManagerMain: TcxGridDBColumn
        Caption = #49324#50857#50668#48512
        DataBinding.FieldName = 'IsUsable'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxRadioGroupProperties'
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = #49324#50857
            Value = True
          end
          item
            Caption = #48120#49324#50857
            Value = False
          end>
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object cxGridDBTvListList_ID: TcxGridDBColumn
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
    DataSet = UniQuery_list
    Left = 1184
    Top = 496
  end
  object UniQuery_list: TUniQuery
    ObjectView = True
    Left = 1184
    Top = 448
  end
  object UniQuery_comm: TUniQuery
    ObjectView = True
    Left = 1040
    Top = 448
  end
end
