inherited PBoxForm: TPBoxForm
  Caption = 'PBox '#44288#47532
  OnCreate = FormCreate
  OnResize = FormResize
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
      OnClick = cxBtnSearchListClick
    end
  end
  object cxGBoxRight: TcxGroupBox
    Left = 0
    Top = 35
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Lilian'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Lilian'
    TabOrder = 1
    Height = 607
    Width = 1258
    object cxGroupBox3: TcxGroupBox
      Left = 511
      Top = 109
      Align = alClient
      PanelStyle.Active = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 0
      Height = 495
      Width = 744
    end
    object cxGBoxPBox: TcxGroupBox
      Left = 3
      Top = 109
      Align = alLeft
      Caption = 'PBox '#51221#48372
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmDefault
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmDefault
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 495
      Width = 500
      object cxGrid_Cus: TcxGrid
        Left = 3
        Top = 57
        Width = 494
        Height = 429
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Lilian'
        object cxGridDBTv_Cus: TcxGridDBTableView
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
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellClick = cxGridDBTv_CusCellClick
          DataController.DataSource = DS_Cus
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          object cxGridDBTv_Cus_CusID: TcxGridDBColumn
            DataBinding.FieldName = 'CustomerID'
            DataBinding.IsNullValueType = True
            Visible = False
          end
          object cxGridDBTv_Cus_Name: TcxGridDBColumn
            Caption = #47588#52636#52376
            DataBinding.FieldName = 'Name'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTv_Cus_Pbox: TcxGridDBColumn
            Caption = 'Pbox '#51092#50668#49688#47049' '
            DataBinding.FieldName = 'Pbox'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
        end
        object cxGridLv_Cus: TcxGridLevel
          GridView = cxGridDBTv_Cus
        end
      end
      object cxGBoxPurchaseSearch: TcxGroupBox
        Left = 3
        Top = 20
        Align = alTop
        PanelStyle.Active = True
        Style.Edges = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 1
        Height = 37
        Width = 494
        object cxLabel17: TcxLabel
          Left = 5
          Top = 5
          AutoSize = False
          Caption = #50629#52404' '#44396#48516
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
          Width = 97
          AnchorX = 54
          AnchorY = 18
        end
        object cxRGroup_Type: TcxRadioGroup
          Left = 102
          Top = 6
          Alignment = alCenterCenter
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = #47588#52636#52376
              Value = 'false'
            end
            item
              Caption = #47588#51077#52376
              Value = True
            end>
          Properties.OnEditValueChanged = cxRGroup_TypePropertiesEditValueChanged
          ItemIndex = 0
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Lilian'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Lilian'
          TabOrder = 1
          Height = 23
          Width = 168
        end
      end
    end
    object cxGBoxInfo: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = 'PBox '#51221#48372
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 2
      Height = 106
      Width = 1252
      object cxEdit_CusName: TcxTextEdit
        Left = 102
        Top = 22
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = True
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
        Width = 170
      end
      object cxEdit_WDT: TcxTextEdit
        Left = 634
        Top = 46
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
        Width = 170
      end
      object cxEdit_Writer: TcxTextEdit
        Left = 634
        Top = 22
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
        TabOrder = 0
        Height = 25
        Width = 170
      end
      object cxEdit_Modifier: TcxTextEdit
        Left = 900
        Top = 22
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
        TabOrder = 1
        Height = 25
        Width = 170
      end
      object cxEdit_MDT: TcxTextEdit
        Left = 900
        Top = 46
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
        Width = 170
      end
      object cxLbl7: TcxLabel
        Left = 803
        Top = 22
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
        AnchorX = 853
        AnchorY = 35
      end
      object cxLbl11: TcxLabel
        Left = 803
        Top = 46
        AutoSize = False
        Caption = #49688#51221#51068#49884
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
        AnchorX = 853
        AnchorY = 59
      end
      object cxLbl8: TcxLabel
        Left = 271
        Top = 46
        AutoSize = False
        Caption = 'PBox '#52636#44256#49688#47049
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
        AnchorX = 321
        AnchorY = 59
      end
      object cxLbl6: TcxLabel
        Left = 271
        Top = 22
        AutoSize = False
        Caption = 'PBox '#51077#44256#49688#47049
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
        AnchorX = 321
        AnchorY = 35
      end
      object cxLbl13: TcxLabel
        Left = 537
        Top = 46
        AutoSize = False
        Caption = #51089#49457#51068#49884
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
        AnchorX = 587
        AnchorY = 59
      end
      object cxLbl14: TcxLabel
        Left = 537
        Top = 22
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
        AnchorX = 587
        AnchorY = 35
      end
      object cxLb14: TcxLabel
        Left = 5
        Top = 22
        AutoSize = False
        Caption = #47588#52636#52376
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
        AnchorY = 35
      end
      object cxLbl3: TcxLabel
        Left = 5
        Top = 46
        AutoSize = False
        Caption = #51077#52636#44256' '#51068#51088
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
        AnchorY = 59
      end
      object cxCEdit_CusID: TcxCurrencyEdit
        Left = 1079
        Top = 22
        AutoSize = False
        Properties.DisplayFormat = ',0.;-,0.'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 5
        Visible = False
        Height = 25
        Width = 50
      end
      object cxDEdit_date: TcxDateEdit
        Left = 102
        Top = 46
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
        TabOrder = 14
        Height = 25
        Width = 170
      end
      object cxCEdit_PBoxID: TcxCurrencyEdit
        Left = 1079
        Top = 48
        AutoSize = False
        Properties.DisplayFormat = ',0.;-,0.'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 15
        Visible = False
        Height = 25
        Width = 50
      end
      object cxCEdit_PBoxIn: TcxCurrencyEdit
        Left = 368
        Top = 22
        AutoSize = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.;-,0.'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 16
        Height = 25
        Width = 170
      end
      object cxCEdit_PBoxOut: TcxCurrencyEdit
        Left = 368
        Top = 46
        AutoSize = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.;-,0.'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 17
        Height = 25
        Width = 170
      end
      object cxEdit_driver: TcxTextEdit
        Left = 102
        Top = 70
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 18
        Height = 25
        Width = 170
      end
      object cxLabel2: TcxLabel
        Left = 5
        Top = 70
        AutoSize = False
        Caption = #48176#49569#44592#49324
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
        AnchorY = 83
      end
      object cxEdit_Remarks: TcxTextEdit
        Left = 368
        Top = 70
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Lilian'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 20
        Height = 25
        Width = 702
      end
      object cxLabel3: TcxLabel
        Left = 271
        Top = 70
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
        AnchorX = 321
        AnchorY = 83
      end
    end
    object cxGBoxDetail: TcxGroupBox
      Left = 511
      Top = 109
      Align = alClient
      Caption = 'PBox '#49345#49464#51221#48372
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmDefault
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmDefault
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 3
      Height = 495
      Width = 744
      object cxGrid_PBox: TcxGrid
        Left = 3
        Top = 78
        Width = 738
        Height = 408
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Lilian'
        object cxGridDBTv_PBox: TcxGridDBTableView
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
          OnCellClick = cxGridDBTv_PBoxCellClick
          DataController.DataSource = DS_PBox
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              Column = cxGridDBTv_PBox_PBoxIn
            end
            item
              Format = ',0'
              Kind = skSum
              Column = cxGridDBTv_PBox_PBoxOut
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridDBTv_PBox_PBoxID: TcxGridDBColumn
            DataBinding.FieldName = 'PBoxID'
            DataBinding.IsNullValueType = True
            Visible = False
          end
          object cxGridDBTv_PBox_CusID: TcxGridDBColumn
            DataBinding.FieldName = 'CustomerID'
            DataBinding.IsNullValueType = True
            Visible = False
          end
          object cxGridDBTv_PBox_Name: TcxGridDBColumn
            Caption = #47588#52636#52376
            DataBinding.FieldName = 'Name'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTv_PBox_PBoxDate: TcxGridDBColumn
            Caption = 'PBox '#51077#52636#44256' '#51068#51088
            DataBinding.FieldName = 'PBoxDate'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object cxGridDBTv_PBox_PBoxOut: TcxGridDBColumn
            Caption = 'PBox'#52636#44256#49688#47049
            DataBinding.FieldName = 'PBoxOut'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridDBTv_PBox_PBoxIn: TcxGridDBColumn
            Caption = 'PBox '#51077#44256#49688#47049
            DataBinding.FieldName = 'PBoxIn'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridDBTv_PBox_Pbox: TcxGridDBColumn
            DataBinding.FieldName = 'Pbox'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.;-,0.'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGridDBTv_PBox_PBoxStock: TcxGridDBColumn
            Caption = 'PBox'#51092#47049
            DataBinding.FieldName = 'PBoxStock'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTv_PBox_Driver: TcxGridDBColumn
            Caption = #48176#49569#44592#49324
            DataBinding.FieldName = 'DeliveryWorker'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object cxGridDBTv_PBox_Remarks: TcxGridDBColumn
            Caption = #48708#44256
            DataBinding.FieldName = 'Remarks'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 300
          end
        end
        object cxGridLv_PBox: TcxGridLevel
          GridView = cxGridDBTv_PBox
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 20
        Align = alTop
        PanelStyle.Active = True
        Style.Edges = []
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'LondonLiquidSky'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
        TabOrder = 1
        Height = 58
        Width = 738
        object cxLabel1: TcxLabel
          Left = 5
          Top = 5
          AutoSize = False
          Caption = #44160#49353' '#51068#51088
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
          Width = 239
          AnchorX = 125
          AnchorY = 18
        end
        object cxDEdit_sdate: TcxDateEdit
          Left = 5
          Top = 29
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
          Width = 120
        end
        object cxDEdit_edate: TcxDateEdit
          Left = 124
          Top = 29
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
          Width = 120
        end
        object cxBtnSearchList: TcxButton
          Left = 244
          Top = 6
          Width = 80
          Height = 47
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
          TabOrder = 3
          Visible = False
          OnClick = cxBtnSearchListClick
        end
      end
    end
    object cxSplitter: TcxSplitter
      Left = 503
      Top = 109
      Width = 8
      Height = 495
      HotZoneClassName = 'TcxMediaPlayer9Style'
    end
  end
  object DS_Cus: TDataSource
    DataSet = UniSP_Cus
    Left = 411
    Top = 488
  end
  object DS_PBox: TDataSource
    DataSet = UniSP_PBox
    Left = 1171
    Top = 496
  end
  object frxReport_Pbox: TfrxReport
    Version = '2022.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44601.727468321760000000
    ReportOptions.LastChange = 44601.727468321760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1000
    Top = 336
    Datasets = <
      item
        DataSet = fds_Pbox
        DataSetName = 'fds_Pbox'
      end
      item
        DataSet = fuds_Pbox
        DataSetName = 'fuds_Pbox'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 15.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236220472440940000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51077#52636#44256' '#51068#51088)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 75.590551180000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #52636#44256#49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 75.590551180000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51077#44256#49688#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Width = 75.590551180000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #51092#47049)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 94.488250000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #48176#49569#44592#49324)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 302.362400000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #48708#44256)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236220472440940000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = fds_Pbox
        DataSetName = 'fds_Pbox'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_Pbox."PBoxDate"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 75.590551180000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_Pbox."PBoxOut"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 75.590551180000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_Pbox."PBoxIn"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Width = 75.590551180000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_Pbox."PBoxStock"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 94.488250000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fds_Pbox."DeliveryWorker"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 302.362400000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' [fds_Pbox."Remarks"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236220470000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            #54633' '#44228)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 75.590551180000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<fds_Pbox."PboxIn">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 75.590551180000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<fds_Pbox."PboxOut">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Width = 75.590551180000000000
          Height = 30.236220470000000000
          DataSet = fuds_Pbox
          DataSetName = 'fuds_Pbox'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '[fuds_Pbox."balance"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 302.362400000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 94.488250000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 86.929170470000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object fuds_Pboxcustomer: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 340.157577950000000000
          Height = 30.236220470000000000
          DataSet = fuds_Pbox
          DataSetName = 'fuds_Pbox'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #47588#52636#52376#47749' :  [fuds_Pbox."customer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fuds_Pboxsdate: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 56.692950000000000000
          Width = 340.157577950000000000
          Height = 30.236220470000000000
          DataSet = fuds_Pbox
          DataSetName = 'fuds_Pbox'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #44592'  '#44036' :  [fuds_Pbox."sdate"] ~ [fuds_Pbox."edate"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PBox '#51077#52636' '#45236#50669)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #51068#50689#51060#54392#46300'(102FOOD)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object fds_Pbox: TfrxDBDataset
    UserName = 'fds_Pbox'
    CloseDataSource = False
    DataSource = DS_PBox
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1032
    Top = 384
  end
  object fuds_Pbox: TfrxUserDataSet
    UserName = 'fuds_Pbox'
    Fields.Strings = (
      'customer'
      'sdate'
      'edate'
      'balance')
    OnGetValue = fuds_PboxGetValue
    Left = 960
    Top = 384
  end
  object UniSP_Cus: TUniStoredProc
    ObjectView = True
    Left = 408
    Top = 432
  end
  object UniSP_PBox: TUniStoredProc
    ObjectView = True
    Left = 1168
    Top = 440
  end
end
