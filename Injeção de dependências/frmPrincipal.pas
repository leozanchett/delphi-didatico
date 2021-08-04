unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  model.interfaces, model.pessoaFisica, model.pessoaJuridica;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  PF: iPessoaFisica;
begin
  PF := TPessoaFisica.New;
  PF.CPF('123456789').interfaceEndereco.Rua('Rua teste');

  Memo1.Lines.Add(PF.CPF + ' ' + PF.interfaceEndereco.Rua);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  PJ: iPessoaJuridica;
begin
  PJ := TPessoaJuridica.New;
  PJ.CNPJ('123456789').interfaceEndereco.Rua('Rua juridca').&End.interfaceEmail.Email('leo@gmail.com');
  Memo1.Lines.Add(PJ.CNPJ + ' ' + PJ.interfaceEndereco.Rua + ' '+PJ.interfaceEmail.Email);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
