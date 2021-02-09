object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 433
  ClientWidth = 724
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
  object DBGrid1: TDBGrid
    Left = 56
    Top = 112
    Width = 609
    Height = 209
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 56
    Top = 327
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 425
    Top = 327
    Width = 240
    Height = 25
    TabOrder = 2
  end
  object edtPesquisar: TEdit
    Left = 56
    Top = 80
    Width = 121
    Height = 21
    Hint = 'Pesquisar'
    TabOrder = 3
    TextHint = 'Pesquisar...'
  end
  object btnPesquisar: TButton
    Left = 200
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 4
    OnClick = btnPesquisarClick
  end
  object DataSource1: TDataSource
    Left = 176
    Top = 256
  end
end
