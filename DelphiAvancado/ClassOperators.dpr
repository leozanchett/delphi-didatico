program ClassOperators;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipal in 'frmPrincipal.pas' {view_formPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tview_formPrincipal, view_formPrincipal);
  Application.Run;
end.
