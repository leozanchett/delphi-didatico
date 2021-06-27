unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetMemo(const _AValue: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Character;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var n: Integer;
begin
  n := 10;
  Memo1.Clear;
  SetMemo('valor de n: ' + n.ToString);
  SetMemo('valor de 33 constante:'+ 33.ToString);
  SetMemo('Bytes de um inteiro: ' + Integer.Size.ToString);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  n: UInt16;
begin
  Memo1.Clear;
  n := Low(UInt16);
  Inc(n);
  inc(n, 10);
  SetMemo(IntToStr(n));
  // odd = verifica se o número é impar
  if odd (n) then
    SetMemo(IntToStr(n) + ' is odd');

  //n := 100 + High(n);
  inc(n, High(n));
  SetMemo(IntToStr(n));
  SetMemo('Bytes de um UInt16: ' + UInt16.Size.ToString);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  ch: Char;
begin
   Memo1.Clear;
   ch := 'a';
   SetMemo(ch+' é letra ? R: '+BoolToStr(ch.Isletter, True));
   SetMemo(ch.ToUpper);
   ch := '1';
   SetMemo(ch+' é letra ? R: '+BoolToStr(ch.Isletter, True));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  ch: Char;
  str1: String;
begin
  Memo1.Clear;
  ch := 'a';
  inc(ch,100);
  SetMemo(ch);
  str1 := '';
  for ch := #32 to #1024 do
    str1 := str1 + ch;
  SetMemo(str1);
end;

procedure TForm1.SetMemo(const _AValue: String);
begin
  Memo1.Lines.Add(_AValue);
end;


end.
