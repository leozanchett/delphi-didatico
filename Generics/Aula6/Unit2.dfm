object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
  object Edit1: TEdit
    Left = 32
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 32
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 312
    Top = 24
    Width = 273
    Height = 257
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 32
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 172
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 32
    Top = 203
    Width = 75
    Height = 25
    Caption = 'OnNotify'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 32
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 7
    OnClick = Button6Click
  end
end
