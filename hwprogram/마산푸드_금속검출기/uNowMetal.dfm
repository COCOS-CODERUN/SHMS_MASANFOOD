object NowMetalForm: TNowMetalForm
  Left = 0
  Top = 0
  Caption = #45208#50864#44552#49549#44160#52636#44592
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object MemoLog: TMemo
    Left = 0
    Top = 25
    Width = 635
    Height = 274
    Align = alClient
    Lines.Strings = (
      'MemoLog')
    TabOrder = 0
    ExplicitTop = 41
    ExplicitHeight = 258
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 25
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 217
      Top = 1
      Width = 75
      Height = 23
      Align = alLeft
      Caption = 'Start'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 122
      ExplicitHeight = 39
    end
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alLeft
      AutoSize = False
      Caption = 'IP'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      ExplicitHeight = 39
      Height = 23
      Width = 32
      AnchorX = 17
      AnchorY = 13
    end
    object cxLabel2: TcxLabel
      Left = 129
      Top = 1
      Align = alLeft
      AutoSize = False
      Caption = 'MetalNo'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      ExplicitLeft = 154
      Height = 23
      Width = 63
      AnchorX = 161
      AnchorY = 13
    end
    object Edit_IP: TcxTextEdit
      Left = 33
      Top = 1
      Align = alLeft
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 3
      Text = '192.168.7.111'
      Width = 96
    end
    object Edit_MetalNo: TcxTextEdit
      Left = 192
      Top = 1
      Align = alLeft
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 4
      Text = '1'
      Width = 25
    end
    object Btn_Set: TButton
      Left = 292
      Top = 1
      Width = 75
      Height = 23
      Align = alLeft
      Caption = 'Set'
      TabOrder = 5
      OnClick = Btn_SetClick
      ExplicitLeft = 280
      ExplicitTop = 0
      ExplicitHeight = 25
    end
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = '192.168.0.111'
    Port = 8000
    OnConnecting = ClientSocket1Connecting
    OnConnect = ClientSocket1Connect
    OnDisconnect = ClientSocket1Disconnect
    OnRead = ClientSocket1Read
    OnError = ClientSocket1Error
    Left = 40
    Top = 17
  end
  object TimerConnecting: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = TimerConnectingTimer
    Left = 40
    Top = 88
  end
  object TimerRead: TTimer
    Enabled = False
    Interval = 250
    OnTimer = TimerReadTimer
    Left = 40
    Top = 160
  end
  object TimerEnd: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerEndTimer
    Left = 152
    Top = 88
  end
  object FDQueryTemp: TFDQuery
    Connection = FDConnection
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 1000
    Left = 376
    Top = 24
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=SHMS_MASANFOOD'
      'User_Name=MASANFOOD'
      'Password=MASANFOOD_2709k!'
      'Server=211.57.200.50, 18068'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 264
    Top = 16
  end
  object TimerClose: TTimer
    Enabled = False
    Interval = 250
    Left = 263
    Top = 128
  end
  object TimerReStart: TTimer
    Enabled = False
    OnTimer = TimerReStartTimer
    Left = 200
    Top = 216
  end
  object TimerStart: TTimer
    OnTimer = TimerStartTimer
    Left = 352
    Top = 152
  end
  object TimerReadError: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = TimerReadErrorTimer
    Left = 512
    Top = 88
  end
  object FDQuerySumAdd: TFDQuery
    Connection = FDConnection
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 1000
    Left = 376
    Top = 88
  end
  object TimerServerState: TTimer
    Interval = 10000
    Left = 400
    Top = 231
  end
  object FDQueryServerState: TFDQuery
    Connection = FDConnection
    Left = 520
    Top = 232
  end
end
