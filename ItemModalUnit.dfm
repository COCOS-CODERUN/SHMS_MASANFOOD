inherited ItemModalForm: TItemModalForm
  Caption = #51228#54408' '#49440#53469#52285
  ClientWidth = 920
  ExplicitWidth = 936
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    ExplicitWidth = 920
    Width = 920
    inherited cxBtn_Save: TcxButton
      ExplicitLeft = 91
    end
    inherited cxBtn_Delete: TcxButton
      ExplicitLeft = 178
    end
    inherited cxBtn_Print: TcxButton
      ExplicitLeft = 265
    end
    inherited cxBtn_Excel: TcxButton
      ExplicitLeft = 439
    end
    inherited cxBtn_Close: TcxButton
      Left = 831
      ExplicitLeft = 831
    end
    inherited cxBtn_Barcode: TcxButton
      ExplicitLeft = 352
    end
    inherited cxBtn_Selection: TcxButton
      Visible = True
      OnClick = cxBtn_SelectionClick
    end
    inherited cxBtn_Cancel: TcxButton
      ExplicitLeft = 526
    end
  end
  object cxGBoxProductList: TcxGroupBox
    Left = 0
    Top = 55
    Align = alClient
    Caption = #50896#51116#47308' '#47785#47197
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 446
    Width = 920
    object cxGrid_Item: TcxGrid
      Left = 3
      Top = 20
      Width = 914
      Height = 417
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.SkinName = 'Lilian'
      object cxGridDBTv_Item: TcxGridDBTableView
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
        FindPanel.Behavior = fcbFilter
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.InfoText = #44160#49353#54624' '#53581#49828#53944#47484' '#51077#47141#54616#49901#49884#50724'...'
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DS_Item
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 8
        object cxGridDBTv_Item_ID: TcxGridDBColumn
          DataBinding.FieldName = 'ItemID'
          DataBinding.IsNullValueType = True
          Visible = False
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
        end
        object cxGridDBTv_Item_Category: TcxGridDBColumn
          Caption = #54408#48264
          DataBinding.FieldName = 'ItemMCode'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Width = 120
        end
        object cxGridDBTv_Item_Name: TcxGridDBColumn
          Caption = #51228#54408#47749
          DataBinding.FieldName = 'ItemName'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Width = 300
        end
        object cxGridDBTv_Item_Standard: TcxGridDBColumn
          Caption = #44508#44201
          DataBinding.FieldName = 'ItemStd'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 100
        end
        object cxGridDBTv_Item_Unit: TcxGridDBColumn
          Caption = #45800#50948
          DataBinding.FieldName = 'ItemUnit'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 50
        end
        object cxGridDBTv_Item_Weight: TcxGridDBColumn
          Caption = #51473#47049
          DataBinding.FieldName = 'ItemWgt'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 100
        end
        object cxGridDBTv_Item_UPOP: TcxGridDBColumn
          Caption = #47588#51077' '#45800#44032
          DataBinding.FieldName = 'ItemUPrice'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
        end
        object cxGridDBTv_Item_UPOS: TcxGridDBColumn
          Caption = #47588#52636' '#45800#44032
          DataBinding.FieldName = 'ItemUPrice'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTv_Item_Remarks: TcxGridDBColumn
          Caption = #48708#44256
          DataBinding.FieldName = 'Remarks'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 300
        end
        object cxGridDBTv_Item_TaxCheck: TcxGridDBColumn
          DataBinding.FieldName = 'ItemTax'
          DataBinding.IsNullValueType = True
          Visible = False
        end
      end
      object cxGridLv_Item: TcxGridLevel
        GridView = cxGridDBTv_Item
      end
    end
  end
  object cxGBoxPurchaseSearch: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = #44160#49353' '#51312#44148
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 55
    Width = 920
    object cxRGroupSearchType: TcxRadioGroup
      Left = 3
      Top = 20
      Align = alLeft
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #51204#52404' '#51312#54924
        end
        item
          Caption = #44144#47000' '#54408#47785' '#51312#54924
        end>
      Properties.OnChange = cxRGroupSearchTypePropertiesChange
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 0
      Height = 26
      Width = 235
    end
    object cxBtn_SearchList: TcxButton
      Left = 524
      Top = 20
      Width = 75
      Height = 26
      Align = alLeft
      Caption = #44160#49353
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000000097048597300000EC200000EC20115284A8000000012744558745469
        746C650046696E643B5365617263683BAD078F620000016A49444154785EA591
        CD4A02611486BD8A46A789F1278568DFD65DB408341A1DB5C69F748CB983C84D
        942EEC565A0981E6FC383FB60964EA0A0A6951B619086C33703A332048F6CDC6
        17DE8FB3799F73CE774200B096FD67A16DD14CC71B660FFD1EAB1B9E7BD19A99
        0EAD6A159014CD56B26941EA7C0C471D1BB2373624C43144AB06B015BD1504F0
        3B27450B326D1BA65F3FB090571F5E4D802D8F80A98C0E8800EC64ED4A8F7EE0
        AF5E3FE6906A18C008EA3D11106F584EF1F60548CA759E8139D1666440DD740A
        5D32806BDB0850C880E89961ED4816BC7DCEFF5D2151D7812E05ACE09D8AAD99
        AEF761D3D9D22762BD7FF9049B25052225B51D7846B632BAC07341ACAA43F67A
        0219342B6818D6BC30448AAA4BF3324F02F862CACADE96A0F79953CDA105348E
        4D17D52E861180531414974208014056981F4A1886302F4398935D8A93791280
        0CE18612951F009597813AEE7F1300C1DAC83D34A97CDFD9E00677CB8075BC3E
        E0171A811CE8F7E0E9CD0000000049454E44AE426082}
      TabOrder = 1
      OnClick = cxBtn_SearchListClick
    end
    object cxRGroup_ItemType: TcxRadioGroup
      Left = 238
      Top = 20
      Align = alLeft
      Alignment = alLeftCenter
      Properties.Columns = 6
      Properties.Items = <
        item
          Caption = #51204#52404
          Value = 'ALL'
        end
        item
          Caption = #51228#54408
          Value = 'BD007'
        end
        item
          Caption = #50896#48512#51116#47308
          Value = 'BD006'
        end>
      Properties.OnChange = cxRGroupSearchTypePropertiesChange
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 2
      Height = 26
      Width = 286
    end
  end
  object DS_Item: TDataSource
    DataSet = FDQuery_Item
    Left = 888
    Top = 336
  end
  object FDQuery_Item: TUniQuery
    ObjectView = True
    Left = 824
    Top = 336
  end
end
