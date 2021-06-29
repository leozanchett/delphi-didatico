unit DUp20.Model.RestDW.Conexao;

interface

uses
  DUp20.Model.Conexao.Interfaces, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData, uRESTDWPoolerDB, uDWAbout;

Type
  TModelRestDWConexao = class(TInterfacedObject, iModelConexao)
    private
      FConexao : TRESTDWDataBase;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelConexao;
      function Connection : TCustomConnection;
  end;

implementation

uses
  System.SysUtils;

{ TModelRestDWConexao }

function TModelRestDWConexao.Connection: TCustomConnection;
begin
  Result := TCustomConnection(FConexao);
end;

constructor TModelRestDWConexao.Create;
begin
  FConexao := TRESTDWDataBase.Create(nil);
  FConexao.PoolerName := '';
  FConexao.PoolerPort := 8082;
  FConexao.PoolerService := '127.0.0.1';
  FConexao.PoolerName := 'TServerMethodDM.RESTDWPoolerDB1';
  FConexao.Active := True;
end;

destructor TModelRestDWConexao.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

class function TModelRestDWConexao.New: iModelConexao;
begin
  Result := Self.Create;
end;

end.
