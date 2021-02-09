unit eUsuario.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, eUsuario.Model.Conexao.Interfaces;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    edtPesquisar: TEdit;
    btnPesquisar: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    FUsuario : iEntidade;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  eUsuario.Model.Entidade.Usuario;

{$R *.dfm}

procedure TForm2.btnPesquisarClick(Sender: TObject);
begin
  FUsuario.ListarCampos(edtPesquisar.Text, DataSource1);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  FUsuario.Listar(DataSource1);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FUsuario := TModelEntidadeUsuario.New;
end;

end.
