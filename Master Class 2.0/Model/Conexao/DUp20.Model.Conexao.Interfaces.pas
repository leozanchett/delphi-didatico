unit DUp20.Model.Conexao.Interfaces;

interface

uses
  Data.DB;

type
  iModelQuery = interface;

  iModelConexao = interface
    ['{DFEF8A11-246E-4D60-ABD2-50867699AA3E}']
    function Connection : TCustomConnection;
  end;

  iModelConexaoFactory = interface
    ['{D5383A0B-A7DB-42B8-BD59-538E7AF49850}']
    function Conexao : iModelConexao;
    function Query : iModelQuery;
  end;

  iModelQuery = interface
    ['{9D8E55AB-22E0-440D-A77F-820B8B7F6D5C}']
    function Query : TDataSet;
    function Open(aSQL : String) : iModelQuery;
    function ExecSQL(aSQL : String) : iModelQuery;
  end;

implementation

end.
