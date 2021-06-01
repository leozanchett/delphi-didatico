object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 507
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 88
    Width = 472
    Height = 419
    Align = alBottom
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 16
    Width = 75
    Height = 25
    Caption = 'USER TYPES'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 97
    Top = 16
    Width = 75
    Height = 25
    Caption = 'FOR TO'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 259
    Top = 16
    Width = 75
    Height = 25
    Caption = 'FOR DE CHAR'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'HELLO WORLD'
  end
  object Button4: TButton
    Left = 160
    Top = 57
    Width = 75
    Height = 25
    Caption = 'For de String'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 178
    Top = 16
    Width = 75
    Height = 25
    Caption = 'FOR IN'
    TabOrder = 6
    OnClick = Button5Click
  end
end
