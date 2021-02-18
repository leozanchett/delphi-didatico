unit Model.Venda.Factory;

interface

uses
  Model.Interfaces;

type
  TModelVendaFactory = class(TInterfacedObject, iModelVendaFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iModelVendaFactory;
      function VendaECF(_AOrigem: iModelVenda): iModelVenda;
      function VendaSat(_AOrigem: iModelVenda): iModelVenda;
      function VendaNFC(_AOrigem: iModelVenda): iModelVenda;
  end;

implementation

uses
  Model.Venda.ECF, Model.Venda.NFC, Model.Venda.SAT, Model.Venda;

{ TModelVendaFactory }

constructor TModelVendaFactory.Create;
begin

end;

destructor TModelVendaFactory.Destroy;
begin

  inherited;
end;

class function TModelVendaFactory.New: iModelVendaFactory;
begin
  Result := Self.Create;
end;

function TModelVendaFactory.VendaECF(_AOrigem: iModelVenda): iModelVenda;
begin
  if not Assigned(_AOrigem) then
    _AOrigem := TModelVenda.New;
  Result := TModelVendaECF.Create(_AOrigem);
end;

function TModelVendaFactory.VendaNFC(_AOrigem: iModelVenda): iModelVenda;
begin
  if not Assigned(_AOrigem) then
    _AOrigem := TModelVenda.New;
  Result := TModelVendaNFC.Create(_AOrigem);
end;

function TModelVendaFactory.VendaSat(_AOrigem: iModelVenda): iModelVenda;
begin
  if not Assigned(_AOrigem) then
    _AOrigem := TModelVenda.New;
  Result := TModelVendaSat.Create(_AOrigem);
end;

end.
