program RTTIAula1;

uses
  Vcl.Forms,
  frmPrincipalAula1 in 'frmPrincipalAula1.pas' {Form2},
  Pessoa in 'Classes\Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
