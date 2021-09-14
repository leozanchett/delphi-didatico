object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 171
  ClientWidth = 360
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
    Left = 8
    Top = 8
    Width = 153
    Height = 25
    Caption = 'Imprime Caracteres'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 39
    Width = 153
    Height = 25
    Caption = 'Single Example'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 182
    Top = 8
    Width = 153
    Height = 25
    Caption = 'ORD'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 182
    Top = 39
    Width = 153
    Height = 25
    Caption = 'Set of'
    TabOrder = 3
    OnClick = Button4Click
  end
end
