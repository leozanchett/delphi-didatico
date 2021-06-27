unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    procedure SetMemo(const _AValue: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

type
  TTen = 1..10;
  TUpperCase = 'A'..'Z';
  TSuit = (Club, Diamond, Heart, Spade);
  TSuits = set of TSuit;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  n: TTen;
  s: TSuit;
  ss : TSuits;
begin
  n := 5;
//  n := 12; não compila pois não está no Range de 1..10
  s := Club;
//  s := 2; não compila pois 2 não existe no enum TSuit
  ss := [Diamond, Spade];
  Include(ss, s); // inclui 'Club' no TSuits
 end;


procedure TForm2.Button2Click(Sender: TObject);
var
  Total,i: Integer;
begin
  Memo1.Clear;
  Total := 0;
  for I := 0 to 10 do begin
    Total := Total + 1;
    SetMemo(IntToStr(Total));
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  Achar: Char;
begin
  Memo1.Clear;
  for Achar := 'a' to 'z' do
    SetMemo(Achar);
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  i: integer;
begin
  Memo1.Clear;
  for I := Low(Edit1.Text) to High(Edit1.Text) do
    SetMemo(Edit1.Text[i]);
end;

procedure TForm2.Button5Click(Sender: TObject);
var
  ch: Char;
begin
  for ch in Edit1.Text do
    SetMemo(ch);
end;

procedure TForm2.SetMemo(const _AValue: String);
begin
  Memo1.lines.add(_AValue);
end;

end.
