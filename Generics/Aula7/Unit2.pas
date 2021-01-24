unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections, System.StrUtils;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    btnNotify: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btnNotifyClick(Sender: TObject);
  private
    { Private declarations }
    Fila : TQueue<String>;
    function VerificaPessoasNaFila(_AFila: TQUEUE<String>): boolean;
  public
    { Public declarations }
    procedure Notificacao (Sender : TObject; const Item : String; Action : TCollectionNotification);
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnNotifyClick(Sender: TObject);
begin
   Fila.OnNotify := Notificacao;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  if MatchStr(Edit1.Text, Fila.List) then begin
    Memo1.Lines.Add(Format('Já exite uma pessoa com o nome %s na fila',[Edit1.Text]));
    exit;
  end;
    Fila.Enqueue(Edit1.Text);
  Memo1.Lines.Add(concat(Edit1.Text,' entrou na fila'));
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  if VerificaPessoasNaFila(Fila) then
    Exit;
  Memo1.Lines.Add(concat(Fila.Dequeue,' foi atendido'));
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  if VerificaPessoasNaFila(Fila) then
    Exit;
  Memo1.Lines.Add(Fila.Extract);
end;

function TForm2.VerificaPessoasNaFila(_AFila: TQUEUE<String>): boolean;
begin
  Result := false;
  if _AFila.Count <= 0 then begin
     Memo1.Lines.Add('A fila está vazia !');
     Result := true;
  end;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  if VerificaPessoasNaFila(Fila) then
    Exit;
  Memo1.Lines.Add(concat(Fila.Peek,' é o primeiro da fila'));
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Fila.TrimExcess;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  Memo1.Lines.Add(format('À %d pessoas na fila de espera',[Fila.Count]));
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  Memo1.Lines.Add(Fila.Capacity.ToString);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Fila := TQueue<String>.Create;
end;

procedure TForm2.Notificacao(Sender : TObject; const Item : String; Action : TCollectionNotification);
begin
  case Action of
    cnAdded: Memo1.Lines.Add('O Item ' + Item + ' foi adicionado');
    cnRemoved: Memo1.Lines.Add('O Item ' + Item + ' foi removido');
    cnExtracted: Memo1.Lines.Add('O Item ' + Item + ' foi extraido');
  end;
end;

end.
