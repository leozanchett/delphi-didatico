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
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 32
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 32
    Top = 56
    Width = 217
    Height = 21
    TabOrder = 1
    Text = 'Leo'
  end
  object Edit2: TEdit
    Left = 32
    Top = 96
    Width = 217
    Height = 21
    TabOrder = 2
    Text = 'Zanchett'
  end
  object Memo1: TMemo
    Left = 288
    Top = 56
    Width = 305
    Height = 193
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 192
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 4
    Text = 'Fisica'
    Items.Strings = (
      'Fisica'
      'Juridica')
  end
end
