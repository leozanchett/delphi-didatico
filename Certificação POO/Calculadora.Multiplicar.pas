unit Calculadora.Multiplicar;

interface

uses
  Calculadora.Interfaces;

type
  TMultiplicar = class(TInterfacedObject, iOperacoes)
    constructor Create;
    destructor Destroy; override;
    class function New: iOperacoes;
    function Operacao(const _ANum1, _ANum2: Double): Double; overload;
    function Operacao(const _ANum1, _ANum2: String): String; overload;
  end;

implementation

uses
  System.SysUtils, Calculadora.Helpers;

{ TMultiplicar }

constructor TMultiplicar.Create;
begin

end;

destructor TMultiplicar.Destroy;
begin

  inherited;
end;

class function TMultiplicar.New: iOperacoes;
begin
  Result := Self.Create;
end;

function TMultiplicar.Operacao(const _ANum1, _ANum2: String): String;
begin
  Result := CurrToStr(_ANum1.ToCurrency * _ANum2.ToCurrency);
end;

function TMultiplicar.Operacao(const _ANum1, _ANum2: Double): Double;
begin
  Result := _ANum1 * _ANum2;
end;

end.
