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
    Left = 40
    Top = 72
    Width = 129
    Height = 25
    Caption = 'CREATE TABLE'
    TabOrder = 0
    OnClick = btnCreateTableClick
  end
  object btnDropTable: TButton
    Left = 40
    Top = 120
    Width = 129
    Height = 25
    Caption = 'DROP TABLE'
    TabOrder = 1
    OnClick = btnDropTableClick
  end
end
