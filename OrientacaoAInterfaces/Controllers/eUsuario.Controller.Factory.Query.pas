unit eUsuario.Controller.Factory.Query;

interface

uses
  eUsuario.Controller.Factory.Interfaces, eUsuario.Model.Conexao.Interfaces;
type
  TControllerFactoryQuery = class(TInterfacedObject, iFactoryQuery)
  private
    //FInstance: TControllerFactoryQuery;
    { private declarations }
  protected
    { protected declarations }
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iFactoryQuery;
    function Query(_AConexao: iConexao): iQuery;
    { public declarations }

  published
    { published declarations }
  end;

implementation

uses
  eUsuario.Model.Query.Firedac;

{ TControllerFactoryQuery }

constructor TControllerFactoryQuery.Create;
begin

end;

destructor TControllerFactoryQuery.Destroy;
begin

  inherited;
end;


class function TControllerFactoryQuery.New: iFactoryQuery;
begin
  Result := self.Create;
end;

function TControllerFactoryQuery.Query(_AConexao: iConexao): iQuery;
begin
   Result := TModelQueryFiredac.New(_AConexao);
end;


end.
