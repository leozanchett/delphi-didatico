unit frmPrincipalDLL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, Vcl.StdCtrls, FiredacDAO, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Dapt,
  FireDAC.Moni.Base, FireDAC.Moni.Custom, FireDAC.Moni.FlatFile,
  FireDAC.Moni.RemoteClient;

type
  TForm2 = class(TForm)
    btnCreateTable: TButton;
    btnDropTable: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    btnExecSQLScalar: TButton;
    btnResultSet: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    btnInsert: TButton;
    FDMoniCustomClientLink1: TFDMoniCustomClientLink;
    Memo1: TMemo;
    FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    Edit3: TEdit;
    procedure btnCreateTableClick(Sender: TObject);
    procedure btnDropTableClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure btnResultSetClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure FDMoniCustomClientLink1Output(ASender: TFDMoniClientLinkBase;
      const AClassName, AObjName, AMessage: string);
  private
    procedure ExcecaoFiredac(_AExcecao: TFDCommandExceptionKind);
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
  try
    DAO.FDACConexao.ExecSQL('CREATE TABLE Slave (id Integer not null primary key, descricao varchar(50))');
    ShowMessage('TABELA CRIADA COM SUCESSO !');
  except
     on E: EFDDBEngineException do
      ExcecaoFiredac(e.Kind);
  end;
end;

procedure TForm2.ExcecaoFiredac(_AExcecao: TFDCommandExceptionKind);
begin
    case _AExcecao of
      ekOther: ;
      ekNoDataFound: ;
      ekTooManyRows: ;
      ekRecordLocked: ShowMessage('Locked key');
      ekUKViolated: ShowMessage('Violação de primary key');
      ekFKViolated: ;
      ekObjNotExists: ;
      ekUserPwdInvalid: ;
      ekUserPwdExpired: ;
      ekUserPwdWillExpire: ;
      ekCmdAborted: ;
      ekServerGone: ;
      ekServerOutput: ;
      ekArrExecMalfunc: ;
      ekInvalidParams: ;
    end;
end;

procedure TForm2.btnDropTableClick(Sender: TObject);
begin
  DAO.FDACConexao.ExecSQL('DROP TABLE Slave', True);
end;

procedure TForm2.btnInsertClick(Sender: TObject);
begin
  try
     DAO.FDACConexao.ExecSQL(
    'INSERT INTO USUARIO (ID, NOME, TELEFONE) '+
    'VALUES (:ID, :NOME, :TELEFONE) ',[Edit3.Text, Edit1.Text, Edit2.Text],
    [ftString, ftString]);
  except
    on E: EFDDBEngineException do
      ExcecaoFiredac(E.Kind);
  end;
end;

procedure TForm2.btnResultSetClick(Sender: TObject);
begin
  DAO.FDACConexao.ExecSQL('SELECT * FROM USUARIO',TDataSet(FDMemTable1));
  DataSource1.DataSet := FDMemTable1;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  if StrToIntDef(Edit1.Text, 0) > 0 then begin
    Edit2.Text := DAO.ExecutarSqlScalar(Edit1.Text);
  end else
     Edit2.Text := '';
end;

procedure TForm2.FDMoniCustomClientLink1Output(ASender: TFDMoniClientLinkBase;
  const AClassName, AObjName, AMessage: string);
begin
  Memo1.Lines.Add(AMessage);
end;

end.
