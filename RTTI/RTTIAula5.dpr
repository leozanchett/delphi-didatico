program RTTIAula5;

uses
  Vcl.Forms,
  frmPrincipalAula5 in 'frmPrincipalAula5.pas' {Form2},
  Pessoa in 'Classes\Pessoa.pas',
  RttiUteis in 'Classes\RttiUteis.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
