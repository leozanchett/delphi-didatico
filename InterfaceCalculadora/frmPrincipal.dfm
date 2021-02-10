object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Calculadora'
  ClientHeight = 226
  ClientWidth = 362
  Color = clActiveCaption
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object memResultOper: TMemo
    Left = 8
    Top = 16
    Width = 346
    Height = 49
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    CharCase = ecUpperCase
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Lines.Strings = (
      'HELLO WORLD')
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object edtValor1: TEdit
    Left = 176
    Top = 96
    Width = 153
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    OnChange = edtValor1Change
  end
  object edtValor2: TEdit
    Left = 176
    Top = 128
    Width = 153
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    OnChange = edtValor2Change
  end
  object btnCalcular: TButton
    Left = 176
    Top = 172
    Width = 153
    Height = 25
    Caption = 'Calcular'
    Enabled = False
    TabOrder = 3
    OnClick = btnCalcularClick
  end
  object rgOperacao: TRadioGroup
    Left = 8
    Top = 88
    Width = 137
    Height = 109
    Caption = 'Opera'#231#227'o'
    TabOrder = 4
  end
  object radbSoma: TRadioButton
    Left = 24
    Top = 120
    Width = 73
    Height = 17
    Caption = 'Soma'
    TabOrder = 5
    OnClick = radbSomaClick
  end
  object radbDivisao: TRadioButton
    Left = 24
    Top = 143
    Width = 73
    Height = 17
    Caption = 'Divis'#227'o'
    TabOrder = 6
    OnClick = radbDivisaoClick
  end
  object Button1: TButton
    Left = 208
    Top = 203
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
    OnClick = Button1Click
  end
end
