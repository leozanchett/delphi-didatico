unit Model.Venda.NFC;

interface

uses
  Model.Interfaces;
  type
    TModelVendaNFC = class(TInterfacedObject, iModelVenda)
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

constructor TModelVendaNFC.Create(_AOrigem: iModelVenda);
begin
   FOrigem := _AOrigem;
end;

destructor TModelVendaNFC.Destroy;
begin

  inherited;
end;

class function TModelVendaNFC.New(_AOrigem: iModelVenda): iModelVenda;
begin
  Result := Self.Create(_AOrigem);
end;

function TModelVendaNFC.NumeroVenda: Integer;
begin
  Result := 8;
end;

function TModelVendaNFC.Subtotal: Currency;
begin
  Result := FOrigem.Subtotal + 20;
end;

function TModelVendaNFC.VenderItem: iModelVenda;
begin                             
  Result := Self;
  FOrigem.VenderItem;
end;

end.
