object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 328
  ClientWidth = 827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object btnCriar: TButton
    Left = 8
    Top = 24
    Width = 121
    Height = 25
    Caption = 'Criar'
    TabOrder = 0
    OnClick = btnCriarClick
  end
  object btnRelacionar: TButton
    Left = 8
    Top = 55
    Width = 121
    Height = 25
    Caption = 'Relacionar'
    TabOrder = 1
    OnClick = btnRelacionarClick
  end
  object btnTotalizador: TButton
    Left = 8
    Top = 86
    Width = 121
    Height = 25
    Caption = 'Criar Totalizador'
    TabOrder = 2
    OnClick = btnTotalizadorClick
  end
  object edtFiltrar: TEdit
    Left = 8
    Top = 117
    Width = 201
    Height = 23
    TabOrder = 3
  end
  object btnFiltrar: TButton
    Left = 215
    Top = 117
    Width = 82
    Height = 23
    Caption = 'Filtrar'
    TabOrder = 4
    OnClick = btnFiltrarClick
  end
  object btnLimparFiltro: TButton
    Left = 304
    Top = 117
    Width = 121
    Height = 23
    Caption = 'Limpar Filtro'
    TabOrder = 5
    OnClick = btnLimparFiltroClick
  end
  object edtLocalizar: TEdit
    Left = 496
    Top = 117
    Width = 201
    Height = 23
    TabOrder = 6
  end
  object btnLocalizar: TButton
    Left = 708
    Top = 117
    Width = 82
    Height = 23
    Caption = 'Localizar'
    TabOrder = 7
    OnClick = btnLocalizarClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 146
    Width = 827
    Height = 182
    Align = alBottom
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEndDock = DBGrid1EndDock
  end
  object edtTotalizador: TLabeledEdit
    Left = 669
    Top = 42
    Width = 121
    Height = 21
    Color = 10929316
    EditLabel.Width = 53
    EditLabel.Height = 13
    EditLabel.Caption = 'Totalizador'
    TabOrder = 9
  end
  object DBNavigator1: TDBNavigator
    Left = 280
    Top = 23
    Width = 240
    Height = 25
    TabOrder = 10
  end
end
