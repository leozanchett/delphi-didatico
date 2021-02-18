unit Model.Venda;

interface

uses
  Model.Interfaces;

  type
    TModelVenda = class(TInterfacedObject, iModelVenda)
      private

      public
        constructor Create;
        destructor Destroy;override;
        class function New: iModelVenda;
        function NumeroVenda: Integer; virtual;
        function VenderItem: iModelVenda; virtual;
        function Subtotal: Currency; virtual;
    end;

implementation

{ TMinhaClasse }

constructor TModelVenda.Create;
begin

end;

destructor TModelVenda.Destroy;
begin

  inherited;
end;

class function TModelVenda.New: iModelVenda;
begin
  Result := Self.Create;
end;

function TModelVenda.NumeroVenda: Integer;
begin
  Result := 0;
end;

function TModelVenda.Subtotal: Currency;
begin
  Result := 0;
end;

function TModelVenda.VenderItem: iModelVenda;
begin
  Result := Self;
end;

end.
