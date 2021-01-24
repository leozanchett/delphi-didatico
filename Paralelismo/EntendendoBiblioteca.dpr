program EntendendoBiblioteca;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipalTTaskeITask in 'frmPrincipalTTaskeITask.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
