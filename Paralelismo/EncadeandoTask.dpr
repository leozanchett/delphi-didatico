program EncadeandoTask;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipalEncadeamentoTask in 'frmPrincipalEncadeamentoTask.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
