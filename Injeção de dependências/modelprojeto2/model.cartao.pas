unit model.cartao;

interface

uses
  model.interfaces;

type
  TCartao = class(TInterfacedObject, iCartao, iRegras)
    private
      [WeakAttribute]
      FParent: iPagamento;
    public
      constructor Create(const _AParent: iPagamento);
      destructor Destroy; override;
      class function New(const _AParent: iPagamento): iCartao;
      function &End: iPagamento;
      function Total: Currency;
  end;

implementation

{ TCartao }

constructor TCartao.Create(const _AParent: iPagamento);
begin
   FParent := _AParent;
end;

destructor TCartao.Destroy;
begin

  inherited;
end;

function TCartao.&End: iPagamento;
begin
   Result := FParent;
end;

class function TCartao.New(const _AParent: iPagamento): iCartao;
begin
   Result := Self.Create(_AParent);
end;

function TCartao.Total: Currency;
begin

end;

end.
