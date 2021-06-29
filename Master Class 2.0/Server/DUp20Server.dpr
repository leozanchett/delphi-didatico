program DUp20Server;

uses
  Vcl.Forms,
  DUp20.Server.View.Principal in 'View\DUp20.Server.View.Principal.pas' {Form5},
  DUp20.Server.Model.Conexao in 'Model\Conexao\DUp20.Server.Model.Conexao.pas' {DataModule1: TDataModule},
  DUp20.Server.Model.Entidades.Produtos in 'Model\Entidades\DUp20.Server.Model.Entidades.Produtos.pas' {ServerModelEntidadeProduto: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TServerModelEntidadeProduto, ServerModelEntidadeProduto);
  Application.Run;
end.
