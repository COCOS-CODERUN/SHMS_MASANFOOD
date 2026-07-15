object HACCPHeatStartForm: THACCPHeatStartForm
  Left = 0
  Top = 0
  ClientHeight = 861
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object cxGBox_Approval: TcxGroupBox
    Left = 0
    Top = 0
    Margins.Left = 2
    Margins.Top = 1
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    Caption = #46321#47197#51221#48372
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 0
    Height = 116
    Width = 1100
    object cxLbl1: TcxLabel
      Left = 1
      Top = 31
      AutoSize = False
      Caption = #46972#51064
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -23
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
      Height = 76
      Width = 135
      AnchorX = 69
      AnchorY = 69
    end
    object cxLkCBBox_Facility: TcxLookupComboBox
      Left = 133
      Top = 31
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'Line'
      Properties.ListColumns = <
        item
          FieldName = 'BCDName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_Fridge
      Properties.PopupAlignment = taCenter
      Style.Color = 14811105
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'Segoe UI'
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
      TabOrder = 1
      Height = 76
      Width = 205
    end
    object cxLabel1: TcxLabel
      Left = 338
      Top = 31
      AutoSize = False
      Caption = #54408#47785
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -23
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
      Height = 76
      Width = 136
      AnchorX = 406
      AnchorY = 69
    end
    object cxTEdit_ItemName: TcxTextEdit
      Left = 471
      Top = 31
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -23
      Style.Font.Name = #47569#51008' '#44256#46357
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 3
      Height = 76
      Width = 357
    end
    object cxTEdit_ItemID: TcxTextEdit
      Left = 592
      Top = 50
      TabOrder = 4
      Visible = False
      Width = 82
    end
    object cxButton1: TcxButton
      Tag = 4
      Left = 731
      Top = 32
      Width = 95
      Height = 75
      Caption = #54408#47785' '#47588#52845
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Coffee'
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    object cxBtn_Save: TcxButton
      AlignWithMargins = True
      Left = 936
      Top = 32
      Width = 160
      Height = 74
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = #46321#47197
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxBtn_SaveClick
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 116
    Align = alClient
    Caption = #51089#50629' '#51221#48372
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 351
    Width = 1100
    object cxGrid_List: TcxGrid
      Left = 3
      Top = 31
      Width = 1094
      Height = 311
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.ScrollMode = scmClassic
      LookAndFeel.SkinName = 'Lilian'
      object cxGridTv_List: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCanFocusRecord = cxGridTv_ListCanFocusRecord
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 80
        OptionsView.GroupByBox = False
        OptionsView.IndicatorWidth = 40
        object cxGridTv_List_Delete: TcxGridColumn
          Caption = #51089#50629#52712#49548'('#49325#51228')'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Caption = #52712#49548
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsAutoWidth
          Properties.OnButtonClick = cxGridTv_List_DeletePropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebAlways
          Width = 150
        end
        object cxGridTv_List_RCount: TcxGridColumn
          Caption = #52264#49692
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridTv_List_LineName: TcxGridColumn
          Caption = #46972#51064#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGridTv_List_ItemID: TcxGridColumn
          Visible = False
        end
        object cxGridTv_List_ItemName: TcxGridColumn
          Caption = #54408#47785#47749
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridTv_List_StartTime: TcxGridColumn
          Caption = #46321#47197#49884#44036
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridTv_List_State: TcxGridColumn
          Caption = #49345#53468
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          OnCustomDrawCell = cxGridTv_List_StateCustomDrawCell
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridTv_List_HeatTimeText: TcxGridColumn
          Caption = #51089#50629#51068#51088
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          HeaderAlignmentHorz = taCenter
          Width = 135
        end
        object cxGridTv_List_WorkTime: TcxGridColumn
          Caption = #51089#50629#49884#44036
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 145
        end
        object cxGridTv_List_HeatTime: TcxGridColumn
          Caption = #44221#44284#49884#44036
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridTv_List_Finish: TcxGridColumn
          Caption = #51089#50629#51333#47308
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Caption = #51333#47308
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsAutoWidth
          Properties.OnButtonClick = cxGridTv_List_FinishPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebAlways
          Width = 125
        end
        object cxGridTv_List_CCPHeatID: TcxGridColumn
          Caption = 'CCPHeatID'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object cxGridTv_List_FridgeNo: TcxGridColumn
          Caption = 'FridgeNo'
          Visible = False
        end
      end
      object cxGridLv_List: TcxGridLevel
        GridView = cxGridTv_List
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 467
    Margins.Left = 2
    Margins.Top = 1
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    Caption = #46972#51064#48324' '#50728#46020' '#54788#54889' (10'#52488#47560#45796' '#51088#46041' '#51312#54924#46121#45768#45796')'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 114
    Width = 1100
    object cxGTemp: TcxGrid
      Left = 3
      Top = 31
      Width = 1094
      Height = 74
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.ScrollMode = scmClassic
      LookAndFeel.SkinName = 'Lilian'
      object cxGTempDBTv_: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_temp
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 38
        OptionsView.GroupByBox = False
        object cxGTempDBTv_FridgeNo: TcxGridDBColumn
          Caption = #45236#50857
          DataBinding.FieldName = 'FridgeNo'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object cxGTempDBTv_DBColumn1: TcxGridDBColumn
          DataBinding.FieldName = #49332#44512#44592'1'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
        end
        object cxGTempDBTv_DBColumn2: TcxGridDBColumn
          DataBinding.FieldName = #49332#44512#44592'2'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
        end
        object cxGTempDBTv_DBColumn3: TcxGridDBColumn
          DataBinding.FieldName = #49332#44512#44592'3'
          DataBinding.IsNullValueType = True
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGTempLv: TcxGridLevel
        GridView = cxGTempDBTv_
      end
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 581
    Margins.Left = 2
    Margins.Top = 1
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    Caption = #50728#46020#54788#54889'(1'#48516' '#45800#50948' '#54788#54889#51077#45768#45796')'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 3
    Height = 280
    Width = 1100
    object cxGrid_TempChart: TcxGrid
      Left = 3
      Top = 31
      Width = 1094
      Height = 80
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Green'
      object cxGridDBTv_TempChart: TcxGridDBChartView
        Categories.DataBinding.FieldName = 'WTIME'
        DataController.DataSource = DS_T1
        DiagramLine.Active = True
        DiagramLine.Legend.Position = cppNone
        DiagramLine.AxisCategory.GridLines = False
        DiagramLine.AxisValue.GridLines = False
        DiagramLine.Values.CaptionPosition = ldvcpAbove
        DiagramLine.Values.LineWidth = 2
        DiagramLine.Values.MarkerStyle = cmsCircle
        object cxGridDBTv_TempChartSeries1: TcxGridDBChartSeries
          DataBinding.FieldName = 'T1'
          DisplayText = #50728#46020
          GroupSummaryKind = skCount
        end
      end
      object cxGridLv_TempChart: TcxGridLevel
        GridView = cxGridDBTv_TempChart
      end
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 191
      Width = 1094
      Height = 80
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Green'
      object cxGridDBChartView1: TcxGridDBChartView
        Categories.DataBinding.FieldName = 'WTime'
        DataController.DataSource = DS_T3
        DiagramLine.Active = True
        DiagramLine.Legend.Position = cppNone
        DiagramLine.AxisCategory.GridLines = False
        DiagramLine.AxisValue.GridLines = False
        DiagramLine.Values.CaptionPosition = ldvcpAbove
        DiagramLine.Values.LineWidth = 2
        DiagramLine.Values.MarkerStyle = cmsCircle
        object cxGridDBChartSeries1: TcxGridDBChartSeries
          DataBinding.FieldName = 'Temp'
          DisplayText = #50728#46020
          GroupSummaryKind = skCount
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBChartView1
      end
    end
    object cxGrid2: TcxGrid
      Left = 3
      Top = 111
      Width = 1094
      Height = 80
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Green'
      object cxGridDBChartView2: TcxGridDBChartView
        Categories.DataBinding.FieldName = 'WTime'
        DataController.DataSource = DS_T2
        DiagramLine.Active = True
        DiagramLine.Legend.Position = cppNone
        DiagramLine.AxisCategory.GridLines = False
        DiagramLine.AxisValue.GridLines = False
        DiagramLine.Values.CaptionPosition = ldvcpAbove
        DiagramLine.Values.LineWidth = 2
        DiagramLine.Values.MarkerStyle = cmsCircle
        object cxGridDBChartSeries2: TcxGridDBChartSeries
          DataBinding.FieldName = 'Temp'
          DisplayText = #50728#46020
          GroupSummaryKind = skCount
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBChartView2
      end
    end
  end
  object UniQuery_Fridge: TUniQuery
    Left = 336
    Top = 465
  end
  object DS_Fridge: TDataSource
    DataSet = UniQuery_Fridge
    Left = 536
    Top = 401
  end
  object US_List: TUniStoredProc
    Left = 688
    Top = 421
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 312
    Top = 389
  end
  object uq_temp: TUniQuery
    SQLInsert.Strings = (
      'select *'
      'from ('
      '    select '#39#50728#46020#39' as '#39'FridgeNo'#39
      '          ,a.Name '
      '          ,b.Temp '
      '    from Fridge a'
      
        '    left join TempCheck b on a.FridgeNo = b.FridgeNo and b.Check' +
        'Date between DATEADD(second,-300, getdate()) and getdate()'
      ') tbl_temp'
      'pivot ('
      '    max(Temp) for Name in (['#49332#44512#44592'1], ['#49332#44512#44592'2], ['#49332#44512#44592'3])'
      ') as pvt')
    SQL.Strings = (
      'select *'
      'from ('
      '    select '#39#50728#46020#39' as '#39'FridgeNo'#39
      '          ,a.Name '
      '          ,b.Temp '
      '    from Fridge a'
      
        '    left join TempCheck b on a.GroupIndex = b.FridgeNo and b.Che' +
        'ckDate between DATEADD(second,-300, getdate()) and getdate()'
      ') tbl_temp'
      'pivot ('
      '    max(Temp) for Name in (['#49332#44512#44592'1], ['#49332#44512#44592'2], ['#49332#44512#44592'3])'
      ') as pvt')
    Left = 568
    Top = 505
  end
  object ds_temp: TDataSource
    DataSet = uq_temp
    Left = 624
    Top = 505
  end
  object uq_T1: TUniQuery
    SQLInsert.Strings = (
      'select *'
      'from ('
      '    select '#39#50728#46020#39' as '#39'FridgeNo'#39
      '          ,a.Name '
      '          ,b.Temp '
      '    from Fridge a'
      
        '    left join TempCheck b on a.FridgeNo = b.FridgeNo and b.Check' +
        'Date between DATEADD(second,-300, getdate()) and getdate()'
      ') tbl_temp'
      'pivot ('
      '    max(Temp) for Name in (['#49332#44512#44592'1], ['#49332#44512#44592'2], ['#49332#44512#44592'3])'
      ') as pvt')
    Left = 504
    Top = 633
  end
  object DS_T1: TDataSource
    DataSet = uq_T1
    Left = 560
    Top = 633
  end
  object uq_T2: TUniQuery
    SQLInsert.Strings = (
      'select *'
      'from ('
      '    select '#39#50728#46020#39' as '#39'FridgeNo'#39
      '          ,a.Name '
      '          ,b.Temp '
      '    from Fridge a'
      
        '    left join TempCheck b on a.FridgeNo = b.FridgeNo and b.Check' +
        'Date between DATEADD(second,-300, getdate()) and getdate()'
      ') tbl_temp'
      'pivot ('
      '    max(Temp) for Name in (['#49332#44512#44592'1], ['#49332#44512#44592'2], ['#49332#44512#44592'3])'
      ') as pvt')
    Left = 512
    Top = 713
  end
  object DS_T2: TDataSource
    DataSet = uq_T2
    Left = 568
    Top = 713
  end
  object uq_T3: TUniQuery
    SQLInsert.Strings = (
      'select *'
      'from ('
      '    select '#39#50728#46020#39' as '#39'FridgeNo'#39
      '          ,a.Name '
      '          ,b.Temp '
      '    from Fridge a'
      
        '    left join TempCheck b on a.FridgeNo = b.FridgeNo and b.Check' +
        'Date between DATEADD(second,-300, getdate()) and getdate()'
      ') tbl_temp'
      'pivot ('
      '    max(Temp) for Name in (['#49332#44512#44592'1], ['#49332#44512#44592'2], ['#49332#44512#44592'3])'
      ') as pvt')
    Left = 512
    Top = 801
  end
  object DS_T3: TDataSource
    DataSet = uq_T3
    Left = 568
    Top = 801
  end
  object Timer2: TTimer
    Interval = 60000
    OnTimer = Timer2Timer
    Left = 304
    Top = 325
  end
end
