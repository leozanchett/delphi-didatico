unit Model.Venda.ECF;

interface

uses
  Model.Interfaces;
  type
    TModelVendaECF = class(TInterfacedObject, iModelVenda)
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

constructor TModelVendaECF.Create(_AOrigem: iModelVenda);
begin
  FOrigem := _AOrigem;
end;

destructor TModelVendaECF.Destroy;
begin

  inherited;
end;

class function TModelVendaECF.New(_AOrigem: iModelVenda): iModelVenda;
begin
  Result := Self.Create(_AOrigem);
end;

function TModelVendaECF.NumeroVenda: Integer;
begin
  Result := 5;
end;

function TModelVendaECF.Subtotal: Currency;
begin
  Result := FOrigem.Subtotal + 10;
end;

function TModelVendaECF.VenderItem: iModelVenda;
begin
  Result := Self;
  FOrigem.VenderItem;
end;

end.
