object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 24
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 176
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 24
    Top = 246
    Width = 273
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 48
    Width = 273
    Height = 21
    TabOrder = 3
    Text = '1'
    Items.Strings = (
      '')
  end
  object Memo1: TMemo
    Left = 320
    Top = 24
    Width = 289
    Height = 257
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
end
