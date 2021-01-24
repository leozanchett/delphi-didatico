unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections;

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
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    ListaNum : TList<Integer>;
    procedure Notificacao (Sender : TObject; const Item : Integer; Action : TCollectionNotification);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  ListaNum.Add(StrToInt(Edit1.Text));
  Memo1.Lines.Add(ListaNum.Last.ToString);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  I: Integer;
begin
  Memo1.Lines.Clear;
  for i := low(ListaNum.List) to pred(ListaNum.count) do
    Memo1.Lines.Add(ListaNum[I].ToString)
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(ListaNum.Capacity.ToString);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(ListaNum.Count.ToString);
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  ListaNum.Delete(Pred(ListaNum.Count));
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ListaNum := TList<Integer>.Create;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  ListaNum.OnNotify := Notificacao;
end;

procedure TForm2.Notificacao(Sender: TObject; const Item: Integer; Action: TCollectionNotification);
begin
  case Action of
    cnAdded: Memo1.Lines.Add('O Item ' + Item.ToString + ' foi adicionado');
    cnRemoved: Memo1.Lines.Add('O Item ' + Item.ToString + ' foi removido');
    cnExtracted: Memo1.Lines.Add('O Item ' + Item.ToString + ' foi extraido');
  end;
end;

end.
