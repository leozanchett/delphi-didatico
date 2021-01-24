object frmPrincipalVisivel: TfrmPrincipalVisivel
  Left = 0
  Top = 0
  Caption = 'MANIPULA'#199#195'O DE ARQUIVOS'
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
  object btnRewrite: TButton
    Left = 24
    Top = 48
    Width = 121
    Height = 25
    Caption = 'REWRITE'
    TabOrder = 0
    OnClick = btnRewriteClick
  end
  object btnAppend: TButton
    Left = 24
    Top = 88
    Width = 121
    Height = 25
    Caption = 'APPEND'
    TabOrder = 1
    OnClick = btnAppendClick
  end
  object btnRead: TButton
    Left = 24
    Top = 128
    Width = 121
    Height = 25
    Caption = 'READ'
    TabOrder = 2
    OnClick = btnReadClick
  end
  object memoLog: TMemo
    Left = 200
    Top = 48
    Width = 369
    Height = 209
    TabOrder = 3
  end
end
