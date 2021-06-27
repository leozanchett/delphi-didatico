object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 120
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Set KeyValue'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 72
    Width = 89
    Height = 25
    Caption = 'Set KeyInteger'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 120
    Top = 120
    Width = 75
    Height = 25
    Caption = 'RTTI'
    TabOrder = 2
    OnClick = Button3Click
  end
end
