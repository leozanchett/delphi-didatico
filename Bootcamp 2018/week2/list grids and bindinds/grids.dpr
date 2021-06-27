program grids;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmGrids in 'frmGrids.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
