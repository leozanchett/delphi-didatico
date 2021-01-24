unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, TypInfo;

type
  TUtis = class
    class function IIF<T>(Condition: Boolean; T1, T2: T): T;
  end;

{$M+}
  TProduto = class
  public
    constructor Create;
    procedure SetDescricao(const Value: String);
  private
    FDescricao: String;
  published
    property Descricao : String read FDescricao write SetDescricao;
  end;

  TTeste = class
    constructor Create;
  end;

  TForm3 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  aux : String;
  aux2: integer;
begin
  aux := TUtis.IIF<string>((Edit1.Text <> ''), Edit1.Text, 'Laranja');
  aux2 := TUtis.IIF<integer>(Edit1.Text <> '', 1, 10);
  ShowMessage(aux);
  ShowMessage(aux2.ToString);
end;

{ TUtis }

class function TUtis.IIF<T>(Condition: Boolean; T1, T2: T): T;
begin
  if Condition then
    Result := T1
  else
    Result := T2;
end;

{ TProduto }

constructor TProduto.Create;
begin
  FDescricao := 'Produto Generico';
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  AProd : TProduto;
  ATeste : TTeste;
  Teste, Teste2: boolean;
begin
  AProd := TUtis.IIF<TProduto>(Assigned(AProd), AProd, TProduto.Create);
  try
    AProd.Descricao := TUtis.IIF<String>(AProd.Descricao.IsEmpty, 'Nova descrição', AProd.Descricao);
    ShowMessage(AProd.Descricao);
  finally
    FreeAndNil(AProd);
  end;  
end;

{ TTeste }

constructor TTeste.Create;
begin

end;

end.
