program RecordsEVariants;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipalRecordsEVariants in 'frmPrincipalRecordsEVariants.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
