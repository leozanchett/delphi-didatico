program listsBox;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmListBox in 'frmListBox.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
