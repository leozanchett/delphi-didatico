program OrientacaoObjetos;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form2},
  ClasseGarrafa in 'Classes\ClasseGarrafa.pas',
  ClassePessoa in 'Classes\ClassePessoa.pas',
  ClasseCliente in 'Classes\ClasseCliente.pas',
  ClasseFornecedor in 'Classes\ClasseFornecedor.pas',
  ClasseAnimal in 'Classes\ClasseAnimal.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
