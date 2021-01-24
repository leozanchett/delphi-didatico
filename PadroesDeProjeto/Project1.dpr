program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipal in '..\Paralelismo\frmPrincipal.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
