object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 508
  ClientWidth = 863
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
  object gbEsquerdo: TGroupBox
    Left = 32
    Top = 16
    Width = 273
    Height = 473
    TabOrder = 0
    object Edit1: TEdit
      Left = 24
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
  end
  object GroupBox1: TGroupBox
    Left = 344
    Top = 16
    Width = 489
    Height = 473
    Caption = 'GroupBox1'
    TabOrder = 1
    object ListBox1: TListBox
      Left = 8
      Top = 16
      Width = 473
      Height = 449
      ItemHeight = 13
      TabOrder = 0
    end
  end
end
