inherited HaccpCCPBasicForm: THaccpCCPBasicForm
  Caption = 'CCP  '#44592#51456' '#49444#51221
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
      OnClick = cxBtn_SearchClick
    end
  end
  object cxLabel3: TcxLabel
    Left = 0
    Top = 35
    Align = alTop
    AutoSize = False
    Caption = #49444#48708#48324' ID'#45716' '#51088#46041' '#48512#50668' '#46121#45768#45796'. ('#45257#51109' : CC, '#44552#49549' : CD , '#44032#50676' : CH, '#49688#48516' : CW)'
    ParentColor = False
    ParentFont = False
    Style.BorderStyle = ebsSingle
    Style.Color = clBtnFace
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = #47569#51008' '#44256#46357
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Lilian'
    Style.TextColor = clBlue
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Lilian'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Lilian'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Lilian'
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Height = 30
    Width = 1258
    AnchorX = 629
    AnchorY = 50
  end
  object cxGBoxInput: TcxGroupBox
    Left = 0
    Top = 65
    Align = alTop
    Caption = 'CCP '#44592#51456' '#49444#51221
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    ExplicitTop = 59
    Height = 80
    Width = 1258
    object cxLbl1: TcxLabel
      Left = 3
      Top = 21
      AutoSize = False
      Caption = 'CCP '#54637#47785
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
    object cxEditName: TcxTextEdit
      Left = 301
      Top = 45
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
    object cxLbl2: TcxLabel
      Left = 202
      Top = 21
      AutoSize = False
      Caption = #49444#48708' ID'
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
    object cxEditID: TcxTextEdit
      Left = 202
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
      TabOrder = 1
      Width = 100
    end
    object cxLbl3: TcxLabel
      Left = 641
      Top = 21
      AutoSize = False
      Caption = #52572#49548#44050
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
      AnchorX = 701
      AnchorY = 34
    end
    object cxLbl4: TcxLabel
      Left = 760
      Top = 21
      AutoSize = False
      Caption = #52572#45824#44050
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
      AnchorX = 820
      AnchorY = 34
    end
    object cxLbl5: TcxLabel
      Left = 879
      Top = 21
      AutoSize = False
      Caption = #45800#50948
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
      Width = 60
      AnchorX = 909
      AnchorY = 34
    end
    object cxEditUnit: TcxTextEdit
      Left = 879
      Top = 45
      Properties.Alignment.Horz = taCenter
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 2
      Text = #176'C'
      Width = 60
    end
    object cxLbl6: TcxLabel
      Left = 1137
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
      Width = 60
      AnchorX = 1167
      AnchorY = 34
    end
    object cxEditListID: TcxTextEdit
      Left = 1137
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
      TabOrder = 3
      Visible = False
      Width = 60
    end
    object cxLbl7: TcxLabel
      Left = 301
      Top = 21
      AutoSize = False
      Caption = #49444#48708#47749
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
      AnchorX = 401
      AnchorY = 34
    end
    object cxRGroupYn: TcxRadioGroup
      Left = 501
      Top = 46
      TabStop = False
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
      Width = 140
    end
    object cxLabel1: TcxLabel
      Left = 500
      Top = 21
      AutoSize = False
      Caption = #49324#50857' '#50668#48512
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
      Width = 142
      AnchorX = 571
      AnchorY = 34
    end
    object cxCEditMin: TcxCurrencyEdit
      Left = 641
      Top = 45
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0.;-,0.;'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 13
      Height = 25
      Width = 120
    end
    object cxCEditMax: TcxCurrencyEdit
      Left = 760
      Top = 45
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0.;-,0.;'
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
      Width = 120
    end
    object cxLabel2: TcxLabel
      Left = 1060
      Top = 21
      AutoSize = False
      Caption = #44288#47532#53076#46300
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
      Width = 60
      AnchorX = 1090
      AnchorY = 34
    end
    object cxCEditCode: TcxCurrencyEdit
      Left = 1060
      Top = 45
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0.;-,0.;'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 16
      Visible = False
      Height = 25
      Width = 60
    end
    object cxLkCBBoxDivision: TcxLookupComboBox
      Left = 3
      Top = 45
      Properties.KeyFieldNames = 'BCDID'
      Properties.ListColumns = <
        item
          FieldName = 'BCDName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_Division
      Properties.OnEditValueChanged = cxLkCBBoxDivisionPropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 17
      Width = 200
    end
    object cxLabel4: TcxLabel
      Left = 938
      Top = 21
      AutoSize = False
      Caption = #49884#54200#53580#49828#53944' '#49884#44036'(s)'
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
      Width = 116
      AnchorX = 996
      AnchorY = 34
    end
    object cxCEdit_Time: TcxCurrencyEdit
      Left = 938
      Top = 45
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
      TabOrder = 19
      Height = 25
      Width = 116
    end
  end
  object cxGrid_ccp: TcxGrid
    Left = 0
    Top = 145
    Width = 1258
    Height = 497
    Align = alClient
    TabOrder = 3
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    ExplicitTop = 137
    object cxGridDBTv_ccp: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = cxGridDBTv_ccpCellDblClick
      DataController.DataSource = DS_CCP
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 40
      OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
      object cxGridDBTv_ccp_ditision: TcxGridDBColumn
        Caption = 'CCP '#54637#47785
        DataBinding.FieldName = 'Division'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 152
      end
      object cxGridDBTv_ccp_id: TcxGridDBColumn
        Caption = #49444#48708' ID'
        DataBinding.FieldName = 'CCPFacilityID'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBTv_ccp_name: TcxGridDBColumn
        Caption = #49444#48708#47749
        DataBinding.FieldName = 'CCPName'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 198
      end
      object cxGridDBTv_ccp_yn: TcxGridDBColumn
        Caption = #49324#50857#50668#48512
        DataBinding.FieldName = 'UseYn'
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
        Width = 141
      end
      object cxGridDBTv_ccp_min: TcxGridDBColumn
        Caption = #52572#49548#44050
        DataBinding.FieldName = 'TempMin'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',0.;-,0.;'
        HeaderAlignmentHorz = taCenter
        Width = 118
      end
      object cxGridDBTv_ccp_max: TcxGridDBColumn
        Caption = #52572#45824#44050
        DataBinding.FieldName = 'TempMax'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',0.;-,0.;'
        HeaderAlignmentHorz = taCenter
        Width = 118
      end
      object cxGridDBTv_ccp_unit: TcxGridDBColumn
        Caption = #45800#50948
        DataBinding.FieldName = 'TempUnit'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBTv_ccp_code: TcxGridDBColumn
        Caption = #44288#47532#53076#46300
        DataBinding.FieldName = 'CCPBasicCode'
        DataBinding.IsNullValueType = True
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object cxGridDBTv_ccp_Time: TcxGridDBColumn
        Caption = #49884#54200#53580#49828#53944' '#49884#44036'(s)'
        DataBinding.FieldName = 'MetalCheckTime'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',0.;-,0.'
        HeaderAlignmentHorz = taCenter
        Width = 126
      end
    end
    object cxGridLv_ccp: TcxGridLevel
      GridView = cxGridDBTv_ccp
    end
  end
  object DS_Division: TDataSource
    DataSet = UniQuery_Division
    Left = 72
    Top = 272
  end
  object DS_CCP: TDataSource
    DataSet = UniQuery_CCP
    Left = 1048
    Top = 560
  end
  object UniQuery_Division: TUniQuery
    Left = 64
    Top = 208
  end
  object UniQuery_CCP: TUniQuery
    Left = 1048
    Top = 504
  end
end
