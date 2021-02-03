object DAO: TDAO
  OldCreateOrder = False
  Height = 414
  Width = 654
  object FDACConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Easy\Documents\Clube de programadores Delphi\B' +
        'anco SQLite\banco.db'
      'LockingMode=Normal'
      'MonitorBy=Remote'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 216
    Top = 56
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 110
    Top = 102
  end
  object FDQueryUsuario: TFDQuery
    Connection = FDACConexao
    SQL.Strings = (
      'select * from usuario;')
    Left = 464
    Top = 80
    object FDQueryUsuarioid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryUsuarioNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object FDQueryUsuarioTELEFONE: TWideStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
  end
end
