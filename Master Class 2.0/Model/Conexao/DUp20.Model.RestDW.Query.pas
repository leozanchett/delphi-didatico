unit DUp20.Model.RestDW.Query;

interface

uses
  DUp20.Model.Conexao.Interfaces, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB, uDWAbout, Data.DB;

Type
  TModelRestDWQuery = class(TInterfacedObject, iModelQuery)
    private
      FConexao : iModelConexao;
      FQuery : TRESTDWClientSQL;
      procedure ApplyUpdate(Value : TDataSet);
    public
      constructor Create(aValue : iModelConexao);
      destructor Destroy; override;
      class function New(aValue : iModelConexao) : iModelQuery;
      function Query : TDataSet;
      function Open(aSQL : String) : iModelQuery;
      function ExecSQL(aSQL : String) : iModelQuery;
  end;

implementation

uses
  System.SysUtils;

{ TModelRestDWQuery }

procedure TModelRestDWQuery.ApplyUpdate(Value: TDataSet);
var
  vError : String;
begin
  if not FQuery.ApplyUpdates(vError) then
    raise Exception.Create(vError);
end;

constructor TModelRestDWQuery.Create(aValue : iModelConexao);
begin
  FConexao := aValue;
  FQuery := TRESTDWClientSQL.Create(nil);
  FQuery.DataBase := TRESTDWDataBase(FConexao.Connection);
  FQuery.AfterPost := ApplyUpdate;
  FQuery.AfterDelete := ApplyUpdate;
  FQuery.AutoCommitData := False;
  FQuery.AutoRefreshAfterCommit := True;
  FQuery.SetInBlockEvents(false);
end;

destructor TModelRestDWQuery.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

function TModelRestDWQuery.ExecSQL(aSQL: String): iModelQuery;
begin
  Result := Self;
  FQuery.ExecSQL(aSQL);
end;

class function TModelRestDWQuery.New(aValue : iModelConexao) : iModelQuery;
begin
  Result := Self.Create(aValue);
end;

function TModelRestDWQuery.Open(aSQL: String): iModelQuery;
begin
  Result := Self;
  FQuery.UpdateTableName := aSQL;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('SELECT * FROM ' + aSQL);
  FQuery.Open;
end;

function TModelRestDWQuery.Query: TDataSet;
begin
  Result := FQuery;
end;

end.
