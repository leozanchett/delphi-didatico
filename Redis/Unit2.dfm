object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 394
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 35
    Width = 113
    Height = 25
    Caption = 'Salvar Username'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 66
    Width = 273
    Height = 263
    ReadOnly = True
    TabOrder = 2
  end
  object Button2: TButton
    Left = 8
    Top = 361
    Width = 273
    Height = 25
    Caption = 'Enviar'
    Enabled = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 335
    Width = 273
    Height = 21
    Enabled = False
    TabOrder = 4
  end
end
