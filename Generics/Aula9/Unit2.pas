unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections, Vcl.ExtCtrls;

type
  TPessoa = record
    Nome : String;
    CPF : String;
  end;

  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    edtCPF: TLabeledEdit;
    edtNome: TLabeledEdit;
    Button11: TButton;
    Button12: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }


    Lista : TDictionary<String, TPessoa>;

    procedure KeyNotify(Sender : TObject; const Item : String; Action : TCollectionNotification);
    procedure ValueNotify(Sender : TObject; const Item : TPessoa; Action : TCollectionNotification);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button10Click(Sender: TObject);
begin
  Lista.Clear;
end;

procedure TForm2.Button11Click(Sender: TObject);
begin
  Lista.OnKeyNotify := KeyNotify;
end;

procedure TForm2.Button12Click(Sender: TObject);
begin
  Lista.OnValueNotify := ValueNotify;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Pessoa : TPessoa;
begin
  Pessoa.Nome := edtNome.Text;
  Pessoa.CPF := edtCPF.Text;
  Lista.Add(Pessoa.CPF, Pessoa);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  Pessoa : TPessoa;
begin
  if Lista.TryGetValue(edtCPF.Text, Pessoa) then
    Memo1.Lines.Add(Pessoa.Nome + ' - ' + Pessoa.CPF)
  else
    Memo1.Lines.Add('Usuario não encontrado');

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Lista.Remove(edtCPF.Text);
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  Pessoa : TPessoa;
begin
  Pessoa.Nome := edtNome.Text;
  Pessoa.CPF := edtCPF.Text;
  Lista.AddOrSetValue(Pessoa.CPF, Pessoa);
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Lista.TrimExcess;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  if Lista.ContainsKey(edtCPF.Text) then
    Memo1.Lines.Add('Usuario Encontrado')
  else
    Memo1.Lines.Add('Usuario Não Encontrado');
end;

procedure TForm2.Button7Click(Sender: TObject);
var
  Pessoa : TPessoa;
begin
  Pessoa.Nome := edtNome.Text;
  Pessoa.CPF := edtCPF.Text;

  if Lista.ContainsValue(Pessoa) then
    Memo1.Lines.Add('Usuario Encontrado')
  else
    Memo1.Lines.Add('Usuario não encontrado');
end;

procedure TForm2.Button8Click(Sender: TObject);
var
  Key : String;
begin
  for Key in Lista.Keys do
    Memo1.Lines.Add(Key);
end;

procedure TForm2.Button9Click(Sender: TObject);
var
  Value : TPessoa;
begin
  for Value in Lista.Values do
    Memo1.Lines.Add(Value.Nome);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Lista := TDictionary<String, TPessoa>.Create;
end;

procedure TForm2.KeyNotify(Sender: TObject; const Item: String;
  Action: TCollectionNotification);
begin
  case Action of
    cnAdded: Memo1.Lines.Add('A Chave ' + Item + ' foi adicionada');
    cnRemoved: Memo1.Lines.Add('A Chave ' + Item + ' foi removida');
    cnExtracted: Memo1.Lines.Add('A Chave ' + Item + ' foi extraida');
  end;
end;

procedure TForm2.ValueNotify(Sender : TObject; const Item : TPessoa; Action : TCollectionNotification);
begin
  case Action of
    cnAdded: Memo1.Lines.Add('O Value ' + Item.Nome + ' foi Adicionada');
    cnRemoved: Memo1.Lines.Add('O Value ' + Item.Nome + ' foi removida');
    cnExtracted: Memo1.Lines.Add('O Value ' + Item.Nome + ' foi extraida');
  end;
end;

end.
