unit model.cartao;

interface

uses
  model.interfaces;

type
  TCartao = class(TInterfacedObject, iCartao, iRegras, iVisitor)
    private
      [WeakAttribute]
      FParent: iPagamento;
      FVisit: iPagamento;
    public
      constructor Create(const _AParent: iPagamento);
      destructor Destroy; override;
      class function New(const _AParent: iPagamento): iCartao;
      function Total: Currency;
      function Visit(const _AValue: iPagamento): iRegras;
      function Visitor: iVisitor;
      function &End: iPagamento;
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

function TCartao.Visit(const _AValue: iPagamento): iRegras;
begin
  Result := Self;
  FVisit := _AValue;
end;

function TCartao.Visitor: iVisitor;
begin
  Result := Self;
end;

end.
