program RTTIAula4;

uses
  Vcl.Forms,
  frmPrincipalAula4 in 'frmPrincipalAula4.pas' {Form5},
  RttiUteis in 'Classes\RttiUteis.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
