program LiveBindingsRTTI;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  ClassCliente in 'models\ClassCliente.pas',
  ClassCustomAtribute in 'models\ClassCustomAtribute.pas',
  ClassRTTI in 'models\ClassRTTI.pas',
  ClassLinkControlToField in 'models\ClassLinkControlToField.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
