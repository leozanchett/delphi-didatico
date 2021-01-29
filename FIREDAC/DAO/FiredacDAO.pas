unit FiredacDAO;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Moni.Base, FireDAC.Moni.RemoteClient;

type
  TDAO = class(TDataModule)
    FDACConexao: TFDConnection;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
  private
    { Private declarations }
  public
    function ExecutarSqlScalar(const _AValor1: String): String;
    { Public declarations }
  end;

var
  DAO: TDAO;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDAO }

function TDAO.ExecutarSqlScalar(const _AValor1: String): String;
begin
  result := FDACConexao.ExecSQLScalar('SELECT nome FROM USUARIO WHERE ID= :xid',[_AValor1]);
  if result.IsEmpty then
      result := Format('Não houve resultados pelo id %s ',[_AValor1]);
end;

end.
