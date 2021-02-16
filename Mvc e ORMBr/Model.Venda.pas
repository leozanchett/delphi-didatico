unit Model.Venda;

interface

uses
  Model.Interfaces;

  type
    TModelVenda = class(TInterfacedObject, iModelVenda)
      private
        FItem: iModelItem;
      public
        constructor Create;
        destructor Destroy;override;
        class function New: iModelVenda;
        function Item: iModelItem;
    end;

implementation

uses
  Model.Item;

{ TModelVenda }

constructor TModelVenda.Create;
begin
  FItem := TModelItem.new(self);
end;

destructor TModelVenda.Destroy;
begin

  inherited;
end;

function TModelVenda.Item: iModelItem;
begin
   Result := FItem;
end;

class function TModelVenda.New: iModelVenda;
begin
   Result := self.Create;
end;

end.
