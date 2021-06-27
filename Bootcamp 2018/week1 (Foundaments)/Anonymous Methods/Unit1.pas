unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type

  // tipo anonimo de declaração de método
  TInProc = reference to procedure(n: integer);

  // método referenciando a um tipo
  TintMethod = procedure(n: integer) of object;

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    FAnonMeth: TInProc;
    procedure CallTwice(_AValue: integer; _AIntProc: TInProc);
    procedure SetAnonMeth(const Value: TInProc);
    { Private declarations }
  public
    { Public declarations }
    property AnonMeth: TInProc read FAnonMeth write SetAnonMeth;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  ANumber: integer;
begin
  if Assigned(AnonMeth) then
    AnonMeth(5);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  anIntProc: TInProc;
begin
  Memo1.Clear;
  anIntProc := procedure(n: integer) begin
    Memo1.Lines.Add(IntToStr(n));
  end;
  anIntProc(22);
  anIntProc(12);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
  CallTwice(
    49,
    procedure(n: integer) begin
      Memo1.Lines.Add(IntToHex(n, 4))
    end
  );
  CallTwice(
    100,
    procedure(n: integer) begin
      Memo1.Lines.Add(FloatToStr(Sqrt(n)))
    end
  );
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  aNumber: Integer;
begin
  Memo1.Clear;
  aNumber := 0;
  CallTwice(
    10,
    procedure(n: Integer) begin
      Inc(aNumber, n);
    end
  );
  Memo1.Lines.Add(IntToStr(aNumber));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  ANumber: Integer;
begin
  ANumber := 3;
  AnonMeth := procedure(n: Integer) begin
                Inc(ANumber, 3);
                Memo1.Lines.Add(IntToStr(ANumber))
              end;
end;

procedure TForm1.CallTwice(_AValue: integer; _AIntProc: TInProc);
begin
  _AIntProc(_AValue);
  Inc(_AValue);
  _AIntProc(_AValue);
end;

procedure TForm1.SetAnonMeth(const Value: TInProc);
begin
  FAnonMeth := Value;
end;

end.
