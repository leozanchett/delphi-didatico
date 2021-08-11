unit Calculadora.Multiplicar;

interface

uses
  Calculadora.Interfaces, Calculadora.Operacoes, System.Generics.Collections;

type
  TMultiplicar = class sealed(TOperacoes)
    constructor Create(var _ALista: TList<Double>);
    destructor Destroy; override;
    class function New(var _ALista: TList<Double>): iOperacoes;
    function Executar: String; override;
  end;

implementation

uses
  System.SysUtils, Calculadora.Helpers;

{ TMultiplicar }

constructor TMultiplicar.Create(var _ALista: TList<Double>);
begin
  FLista := _ALista;
end;

destructor TMultiplicar.Destroy;
begin

  inherited;
end;

function TMultiplicar.Executar: String;
var
  i: Integer;
begin
  Result := FLista[0].ToString;
  for i := 1  to Pred(FLista.Count) do
    Result := CurrToStr(Result.ToCurrency * FLista[i]);
  inherited;
end;

class function TMultiplicar.New(var _ALista: TList<Double>): iOperacoes;
begin
  Result := Self.Create(_ALista);
end;

end.
