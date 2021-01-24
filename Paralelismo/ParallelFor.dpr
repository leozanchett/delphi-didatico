program ParallelFor;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmParallelFor in 'frmParallelFor.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
