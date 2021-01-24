unit frmPrincipalAula2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Validacoes;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FValidacao: TValidacoes;
  public
    procedure ExibirMensagem(_AMensagem: String);
    procedure Exibir(_AExibir: String);
    procedure ExibirResultado(_AValue: String);
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  RttiUteis;

{$R *.dfm}

{ TForm3 }

procedure TForm3.Button1Click(Sender: TObject);
begin
  //TRttiUteis.ExecutarMetodo<TForm3>(Self, Edit1.Text, Edit2.Text);
  FValidacao.Validar(Edit1.Text);
end;

procedure TForm3.Exibir(_AExibir: String);
begin
   ShowMessage('Exibir '+_AExibir);
end;

procedure TForm3.ExibirMensagem(_AMensagem: String);
begin
   ShowMessage('Exibir mensagem: '+_AMensagem);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  FValidacao := TValidacoes.Create;
  FValidacao.AddValidacao('CFOP')
             .AddValidacao('ALIQICMS')
             .AddValidacao('NCM')
             .ResultDisplay(ExibirResultado);
end;

procedure TForm3.ExibirResultado(_AValue: String);
begin
   Memo1.Lines.Add(_AValue);
end;

procedure TForm3.FormShow(Sender: TObject);
var
  AStringList: TStringList;
  AArray : TArray<String>;
  AValor : String;
begin
  ComboBox1.Items.Clear;
  AArray := TRttiUteis.ListarMetodos<TForm3>(Self).Split(['|']);
  for AValor in AArray do begin
    ComboBox1.Items.Add(AValor + sLineBreak);
  end;
end;

end.
