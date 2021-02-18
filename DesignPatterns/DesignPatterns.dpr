program DesignPatterns;

uses
  Vcl.Forms,
  frmPrincipal in 'View\frmPrincipal.pas' {Form2},
  Model.Venda in 'Model\Model.Venda.pas',
  Model.Interfaces in 'Model\Model.Interfaces.pas',
  Model.Venda.ECF in 'Model\Model.Venda.ECF.pas',
  Model.Venda.NFC in 'Model\Model.Venda.NFC.pas',
  Model.Venda.SAT in 'Model\Model.Venda.SAT.pas',
  Model.Venda.Factory in 'Model\Model.Venda.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
