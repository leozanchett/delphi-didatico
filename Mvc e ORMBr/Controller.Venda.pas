unit Controller.Venda;

interface

uses
  Controller.Interfaces, Model.Interfaces, Controller.Observer.Interfaces;

  type
    TControllerVenda = class(TInterfacedObject, iControllerVenda)
      private
        FItem : IControllerItem;
        FModel: IModelVenda;
        FObserverItem: iSubjectItem;
      public
        constructor Create;
        destructor Destroy;override;
        class function New: iControllerVenda;
        function Item: IControllerItem;
        function Model: iModelVenda;
        function ObserverItem: iSubjectItem;
    end;

implementation

uses
  Controller.Item, Model.Venda, Controller.Observer.Item;

{ TControllerVenda }

constructor TControllerVenda.Create;
begin
   FItem := TControllerItem.New(Self);
   FModel := TModelVenda.New;
   FObserverItem := TControllerObserverItem.New;
   FModel.ObserverItem(FObserverItem);
end;

destructor TControllerVenda.Destroy;
begin

  inherited;
end;

function TControllerVenda.Item: IControllerItem;
begin
   Result := FItem;
end;

function TControllerVenda.Model: iModelVenda;
begin
  Result := FModel;
end;

class function TControllerVenda.New: iControllerVenda;
begin
   Result := Self.Create;
end;

function TControllerVenda.ObserverItem: iSubjectItem;
begin
  Result := FObserverItem;
end;

end.
