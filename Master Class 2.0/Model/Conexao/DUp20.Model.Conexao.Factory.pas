unit DUp20.Model.Conexao.Factory;

interface

uses
  DUp20.Model.Conexao.Interfaces;

Type
  TTypeConnection = (tpFiredac, tpRestDW);

  TModelConexaoFactory = class(TInterfacedObject, iModelConexaoFactory)
    private
      FTypeConnection : TTypeConnection;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelConexaoFactory;
      function Conexao : iModelConexao;
      function Query : iModelQuery;
  end;

implementation

uses
  DUp20.Model.Firedac.Conexao, DUp20.Model.Firedac.Query,
  DUp20.Model.RestDW.Conexao, DUp20.Model.RestDW.Query;

{ TModelConexaoFactory }

function TModelConexaoFactory.Conexao: iModelConexao;
begin
  case FTypeConnection of
    tpFiredac: Result := TModelFiredacConexao.New;
    tpRestDW: Result := TModelRestDWConexao.New;
  end;
end;

constructor TModelConexaoFactory.Create;
begin 
  FTypeConnection := tpRestDW;
end;

destructor TModelConexaoFactory.Destroy;
begin

  inherited;
end;

function TModelConexaoFactory.Query: iModelQuery;
begin
  case FTypeConnection of
    tpFiredac: Result := TModelFiredacQuery.New(Self.Conexao);
    tpRestDW: Result := TModelRestDWQuery.New(Self.Conexao);
  end; 
end;

class function TModelConexaoFactory.New: iModelConexaoFactory;
begin
  Result := Self.Create;
end;

end.
