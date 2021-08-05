unit model.crediario;

interface

uses
  model.interfaces;

type
  TCrediario = class(TInterfacedObject, iCrediario, iRegras, iVisitor)
    private
      [WeakAttribute]
      FPagamento : iPagamento;
      FVisit: iPagamento;
      FJuros: boolean;
    public
      constructor Create(const _AParent: iPagamento);
      destructor Destroy; override;
      class function New(const _AParent: iPagamento): iCrediario;
      function Juros(const _AValue: boolean): iCrediario; overload;
      function Juros: boolean; overload;
      function Total: Currency;
      function Visit(const _AValue: iPagamento): iRegras;
      function Visitor: iVisitor;
      function &End: iPagamento;
  end;

implementation

{ TCrediario }

constructor TCrediario.Create(const _AParent: iPagamento);
begin
   FPagamento := _AParent;
end;

destructor TCrediario.Destroy;
begin

  inherited;
end;

function TCrediario.&End: iPagamento;
begin
   Result := FPagamento;
end;

function TCrediario.Juros(const _AValue: boolean): iCrediario;
begin
  Result := Self;
  FJuros := _AValue;
end;

function TCrediario.Juros: boolean;
begin
  Result := FJuros;
end;

class function TCrediario.New(const _AParent: iPagamento): iCrediario;
begin
  Result := Self.Create(_AParent);
end;

function TCrediario.Total: Currency;
begin
   Result := 0;
end;

function TCrediario.Visit(const _AValue: iPagamento): iRegras;
begin
  Result := Self;
  FVisit := _AValue;
end;

function TCrediario.Visitor: iVisitor;
begin
  Result := Self;
end;

end.
