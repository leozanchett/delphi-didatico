program FixandoThreads;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipalFixandoThread in 'frmPrincipalFixandoThread.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
