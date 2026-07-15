inherited ItemSelectModelForm: TItemSelectModelForm
  ClientHeight = 678
  ClientWidth = 755
  OnCreate = FormCreate
  ExplicitWidth = 771
  ExplicitHeight = 717
  TextHeight = 17
  inherited cxGBoxForm: TcxGroupBox
    Top = 643
    ExplicitTop = 643
    ExplicitWidth = 755
    Width = 755
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
      Left = 666
      ExplicitLeft = 666
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
  object cxGrid_Item: TcxGrid
    Left = 0
    Top = 0
    Width = 755
    Height = 643
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    LookAndFeel.ScrollMode = scmClassic
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
      OnCellDblClick = cxGridDBTv_ItemCellDblClick
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
      OptionsView.NoDataToDisplayInfoText = '<'#54364#49884#54624' '#45936#51060#53552' '#50630#51020'>'
      OptionsView.DataRowHeight = 100
      OptionsView.GroupByBox = False
      OptionsView.IndicatorWidth = 8
      object cxGridDBTv_Item_ID: TcxGridDBColumn
        DataBinding.FieldName = 'ItemID'
        DataBinding.IsNullValueType = True
        Visible = False
        Options.Editing = False
        Options.Moving = False
        Options.Sorting = False
      end
      object cxGridDBTv_Item_Name: TcxGridDBColumn
        Caption = #51228#54408#47749
        DataBinding.FieldName = 'ItemName'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Moving = False
        Width = 747
      end
      object cxGridDBTv_Item_Standard: TcxGridDBColumn
        Caption = #44508#44201
        DataBinding.FieldName = 'ItemStd'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 203
      end
      object cxGridDBTv_Item_Unit: TcxGridDBColumn
        Caption = #45800#50948
        DataBinding.FieldName = 'ItemUnit'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 196
      end
      object cxGridDBTv_Item_htemp1: TcxGridDBColumn
        DataBinding.FieldName = 'htemp1'
        DataBinding.IsNullValueType = True
        Visible = False
      end
      object cxGridDBTv_Item_htemp2: TcxGridDBColumn
        DataBinding.FieldName = 'htemp2'
        DataBinding.IsNullValueType = True
        Visible = False
      end
      object cxGridDBTv_Item_htemp3: TcxGridDBColumn
        DataBinding.FieldName = 'htemp3'
        DataBinding.IsNullValueType = True
        Visible = False
      end
      object cxGridDBTv_Item_htemp4: TcxGridDBColumn
        DataBinding.FieldName = 'htemp4'
        DataBinding.IsNullValueType = True
        Visible = False
        Width = 50
      end
      object cxGridDBTv_Item_HSpeed: TcxGridDBColumn
        Caption = 'hspeed'
        DataBinding.FieldName = 'HSpeed'
        DataBinding.IsNullValueType = True
        Visible = False
      end
      object cxGridDBTv_Item_htemp1_1: TcxGridDBColumn
        DataBinding.FieldName = 'htemp1_1'
        DataBinding.IsNullValueType = True
        Visible = False
        Width = 50
      end
      object cxGridDBTv_Item_htemp2_1: TcxGridDBColumn
        DataBinding.FieldName = 'htemp2_1'
        DataBinding.IsNullValueType = True
        Visible = False
        Width = 50
      end
      object cxGridDBTv_Item_Htemp3_1: TcxGridDBColumn
        DataBinding.FieldName = 'htemp3_1'
        DataBinding.IsNullValueType = True
        Visible = False
        Width = 50
      end
      object cxGridDBTv_Item_htemp4_1: TcxGridDBColumn
        DataBinding.FieldName = 'htemp4_1'
        DataBinding.IsNullValueType = True
        Visible = False
        Width = 50
      end
      object cxGridDBTv_Item_HSpeed_1: TcxGridDBColumn
        DataBinding.FieldName = 'HSpeed_1'
        DataBinding.IsNullValueType = True
        Visible = False
        Width = 50
      end
    end
    object cxGridLv_Item: TcxGridLevel
      GridView = cxGridDBTv_Item
    end
  end
  object FDQuery_Item: TUniQuery
    ObjectView = True
    Left = 744
    Top = 248
  end
  object DS_Item: TDataSource
    DataSet = FDQuery_Item
    Left = 808
    Top = 248
  end
end
