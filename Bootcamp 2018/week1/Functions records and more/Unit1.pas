unit Unit1;

interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

 type
  TProduto = record
    Valor : Integer;
    Nome : String;
    class operator Add(a, b: TProduto) : TProduto;
    class operator Implicit(a : String): Tproduto;
    class operator Positive(a: Tproduto): Tproduto;
    class operator Negative(a : TProduto): TProduto;
 end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

class operator TProduto.Add(a, b: TProduto): TProduto;
begin
  Result.valor := a.valor + b.valor;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  c: TProduto;
begin
  c := '20';
  ShowMessage(c.Valor.ToString);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
    a, b, c : TProduto;
begin
  a.Valor := 10;
  b.Valor := 30;
  c := a + b;
  ShowMessage(IntToStr(c.Valor));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  a : TProduto;
begin
  a.Valor := 10;
  a := a + +a;
  ShowMessage(a.Valor.ToString);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  a : TProduto;
begin
  a.Valor := 30;
  a :=  -a;
  ShowMessage(a.Valor.ToString);
end;

class operator TProduto.Implicit(a: String): Tproduto;
begin
  Result.Valor := a.ToInteger;
end;

class operator TProduto.Negative(a: TProduto): TProduto;
begin
  Result.Valor := a.Valor - 1;
end;

class operator TProduto.Positive(a: Tproduto): Tproduto;
begin
   Result.Valor :=  a.Valor;
end;

end.
