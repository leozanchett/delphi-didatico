object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 422
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 104
    Top = 24
    Width = 137
    Height = 25
    Caption = 'TODAY'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 224
    Width = 356
    Height = 198
    Align = alBottom
    TabOrder = 1
  end
  object Button2: TButton
    Left = 104
    Top = 72
    Width = 137
    Height = 25
    Caption = 'LEAP YEAR'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 104
    Top = 128
    Width = 137
    Height = 25
    Caption = 'PERSON'
    TabOrder = 3
    OnClick = Button3Click
  end
end
