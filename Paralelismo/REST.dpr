program REST;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipalAplicacaoREST in 'frmPrincipalAplicacaoREST.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
