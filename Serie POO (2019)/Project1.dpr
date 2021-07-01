program Project1;

uses
  Vcl.Forms,
  view.principal in 'view.principal.pas' {Form1},
  model.interfaces in 'model.interfaces.pas',
  model.pessoaFisica in 'model.pessoaFisica.pas',
  model.pessoaJuridica in 'model.pessoaJuridica.pas',
  model.pessoa.factory in 'model.pessoa.factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
