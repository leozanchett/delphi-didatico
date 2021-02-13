program eInterfaceEPOO;

uses
  Vcl.Forms,
  eInterface.View.frmPrincipal in 'eInterface.View.frmPrincipal.pas' {Form2},
  einterface.Model.Interfaces in 'Interface\einterface.Model.Interfaces.pas',
  einterface.Model.PessoaFisica in 'Interface\einterface.Model.PessoaFisica.pas',
  einterface.Model.PessoaJuridica in 'Interface\einterface.Model.PessoaJuridica.pas',
  einterface.Model.Pessoa.Factory in 'Factory\einterface.Model.Pessoa.Factory.pas',
  eInterface.Controller.Interfaces in 'Controller\eInterface.Controller.Interfaces.pas',
  eInterface.Controller.Pessoa in 'Controller\eInterface.Controller.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
