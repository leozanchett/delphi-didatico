program DesignPatterns;

uses
  Vcl.Forms,
  frmPrincipal in 'View\frmPrincipal.pas' {Form2},
  Model.Venda in 'Model\Model.Venda.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
