program MVCORMBR;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form2},
  Controller.Interfaces in 'Controller.Interfaces.pas',
  Controller.Venda in 'Controller.Venda.pas',
  Controller.Item in 'Controller.Item.pas',
  Model.Venda in 'Model.Venda.pas',
  Model.Item in 'Model.Item.pas',
  Model.Interfaces in 'Model.Interfaces.pas',
  Controller.Observer.Interfaces in 'Controller.Observer.Interfaces.pas',
  Controller.Observer.Item in 'Controller.Observer.Item.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
