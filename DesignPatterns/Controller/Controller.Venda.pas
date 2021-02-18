unit Controller.Venda;

interface

uses
  Controller.Interfaces, Model.Interfaces;

type
  TControllerVenda = class(TInterfacedObject, IcontrollerVenda)
    private
      FTipo: iModelVenda;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: IcontrollerVenda;
      function Venda: IcontrollerVenda;
      function Subtotal: Currency;
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

class function TControllerVenda.New: IcontrollerVenda;
begin
  Result := Self.Create;
end;

function TControllerVenda.Subtotal: Currency;
begin
  Result := FTipo.Subtotal;
end;

function TControllerVenda.Venda: IcontrollerVenda;
begin
  Result := Self;
end;

end.
