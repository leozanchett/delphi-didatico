object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 275
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 24
    Width = 122
    Height = 25
    Caption = 'btnSimpleVar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 136
    Top = 8
    Width = 276
    Height = 259
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button2: TButton
    Left = 8
    Top = 55
    Width = 122
    Height = 25
    Caption = 'btnProcParam'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 86
    Width = 122
    Height = 25
    Caption = 'btnLocalVar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 142
    Width = 122
    Height = 25
    Caption = 'btnStore'
    TabOrder = 4
    OnClick = Button4Click
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 173
    Width = 122
    Height = 25
    Caption = 'btnCall'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
end
