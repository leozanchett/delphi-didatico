unit frmPrincipalAula3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    btnSalvar: TButton;
    Edit3: TEdit;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  Pessoa, DAO;

{$R *.dfm}

procedure TForm4.btnSalvarClick(Sender: TObject);
var
  Pessoa : TPessoa;
begin
   Pessoa := TPessoa.Create;
   try
     Pessoa.Nome := Edit1.Text;
     Pessoa.Idade := StrToInt(Edit2.Text);
     Pessoa.Endereco := Edit3.Text;
     TDAO<TPessoa>.New(Pessoa).Salvar;
     ShowMessage('Pessoa salva !');
   finally
     Pessoa.Free;
   end;
end;

end.
