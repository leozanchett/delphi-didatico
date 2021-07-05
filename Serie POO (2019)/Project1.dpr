program Project1;

uses
  Vcl.Forms,
  ccontroller.interfaces in 'Controller\ccontroller.interfaces.pas',
  ccontroller.pessoa in 'Controller\ccontroller.pessoa.pas',
  model.interfaces in 'Model\model.interfaces.pas',
  model.pessoa.factory in 'Model\model.pessoa.factory.pas',
  model.pessoaFisica in 'Model\model.pessoaFisica.pas',
  model.pessoaJuridica in 'Model\model.pessoaJuridica.pas',
  view.principal in 'View\view.principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
