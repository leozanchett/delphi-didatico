object ServerModelEntidadeProduto: TServerModelEntidadeProduto
  OldCreateOrder = False
  Height = 150
  Width = 215
  object produto: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 56
    Top = 48
  end
end
