unit Controller.Interfaces;

interface

  type
    IControllerVenda = interface
      ['{19FC1AFB-AB28-4681-A590-32695692FDB7}']
      function Venda: IcontrollerVenda;
      function Subtotal: Currency;
    end;

    iControllerVendaFactory = interface
      ['{4976F40B-F772-4D68-9505-A4CA1207ED36}']
      function Venda: IControllerVenda;
    end;

implementation

end.
