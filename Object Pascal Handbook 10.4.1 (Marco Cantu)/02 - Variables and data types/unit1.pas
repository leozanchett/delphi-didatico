unit Unit1;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
{$SCOPEDENUMS ON}
   TTen = 1 .. 10;
   TOverHundred = 100 .. 1000;
   TUppercase = 'A' .. 'Z';
   TSuit = (Club, Diamond, Heart, Spade);
{$SCOPEDENUMS OFF}
   TColors = (Red, Yellow, Green, Cyan, Blue, Violet);
   TSuits = set of TSuit;

   TForm1 = class(TForm)
      Button1: TButton;
      Button2: TButton;
      Button3: TButton;
      Button4: TButton;
      procedure Button1Click(Sender: TObject);
      procedure Button2Click(Sender: TObject);
      procedure Button3Click(Sender: TObject);
      procedure Button4Click(Sender: TObject);
   private
      procedure Show(const _AStr: String);
      { Private declarations }
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
var
   Ch: Char;
   Str1: string;
begin
   Ch := 'a';
   Show(Ch);
   Inc(Ch, 100);
   Show(Ch);
   Str1 := '';
   for Ch := #32 to #1024 do
      Str1 := Str1 + Ch;
   Show(Str1)
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   S1: Single;
   AsArray: TArray<String>;
begin
   S1 := 0.5 * 0.2;
   Show(S1.ToString);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   ShowMessage(IntToStr(Ord(TSuit.Heart)));
   ShowMessage(IntToStr(Ord(Green)));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
   Cards1, Cards2, Cards3: TSuits;
begin
   Cards1 := [TSuit.Club, TSuit.Diamond, TSuit.Heart];
   Cards2 := [TSuit.Diamond];
   Cards3 := [];
end;

procedure TForm1.Show(const _AStr: String);
begin
   ShowMessage(_AStr);
end;

initialization

ReportMemoryLeaksOnShutdown := True;

end.
