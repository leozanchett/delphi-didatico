unit Controller.Venda;

interface

uses
  Controller.Interfaces, Model.Interfaces, Controller.Eventos;

type
  TControllerVenda = class(TInterfacedObject, IcontrollerVenda, IControllerVendaDisplay)
    private
      FTipo: iModelVenda;
      FItemVendido: TevItemVendido;
      FValorTotal: TevValorTotal;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IcontrollerVenda;
      function Venda: IcontrollerVenda;
      function Subtotal: Currency;
      function ItemVendido(_AValue: TevItemVendido): IControllerVendaDisplay;
      function Display: IControllerVendaDisplay;
      function ValorTotal(_AValue: TevValorTotal): IControllerVendaDisplay;
      function EndDisplay: IControllerVenda;
      function VenderItem: IControllerVenda;
  end;

implementation

uses
  Model.Venda.Strategy;

{ TControllerVenda }

constructor TControllerVenda.Create;
begin
  FTipo := ECF.New(SAT.New(nil));
end;

destructor TControllerVenda.Destroy;
begin

  inherited;
end;

function TControllerVenda.Display: IControllerVendaDisplay;
begin
  Result := Self;
end;

function TControllerVenda.EndDisplay: IControllerVenda;
begin
  Result := Self;
end;

function TControllerVenda.ItemVendido(_AValue: TevItemVendido): IControllerVendaDisplay;
begin
   FItemVendido := _AValue;
   Result := Self;
end;

class function TControllerVenda.New: IcontrollerVenda;
begin
  Result := Self.Create;
end;

function TControllerVenda.Subtotal: Currency;
begin
  Result := FTipo.Subtotal;
end;

function TControllerVenda.ValorTotal(_AValue: TevValorTotal): IControllerVendaDisplay;
begin
  FValorTotal := _AValue;
  Result := Self;
end;

function TControllerVenda.Venda: IcontrollerVenda;
begin
  Result := Self;
end;

function TControllerVenda.VenderItem: IControllerVenda;
begin
  Result := Self;
  FItemVendido('Sabão');
  FValorTotal(Self.Subtotal);
end;

end.
