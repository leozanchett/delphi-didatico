object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 471
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StackPanel1: TStackPanel
    Left = 0
    Top = 0
    Width = 390
    Height = 312
    Align = alClient
    ControlCollection = <
      item
        Control = Button2
        HorizontalPositioning = sphpFill
        VerticalPositioning = spvpFill
      end
      item
        Control = Button1
        HorizontalPositioning = sphpFill
        VerticalPositioning = spvpFill
      end>
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 200
    object Button2: TButton
      Left = 1
      Top = 1
      Width = 388
      Height = 40
      Align = alClient
      Caption = 'Use With OBJECT'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 1
      Top = 43
      Width = 388
      Height = 40
      Align = alClient
      Caption = 'Use With INTERFACE'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 312
    Width = 390
    Height = 159
    Align = alBottom
    TabOrder = 1
  end
end
