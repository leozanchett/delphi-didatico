unit Model.Item;

interface

uses
  Model.Interfaces;
  type
    TModelItem = class(TInterfacedObject, iModelItem)
      private
        FParent: iModelVenda;
        FCodigo: Integer;
      public
        constructor Create(_AModelVenda: iModelVenda);
        destructor Destroy;override;
        class function New(_AModelVenda: iModelVenda): iModelItem;
        function Codigo(_Acodigo: Integer): iModelItem;
        function Vender: iModelItem;
        function &End: iModelItem;
    end;

implementation

{ TModelItem }

function TModelItem.Codigo(_Acodigo: Integer): iModelItem;
begin
   Result := Self;
   FCodigo := _Acodigo;
end;

function TModelItem.&End: iModelItem;
begin
   Result := FParent;
end;

constructor TModelItem.Create(_AModelVenda: iModelVenda);
begin
   FParent := _AModelVenda;
end;

destructor TModelItem.Destroy;
begin

  inherited;
end;

class function TModelItem.New(_AModelVenda: iModelVenda): iModelItem;
begin
   Result := Self.Create(_AModelVenda);
end;

function TModelItem.Vender: iModelItem;
begin
   Result := self;
end;

end.
