unit Calculadora.Dividir;

interface

uses
  Calculadora.Interfaces, Calculadora.Operacoes, System.Generics.Collections;

type
   TDividir = class sealed(TOperacoes)
    constructor Create(var _ALista: TList<Double>);
    destructor Destroy; override;
    class function New(var _ALista: TList<Double>): iOperacoes;
    function Executar: String; override;
  end;

implementation

uses
  System.SysUtils, Calculadora.Helpers;

{ TDividir }

constructor TDividir.Create(var _ALista: TList<Double>);
begin
   FLista := _ALista;
end;

destructor TDividir.Destroy;
begin

  inherited;
end;

function TDividir.Executar: String;
var
  i: Integer;
begin
  Result := FLista[0].ToString;
  for i := 1  to Pred(FLista.Count) do
    Result := CurrToStr(Result.ToCurrency / FLista[i]);
  inherited;
end;

class function TDividir.New(var _ALista: TList<Double>): iOperacoes;
begin
  Result := Self.Create(_ALista);
end;

end.
