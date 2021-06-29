unit DUp20.Model.Entidades.Produto;

interface

uses
  DUp20.Model.Entidades.Interfaces, Data.DB, DUp20.Model.Conexao.Interfaces;

Type
  TModelEntidadeProduto = class(TInterfacedObject, iModelEntidade)
    private
      FQuery : iModelQuery;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelEntidade;
      function DataSet ( aValue : TDataSource ) : iModelEntidade; overload;
      function DataSet ( aValue : TDataSet ) : iModelEntidade; overload;
      procedure Open;
  end;

implementation

uses
  DUp20.Model.Conexao.Factory;

{ TModelEntidadeProduto2 }

constructor TModelEntidadeProduto.Create;
begin
  FQuery := TModelConexaoFactory.New.Query;
end;

function TModelEntidadeProduto.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := FQuery.Query;
end;

function TModelEntidadeProduto.DataSet(aValue: TDataSet): iModelEntidade;
begin
  Result := Self;
  aValue.Assign(FQuery.Query);
end;

destructor TModelEntidadeProduto.Destroy;
begin

  inherited;
end;

class function TModelEntidadeProduto.New: iModelEntidade;
begin
  Result := Self.Create;
end;

procedure TModelEntidadeProduto.Open;
begin
  FQuery.Open('produto');
end;

end.
