object Form9: TForm9
  Left = 521
  Top = 233
  Width = 528
  Height = 479
  Caption = 'QUERY'
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
    Left = 22
    Top = 22
    Width = 51
    Height = 18
    Caption = 'TABLES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 89
    Top = 22
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
  object lbl2: TLabel
    Left = 23
    Top = 53
    Width = 38
    Height = 18
    Caption = 'DATA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 89
    Top = 53
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
  object lbl7: TLabel
    Left = 23
    Top = 85
    Width = 33
    Height = 18
    Caption = 'CARI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl16: TLabel
    Left = 89
    Top = 86
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
  object lbl9: TLabel
    Left = 23
    Top = 120
    Width = 37
    Height = 18
    Caption = 'PILIH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl18: TLabel
    Left = 89
    Top = 119
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
    Left = 62
    Top = 172
    Width = 81
    Height = 39
    Caption = 'SELECT'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 161
    Top = 170
    Width = 78
    Height = 41
    Caption = 'WHERE'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 249
    Top = 170
    Width = 83
    Height = 38
    Caption = 'LIKE'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 358
    Top = 161
    Width = 71
    Height = 43
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn4Click
  end
  object cbb1: TComboBox
    Left = 124
    Top = 21
    Width = 287
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnChange = cbb1Change
    Items.Strings = (
      'siswa'
      'orang_tua'
      'poin'
      'wali_kelas'
      'hubungan'
      'kelas'
      'riwayat_poin'
      'user')
  end
  object cbb2: TComboBox
    Left = 125
    Top = 53
    Width = 287
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object dbgrd1: TDBGrid
    Left = 20
    Top = 225
    Width = 471
    Height = 193
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cbb3: TComboBox
    Left = 123
    Top = 117
    Width = 289
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'a%'
      '%a')
  end
  object edt1: TEdit
    Left = 124
    Top = 85
    Width = 286
    Height = 21
    TabOrder = 8
  end
  object zqry1: TZQuery
    Connection = con1
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'show tables')
    Params = <>
    Left = 459
    Top = 31
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3308
    Database = 'uasvisual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\a UASVISUAL2\pundian\libmysql.dll'
    Left = 425
    Top = 46
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 458
    Top = 76
  end
end
