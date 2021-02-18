unit Controller.Venda.Factory;

interface

uses
  Controller.Interfaces;

type
  TControllerVendaFactory = class(TInterfacedObject, iControllerVendaFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iControllerVendaFactory;
      function Venda: IControllerVenda;
  end;

implementation

uses
  Controller.Venda;

{ TControllerVendaFactory }

constructor TControllerVendaFactory.Create;
begin

end;

destructor TControllerVendaFactory.Destroy;
begin

  inherited;
end;

class function TControllerVendaFactory.New: iControllerVendaFactory;
begin
  Result := self.Create;
end;

function TControllerVendaFactory.Venda: IControllerVenda;
begin
  Result := TControllerVenda.New;
end;

end.
