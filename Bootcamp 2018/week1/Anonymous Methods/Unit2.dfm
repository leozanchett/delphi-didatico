object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 8
    Top = 240
    Width = 298
    Height = 28
    Progress = 0
  end
  object Button1: TButton
    Left = 32
    Top = 40
    Width = 201
    Height = 25
    Caption = 'Plain Code'
    TabOrder = 0
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 95
    Width = 201
    Height = 25
    Caption = 'Authomatic Thread'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
