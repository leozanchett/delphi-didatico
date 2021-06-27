object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 422
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 224
    Width = 356
    Height = 198
    Align = alBottom
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 356
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lblDate: TLabel
      Left = 20
      Top = 12
      Width = 121
      Height = 41
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object StackPanel1: TStackPanel
    Left = 0
    Top = 65
    Width = 356
    Height = 159
    Align = alClient
    BevelOuter = bvNone
    ControlCollection = <
      item
        Control = Button1
        HorizontalPositioning = sphpFill
        VerticalPositioning = spvpFill
      end
      item
        Control = Button3
        HorizontalPositioning = sphpFill
        VerticalPositioning = spvpFill
      end
      item
        Control = Button2
        HorizontalPositioning = sphpFill
        VerticalPositioning = spvpFill
      end
      item
        Control = btnAdd
        HorizontalPositioning = sphpFill
        VerticalPositioning = spvpFill
      end
      item
        Control = Button4
        HorizontalPositioning = sphpFill
        VerticalPositioning = spvpFill
      end>
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = 71
    ExplicitWidth = 185
    ExplicitHeight = 200
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 356
      Height = 25
      Align = alClient
      Caption = 'TODAY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 0
      Top = 27
      Width = 356
      Height = 25
      Align = alClient
      Caption = 'PERSON'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 0
      Top = 54
      Width = 356
      Height = 25
      Align = alClient
      Caption = 'LEAP YEAR'
      TabOrder = 2
      OnClick = Button2Click
    end
    object btnAdd: TButton
      Left = 0
      Top = 81
      Width = 356
      Height = 25
      Align = alClient
      Caption = 'ADD 10'
      TabOrder = 3
      OnClick = btnAddClick
    end
    object Button4: TButton
      Left = 0
      Top = 108
      Width = 356
      Height = 25
      Align = alClient
      Caption = 'Decrease 10'
      TabOrder = 4
      OnClick = Button4Click
    end
  end
end
