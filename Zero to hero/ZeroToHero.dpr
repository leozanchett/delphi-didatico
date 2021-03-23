program ZeroToHero;

uses
  Vcl.Forms,
  view.main in 'src\view\view.main.pas' {frmPrincipal},
  view.styles.colors in 'src\view\styles\view.styles.colors.pas',
  view.pages.principal in 'src\view\pages\view.pages.principal.pas' {pgPrincipal},
  view.routers in 'src\view\routers\view.routers.pas',
  view.pages.form.template in 'src\view\pages\view.pages.form.template.pas' {frmTemplate},
  view.pages.usuario in 'src\view\pages\view.pages.usuario.pas' {pgUsuario};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := TRUE;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
