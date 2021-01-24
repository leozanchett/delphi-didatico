object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 620
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
    Left = 7
    Top = 48
    Width = 200
    Height = 225
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 221
    Top = 48
    Width = 200
    Height = 225
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Memo3: TMemo
    Left = 431
    Top = 48
    Width = 200
    Height = 225
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 279
    Width = 611
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Memo4: TMemo
    Left = 16
    Top = 310
    Width = 611
    Height = 89
    Lines.Strings = (
      'Memo4')
    TabOrder = 4
  end
  object Button2: TButton
    Left = 16
    Top = 411
    Width = 611
    Height = 25
    Caption = 'Button2'
    TabOrder = 5
    OnClick = Button2Click
  end
end
