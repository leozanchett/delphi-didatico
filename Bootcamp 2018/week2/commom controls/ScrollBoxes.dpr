program ScrollBoxes;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmScrollBoxes in 'frmScrollBoxes.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
