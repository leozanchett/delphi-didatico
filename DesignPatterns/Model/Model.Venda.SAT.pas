unit Model.Venda.SAT;

interface

uses
  Model.Interfaces;
  type
    TModelVendaSat = class(TInterfacedObject, iModelVenda)
      private
        FOrigem: iModelVenda;
      public
        constructor Create(_AOrigem: iModelVenda);
        destructor Destroy; override;
        class function New(_AOrigem: iModelVenda): iModelVenda;
        function NumeroVenda: Integer;
        function VenderItem: iModelVenda;
        function Subtotal: Currency;
    end;

implementation

{ TMinhaClasse }

constructor TModelVendaSat.Create(_AOrigem: iModelVenda);
begin
  FOrigem := _AOrigem;
end;

destructor TModelVendaSat.Destroy;
begin

  inherited;
end;

class function TModelVendaSat.New(_AOrigem: iModelVenda): iModelVenda;
begin
  Result := Self.Create(_AOrigem);
end;

function TModelVendaSat.NumeroVenda: Integer;
begin
  Result := 9;
end;

function TModelVendaSat.Subtotal: Currency;
begin
  Result := FOrigem.Subtotal + 4.5;
end;

function TModelVendaSat.VenderItem: iModelVenda;
begin
  Result := Self;
  FOrigem.VenderItem;
end;

end.
