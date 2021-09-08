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
  object Edit1: TEdit
    Left = 232
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 232
    Top = 144
    Width = 121
    Height = 25
    Caption = 'SetRedis'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 192
    Width = 121
    Height = 25
    Caption = 'GetRedis'
    TabOrder = 2
    OnClick = Button2Click
  end
end
