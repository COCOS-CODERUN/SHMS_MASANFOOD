object DataModuleForm: TDataModuleForm
  OnCreate = DataModuleCreate
  Height = 358
  Width = 541
  object IdFTP: TIdFTP
    Host = 'ftp.coderun.co.kr'
    Passive = True
    PassiveUseControlHost = True
    ConnectTimeout = 0
    Password = 'k3025875k^^'
    TransferType = ftBinary
    ListenTimeout = 5000
    Username = 'ksh8608'
    Port = 9781
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 5000
    Left = 104
    Top = 24
  end
  object OpenDialog: TOpenDialog
    Left = 168
    Top = 24
  end
  object SaveDialog: TSaveDialog
    Left = 168
    Top = 88
  end
  object cxEditRepository1: TcxEditRepository
    Left = 413
    Top = 177
    PixelsPerInch = 96
    object cxEditRepository1ComboBoxDivision: TcxEditRepositoryComboBoxItem
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        #47588#52636#52376
        #47588#51077#52376
        #47588#51077#47588#52636#52376
        #44592#53440)
    end
    object cxEditRepository1CurrencyQty: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
    end
    object cxEditRepository1CurrencyWeight: TcxEditRepositoryCurrencyItem
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '0.##;-,0.##'
    end
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 424
    Top = 112
  end
  object FDQueryTemp: TUniQuery
    ObjectView = True
    Left = 32
    Top = 80
  end
  object FDSpTemp: TUniStoredProc
    StoredProcName = 'SHMS_HANILFOOD.dbo.usp_MaterialStockDirectly'
    ObjectView = True
    Left = 32
    Top = 144
  end
  object FDConnection: TUniConnection
    ProviderName = 'SQL Server'
    Port = 18068
    Database = 'SHMS_MASANFOOD'
    Options.DisconnectedMode = True
    Username = 'MASANFOOD'
    Server = '211.57.200.50'
    LoginPrompt = False
    BeforeConnect = FDConnectionBeforeConnect
    Left = 424
    Top = 56
    EncryptedPassword = 'B2FFBEFFACFFBEFFB1FFB9FFB0FFB0FFBBFFA0FFCDFFC8FFCFFFC6FF94FFDEFF'
  end
end
