program basicLiveBindings;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmBasicLiveBinding in 'frmBasicLiveBinding.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
