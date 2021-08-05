program Project2;

uses
  Vcl.Forms,
  frmPrincipalProjeto2 in 'frmPrincipalProjeto2.pas' {Form2},
  model.interfaces in 'modelprojeto2\model.interfaces.pas',
  model.pagamento in 'modelprojeto2\model.pagamento.pas',
  model.cartao in 'modelprojeto2\model.cartao.pas',
  model.crediario in 'modelprojeto2\model.crediario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
