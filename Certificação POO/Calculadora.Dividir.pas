unit Calculadora.Dividir;

interface

uses
  Calculadora.Interfaces;

type
   TDividir = class(TInterfacedObject, iOperacoes)
    constructor Create;
    destructor Destroy; override;
    class function New: iOperacoes;
    function Operacao(const _ANum1, _ANum2: Double): Double; overload;
    function Operacao(const _ANum1, _ANum2: String): String; overload;
  end;

implementation

uses
  System.SysUtils, Calculadora.Helpers;

{ TDividir }

constructor TDividir.Create;
begin

end;

destructor TDividir.Destroy;
begin

  inherited;
end;

class function TDividir.New: iOperacoes;
begin
  Result := Self.Create;
end;

function TDividir.Operacao(const _ANum1, _ANum2: String): String;
begin
  if _ANum2.ToCurrency <= 0 then
    raise Exception.Create('O valor de ' + _ANum2 +
      ' é inválido para operações de divisão.');
  Result := CurrToStr(_ANum1.ToCurrency / _ANum2.ToCurrency);
end;

function TDividir.Operacao(const _ANum1, _ANum2: Double): Double;
begin
  if _ANum2 <= 0 then
    raise Exception.Create('O valor de ' + _ANum2.ToString +
      ' é inválido para operações de divisão.');
  Result := _ANum1 / _ANum2;
end;

end.
