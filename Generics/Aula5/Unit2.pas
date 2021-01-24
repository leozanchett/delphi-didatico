unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  {$M+}
  TPessoa = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
  published
    property Nome : String read FNome write SetNome;
  end;


  TNFe<T : constructor> = class
    private
      FGeneric : T;
    constructor Create;
    function GetGeneric : T;
  end;

  TTeste<T : TComponent> = class

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

procedure TForm2.Button1Click(Sender: TObject);
var
  Nfe2 : TNFe<integer>;
  Nfe : TNFe<TPessoa>;
begin
  Nfe := TNFe<TPessoa>.Create;
  try
    Nfe.FGeneric.Nome := 'Leo Zanchet';
  finally
    Nfe.Free;
  end;
end;

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TNFe<T> }

constructor TNFe<T>.Create;
begin
  FGeneric := T.Create;
end;

function TNFe<T>.GetGeneric: T;
begin
  Result := FGeneric;
end;

end.
