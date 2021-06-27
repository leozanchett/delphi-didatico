program OOP_fundamentos;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ClassDates in 'ClassDates.pas',
  ClassPerson in 'ClassPerson.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
