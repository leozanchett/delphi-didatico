program OrdenacaoDeDados;

uses
  Vcl.Forms,
  frmPrincipalOrdenacao in 'frmPrincipalOrdenacao.pas' {Form4},
  FiredacDAO in 'DAO\FiredacDAO.pas' {DAO: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDAO, DAO);
  Application.Run;
end.
