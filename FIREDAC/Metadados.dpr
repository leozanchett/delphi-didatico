program Metadados;

uses
  Vcl.Forms,
  frmPrincipalMetadados in 'frmPrincipalMetadados.pas' {Form3},
  FiredacDAO in 'DAO\FiredacDAO.pas' {DAO: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDAO, DAO);
  Application.Run;
end.
