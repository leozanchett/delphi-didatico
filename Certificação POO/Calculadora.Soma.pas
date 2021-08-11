unit Calculadora.Soma;

interface

uses
  Calculadora.Interfaces;

type
  TSoma = class(TInterfacedObject, iOperacoes)
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iOperacoes;
      function Operacao(const _ANum1, _ANum2: Double): Double; overload;
      function Operacao(const _ANum1, _ANum2: String): String; overload;
  end;

implementation

uses
  System.SysUtils, Calculadora.Helpers;

{ TSoma }

constructor TSoma.Create;
begin

end;

destructor TSoma.Destroy;
begin

  inherited;
end;

class function TSoma.New: iOperacoes;
begin
  Result := Self.Create;
end;

function TSoma.Operacao(const _ANum1, _ANum2: String): String;
begin
   result := CurrToStr(_ANum1.ToCurrency + _ANum2.ToCurrency);
end;

function TSoma.Operacao(const _ANum1, _ANum2: Double): Double;
begin
  Result := _ANum1 + _ANum2;
end;

end.
