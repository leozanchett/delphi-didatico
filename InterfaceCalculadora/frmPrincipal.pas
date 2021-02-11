unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    memResultOper: TMemo;
    edtValor1: TEdit;
    edtValor2: TEdit;
    btnCalcular: TButton;
    rgOperacao: TRadioGroup;
    procedure edtValor1Change(Sender: TObject);
    procedure edtValor2Change(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure radbSomaClick(Sender: TObject);
    procedure radbDivisaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure VerificaNumerosEdits;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  InterfaceCalculadora, ClassSoma, ClassDivisao, ClassMultiplica;

{$R *.dfm}

procedure TForm2.btnCalcularClick(Sender: TObject);
var
 x, y: double;
 ACalculadora : ICalculadora;
begin
   x := strToFloat(edtValor1.Text);
   y := strToFloat(edtValor2.Text);
   try
      case rgOperacao.ItemIndex of
         0 : ACalculadora := TSoma.Create;
         1 : ACalculadora := TDivisao.Create;
         2 : ACalculadora := TMultiplica.Create;
      end;
      ACalculadora.calculate(x,y);
      memResultOper.Clear;
      memResultOper.Lines.Text := floatToStr(ACalculadora.Resultado);
   except
      raise
   end;
end;

procedure TForm2.edtValor1Change(Sender: TObject);
begin
  VerificaNumerosEdits;
end;

procedure TForm2.edtValor2Change(Sender: TObject);
begin
  VerificaNumerosEdits;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

procedure TForm2.radbDivisaoClick(Sender: TObject);
begin
  VerificaNumerosEdits;
end;

procedure TForm2.radbSomaClick(Sender: TObject);
begin
  VerificaNumerosEdits;
end;

procedure TForm2.VerificaNumerosEdits;
begin
  if (Length(string(edtValor1.Text).Trim) > 0) and (Length(string(edtValor2.Text).Trim) > 0) then
    btnCalcular.Enabled := true
  else
    btnCalcular.Enabled := false;
end;

end.
