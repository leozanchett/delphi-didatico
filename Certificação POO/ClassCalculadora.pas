unit ClassCalculadora;

interface

uses
  Calculadora.Interfaces, System.Generics.Collections;

type
 

  TCalculadora = class(TInterfacedObject, iCalculadora)
    private
      FLista: TList<Double>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iCalculadora;
      function Soma: iOperacoes;
      function Subtrair: iOperacoes;
      function Dividir: iOperacoes;
      function Multiplicar: iOperacoes;
      function Add(const _AValue: String): iCalculadora; overload;
      function Add(const _AValue: Integer): iCalculadora; overload;
      function Add(const _AValue: Currency): iCalculadora; overload;
  end;

implementation

uses
  System.SysUtils, Calculadora.Dividir, Calculadora.Multiplicar,
  Calculadora.Soma, Calculadora.Subtrair;


{ TCalculadora }

function TCalculadora.Add(const _AValue: String): iCalculadora;
begin
   Result := Self;
   FLista.Add(StrToCurr(_AValue));
end;

function TCalculadora.Add(const _AValue: Integer): iCalculadora;
begin
   Result := Self;
   FLista.Add(_AValue.ToDouble);
end;

function TCalculadora.Add(const _AValue: Currency): iCalculadora;
begin
   Result := Self;
   FLista.Add(_AValue);
end;

constructor TCalculadora.Create;
begin
  FLista := TList<Double>.Create;
end;

destructor TCalculadora.Destroy;
begin
  FLista.Free;
  inherited;
end;

function TCalculadora.Dividir: iOperacoes;
begin
  Result := TDividir.New(FLista);
end;

function TCalculadora.Multiplicar: iOperacoes;
begin
  Result := TMultiplicar.New(FLista);
end;

class function TCalculadora.New: iCalculadora;
begin
  Result := Self.Create;
end;

function TCalculadora.Soma: iOperacoes;
begin
  Result := TSoma.New(FLista);
end;

function TCalculadora.Subtrair: iOperacoes;
begin
  Result := TSubtrair.New(FLista);
end;

end.
