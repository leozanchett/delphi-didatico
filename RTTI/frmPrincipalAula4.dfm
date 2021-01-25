object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 97
    Width = 511
    Height = 163
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end>
  end
  object edtID: TEdit
    Left = 24
    Top = 16
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object edtNome: TEdit
    Left = 24
    Top = 43
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object edtEndereco: TEdit
    Left = 24
    Top = 70
    Width = 217
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 24
    Top = 266
    Width = 153
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select id, nome, telefone from usuario;')
    Left = 144
    Top = 184
    object FDQuery1id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1NOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object FDQuery1TELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Easy\Documents\Clube de programadores Delphi\B' +
        'anco SQLite\banco.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    OnDataChange = DataSource1DataChange
    Left = 248
    Top = 192
  end
end
