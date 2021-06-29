object ServerModelEntidadeVCLProduto: TServerModelEntidadeVCLProduto
  Left = 0
  Top = 0
  Caption = 'ServerModelEntidadeProduto'
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
  object FDQuery1: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 56
    Top = 48
  end
end
