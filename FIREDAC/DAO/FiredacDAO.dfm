object DAO: TDAO
  OldCreateOrder = False
  Height = 150
  Width = 342
  object FDACConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Easy\Documents\Clube de programadores Delphi\B' +
        'anco SQLite\banco.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 216
    Top = 56
  end
end
