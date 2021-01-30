object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 501
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 176
    Top = 24
    Width = 281
    Height = 153
    ItemHeight = 13
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object ListBox2: TListBox
    Left = 496
    Top = 24
    Width = 281
    Height = 153
    ItemHeight = 13
    TabOrder = 1
  end
  object btnGetTable: TButton
    Left = 8
    Top = 48
    Width = 113
    Height = 25
    Caption = 'Get Table'
    TabOrder = 2
    OnClick = btnGetTableClick
  end
  object DBGrid1: TDBGrid
    Left = 176
    Top = 199
    Width = 601
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 176
    Top = 325
    Width = 601
    Height = 120
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnGetMeta: TButton
    Left = 8
    Top = 104
    Width = 113
    Height = 25
    Caption = 'Get Meta'
    TabOrder = 5
    OnClick = btnGetMetaClick
  end
  object FDMetaInfoQuery1: TFDMetaInfoQuery
    AfterOpen = FDMetaInfoQuery1AfterOpen
    Left = 72
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = FDMetaInfoQuery1
    Left = 96
    Top = 288
  end
  object FDMetaInfoQuery2: TFDMetaInfoQuery
    MetaInfoKind = mkTableFields
    Left = 80
    Top = 424
  end
  object DataSource2: TDataSource
    DataSet = FDMetaInfoQuery2
    Left = 176
    Top = 456
  end
end
