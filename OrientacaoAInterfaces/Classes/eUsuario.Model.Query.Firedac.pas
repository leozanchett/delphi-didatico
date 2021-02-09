unit eUsuario.Model.Query.Firedac;

interface

{$M+}
uses
  eUsuario.Model.Conexao.Interfaces, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.DB;

type
  TModelQueryFiredac = class(TInterfacedObject, iQuery)
  private
    FInstance: TModelQueryFiredac;
    FParent: iConexao;
    FQuery: TFDQuery;
    { private declarations }
  protected
    { protected declarations }
  public
    constructor Create(_AParent: iConexao);
    destructor Destroy; override;
    class function New(_AParent: iConexao): iQuery;
    function SQL(_ASQL: String): iQuery;
    function DataSet: TDataSet;
    { public declarations }
  published
    { published declarations }
  end;

implementation

uses
  System.SysUtils, eUsuario.Model.Conexao.Firedac;

{ TModelQueryFiredac }

constructor TModelQueryFiredac.Create(_AParent: iConexao);
begin
  FParent := _AParent;
  FQuery := TFDQuery.Create(nil);

  if not Assigned(FParent) then
    FParent := TModelConexaoFiredac.New;

  FQuery.Connection := TFDConnection(FParent.Connection);
end;

function TModelQueryFiredac.DataSet: TDataSet;
begin
  Result := FQuery;
end;

destructor TModelQueryFiredac.Destroy;
begin
  freeandnil(FQuery);
  inherited;
end;


class function TModelQueryFiredac.New(_AParent: iConexao): iQuery;
begin
  Result := self.Create(_AParent);
end;

function TModelQueryFiredac.SQL(_ASQL: String): iQuery;
begin
  Result := Self;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(_ASQL);
  FQuery.Active := True;
end;

end.
