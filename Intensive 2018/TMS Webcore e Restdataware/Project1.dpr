program Project1;

uses
  Vcl.Forms,
  WEBLib.Forms,
  Unit1 in 'Unit1.pas' {Form2: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
