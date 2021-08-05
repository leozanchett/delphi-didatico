unit model.pagamento;

interface

uses
  model.interfaces;

type
  TPagamento = class(TInterfacedObject, iPagamento, iRegras)
    private
      FValor: Currency;
      FCrediario : iCrediario;
      FCartao: iCartao;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iPagamento;
      function Valor(const _AValue: Currency): iPagamento; overload;
      function Valor: Currency; overload;
      function Total: Currency;
      function Cartao: iCartao;
      function Crediario: iCrediario;
  end;

implementation

uses
  model.cartao, model.crediario;

{ TPagamento }

function TPagamento.Cartao: iCartao;
begin
   FCartao := TCartao.New(Self);
   Result := FCartao;
end;

constructor TPagamento.Create;
begin

end;

function TPagamento.Crediario: iCrediario;
begin
   FCrediario := TCrediario.New(self);
   Result := FCrediario;
end;

destructor TPagamento.Destroy;
begin

  inherited;
end;

class function TPagamento.New: iPagamento;
begin
   Result := Self.Create;
end;

function TPagamento.Total: Currency;
begin
   Result := 0;
end;

function TPagamento.Valor(const _AValue: Currency): iPagamento;
begin
  Result := Self;
  FValor := _AValue;
end;

function TPagamento.Valor: Currency;
begin
   Result := FValor;
end;

end.
