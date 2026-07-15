inherited MaterialForm: TMaterialForm
  Caption = #50896'.'#48512#51116#47308#51221#48372#44288#47532
  ClientHeight = 698
  OnCreate = FormCreate
  ExplicitHeight = 737
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
  object cxGBox_Material: TcxGroupBox
    Left = 0
    Top = 35
    Align = alTop
    Caption = #50896#51116#47308' '#51221#48372
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    ExplicitLeft = -3
    Height = 179
    Width = 1258
    object cxEdit_name: TcxTextEdit
      Left = 102
      Top = 22
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.UseLeftAlignmentOnEditing = False
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
      Height = 25
      Width = 368
    end
    object cxEdit_std: TcxTextEdit
      Left = 102
      Top = 70
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
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
      Width = 122
    end
    object cxEdit_Writer: TcxTextEdit
      Left = 566
      Top = 22
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
      TabOrder = 6
      Height = 25
      Width = 170
    end
    object cxEdit_Reamrks: TcxTextEdit
      Left = 320
      Top = 142
      AutoSize = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 5
      Height = 25
      Width = 416
    end
    object cxEdit_WDT: TcxTextEdit
      Left = 566
      Top = 46
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
      TabOrder = 17
      Height = 25
      Width = 170
    end
    object cxCEdit_UPrice: TcxCurrencyEdit
      Left = 102
      Top = 142
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = ',0.##;-,0.##'
      Properties.EditFormat = ',0.##;-,0.##'
      Properties.UseLeftAlignmentOnEditing = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 7
      Height = 25
      Width = 122
    end
    object cxLbl12: TcxLabel
      Left = 223
      Top = 142
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
      AnchorX = 273
      AnchorY = 155
    end
    object cxLbl13: TcxLabel
      Left = 469
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
      AnchorX = 519
      AnchorY = 59
    end
    object cxLbl14: TcxLabel
      Left = 469
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
      AnchorX = 519
      AnchorY = 35
    end
    object cxLbl15: TcxLabel
      Left = 5
      Top = 22
      AutoSize = False
      Caption = #50896'.'#48512#51116#47308#47749
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
    object cxLbl16: TcxLabel
      Left = 5
      Top = 70
      AutoSize = False
      Caption = #44508#44201
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
    object cxLbl17: TcxLabel
      Left = 5
      Top = 142
      AutoSize = False
      Caption = #45800#44032
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
      AnchorY = 155
    end
    object cxLabel10: TcxLabel
      Left = 469
      Top = 94
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
      Height = 49
      Width = 100
      AnchorX = 519
      AnchorY = 119
    end
    object cxLabel2: TcxLabel
      Left = 5
      Top = 94
      AutoSize = False
      Caption = #45800#50948
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
      AnchorY = 107
    end
    object cxLabel3: TcxLabel
      Left = 5
      Top = 118
      AutoSize = False
      Caption = #45800#51473
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
      AnchorY = 131
    end
    object cxCEdit_wgt: TcxCurrencyEdit
      Left = 102
      Top = 118
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DecimalPlaces = 3
      Properties.DisplayFormat = '0.000'
      Properties.EditFormat = '0.000'
      Properties.UseLeftAlignmentOnEditing = False
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
      Width = 122
    end
    object cxImg_Mat: TcxImage
      Left = 787
      Top = 22
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 20
      Height = 145
      Width = 187
    end
    object cxLbl18: TcxLabel
      Left = 735
      Top = 22
      AutoSize = False
      Caption = #51060#48120#51648
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
      Height = 145
      Width = 55
      AnchorX = 763
      AnchorY = 95
    end
    object cxRGroup_Yn: TcxRadioGroup
      Left = 567
      Top = 95
      Alignment = alCenterCenter
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
      TabOrder = 18
      Height = 47
      Width = 168
    end
    object cxLCBBox_Unit: TcxLookupComboBox
      Left = 102
      Top = 94
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownRows = 20
      Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
      Properties.KeyFieldNames = 'BCDID'
      Properties.ListColumns = <
        item
          FieldName = 'BCDNAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_Unit
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
      Width = 122
    end
    object cxLabel8: TcxLabel
      Left = 223
      Top = 46
      AutoSize = False
      Caption = #54408#47785' '#44396#48516
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
      AnchorX = 273
      AnchorY = 59
    end
    object cxLabel5: TcxLabel
      Left = 469
      Top = 70
      AutoSize = False
      Caption = #50896#49328#51648
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
      AnchorX = 519
      AnchorY = 83
    end
    object cxEdit_Origin: TcxTextEdit
      Left = 566
      Top = 70
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.UseLeftAlignmentOnEditing = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 23
      Height = 25
      Width = 170
    end
    object cxLCBBox_Division1: TcxLookupComboBox
      Left = 320
      Top = 70
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DropDownRows = 20
      Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
      Properties.KeyFieldNames = 'BCDID'
      Properties.ListColumns = <
        item
          FieldName = 'BCDNAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_D1
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 24
      Height = 25
      Width = 150
    end
    object cxLabel16: TcxLabel
      Left = 223
      Top = 70
      AutoSize = False
      Caption = #45824#48516#47448
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
      AnchorX = 273
      AnchorY = 83
    end
    object cxLabel17: TcxLabel
      Left = 223
      Top = 118
      AutoSize = False
      Caption = #49548#48516#47448
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
      AnchorX = 273
      AnchorY = 131
    end
    object cxLCBBox_Division3: TcxLookupComboBox
      Left = 320
      Top = 118
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DropDownRows = 20
      Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
      Properties.KeyFieldNames = 'BCDID'
      Properties.ListColumns = <
        item
          FieldName = 'BCDNAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_D3
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 27
      Height = 25
      Width = 150
    end
    object cxLCBBox_Division2: TcxLookupComboBox
      Left = 320
      Top = 94
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DropDownRows = 20
      Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
      Properties.KeyFieldNames = 'BCDID'
      Properties.ListColumns = <
        item
          FieldName = 'BCDNAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_D2
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 28
      Height = 25
      Width = 150
    end
    object cxLabel1: TcxLabel
      Left = 223
      Top = 94
      AutoSize = False
      Caption = #51473#48516#47448
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
      AnchorX = 273
      AnchorY = 107
    end
    object cxRGroup_type: TcxRadioGroup
      Left = 321
      Top = 47
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #50896#51116#47308
          Value = 'BD006'
        end
        item
          Caption = #48512#51116#47308
          Value = 'BD008'
        end>
      ItemIndex = 0
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 30
      Height = 23
      Width = 148
    end
    object cxEdit_ID: TcxTextEdit
      Left = 889
      Top = 142
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
      TabOrder = 31
      Visible = False
      Height = 25
      Width = 62
    end
    object cxLabel4: TcxLabel
      Left = 5
      Top = 46
      AutoSize = False
      Caption = #54408#47785#53076#46300
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
    object cxEdit_MCode: TcxTextEdit
      Left = 102
      Top = 46
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
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
      OnKeyDown = FormKeyDown
      Height = 25
      Width = 122
    end
  end
  object cxGBoxMaterialList: TcxGroupBox
    Left = 0
    Top = 214
    Align = alClient
    Caption = #50896#51116#47308' '#47785#47197
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 484
    Width = 1258
    object cxGrid_mat: TcxGrid
      Left = 3
      Top = 20
      Width = 1252
      Height = 455
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.SkinName = 'Lilian'
      object cxGridDBTv_mat: TcxGridDBTableView
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
        OnCellDblClick = cxGridDBTv_matCellDblClick
        DataController.DataSource = DS_M
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 30
        OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
        object cxGridDBTv_matItemID: TcxGridDBColumn
          DataBinding.FieldName = 'ItemID'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBTv_matItemMCode: TcxGridDBColumn
          Caption = #54408#48264
          DataBinding.FieldName = 'ItemMCode'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTv_matItemName: TcxGridDBColumn
          Caption = #50896#48512#51116#47308#47749
          DataBinding.FieldName = 'ItemName'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 220
        end
        object cxGridDBTv_matItemNameSub: TcxGridDBColumn
          Caption = #48324#52845
          DataBinding.FieldName = 'ItemNameSub'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTv_matItemStd: TcxGridDBColumn
          Caption = #44508#44201
          DataBinding.FieldName = 'ItemStd'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object cxGridDBTv_matItemUnit: TcxGridDBColumn
          Caption = #45800#50948
          DataBinding.FieldName = 'ItemUnit'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object cxGridDBTv_matItemWgt: TcxGridDBColumn
          Caption = #45800#51473
          DataBinding.FieldName = 'ItemWgt'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.000;-,0.000'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTv_matItemUPrice: TcxGridDBColumn
          Caption = #45800#44032
          DataBinding.FieldName = 'ItemUPrice'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTv_matItemType: TcxGridDBColumn
          Caption = #54408#47785#44396#48516
          DataBinding.FieldName = 'TypeName'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTv_matDivision1: TcxGridDBColumn
          Caption = #45824#48516#47448
          DataBinding.FieldName = 'D1'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTv_matDivision2: TcxGridDBColumn
          Caption = #51473#48516#47448
          DataBinding.FieldName = 'D2'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTv_matDivision3: TcxGridDBColumn
          Caption = #49548#48516#47448
          DataBinding.FieldName = 'D3'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTv_matItemOrigin: TcxGridDBColumn
          Caption = #50896#49328#51648
          DataBinding.FieldName = 'ItemOrigin'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTv_matItemYn: TcxGridDBColumn
          Caption = #49324#50857#50668#48512
          DataBinding.FieldName = 'ItemYn'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBTv_matRemarks: TcxGridDBColumn
          Caption = #48708#44256
          DataBinding.FieldName = 'Remarks'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTv_matWriter: TcxGridDBColumn
          Caption = #51089#49457#51088
          DataBinding.FieldName = 'Writer'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBTv_matWDT: TcxGridDBColumn
          Caption = #51089#49457#51068
          DataBinding.FieldName = 'WDT'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGridLv_mat: TcxGridLevel
        GridView = cxGridDBTv_mat
      end
    end
  end
  object DS_M: TDataSource
    DataSet = UniSP_M
    Left = 1168
    Top = 544
  end
  object DS_D1: TDataSource
    DataSet = UniQuery_D1
    Left = 448
    Top = 417
  end
  object DS_Unit: TDataSource
    DataSet = UniQuery_Unit
    Left = 360
    Top = 414
  end
  object DS_D3: TDataSource
    DataSet = UniQuery_D3
    Left = 648
    Top = 416
  end
  object DS_D2: TDataSource
    DataSet = UniQuery_D2
    Left = 552
    Top = 416
  end
  object UniSP_M: TUniStoredProc
    ObjectView = True
    Left = 1168
    Top = 488
  end
  object UniQuery_Unit: TUniQuery
    SQL.Strings = (
      'exec usp_BasicCode @option = '#39'B'#39' ,@BasicCodeID = 23')
    ObjectView = True
    Left = 360
    Top = 366
  end
  object UniQuery_D1: TUniQuery
    ObjectView = True
    Left = 448
    Top = 368
  end
  object UniQuery_D2: TUniQuery
    ObjectView = True
    Left = 552
    Top = 368
  end
  object UniQuery_D3: TUniQuery
    ObjectView = True
    Left = 648
    Top = 368
  end
end
