program CompAndStyle;

uses
  System.StartUpCopy,
  FMX.Forms,
  ComponentsAndStyle in 'ComponentsAndStyle.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
