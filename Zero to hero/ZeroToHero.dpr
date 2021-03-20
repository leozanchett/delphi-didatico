program ZeroToHero;

uses
  Vcl.Forms,
  view.main in 'src\view\view.main.pas' {frmPrincipal},
  view.styles.colors in 'src\view\styles\view.styles.colors.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := TRUE;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
