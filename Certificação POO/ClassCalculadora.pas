unit ClassCalculadora;

interface

uses
  Calculadora.Interfaces;

type
 

  TCalculadora = class(TInterfacedObject, iCalculadora)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iCalculadora;
      function Soma: iOperacoes;
      function Subtrair: iOperacoes;
      function Dividir: iOperacoes;
      function Multiplicar: iOperacoes;
  end;

implementation

uses
  System.SysUtils, Calculadora.Dividir, Calculadora.Multiplicar,
  Calculadora.Soma, Calculadora.Subtrair;


{ TCalculadora }

constructor TCalculadora.Create;
begin

end;

destructor TCalculadora.Destroy;
begin

  inherited;
end;

function TCalculadora.Dividir: iOperacoes;
begin
  Result := TDividir.New;
end;

function TCalculadora.Multiplicar: iOperacoes;
begin
  Result := TMultiplicar.New;
end;

class function TCalculadora.New: iCalculadora;
begin
  Result := Self.Create;
end;

function TCalculadora.Soma: iOperacoes;
begin
  Result := TSoma.New;
end;

function TCalculadora.Subtrair: iOperacoes;
begin
  Result := TSubtrair.New;
end;

end.
