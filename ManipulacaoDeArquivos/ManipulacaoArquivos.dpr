program ManipulacaoArquivos;

uses
  Vcl.Forms,
  frmPrincipal in 'frmPrincipal.pas' {frmPrincipalVisivel};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipalVisivel, frmPrincipalVisivel);
  Application.Run;
end.
