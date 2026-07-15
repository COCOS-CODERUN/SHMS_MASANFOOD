inherited AuthorityGroupForm: TAuthorityGroupForm
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
  object cxGBoxList: TcxGroupBox
    Left = 0
    Top = 35
    Align = alLeft
    Caption = #44428#54620' '#44536#47353' '#47785#47197
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 607
    Width = 522
    object cxGrid_List: TcxGrid
      Left = 3
      Top = 20
      Width = 516
      Height = 578
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
        DataController.DataSource = DS_Group
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object cxGridDBTv_List_Order: TcxGridDBColumn
          Caption = #49692#48264
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          OnGetDisplayText = cxGridDBTv_List_OrderGetDisplayText
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 50
        end
        object cxGridDBTv_List_GroupID: TcxGridDBColumn
          DataBinding.FieldName = 'AuthorityGroupID'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 100
        end
        object cxGridDBTv_List_Name: TcxGridDBColumn
          Caption = #44428#54620' '#44536#47353#47749
          DataBinding.FieldName = 'AuthorityGroupName'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 250
        end
        object cxGridDBTv_List_Remarks: TcxGridDBColumn
          Caption = #48708#44256
          DataBinding.FieldName = 'Remarks'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 214
        end
        object cxGridDBTv_List_Writer: TcxGridDBColumn
          Caption = #51089#49457#51088
          DataBinding.FieldName = 'Writer'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 100
        end
        object cxGridDBTv_List_WDT: TcxGridDBColumn
          Caption = #51089#49457#51068#49884
          DataBinding.FieldName = 'WDT'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 168
        end
        object cxGridDBTv_List_Modifier: TcxGridDBColumn
          Caption = #49688#51221#51088
          DataBinding.FieldName = 'Modifier'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 100
        end
        object cxGridDBTv_List_MDT: TcxGridDBColumn
          Caption = #49688#51221#51068#49884
          DataBinding.FieldName = 'MDT'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 168
        end
      end
      object cxGridLv_List: TcxGridLevel
        GridView = cxGridDBTv_List
      end
    end
  end
  object cxGBoxUserPower: TcxGroupBox
    Left = 530
    Top = 35
    Align = alClient
    Caption = #44536#47353' '#44428#54620
    Style.BorderStyle = ebsUltraFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 607
    Width = 728
    object cxGrid_Authority: TcxGrid
      Left = 3
      Top = 74
      Width = 722
      Height = 524
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.SkinName = 'Lilian'
      object cxGridTv_GroupPower: TcxGridTableView
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
        OnCellDblClick = cxGridTv_GroupPowerCellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object cxGridTv_GroupPower_WindowID: TcxGridColumn
          Caption = #54868#47732' '#53076#46300
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.CellMerging = True
          Options.Moving = False
          Options.Sorting = False
          Width = 71
        end
        object cxGridTv_GroupPower_WindowMenu: TcxGridColumn
          Caption = #54868#47732' '#47700#45684
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
        object cxGridTv_GroupPower_WindowName: TcxGridColumn
          Caption = #54868#47732#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 250
        end
        object cxGridTv_GroupPower_Read: TcxGridColumn
          Caption = #51069#44592' '#44428#54620
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
          OnHeaderClick = cxGridTv_GroupPower_ReadHeaderClick
        end
        object cxGridTv_GroupPower_Input: TcxGridColumn
          Caption = #51077#47141' '#44428#54620
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.NullStyle = nssUnchecked
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
          OnHeaderClick = cxGridTv_GroupPower_ReadHeaderClick
        end
        object cxGridTv_GroupPower_Alter: TcxGridColumn
          Caption = #49688#51221' '#44428#54620
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.NullStyle = nssUnchecked
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
          OnHeaderClick = cxGridTv_GroupPower_ReadHeaderClick
        end
        object cxGridTv_GroupPower_Delete: TcxGridColumn
          Caption = #49325#51228' '#44428#54620
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.NullStyle = nssUnchecked
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
          OnHeaderClick = cxGridTv_GroupPower_ReadHeaderClick
        end
      end
      object cxGridLv_Authority: TcxGridLevel
        GridView = cxGridTv_GroupPower
      end
    end
    object cxGBox_Info: TcxGroupBox
      Left = 3
      Top = 20
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.BorderStyle = ebsNone
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 54
      Width = 722
      object cxEdit_GroupName: TcxTextEdit
        Left = 102
        Top = 1
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
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
        Width = 200
      end
      object cxEdit_Writer: TcxTextEdit
        Left = 398
        Top = 1
        TabStop = False
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
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
        Width = 200
      end
      object cxEdit_Modifier: TcxTextEdit
        Left = 398
        Top = 25
        TabStop = False
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
        Properties.UseLeftAlignmentOnEditing = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 3
        Height = 25
        Width = 200
      end
      object cxLbl5: TcxLabel
        Left = 301
        Top = 25
        AutoSize = False
        Caption = #49688#51221#51088
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
        AnchorX = 351
        AnchorY = 38
      end
      object cxLbl7: TcxLabel
        Left = 5
        Top = 25
        AutoSize = False
        Caption = #48708#44256
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
        AnchorX = 55
        AnchorY = 38
      end
      object cxLbl14: TcxLabel
        Left = 301
        Top = 1
        AutoSize = False
        Caption = #51089#49457#51088
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
        AnchorX = 351
        AnchorY = 14
      end
      object cxLbl3: TcxLabel
        Left = 5
        Top = 1
        AutoSize = False
        Caption = #44536#47353#47749
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
        AnchorX = 55
        AnchorY = 14
      end
      object cxEdit_Remarks: TcxTextEdit
        Left = 102
        Top = 25
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
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
        Width = 200
      end
      object cxCEdit_GroupID: TcxCurrencyEdit
        Left = 136
        Top = 1
        Properties.DisplayFormat = '0'
        TabOrder = 8
        Visible = False
        Width = 41
      end
    end
  end
  object cxSplitter: TcxSplitter
    Left = 522
    Top = 35
    Width = 8
    Height = 607
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGBoxList
  end
  object DS_Group: TDataSource
    DataSet = FDQuery_Group
    Left = 392
    Top = 496
  end
  object FDSpDetail: TUniStoredProc
    Left = 992
    Top = 488
  end
  object FDQuery_Group: TUniQuery
    Left = 296
    Top = 488
  end
end
