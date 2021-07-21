object Form1: TForm1
  Width = 640
  Height = 480
  object WebLabel1: TWebLabel
    Left = 96
    Top = 120
    Width = 46
    Height = 13
    Caption = 'Alo World'
    ElementID = 'teste'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object wlblAbrirForm2: TWebLabel
    Left = 256
    Top = 248
    Width = 73
    Height = 13
    Cursor = crHandPoint
    Caption = 'Abrir Form 2'
    Color = clHighlight
    ElementID = 'novapag'
    HeightPercent = 100.000000000000000000
    HTMLType = tH1
    Layout = tlCenter
    Transparent = False
    WidthPercent = 100.000000000000000000
    OnClick = wlblAbrirForm2Click
  end
end
