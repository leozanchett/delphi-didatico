unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  IQualquerCoisa<T> = interface
    ['{7F42B5CC-8D43-44BF-91CC-D8B42ED8E9C5}']
    procedure Add(Value : T);
    function Retorno : T;
  end;

  TQualquerCoisa<T> = class(TInterfacedObject, IQualquerCoisa<T>)
    FValue : T;
    procedure Duvida;
    procedure Add(Value : T);
    function Retorno : T;
  end;


  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TQualquerCoisa<T> }

procedure TQualquerCoisa<T>.Add(Value: T);
begin
  FValue := Value;
end;

procedure TQualquerCoisa<T>.Duvida;
begin

end;

function TQualquerCoisa<T>.Retorno: T;
begin
  Result := FValue;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Aux : iQualQuerCoisa<String>;
begin
  Aux := TQualquerCoisa<String>.Create;
  Aux.Add('Leo');

  ShowMessage(Aux.Retorno);
end;

end.
