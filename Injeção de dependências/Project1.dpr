program Project1;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  model.interfaces in 'model\model.interfaces.pas',
  model.pessoaFisica in 'model\model.pessoaFisica.pas',
  model.pessoaJuridica in 'model\model.pessoaJuridica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
