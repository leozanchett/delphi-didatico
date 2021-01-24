program PapelTesoura;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form2},
  ClassePapel in '..\Models\ClassePapel.pas',
  ClasseTesoura in '..\Models\ClasseTesoura.pas',
  controller_PapelTesoura in '..\Controllers\controller_PapelTesoura.pas',
  view_Fornecedor in 'view_Fornecedor.pas' {frm_Fornecedor},
  model_PermissoesFornecedor in '..\Models\model_PermissoesFornecedor.pas',
  controller_Fornecedor in '..\Controllers\controller_Fornecedor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
