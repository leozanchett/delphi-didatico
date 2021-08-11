unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ClassCalculadora,
  Calculadora.Interfaces;

type
  TForm1 = class(TForm)
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnDividir: TButton;
    btnMultiplicar: TButton;
    edtValor1: TEdit;
    edtValor2: TEdit;
    Label1: TLabel;
    edtResultado: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
  private
    FCalculadora: iCalculadora;
    { Private declarations }
  public
    { Public declarations }
    property Calculadora: iCalculadora read FCalculadora write FCalculadora;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }


procedure TForm1.btnDividirClick(Sender: TObject);
begin
  edtResultado.Text := Calculadora.Add(edtValor1.Text).Add(edtValor2.Text).Dividir.Executar;
end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
begin
  edtResultado.Text := Calculadora.Add(edtValor1.Text).Add(edtValor2.Text).Multiplicar.Executar;
end;

procedure TForm1.btnSomarClick(Sender: TObject);
begin
  edtResultado.Text := Calculadora.Add(edtValor1.Text).Add(edtValor2.Text).Soma.Executar;
end;

procedure TForm1.btnSubtrairClick(Sender: TObject);
begin
  edtResultado.Text := Calculadora.Add(edtValor1.Text).Add(edtValor2.Text).Subtrair.Executar;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  Calculadora := TCalculadora.New;
end;


end.
