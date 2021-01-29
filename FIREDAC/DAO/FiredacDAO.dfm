object DAO: TDAO
  OldCreateOrder = False
  Height = 223
  Width = 432
  object FDACConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Easy\Documents\Clube de programadores Delphi\B' +
        'anco SQLite\banco.db'
      'LockingMode=Normal'
      'MonitorBy=Remote'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 216
    Top = 56
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 110
    Top = 102
  end
end
