object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 450
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Add'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 144
    Top = 60
    Width = 401
    Height = 238
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button2: TButton
    Left = 8
    Top = 39
    Width = 121
    Height = 25
    Caption = 'TryGetValue'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 70
    Width = 121
    Height = 25
    Caption = 'Remove'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 194
    Width = 121
    Height = 25
    Caption = 'AddOrSetValue'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 101
    Width = 121
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 132
    Width = 121
    Height = 25
    Caption = 'ContainsKey'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 163
    Width = 121
    Height = 25
    Caption = 'ContainsValue'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 8
    Top = 225
    Width = 121
    Height = 25
    Caption = 'Lista Key'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 8
    Top = 256
    Width = 121
    Height = 25
    Caption = 'Lista Value'
    TabOrder = 9
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 8
    Top = 287
    Width = 121
    Height = 25
    Caption = 'Clear'
    TabOrder = 10
    OnClick = Button10Click
  end
  object edtCPF: TLabeledEdit
    Left = 144
    Top = 24
    Width = 121
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = 'CPF'
    TabOrder = 11
  end
  object edtNome: TLabeledEdit
    Left = 271
    Top = 24
    Width = 274
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome'
    TabOrder = 12
  end
  object Button11: TButton
    Left = 8
    Top = 318
    Width = 121
    Height = 25
    Caption = 'OnKeyNotify'
    TabOrder = 13
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 8
    Top = 349
    Width = 121
    Height = 25
    Caption = 'OnValueNotify'
    TabOrder = 14
    OnClick = Button12Click
  end
end
