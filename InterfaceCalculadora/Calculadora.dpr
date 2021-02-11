program Calculadora;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form2},
  InterfaceCalculadora in 'Models\InterfaceCalculadora.pas',
  ClassSoma in 'Models\ClassSoma.pas',
  ClassDivisao in 'Models\ClassDivisao.pas',
  ClassMultiplica in 'Models\ClassMultiplica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
