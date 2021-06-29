program DUp20Mobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  DUp20.Mobile.View.Principal in 'View\DUp20.Mobile.View.Principal.pas' {Form6},
  DUp20.Controller.Interfaces in '..\Controller\DUp20.Controller.Interfaces.pas',
  DUp20.Controller in '..\Controller\DUp20.Controller.pas',
  DUp20.Model.Conexao.Factory in '..\Model\Conexao\DUp20.Model.Conexao.Factory.pas',
  DUp20.Model.Conexao.Interfaces in '..\Model\Conexao\DUp20.Model.Conexao.Interfaces.pas',
  DUp20.Model.Firedac.Conexao in '..\Model\Conexao\DUp20.Model.Firedac.Conexao.pas',
  DUp20.Model.Firedac.Query in '..\Model\Conexao\DUp20.Model.Firedac.Query.pas',
  DUp20.Model.Entidades.Factory in '..\Model\Entidades\DUp20.Model.Entidades.Factory.pas',
  DUp20.Model.Entidades.Interfaces in '..\Model\Entidades\DUp20.Model.Entidades.Interfaces.pas',
  DUp20.Model.Entidades.Produto in '..\Model\Entidades\DUp20.Model.Entidades.Produto.pas',
  DUp20.Model.RestDW.Conexao in '..\Model\Conexao\DUp20.Model.RestDW.Conexao.pas',
  DUp20.Model.RestDW.Query in '..\Model\Conexao\DUp20.Model.RestDW.Query.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
