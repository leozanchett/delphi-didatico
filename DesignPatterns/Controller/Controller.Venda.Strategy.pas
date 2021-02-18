unit Controller.Venda.Strategy;

interface

uses
  Controller.Interfaces;

type
  TControllerVendaStrategy = (VENDA);

  TControllerVendaStrategyHelper = record helper for TControllerVendaStrategy
    function New: iControllerVenda;
  end;

implementation

uses
  Controller.Venda.Factory;

{ TControllerVendaStrategyHelper }

function TControllerVendaStrategyHelper.New: iControllerVenda;
begin
   case Self of
     VENDA: Result := TControllerVendaFactory.New.Venda;
   end;
end;

end.
