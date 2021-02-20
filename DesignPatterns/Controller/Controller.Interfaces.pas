unit Controller.Interfaces;

interface

  uses
    Controller.Eventos;

  type
    IControllerVendaDisplay = interface;

    IControllerVenda = interface
      ['{19FC1AFB-AB28-4681-A590-32695692FDB7}']
      function Venda: IcontrollerVenda;
      function Subtotal: Currency;
      function Display: iControllerVendaDisplay;
      function VenderItem: IControllerVenda;
    end;

    iControllerVendaFactory = interface
      ['{4976F40B-F772-4D68-9505-A4CA1207ED36}']
      function Venda: IControllerVenda;
    end;

    iControllerVendaDisplay = interface
      ['{1BF1E762-F990-445E-B88D-7E22F6427581}']
      function ItemVendido(_AValue: TevItemVendido): IControllerVendaDisplay;
      function ValorTotal(_AValue: TevValorTotal): IControllerVendaDisplay;
      function EndDisplay: IControllerVenda;
    end;

implementation

end.
