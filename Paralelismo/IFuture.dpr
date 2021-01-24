program IFuture;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipalIFuture in 'frmPrincipalIFuture.pas' {Form3},
  players in 'Classes\players.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
