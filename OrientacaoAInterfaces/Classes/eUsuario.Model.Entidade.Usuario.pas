unit eUsuario.Model.Entidade.Usuario;

interface

uses
  eUsuario.Model.Conexao.Interfaces, Data.DB;

type
  TModelEntidadeUsuario = class(TInterfacedObject, iEntidade)
  private
    FQuery: iQuery;
  protected
  public
    constructor Create;
    destructor Destroy; override;
    class Function New: iEntidade;
    function Listar(_ADataSource: TDataSource): iEntidade;
    function ListarCampos(_AFields: String; _ADataSource: TDataSource): iEntidade;
  end;

implementation

uses
  eUsuario.Controller.Factory.Query;

{ TModelEntidadeUsuario }

constructor TModelEntidadeUsuario.Create;
begin
   FQuery := TControllerFactoryQuery.New.Query(nil);
end;

destructor TModelEntidadeUsuario.Destroy;
begin

  inherited;
end;

function TModelEntidadeUsuario.Listar(_ADataSource: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT * FROM USUARIO');
  _ADataSource.DataSet := FQuery.DataSet;
end;

function TModelEntidadeUsuario.ListarCampos(_AFields: String;
  _ADataSource: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT '+_AFields+' FROM USUARIO');
  _ADataSource.DataSet := FQuery.DataSet;
end;

class function TModelEntidadeUsuario.New: iEntidade;
begin
  Result := self.Create;
end;

end.
