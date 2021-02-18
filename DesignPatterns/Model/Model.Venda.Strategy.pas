unit Model.Venda.Strategy;

interface

uses
  Model.Interfaces;

Type
  TVendaStrategy = (ECF,NFC,SAT);

  TVendaStrategyHelper = record helper for TVendaStrategy
    function New(_AOrigem: iModelVenda): iModelVenda;
  end;

implementation

uses
  Model.Venda.Factory;

{ TVendaStrategyHelper }

function TVendaStrategyHelper.New(_AOrigem: iModelVenda): iModelVenda;
begin
  case Self of
    ECF: Result := TModelVendaFactory.New.VendaECF(_AOrigem);
    NFC: Result := TModelVendaFactory.New.VendaNFC(_AOrigem);
    SAT: Result := TModelVendaFactory.New.VendaSat(_AOrigem);
  end;
end;

end.
