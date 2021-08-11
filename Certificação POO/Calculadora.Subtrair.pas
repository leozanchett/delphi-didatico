unit Calculadora.Subtrair;

interface

uses
  Calculadora.Interfaces, Calculadora.Operacoes, System.Generics.Collections;

type
    TSubtrair = class sealed(TOperacoes)
    constructor Create(var _ALista: TList<Double>);
    destructor Destroy; override;
    class function New(var _ALista: TList<Double>): iOperacoes;
     function Executar: String; override;
  end;

implementation

uses
  System.SysUtils, Calculadora.Helpers;

{ TSubtrair }

constructor TSubtrair.Create(var _ALista: TList<Double>);
begin
  FLista := _ALista;
end;

destructor TSubtrair.Destroy;
begin

  inherited;
end;

function TSubtrair.Executar: String;
var
  i: Integer;
begin
  Result := FLista[0].ToString;
  for i := 1  to Pred(FLista.Count) do
    Result := CurrToStr(Result.ToCurrency - FLista[i]);
  inherited;
end;

class function TSubtrair.New(var _ALista: TList<Double>): iOperacoes;
begin
  Result := Self.Create(_ALista);
end;


end.
