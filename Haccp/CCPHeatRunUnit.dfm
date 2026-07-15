inherited CCPHeatRunForm: TCCPHeatRunForm
  Caption = #44396#51060#44592#44032#46041#54788#54889
  OnCreate = FormCreate
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    inherited cxBtn_New: TcxButton
      Enabled = False
      Visible = False
    end
    inherited cxBtn_Save: TcxButton
      Enabled = False
      Visible = False
    end
    inherited cxBtn_Delete: TcxButton
      Enabled = False
      Visible = False
    end
    inherited cxBtn_Print: TcxButton
      Enabled = False
    end
    inherited cxBtn_Excel: TcxButton
      Enabled = False
    end
    inherited cxBtn_Barcode: TcxButton
      Enabled = False
    end
    inherited cxBtn_Refresh: TcxButton
      Enabled = False
    end
    inherited cxBtn_Register: TcxButton
      Enabled = False
    end
    inherited cxBtn_Cancel: TcxButton
      Enabled = False
    end
    inherited cxBtn_file: TcxButton
      Enabled = False
    end
  end
  object cxGBox_Srch: TcxGroupBox
    Left = 0
    Top = 35
    Align = alTop
    Caption = #44160#49353' '#51312#44148
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    Height = 60
    Width = 1258
    object cxLbl2: TcxLabel
      Left = 243
      Top = 20
      Align = alLeft
      AutoSize = False
      Caption = #49884#51089#44592#51456
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
      Height = 31
      Width = 90
      AnchorX = 288
      AnchorY = 36
    end
    object cxDEdit_SDate: TcxDateEdit
      Left = 333
      Top = 20
      Align = alLeft
      AutoSize = False
      Properties.DateButtons = [btnClear, btnToday]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 2
      Height = 31
      Width = 120
    end
    object cxDEdit_EDate: TcxDateEdit
      Left = 453
      Top = 20
      Align = alLeft
      AutoSize = False
      Properties.DateButtons = [btnClear, btnToday]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Lilian'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Lilian'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Lilian'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Lilian'
      TabOrder = 4
      Height = 31
      Width = 120
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 20
      Align = alLeft
      AutoSize = False
      Caption = #49444#48708#44396#48516
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
      Height = 31
      Width = 90
      AnchorX = 48
      AnchorY = 36
    end
    object cxLCBox_Fridge: TcxLookupComboBox
      Left = 93
      Top = 20
      Align = alLeft
      Properties.KeyFieldNames = 'GroupIndex'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_Fridge
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
      Width = 150
    end
  end
  object cxGBox_List: TcxGroupBox
    Left = 0
    Top = 95
    Align = alClient
    Caption = #44396#51060' '#50728#46020' '#47785#47197
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 2
    Height = 547
    Width = 1258
    object cxGList: TcxGrid
      Left = 3
      Top = 20
      Width = 1252
      Height = 518
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Lilian'
      object cxGListDBTv_: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_list
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 40
        OnCustomDrawIndicatorCell = CustomDrawIndicatorCell
        object cxGListDBTv_h_date: TcxGridDBColumn
          Caption = #46321#47197#51068#51088
          DataBinding.FieldName = 'h_date'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGListDBTv_h_type: TcxGridDBColumn
          Caption = #46321#47197#44396#48516
          DataBinding.FieldName = 'h_type'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          OnCustomDrawCell = cxGListDBTv_h_typeCustomDrawCell
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGListDBTv_Name: TcxGridDBColumn
          Caption = #49444#48708#44396#48516
          DataBinding.FieldName = 'Name'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGListDBTv_ItemName: TcxGridDBColumn
          Caption = #54408#47785#47749
          DataBinding.FieldName = 'ItemName'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGListDBTv_InsertTime: TcxGridDBColumn
          Caption = #46321#47197#51068#49884
          DataBinding.FieldName = 'InsertTime'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          HeaderAlignmentHorz = taCenter
          Width = 175
        end
        object cxGListDBTv_T1: TcxGridDBColumn
          Caption = #50728#46020'(1'#48264')'
          DataBinding.FieldName = 'T1'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = ',0.####;-,0.####'
          Properties.EditFormat = ',0.####;-,0.####'
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGListDBTv_Writer: TcxGridDBColumn
          Caption = #51089#49457#51088
          DataBinding.FieldName = 'Writer'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGListDBTv_OverYN: TcxGridDBColumn
          DataBinding.FieldName = 'OverYN'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
      end
      object cxGListLv: TcxGridLevel
        GridView = cxGListDBTv_
      end
    end
  end
  object uq_Fridge: TUniQuery
    SQLInsert.Strings = (
      'select 0 as "GroupIndex"'
      '      ,'#39#51204#52404#39' as "Name"'
      'union all'
      'select distinct '
      '       GroupIndex'
      '      ,left(Name, len(Name)-3)'
      'from Fridge')
    Left = 24
    Top = 168
  end
  object ds_Fridge: TDataSource
    DataSet = uq_Fridge
    Left = 80
    Top = 168
  end
  object uq_list: TUniQuery
    SQLInsert.Strings = (
      'select a.h_date'
      '      ,a.h_type '
      '      ,c.Name'
      '      ,b.ItemName '
      '      ,a.InsertTime '
      '      ,a.T1 '
      
        '      ,case a.Writer when '#39'Auto'#39' then '#39#39' else a.Writer end as "W' +
        'riter"'
      '      ,a.OverYN '
      'from ccp_heat_chk a'
      'inner join MasterItem b on a.ItemID = b.ItemID '
      'inner join Fridge c on a.GroupIndex = c.GroupIndex'
      
        'where a.GroupIndex = case :GroupIndex when 0 then a.GroupIndex e' +
        'lse :GroupIndex end'
      
        'and convert(char(10), a.InsertTime, 121) between :SDate and :EDa' +
        'te'
      'order by a.InsertTime desc')
    SQL.Strings = (
      'select a.h_date'
      '      ,a.h_type '
      '      ,c.Name'
      '      ,b.ItemName '
      '      ,a.InsertTime '
      '      ,a.T1 '
      
        '      ,case a.Writer when '#39'Auto'#39' then '#39#39' else a.Writer end as "W' +
        'riter"'
      '      ,a.OverYN '
      'from ccp_heat_chk a'
      'inner join MasterItem b on a.ItemID = b.ItemID '
      
        'inner join (select distinct left(Name, len(Name)-3) as "Name", G' +
        'roupIndex from Fridge) c on a.GroupIndex = c.GroupIndex'
      'where a.GroupIndex = case 2 when 0 then a.GroupIndex else 2 end'
      
        'and convert(char(10), a.InsertTime, 121) between '#39'2025-09-04'#39' an' +
        'd '#39'2025-09-11'#39
      'order by a.InsertTime desc')
    Left = 1136
    Top = 480
  end
  object ds_list: TDataSource
    DataSet = uq_list
    Left = 1192
    Top = 480
  end
end
