object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnPonteiros: TButton
    Left = 16
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Ponteiros'
    TabOrder = 0
    OnClick = btnPonteirosClick
  end
  object gpOrdinais: TGroupBox
    Left = 336
    Top = 56
    Width = 249
    Height = 153
    Caption = 'Valores Ordinais'
    TabOrder = 1
    object pnlOrdinais: TPanel
      Left = 21
      Top = 32
      Width = 209
      Height = 97
      TabOrder = 0
      object edtOrdinais: TEdit
        Left = 24
        Top = 16
        Width = 121
        Height = 21
        MaxLength = 1
        TabOrder = 0
      end
      object btnOrdinais: TButton
        Left = 24
        Top = 57
        Width = 89
        Height = 25
        Caption = 'Tipos Ordinais'
        TabOrder = 1
        OnClick = btnOrdinaisClick
      end
    end
  end
  object btnVar: TButton
    Left = 16
    Top = 145
    Width = 75
    Height = 25
    Caption = 'Var'
    TabOrder = 2
    OnClick = btnVarClick
  end
  object btnOut: TButton
    Left = 16
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Out'
    TabOrder = 3
    OnClick = btnOutClick
  end
end
