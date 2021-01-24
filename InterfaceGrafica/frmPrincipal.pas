unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    btnPonteiros: TButton;
    btnOrdinais: TButton;
    edtOrdinais: TEdit;
    pnlOrdinais: TPanel;
    gpOrdinais: TGroupBox;
    btnVar: TButton;
    btnOut: TButton;
    procedure btnPonteirosClick(Sender: TObject);
    procedure btnOrdinaisClick(Sender: TObject);
    procedure btnVarClick(Sender: TObject);
    procedure btnOutClick(Sender: TObject);
  private
    procedure RetornaValorVar(var value: String);
    procedure RetornaValorOut(out value: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnOrdinaisClick(Sender: TObject);
begin
  ShowMessage(IntToStr(Ord(edtOrdinais.Text[1])));
end;

procedure TForm2.btnOutClick(Sender: TObject);
var
  AValorVAR: String;
begin
  AValorVAR := 'Valor inicial';
  RetornaValorOut(AValorVAR);
  ShowMessage(AValorVAR);
end;

procedure TForm2.btnPonteirosClick(Sender: TObject);
var
  X : ^Integer;
  Y : Integer;
begin
  Y := 10;
  X := @Y;
  ShowMessage(Format('Endereço de memória: %s'+sLineBreak+'Valor de X: %d',[Integer(X).ToString, X^]));
end;

procedure TForm2.btnVarClick(Sender: TObject);
var
  AValorVAR: String;
begin
  AValorVAR := 'Valor inicial';
  RetornaValorVar(AValorVAR);
  ShowMessage(AValorVAR);
end;


procedure TForm2.RetornaValorOut(out value: String);
begin
  ShowMessage(value);
  value := 'Valor final';
end;

procedure TForm2.RetornaValorVar(var value: String);
begin
  ShowMessage(value);
  value := 'Valor final';
end;

end.
