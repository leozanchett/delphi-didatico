program TToolBarEMultiView;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmTToolbareMultView in 'frmTToolbareMultView.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
