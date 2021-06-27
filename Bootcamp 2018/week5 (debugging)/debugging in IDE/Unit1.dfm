object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 49
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object lblTotal: TLabel
      Left = 544
      Top = 17
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object edtTotal: TEdit
      Left = 377
      Top = 14
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 152
      Top = 14
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 0
      Top = 14
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 279
      Top = 12
      Width = 75
      Height = 25
      Caption = 'ADD'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 49
    Width = 635
    Height = 250
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 200
    ExplicitTop = 152
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
end
