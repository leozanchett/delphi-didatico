program CommonControls;

uses
  System.StartUpCopy,
  FMX.Forms,
  ShapeComponents in 'ShapeComponents.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
