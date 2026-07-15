inherited UserLoginForm: TUserLoginForm
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    inherited cxBtn_New: TcxButton
      Visible = False
    end
    inherited cxBtn_Save: TcxButton
      Visible = False
    end
    inherited cxBtn_Delete: TcxButton
      OnClick = cxBtn_DeleteClick
    end
    inherited cxBtn_Search: TcxButton
      OnClick = cxBtn_SearchListClick
    end
  end
  object cxGBoxUser: TcxGroupBox
    Left = 0
    Top = 35
    Margins.Bottom = 0
    Align = alTop
    Caption = #47196#44536#51064' '#44592#47197' '#44160#49353
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 79
    Width = 1258
    object cxLbl1: TcxLabel
      Left = 5
      Top = 22
      AutoSize = False
      Caption = #49324#50857#51088
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
      Width = 250
      AnchorX = 130
      AnchorY = 35
    end
    object cxLCBB_SearchUser: TcxLookupComboBox
      Left = 5
      Top = 44
      AutoSize = False
      Properties.DropDownRows = 20
      Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
      Properties.KeyFieldNames = 'UserID'
      Properties.ListColumns = <
        item
          Caption = #51060#47492
          HeaderAlignment = taCenter
          FieldName = 'Name'
        end
        item
          Caption = #47196#44536#51064' '#50500#51060#46356
          HeaderAlignment = taCenter
          FieldName = 'LoginID'
        end>
      Properties.ListOptions.RowSelect = False
      Properties.ListSource = DS_User
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
      Width = 250
    end
    object cxDEdit_SearchStart: TcxDateEdit
      Left = 254
      Top = 44
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnToday]
      Properties.DisplayFormat = 'yyyy-mm-dd'
      Properties.SaveTime = False
      Properties.ShowTime = False
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
      Height = 25
      Width = 150
    end
    object cxDEdit_SearchEnd: TcxDateEdit
      Left = 403
      Top = 44
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnToday]
      Properties.DisplayFormat = 'yyyy-mm-dd'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.UseLeftAlignmentOnEditing = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 2
      Height = 25
      Width = 150
    end
    object cxLabel1: TcxLabel
      Left = 254
      Top = 22
      AutoSize = False
      Caption = #44160#49353' '#44592#44036
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
      Width = 299
      AnchorX = 404
      AnchorY = 35
    end
    object cxCEdit_AccessLogID: TcxCurrencyEdit
      Left = 976
      Top = 32
      Properties.DisplayFormat = '0'
      TabOrder = 5
      Visible = False
      Width = 121
    end
  end
  object cxGBoxList: TcxGroupBox
    Left = 0
    Top = 114
    Margins.Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 528
    Width = 1258
    object cxGrid_List: TcxGrid
      Left = 3
      Top = 3
      Width = 1252
      Height = 522
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.SkinName = 'Lilian'
      object cxGridDBTv_List: TcxGridDBTableView
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
        OnCellDblClick = cxGridDBTv_ListCellDblClick
        DataController.DataSource = DS_Access
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object cxGridDBTv_List_UserOrder: TcxGridDBColumn
          Caption = #49692#48264
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          OnGetDisplayText = cxGridDBTv_List_UserOrderGetDisplayText
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 70
        end
        object cxGridDBTv_List_ID: TcxGridDBColumn
          DataBinding.FieldName = 'AccessLogID'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 100
        end
        object cxGridDBTv_List_UserID: TcxGridDBColumn
          DataBinding.FieldName = 'UserID'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object cxGridDBTv_List_LoginID: TcxGridDBColumn
          Caption = #47196#44536#51064' '#50500#51060#46356
          DataBinding.FieldName = 'LoginID'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 150
        end
        object cxGridDBTv_List_AccessDT: TcxGridDBColumn
          Caption = #51217#49549' '#49884#44036
          DataBinding.FieldName = 'AccessDateTime'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 200
        end
        object cxGridDBTv_List_HostName: TcxGridDBColumn
          Caption = #54840#49828#53944
          DataBinding.FieldName = 'HostName'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 200
        end
        object cxGridDBTv_List_AccessIP: TcxGridDBColumn
          Caption = #51217#49549' IP'
          DataBinding.FieldName = 'AccessIP'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
      end
      object cxGridLv_List: TcxGridLevel
        GridView = cxGridDBTv_List
      end
    end
  end
  object DS_Access: TDataSource
    DataSet = FDQuery_Access
    Left = 1144
    Top = 496
  end
  object DS_User: TDataSource
    DataSet = FDQuery_User
    Left = 1144
    Top = 440
  end
  object FDQuery_Access: TUniQuery
    ObjectView = True
    Left = 1064
    Top = 496
  end
  object FDQuery_User: TUniQuery
    ObjectView = True
    Left = 1064
    Top = 440
  end
end
