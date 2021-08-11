program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ClassCalculadora in 'ClassCalculadora.pas',
  Calculadora.Interfaces in 'Calculadora.Interfaces.pas',
  Calculadora.Soma in 'Calculadora.Soma.pas',
  Calculadora.Subtrair in 'Calculadora.Subtrair.pas',
  Calculadora.Multiplicar in 'Calculadora.Multiplicar.pas',
  Calculadora.Dividir in 'Calculadora.Dividir.pas',
  Calculadora.Helpers in 'Calculadora.Helpers.pas',
  Calculadora.Operacoes in 'Calculadora.Operacoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
