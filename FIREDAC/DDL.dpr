program DDL;

uses
  Vcl.Forms,
  frmPrincipalDLL in 'frmPrincipalDLL.pas' {Form2},
  FiredacDAO in 'DAO\FiredacDAO.pas' {DAO: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDAO, DAO);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
