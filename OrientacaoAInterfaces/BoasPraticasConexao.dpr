program BoasPraticasConexao;

uses
  Vcl.Forms,
  eUsuario.View.Principal in 'eUsuario.View.Principal.pas' {Form2},
  eUsuario.Model.Conexao.Firedac in 'Classes\eUsuario.Model.Conexao.Firedac.pas',
  eUsuario.Model.Conexao.Interfaces in 'Classes\eUsuario.Model.Conexao.Interfaces.pas',
  eUsuario.Model.Query.Firedac in 'Classes\eUsuario.Model.Query.Firedac.pas',
  eUsuario.Model.Entidade.Usuario in 'Classes\eUsuario.Model.Entidade.Usuario.pas',
  eUsuario.Controller.Factory.Query in 'Controllers\eUsuario.Controller.Factory.Query.pas',
  eUsuario.Controller.Factory.Interfaces in 'Controllers\eUsuario.Controller.Factory.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
