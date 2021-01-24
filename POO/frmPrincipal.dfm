object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'POO'
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
  object btnInstanciarLapis: TButton
    Left = 56
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Criar Garrafa'
    TabOrder = 0
    OnClick = btnInstanciarLapisClick
  end
  object cmbClientePessoa: TComboBox
    Left = 416
    Top = 48
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = 'Cliente'
    Items.Strings = (
      'Cliente'
      'Fornecedor')
  end
  object btnQuemSouEu: TButton
    Left = 464
    Top = 88
    Width = 97
    Height = 25
    Caption = 'Quem sou eu ?'
    TabOrder = 2
    OnClick = btnQuemSouEuClick
  end
  object cmbAnimal: TComboBox
    Left = 248
    Top = 48
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 3
    Text = 'Cachorro'
    Items.Strings = (
      'Cachorro'
      'Gato')
  end
  object btnAnimal: TButton
    Left = 318
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Animal'
    TabOrder = 4
    OnClick = btnAnimalClick
  end
end
