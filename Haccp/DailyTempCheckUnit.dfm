object DailyTempCheckForm: TDailyTempCheckForm
  Left = 0
  Top = 0
  Caption = #45257#51109'.'#45257#46041#51068#51648#44288#47532
  ClientHeight = 675
  ClientWidth = 1110
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = #44160#49353#51312#44148
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitWidth = 950
    Height = 60
    Width = 1110
    object cxLabel10: TcxLabel
      Left = 3
      Top = 18
      Align = alLeft
      AutoSize = False
      Caption = #44160#49353#51068#51088
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
      ExplicitLeft = 2
      ExplicitTop = -1
      ExplicitHeight = 59
      Height = 33
      Width = 100
      AnchorX = 53
      AnchorY = 35
    end
    object cxDEdit_date: TcxDateEdit
      Left = 103
      Top = 18
      Align = alLeft
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnToday]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 1
      ExplicitLeft = 102
      ExplicitTop = -1
      ExplicitHeight = 59
      Height = 33
      Width = 150
    end
    object cxBtn_Search: TcxButton
      AlignWithMargins = True
      Left = 254
      Top = 19
      Width = 90
      Height = 31
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
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
      TabOrder = 2
      OnClick = cxBtn_SearchClick
      ExplicitLeft = 253
      ExplicitTop = 0
      ExplicitHeight = 57
    end
  end
  object cxGBox_temp: TcxGroupBox
    Left = 0
    Top = 60
    Align = alClient
    Caption = #50728#46020#54788#54889
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 61
    ExplicitWidth = 950
    ExplicitHeight = 523
    Height = 529
    Width = 1110
    object cxGrid_temp: TcxGrid
      Left = 3
      Top = 18
      Width = 1104
      Height = 502
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.SkinName = 'Lilian'
      ExplicitLeft = 2
      ExplicitTop = -1
      ExplicitWidth = 946
      ExplicitHeight = 522
      object cxGridDBTv_Temp: TcxGridDBTableView
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
        DataController.DataSource = DS_T
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.GroupByHeaderLayout = ghlHorizontal
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
      end
      object cxGridLv_temp: TcxGridLevel
        GridView = cxGridDBTv_Temp
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 589
    Width = 1110
    Height = 86
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 1
    ExplicitTop = 584
    ExplicitWidth = 950
    object cxLabel1: TcxLabel
      Left = 327
      Top = 3
      AutoSize = False
      Caption = #44060#49440#51312#52824' '#48143' '#44208#44284
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
      Height = 30
      Width = 300
      AnchorX = 477
      AnchorY = 18
    end
    object cxMemo_contents: TcxMemo
      Left = 0
      Top = 31
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 1
      Height = 52
      Width = 328
    end
    object cxMemo_result: TcxMemo
      Left = 327
      Top = 31
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 2
      Height = 52
      Width = 300
    end
    object cxLabel2: TcxLabel
      Left = 0
      Top = 3
      AutoSize = False
      Caption = #44060#49440#51312#52824#49324#54637
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
      Height = 30
      Width = 328
      AnchorX = 164
      AnchorY = 18
    end
    object cxLabel3: TcxLabel
      Left = 626
      Top = 3
      AutoSize = False
      Caption = #51312#52824#51088
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
      Height = 30
      Width = 120
      AnchorX = 686
      AnchorY = 18
    end
    object cxMemo_action: TcxMemo
      Left = 626
      Top = 31
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 5
      Height = 52
      Width = 120
    end
    object cxMemo_ok: TcxMemo
      Left = 744
      Top = 31
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 6
      Height = 52
      Width = 120
    end
    object cxLabel4: TcxLabel
      Left = 744
      Top = 3
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
      Height = 30
      Width = 120
      AnchorX = 804
      AnchorY = 18
    end
  end
  object DS_T: TDataSource
    DataSet = UniQuery_Temp
    Left = 640
    Top = 424
  end
  object UniQuery_Temp: TUniQuery
    Left = 632
    Top = 332
  end
  object UniQuery_comm: TUniQuery
    Left = 448
    Top = 260
  end
  object UniQuery_save: TUniQuery
    Left = 336
    Top = 316
  end
end
