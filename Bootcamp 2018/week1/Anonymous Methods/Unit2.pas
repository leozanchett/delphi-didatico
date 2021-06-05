unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Samples.Gauges;

type
  TForm2 = class(TForm)
    Button1: TButton;
    BitBtn1: TBitBtn;
    Gauge1: TGauge;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

const
  mil20 = 20000000;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  TButton(Sender).Caption := 'Computing';
  TThread.CreateAnonymousThread(
    procedure()
    var
    x: Extended;
    i: integer;
    begin
      Gauge1.MaxValue := mil20;
      x := 100;
      for i := 0 to mil20 do begin
        x := Sqrt(x) * Sqrt(x);
        Gauge1.Progress := i;
      end;
      TThread.Synchronize(
        TThread.CurrentThread,
        procedure begin
           TButton(Sender).Caption := FloatToStr(X);
        end
      );
    end
  ).Start;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  x: Extended;
  i: Integer;
begin
  (Sender as TButton).Caption := 'Computing';
  x:= 100;
  for I := 0 to mil20 do
    x := Sqrt(x) * Sqrt(x);
  TButton(Sender).Caption := FloatToStr(x);

end;

end.
