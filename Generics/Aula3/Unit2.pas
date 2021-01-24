unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDias = (Segunda, Terca, Quarta, Quinta, Sexta, Sabado, Domingo);
  TMes = (Janeiro, Fevereiro, Marco, Abril, Maio, Junho, Dezembro);

  TEnumUtils<T> = class
    class procedure EnumToList(Value : TStrings);
  end;

  TForm2 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  System.TypInfo;

{$R *.dfm}

{ TEnumUtils<T> }

class procedure TEnumUtils<T>.EnumToList(Value: TStrings);
var
  Aux: String;
  I: Integer;
  Pos : Integer;
begin
  Value.Clear;
  I := 0;
  repeat
    Aux := GetEnumName(TypeInfo(T), I);
    Pos := GetEnumValue(TypeInfo(T), Aux);
    if Pos <> -1 then
      Value.Add(Aux);
    Inc(I);
  until Pos < 0;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  TEnumUtils<TMes>.EnumToList(ComboBox1.Items);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  TEnumUtils<TDias>.EnumToList(ComboBox1.Items);
end;

end.
