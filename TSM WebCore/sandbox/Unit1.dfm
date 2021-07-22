object Form1: TForm1
  Width = 640
  Height = 480
  OnShow = WebFormShow
  object novapag: TWebLabel
    Left = 160
    Top = 88
    Width = 42
    Height = 13
    Caption = 'novapag'
    ElementID = 'novapag'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
    OnClick = novapagClick
  end
  object wlblAloMundo: TWebLabel
    Left = 77
    Top = 88
    Width = 60
    Height = 13
    Caption = 'ALO MUNDO'
    ElementID = 'teste'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
  end
  object action1: TWebLinkLabel
    Left = 77
    Top = 144
    Width = 35
    Height = 13
    ElementID = 'action1'
    ElementFont = efCSS
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    Caption = 'action1'
  end
  object action2: TWebLinkLabel
    Left = 77
    Top = 176
    Width = 35
    Height = 13
    ElementID = 'action2'
    ElementFont = efCSS
    HeightStyle = ssAuto
    WidthStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    Caption = 'action2'
  end
  object dropdownMenuButton1: TWebButton
    Left = 373
    Top = 200
    Width = 96
    Height = 25
    Caption = 'Drop Dawn'
    ChildOrder = 2
    ElementID = 'dropdownMenuButton1'
    ElementFont = efCSS
    ElementPosition = epIgnore
    HeightStyle = ssAuto
    HeightPercent = 100.000000000000000000
    WidthStyle = ssAuto
    WidthPercent = 100.000000000000000000
  end
  object WebEditAutoComplete1: TWebEditAutoComplete
    Left = 208
    Top = 312
    Width = 281
    Height = 21
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    BorderStyle = bsSingle
    Color = clWhite
    TabStop = True
    TabOrder = 1
    Items.Strings = (
      'facebook'
      'ch sistemas'
      'teste')
    Text = ''
    LookupType = ltAnywhere
  end
  object WebButton1: TWebButton
    Left = 272
    Top = 339
    Width = 96
    Height = 25
    Color = clMenuHighlight
    Caption = 'WebButton1'
    ChildOrder = 6
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = WebButton1Click
  end
  object WebSpinEdit1: TWebSpinEdit
    Left = 456
    Top = 144
    Width = 150
    Height = 22
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    AutoSize = False
    BorderStyle = bsSingle
    ChildOrder = 7
    Color = clWhite
    Increment = 1
    MaxValue = 100
    MinValue = 0
    Role = ''
    Value = 0
  end
  object WebColorPicker1: TWebColorPicker
    Left = 88
    Top = 384
    Width = 100
    Height = 41
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    ChildOrder = 8
    Color = clBlack
    Role = ''
    OnSelect = WebColorPicker1Select
  end
  object wprogressbar: TWebProgressBar
    Left = 32
    Top = 248
    Width = 513
    Height = 24
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    ChildOrder = 9
    Max = 100000
    Value = pbvPercentage
  end
  object WebButton2: TWebButton
    Left = 88
    Top = 280
    Width = 129
    Height = 25
    Caption = 'Animar Progress bar'
    ChildOrder = 10
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = WebButton2Click
  end
  object WebMessageDlg1: TWebMessageDlg
    Left = 312
    Top = 80
    Width = 24
    Height = 24
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    Buttons = []
    CustomButtons = <>
    DialogText.Strings = (
      'Warning'
      'Error'
      'Information'
      'Confirm'
      'Custom'
      'OK'
      'Cancel'
      'Yes'
      'No'
      'Abort'
      'Retry'
      'Ignore'
      'All'
      'Yes to All'
      'No to All'
      'Help'
      'Close')
    Opacity = 0.200000000000000000
  end
  object WebBadge1: TWebBadge
    Left = 286
    Top = 72
    Width = 20
    Height = 20
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    ChildOrder = 12
    Text = '1'
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
  object WebToast1: TWebToast
    Container = 'action2'
    Items = <>
    Position = tpTopLeft
    Left = 536
    Top = 376
  end
end
