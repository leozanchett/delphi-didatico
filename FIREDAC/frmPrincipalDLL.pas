unit frmPrincipalDLL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, Vcl.StdCtrls, FiredacDAO;

type
  TForm2 = class(TForm)
    btnCreateTable: TButton;
    btnDropTable: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    btnExecSQLScalar: TButton;
    procedure btnCreateTableClick(Sender: TObject);
    procedure btnDropTableClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnCreateTableClick(Sender: TObject);
begin
  DAO.FDACConexao.ExecSQL('CREATE TABLE Slave (id Integer not null primary key, descricao varchar(50))');
  ShowMessage('TABELA CRIADA COM SUCESSO !');
end;

procedure TForm2.btnDropTableClick(Sender: TObject);
begin
  DAO.FDACConexao.ExecSQL('DROP TABLE Slave', True);
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  if StrToIntDef(Edit1.Text, 0) > 0 then begin
    Edit2.Text :=  DAO.FDACConexao.ExecSQLScalar('SELECT nome FROM USUARIO WHERE ID= :xid',[Edit1.Text]);
    if String(Edit2.Text).IsEmpty then
      Edit2.Text := Format('Não houve resultados pelo id %s ',[Edit1.Text]);
  end else
     Edit2.Text := '';
end;

end.
