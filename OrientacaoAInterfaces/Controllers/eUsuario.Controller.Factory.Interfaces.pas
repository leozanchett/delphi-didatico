unit eUsuario.Controller.Factory.Interfaces;

interface

uses
  eUsuario.Model.Conexao.Interfaces;

type
  iFactoryQuery = interface
    ['{6406DFD8-B143-4A5C-B2CE-9AE809ED4BE2}']
    function Query(_AConexao: iConexao): iQuery;
  end;

implementation

end.
