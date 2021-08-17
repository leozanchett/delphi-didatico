object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 451
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 157
    Top = 0
    Width = 212
    Height = 451
    Align = alRight
    ItemHeight = 13
    TabOrder = 0
    ExplicitLeft = 256
  end
  object btnCriaThread1: TBitBtn
    Left = 24
    Top = 40
    Width = 105
    Height = 25
    Caption = 'Cria Thread 1'
    TabOrder = 1
    OnClick = btnCriaThread1Click
  end
  object btnCriaThread2: TBitBtn
    Left = 24
    Top = 168
    Width = 105
    Height = 25
    Caption = 'Cria Thread 2'
    TabOrder = 2
    OnClick = btnCriaThread2Click
  end
  object btnCriaThread3: TBitBtn
    Left = 24
    Top = 304
    Width = 105
    Height = 25
    Caption = 'Cria Thread 3'
    TabOrder = 3
  end
end
