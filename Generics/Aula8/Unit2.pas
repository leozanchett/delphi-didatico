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
    Button7: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
    Pilha : TStack<String>;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Pilha.Push(Edit1.Text);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Add(Pilha.Pop);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Memo1.Lines.Add(Pilha.Extract);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Memo1.Lines.Add(Pilha.Peek);
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Pilha.TrimExcess;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  Memo1.Lines.Add(Pilha.Count.ToString);
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  Memo1.Lines.Add(Pilha.Capacity.ToString);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Pilha := TStack<String>.Create;
end;

end.
