object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 403
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 319
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 240
    ExplicitTop = 208
    ExplicitWidth = 185
    DesignSize = (
      319
      41)
    object Button1: TButton
      Left = 15
      Top = 10
      Width = 112
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Integer HELPER'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 175
      Top = 10
      Width = 112
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Char HELPER'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 319
    Height = 41
    Margins.Left = 50
    Margins.Right = 50
    Align = alTop
    TabOrder = 1
    ExplicitTop = 8
    ExplicitWidth = 635
    DesignSize = (
      319
      41)
    object Button2: TButton
      Left = 15
      Top = 6
      Width = 112
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Ordinal Int Function'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 175
      Top = 6
      Width = 112
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Ordinal Char Function'
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 82
    Width = 319
    Height = 321
    Align = alClient
    Lines.Strings = (
      '')
    TabOrder = 2
    ExplicitLeft = 168
    ExplicitTop = 216
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
end
