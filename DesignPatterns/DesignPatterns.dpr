program DesignPatterns;

uses
  Vcl.Forms,
  frmPrincipal in 'View\frmPrincipal.pas' {Form2},
  Model.Venda in 'Model\Model.Venda.pas',
  Model.Interfaces in 'Model\Model.Interfaces.pas',
  Model.Venda.ECF in 'Model\Model.Venda.ECF.pas',
  Model.Venda.NFC in 'Model\Model.Venda.NFC.pas',
  Model.Venda.SAT in 'Model\Model.Venda.SAT.pas',
  Model.Venda.Factory in 'Model\Model.Venda.Factory.pas',
  Model.Venda.Strategy in 'Model\Model.Venda.Strategy.pas',
  Controller.Venda in 'Controller\Controller.Venda.pas',
  Controller.Interfaces in 'Controller\Controller.Interfaces.pas',
  Controller.Venda.Factory in 'Controller\Controller.Venda.Factory.pas',
  Controller.Venda.Strategy in 'Controller\Controller.Venda.Strategy.pas',
  Controller.Eventos in 'Controller\Controller.Eventos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
