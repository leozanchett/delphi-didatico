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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 64
    Top = 40
    Width = 505
    Height = 145
    TabOrder = 0
  end
  object Button1: TButton
    Left = 64
    Top = 216
    Width = 75
    Height = 25
    Caption = 'F'#237'sica'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Jur'#237'dica'
    TabOrder = 2
    OnClick = Button2Click
  end
end
