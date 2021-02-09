unit eUsuario.Model.Conexao.Firedac;

interface

uses
  eUsuario.Model.Conexao.Interfaces, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.DB;

type
  TModelConexaoFiredac = class(TInterfacedObject, iConexao)
  private
    FInstance: TModelConexaoFiredac;
    FConexao: TFDConnection;
    { private declarations }
  protected
    { protected declarations }
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iConexao;
    function Connection : TCustomConnection;
    { public declarations }

  published
    { published declarations }
  end;

implementation

uses
  System.SysUtils;

{ TModelConexaoFiredac }

function TModelConexaoFiredac.Connection: TCustomConnection;
begin
  Result := FConexao;
end;

constructor TModelConexaoFiredac.Create;
begin
   FConexao := TFDConnection.Create(nil);
   FConexao.DriverName := 'SQLite';
   FConexao.Params.DriverID := 'SQLite';
   FConexao.Params.Database := 'C:\Users\Easy\Documents\Clube de programadores Delphi\Banco SQLite\banco.db';
   FConexao.Connected := True;
end;

destructor TModelConexaoFiredac.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;


class function TModelConexaoFiredac.New: iConexao;
begin
   Result := self.Create;
end;

end.
