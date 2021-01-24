program RTTIAula2;

uses
  Vcl.Forms,
  frmPrincipalAula2 in 'frmPrincipalAula2.pas' {Form3},
  RttiUteis in 'Classes\RttiUteis.pas',
  Validacoes in 'Classes\Validacoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
