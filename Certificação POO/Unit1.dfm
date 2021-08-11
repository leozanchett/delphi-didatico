object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 87
  ClientWidth = 338
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
  object Label1: TLabel
    Left = 207
    Top = 15
    Width = 16
    Height = 23
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSomar: TButton
    Left = 6
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 0
    OnClick = btnSomarClick
  end
  object btnSubtrair: TButton
    Left = 85
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 1
    OnClick = btnSubtrairClick
  end
  object btnDividir: TButton
    Left = 166
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 2
    OnClick = btnDividirClick
  end
  object btnMultiplicar: TButton
    Left = 247
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 3
    OnClick = btnMultiplicarClick
  end
  object edtValor1: TEdit
    Left = 6
    Top = 16
    Width = 91
    Height = 21
    TabOrder = 4
  end
  object edtValor2: TEdit
    Left = 103
    Top = 16
    Width = 90
    Height = 21
    TabOrder = 5
  end
  object edtResultado: TEdit
    Left = 232
    Top = 16
    Width = 90
    Height = 21
    TabOrder = 6
  end
end
