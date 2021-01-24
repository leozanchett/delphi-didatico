program RTTIAula3;

uses
  Vcl.Forms,
  frmPrincipalAula3 in 'frmPrincipalAula3.pas' {Form4},
  Pessoa in 'Classes\Pessoa.pas',
  DAO in 'DAO\DAO.pas',
  RttiUteis in 'Classes\RttiUteis.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
