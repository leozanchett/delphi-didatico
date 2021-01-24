object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 32
    Top = 64
    Width = 313
    Height = 21
    TabOrder = 0
    TextHint = 'Nome'
  end
  object Edit2: TEdit
    Left = 32
    Top = 91
    Width = 313
    Height = 21
    TabOrder = 1
    TextHint = 'Idade'
  end
  object btnSalvar: TButton
    Left = 136
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object Edit3: TEdit
    Left = 32
    Top = 118
    Width = 313
    Height = 21
    TabOrder = 3
    TextHint = 'Endere'#231'o'
  end
end
