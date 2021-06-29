unit DUp20.Model.Entidades.Factory;

interface

uses
  DUp20.Model.Entidades.Produto, DUp20.Model.Entidades.Interfaces;

type
    TModelEntidadesFactory = class(TInterfacedObject, iModelEntidadeFactory)
    private
      FProduto : iModelEntidade;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelEntidadeFactory;
      function Produto : iModelEntidade;
    end;

  implementation

{ TModelEntidades }

destructor TModelEntidadesFactory.Destroy;
begin

  inherited;
end;

class function TModelEntidadesFactory.New: iModelEntidadeFactory;
begin
  Result := Self.Create;
end;

function TModelEntidadesFactory.Produto: iModelEntidade;
begin
  if not Assigned(FProduto) then
    FProduto := TModelEntidadeProduto.New;
  Result := FProduto;
end;

constructor TModelEntidadesFactory.Create;
begin
  inherited;
end;

end.
