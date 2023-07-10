object Form12: TForm12
  Left = 740
  Top = 144
  Width = 732
  Height = 371
  Caption = 'JOIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 12
    Top = 20
    Width = 47
    Height = 18
    Caption = 'RELASI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 108
    Top = 18
    Width = 5
    Height = 18
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 261
    Top = 59
    Width = 100
    Height = 55
    Caption = 'INNER JOIN'
    TabOrder = 0
    OnClick = btn1Click
  end
  object cbb1: TComboBox
    Left = 141
    Top = 16
    Width = 488
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'hubungan'
      'catatan')
  end
  object dbgrd1: TDBGrid
    Left = 10
    Top = 123
    Width = 693
    Height = 186
    DataSource = ds1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'show tables')
    Params = <>
    Left = 677
    Top = 12
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Properties.Strings = (
      'controls_cp=GET_ACP')
    AutoCommit = False
    Connected = True
    HostName = 'localhost'
    Port = 3308
    Database = 'uasvisual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\a UASVISUAL2\dianasu\libmysql.dll'
    Left = 639
    Top = 12
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 683
    Top = 67
  end
end
