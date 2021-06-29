object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 452
  ClientWidth = 642
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
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 41
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 561
    Top = 64
    Width = 34
    Height = 13
    Caption = 'PRECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 104
    Width = 22
    Height = 13
    Caption = 'NCM'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 156
    Top = 104
    Width = 52
    Height = 13
    Caption = 'ALIQUOTA'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 239
    Top = 104
    Width = 12
    Height = 13
    Caption = 'ST'
    FocusControl = DBEdit6
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 160
    Width = 617
    Height = 241
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 389
    Top = 407
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 40
    Width = 59
    Height = 21
    DataField = 'CODIGO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 80
    Width = 529
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 561
    Top = 80
    Width = 68
    Height = 21
    DataField = 'PRECO'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 120
    Width = 134
    Height = 21
    DataField = 'NCM'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 156
    Top = 120
    Width = 77
    Height = 21
    DataField = 'ALIQUOTA'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 239
    Top = 120
    Width = 50
    Height = 21
    DataField = 'ST'
    DataSource = DataSource1
    TabOrder = 7
  end
  object Button1: TButton
    Left = 415
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 536
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 9
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    Left = 224
    Top = 200
  end
end
