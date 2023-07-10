object Form10: TForm10
  Left = 213
  Top = 165
  Width = 1305
  Height = 673
  Caption = 'MAIN MENU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 1054
    Top = 474
    Width = 181
    Height = 63
    Caption = 'LOGOUT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object txt1: TStaticText
    Left = 344
    Top = 40
    Width = 530
    Height = 52
    Caption = 'Nama : Akhmad Dian Adifajar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object txt2: TStaticText
    Left = 400
    Top = 112
    Width = 337
    Height = 52
    Caption = 'NIM : 2110010147'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object txt3: TStaticText
    Left = 384
    Top = 192
    Width = 408
    Height = 52
    Caption = 'Kelas : 4C reg pagi bjb'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object mm1: TMainMenu
    Left = 1212
    Top = 554
    object SISWA1: TMenuItem
      Caption = 'MENU'
      object LOGIN1: TMenuItem
        Caption = 'SIGN IN'
        OnClick = LOGIN1Click
      end
      object DAFTAR1: TMenuItem
        Caption = 'SIGN UP'
        OnClick = DAFTAR1Click
      end
      object LOGOUT1: TMenuItem
        Caption = 'LOG OUT'
        OnClick = LOGOUT1Click
      end
    end
    object SIS1: TMenuItem
      Caption = 'TAMBAH DATA'
      object SISWA2: TMenuItem
        Caption = 'SISWA'
        OnClick = SISWA2Click
      end
      object ORANGTUA1: TMenuItem
        Caption = 'ORANG TUA'
        OnClick = ORANGTUA1Click
      end
      object HUBUNGAN1: TMenuItem
        Caption = 'HUBUNGAN'
        OnClick = HUBUNGAN1Click
      end
      object WALIKELAS1: TMenuItem
        Caption = 'WALI KELAS'
        OnClick = WALIKELAS1Click
      end
      object KELAS1: TMenuItem
        Caption = 'KELAS'
        OnClick = KELAS1Click
      end
      object POIBN1: TMenuItem
        Caption = 'POIN'
        OnClick = POIBN1Click
      end
      object RIWAYATPOIN1: TMenuItem
        Caption = 'RIWAYAT POIN'
        OnClick = RIWAYATPOIN1Click
      end
      object USER1: TMenuItem
        Caption = 'USER'
        OnClick = USER1Click
      end
    end
    object QUERYMYSQL1: TMenuItem
      Caption = 'QUERY MYSQL'
      object DAFTARQUERY1: TMenuItem
        Caption = 'QUERY'
        OnClick = DAFTARQUERY1Click
      end
      object QUERYJOIN1: TMenuItem
        Caption = 'QUERY JOIN'
        OnClick = QUERYJOIN1Click
      end
    end
  end
end
