object Form2: TForm2
  Width = 640
  Height = 480
  object WebPanel1: TWebPanel
    Left = 32
    Top = 384
    Width = 473
    Height = 60
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    BorderColor = clSilver
    BorderStyle = bsSingle
  end
  object WebListBox1: TWebListBox
    Left = 272
    Top = 72
    Width = 289
    Height = 257
    HeightPercent = 100.000000000000000000
    ItemHeight = 13
    ItemIndex = -1
    WidthPercent = 100.000000000000000000
  end
  object WebButton1: TWebButton
    Left = 32
    Top = 296
    Width = 185
    Height = 33
    Caption = 'Get JSON DataSet via REST'
    ChildOrder = 2
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = WebButton1Click
  end
  object WebHttpRequest1: TWebHttpRequest
    Headers.Strings = (
      'Cache-Control=no-cache, no-store, must-revalidate')
    OnResponse = WebHttpRequest1Response
    Left = 96
    Top = 144
  end
end
