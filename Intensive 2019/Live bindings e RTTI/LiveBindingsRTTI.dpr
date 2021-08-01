program LiveBindingsRTTI;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  ClassRTTIExemplo in 'models\ClassRTTIExemplo.pas',
  ClassCliente in 'models\ClassCliente.pas',
  ClassCustomAtribute in 'models\ClassCustomAtribute.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
