unit eUsuario.Model.Conexao.Interfaces;

interface

uses
  Data.DB;

type
  iConexao = interface
    ['{BDC57AF7-CC33-4390-A0B4-E7597112E2A2}']
    function Connection : TCustomConnection;
  end;

  iQuery = interface
    ['{93C09FB4-26F3-4E30-9780-F0B98CFD6EBB}']
    function SQL(_ASQL: String): iQuery;
    function DataSet: TDataSet;
  end;

  iEntidade = interface
    ['{7769DA56-F5C5-4251-A4C7-D4C90BDB066F}']
    function Listar(_ADataSource : TDataSource): iEntidade;
    function ListarCampos(_AFields: String; _ADataSource: TDataSource): iEntidade;
  end;


implementation

end.
