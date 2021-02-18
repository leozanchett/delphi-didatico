unit Model.Interfaces;

interface

type
  iModelVenda = interface
    ['{97F7FE11-F0D8-4762-8273-F8A1FAC2C4E8}']
    function VenderItem: iModelVenda;
    function NumeroVenda: Integer;
    function Subtotal: Currency;
  end;

  iModelVendaFactory = interface
    ['{C3EEA6F4-62D6-4F4D-8E2B-8120C8C3B144}']
    function VendaECF(_AOrigem: iModelVenda): iModelVenda;
    function VendaSat(_AOrigem: iModelVenda): iModelVenda;
    function VendaNFC(_AOrigem: iModelVenda): iModelVenda;
  end;

implementation

end.
