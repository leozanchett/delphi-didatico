unit DUp20.Model.Entidades.Interfaces;

interface

uses
  Data.DB;

type

  iModelEntidade = interface
    ['{E9CE70F1-8E47-4A50-B98A-BAAD2CF73665}']
    function DataSet ( aValue : TDataSource ) : iModelEntidade; overload;
    function DataSet ( aValue : TDataSet ) : iModelEntidade; overload;
    procedure Open;
  end;

  iModelEntidadeFactory = interface
    ['{1E46893B-48D0-4AAF-95B3-83DAD86E35E5}']
    function Produto : iModelEntidade;
  end;
  
implementation

end.
