unit Controller.Venda;

interface

uses
  Controller.Interfaces;
  type
    TControllerVenda = class(TInterfacedObject, iControllerVenda)
      private
        FItem : IControllerItem;
      public
        constructor Create;
        destructor Destroy;override;
        class function New: iControllerVenda;
        function Item: IControllerItem;
    end;

implementation

uses
  Controller.Item;

{ TControllerVenda }

constructor TControllerVenda.Create;
begin
   FItem := TControllerItem.New(Self);
end;

destructor TControllerVenda.Destroy;
begin

  inherited;
end;

function TControllerVenda.Item: IControllerItem;
begin
   Result := FItem;
end;

class function TControllerVenda.New: iControllerVenda;
begin

end;

end.
