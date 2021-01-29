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
  PixelsPerInch = 96
  TextHeight = 13
  object btnCreateTable: TButton
    Left = 16
    Top = 48
    Width = 129
    Height = 25
    Caption = 'CREATE TABLE'
    TabOrder = 0
    OnClick = btnCreateTableClick
  end
  object btnDropTable: TButton
    Left = 16
    Top = 88
    Width = 129
    Height = 25
    Caption = 'DROP TABLE'
    TabOrder = 1
    OnClick = btnDropTableClick
  end
  object Edit1: TEdit
    Left = 176
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 176
    Top = 90
    Width = 201
    Height = 21
    TabOrder = 3
  end
  object btnExecSQLScalar: TButton
    Left = 16
    Top = 127
    Width = 129
    Height = 25
    Caption = 'ExecSQLScalar'
    TabOrder = 4
  end
end
