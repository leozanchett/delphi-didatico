object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 525
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 384
    Top = 56
    Width = 73
    Height = 29
    Caption = 'Tempo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 113
    Width = 713
    Height = 193
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 48
    Top = 312
    Width = 713
    Height = 193
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnSelecNormal: TButton
    Left = 48
    Top = 64
    Width = 129
    Height = 25
    Caption = 'Select Normal'
    TabOrder = 2
    OnClick = btnSelecNormalClick
  end
  object btnSelectBatch: TButton
    Left = 672
    Top = 64
    Width = 89
    Height = 25
    Caption = 'Select Batch'
    TabOrder = 3
    OnClick = btnSelectBatchClick
  end
  object FDQuery1: TFDQuery
    Connection = FDACConexao
    SQL.Strings = (
      'select * from usuario;')
    Left = 328
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 504
    Top = 208
  end
  object DataSource2: TDataSource
    DataSet = FDQuery1
    Left = 504
    Top = 376
  end
  object FDACConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Easy\Documents\Clube de programadores Delphi\B' +
        'anco SQLite\banco.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 128
    Top = 224
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 416
    Top = 296
  end
  object FDMemTable2: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 424
    Top = 368
  end
end
