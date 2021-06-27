program TextProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  Texts in 'Texts.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
