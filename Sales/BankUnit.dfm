inherited BankForm: TBankForm
  Caption = #51008#54665#44288#47532
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
  object cxGBoxRight: TcxGroupBox
    Left = 0
    Top = 35
    Align = alClient
    PanelStyle.Active = True
    Style.Edges = [bLeft]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 607
    Width = 1258
    object cxGBox_Info: TcxGroupBox
      Left = 3
      Top = 1
      Align = alTop
      Caption = #44228#51340' '#51221#48372
      Style.Edges = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 0
      Height = 80
      Width = 1254
      object cxLbl8: TcxLabel
        Left = 3
        Top = 21
        AutoSize = False
        Caption = #51008#54665#47749
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
        AnchorX = 53
        AnchorY = 34
      end
      object cxLbl6: TcxLabel
        Left = 269
        Top = 21
        AutoSize = False
        Caption = #44228#51340#48264#54840
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
        AnchorX = 319
        AnchorY = 34
      end
      object cxEdit_AccNo: TcxTextEdit
        Left = 366
        Top = 21
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
        TabOrder = 1
        Height = 25
        Width = 170
      end
      object cxEdit_BName: TcxTextEdit
        Left = 100
        Top = 21
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
        Width = 170
      end
      object cxLabel2: TcxLabel
        Left = 535
        Top = 21
        AutoSize = False
        Caption = #50696#44552#51452#47749
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
        AnchorX = 585
        AnchorY = 34
      end
      object cxEdit_AccName: TcxTextEdit
        Left = 632
        Top = 21
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
        TabOrder = 2
        Height = 25
        Width = 170
      end
      object cxLabel3: TcxLabel
        Left = 269
        Top = 45
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
        AnchorX = 319
        AnchorY = 58
      end
      object cxEdit_Remarks: TcxTextEdit
        Left = 366
        Top = 45
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
        TabOrder = 4
        Height = 25
        Width = 436
      end
      object cxCEdit_BankID: TcxCurrencyEdit
        Left = 216
        Top = 21
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
        TabOrder = 9
        Height = 25
        Width = 54
      end
      object cxLabel1: TcxLabel
        Left = 3
        Top = 45
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
        Width = 100
        AnchorX = 53
        AnchorY = 58
      end
      object cxRGroup_Use: TcxRadioGroup
        Left = 101
        Top = 46
        Alignment = alCenterCenter
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = #49324#50857
            Value = True
          end
          item
            Caption = #49324#50857' '#50504#54632
            Value = False
          end>
        ItemIndex = 0
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Lilian'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Lilian'
        TabOrder = 3
        Height = 23
        Width = 168
      end
    end
    object cxGBoxTransactHistory: TcxGroupBox
      Left = 3
      Top = 81
      Align = alClient
      PanelStyle.Active = True
      Style.Edges = [bLeft]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'LondonLiquidSky'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
      TabOrder = 1
      Height = 525
      Width = 1254
      object cxGrid_Bank: TcxGrid
        Left = 3
        Top = 1
        Width = 1250
        Height = 523
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Lilian'
        object cxGridDBTv_Bank: TcxGridDBTableView
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
          FindPanel.Behavior = fcbSearch
          FindPanel.InfoText = #44160#49353#54624' '#53581#49828#53944#47484' '#51077#47141#54616#49901#49884#50724'...'
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellClick = cxGridDBTv_BankCellClick
          DataController.DataSource = DS_B
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTv_Bank_BankID: TcxGridDBColumn
            DataBinding.FieldName = 'BankID'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object cxGridDBTv_Bank_BName: TcxGridDBColumn
            Caption = #51008#54665#47749
            DataBinding.FieldName = 'BName'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 200
          end
          object cxGridDBTv_Bank_AccNo: TcxGridDBColumn
            Caption = #44228#51340#48264#54840
            DataBinding.FieldName = 'AccNo'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 200
          end
          object cxGridDBTv_Bank_AccName: TcxGridDBColumn
            Caption = #50696#44552#51452#47749
            DataBinding.FieldName = 'AccName'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 150
          end
          object cxGridDBTv_Bank_Remarks: TcxGridDBColumn
            Caption = #48708#44256
            DataBinding.FieldName = 'Remarks'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
            Width = 378
          end
        end
        object cxGridLv_Bank: TcxGridLevel
          GridView = cxGridDBTv_Bank
        end
      end
    end
  end
  object DS_B: TDataSource
    DataSet = USP_bank
    Left = 1088
    Top = 416
  end
  object USP_bank: TUniStoredProc
    Left = 1088
    Top = 352
  end
end
