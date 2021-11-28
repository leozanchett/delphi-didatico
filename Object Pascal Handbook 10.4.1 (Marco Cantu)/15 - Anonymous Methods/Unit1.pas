unit Unit1;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
   System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
   TIntProc = reference to procedure(const N: Integer);
   TIntMethod = procedure(N: Integer) of object;
   
   TForm1 = class(TForm)
      Memo1: TMemo;
      Button1: TButton;
      procedure Button1Click(Sender: TObject);
   private
      { Private declarations }
      procedure CallTwice(_AValue: Integer; const _AProcedure: TIntProc);
   public
      { Public declarations }
   end;

var
   Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   AnIntProc: TIntProc;
begin
   AnIntProc := procedure(const _AN: Integer)
      begin
         Memo1.Lines.Add(IntToStr(_AN));
      end;
   AnIntProc(22);
   CallTwice(1, AnIntProc);
end;

procedure TForm1.CallTwice(_AValue: Integer; const _AProcedure: TIntProc);
begin
   _AProcedure(_AValue);
   Inc(_AValue);
   _AProcedure(_AValue);
end;

end.
