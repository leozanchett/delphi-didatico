object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 222
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 271
    Top = 222
    Width = 121
    Height = 25
    Caption = 'SetRedis'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 253
    Width = 121
    Height = 25
    Caption = 'GetRedis'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 635
    Height = 216
    Align = alTop
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object Button3: TButton
    Left = 135
    Top = 253
    Width = 130
    Height = 25
    Caption = 'Renovar chave de acesso'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 560
    Top = 240
  end
end
