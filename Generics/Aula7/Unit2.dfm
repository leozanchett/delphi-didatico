object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 291
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 16
    Top = 43
    Width = 75
    Height = 25
    Caption = 'Enqueue'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 143
    Top = 16
    Width = 401
    Height = 238
    TabOrder = 2
  end
  object Button2: TButton
    Left = 16
    Top = 74
    Width = 75
    Height = 25
    Caption = 'Dequeue'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 16
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Peek '
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 16
    Top = 167
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 16
    Top = 198
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 16
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 8
    OnClick = Button7Click
  end
  object btnNotify: TButton
    Left = 16
    Top = 258
    Width = 105
    Height = 25
    Caption = 'Ativar Notifica'#231#245'es'
    TabOrder = 9
    OnClick = btnNotifyClick
  end
end
