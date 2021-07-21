object Form1: TForm1
  Width = 640
  Height = 480
  OnShow = WebFormShow
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
    Width = 59
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
  object wlblAction1: TWebLabel
    Left = 58
    Top = 266
    Width = 36
    Height = 13
    Caption = 'Action1'
    ElementID = 'action1'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object wlblAction2: TWebLabel
    Left = 58
    Top = 285
    Width = 36
    Height = 13
    Caption = 'Action2'
    ElementID = 'action2'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebElementActionList1: TWebElementActionList
    Actions = <
      item
        ID = 'action1'
        Name = 'Acao1'
      end
      item
        ID = 'action2'
        Name = 'Acao2'
      end>
    OnExecute = WebElementActionList1Execute
    Left = 424
    Top = 352
  end
end
