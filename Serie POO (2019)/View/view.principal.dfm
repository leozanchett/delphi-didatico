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
  object Button1: TButton
    Left = 64
    Top = 104
    Width = 185
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 176
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 368
    Top = 32
    Width = 241
    Height = 241
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 184
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 4
    Text = 'F'#237'sica'
    Items.Strings = (
      'F'#237'sica'
      'Juridica')
  end
end
