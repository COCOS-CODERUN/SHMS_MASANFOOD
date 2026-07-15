inherited mf_v_result_user: Tmf_v_result_user
  BorderStyle = bsNone
  Caption = 'mf_v_result_user'
  ClientHeight = 400
  ClientWidth = 250
  OnCreate = FormCreate
  ExplicitWidth = 250
  ExplicitHeight = 400
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    Top = 365
    Width = 250
    inherited cxBtn_Close: TcxButton
      Left = 161
    end
    inherited cxBtn_Selection: TcxButton
      Visible = True
      OnClick = cxBtn_SelectionClick
    end
  end
  object cxGBox_User: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = #44160#51613#54016' '#49440#53469
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'LondonLiquidSky'
    Style.TransparentBorder = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'LondonLiquidSky'
    TabOrder = 1
    ExplicitLeft = 10
    ExplicitTop = 10
    ExplicitWidth = 296
    ExplicitHeight = 336
    Height = 365
    Width = 250
    object cxGUser: TcxGrid
      Left = 2
      Top = 19
      Width = 246
      Height = 338
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.ScrollMode = scmSmooth
      LookAndFeel.SkinName = 'Lilian'
      ExplicitLeft = 1
      ExplicitTop = 35
      ExplicitWidth = 391
      ExplicitHeight = 513
      object cxGUserDBTv_: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_user
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGUserDBTv_UserID: TcxGridDBColumn
          DataBinding.FieldName = 'UserID'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGUserDBTv_LoginID: TcxGridDBColumn
          DataBinding.FieldName = 'LoginID'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGUserDBTv_Name: TcxGridDBColumn
          Caption = #51060#47492
          DataBinding.FieldName = 'Name'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGUserDBTv_Position: TcxGridDBColumn
          Caption = #51649#52293
          DataBinding.FieldName = 'Position'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
      end
      object cxGUserLv: TcxGridLevel
        GridView = cxGUserDBTv_
      end
    end
  end
  object ds_user: TDataSource
    DataSet = uq_user
    Left = 88
    Top = 88
  end
  object uq_user: TUniQuery
    SQLInsert.Strings = (
      'select mu.UserID '
      '      ,mu.LoginID '
      '      ,mu.[Name]'
      '      ,mu.[Position]'
      'from MasterUser mu '
      'where mu.LoginID <> '#39'admin'#39)
    Connection = DataModuleForm.FDConnection
    SQL.Strings = (
      'select mu.UserID '
      '      ,mu.LoginID '
      '      ,mu.[Name]'
      '      ,mu.[Position]'
      'from MasterUser mu '
      'where mu.LoginID <> '#39'admin'#39)
    Active = True
    Left = 24
    Top = 88
  end
end
