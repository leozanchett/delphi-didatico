unit Model.Item;

interface

uses
  Model.Interfaces;
  type
    TModelItem = class(TInterfacedObject, iModelItem)
      private
        [weak]
        FParent: iModelVenda;
        FCodigo: Integer;
      public
        constructor Create(_AModelVenda: iModelVenda);
        destructor Destroy;override;
        class function New(_AModelVenda: iModelVenda): iModelItem;
        function Codigo(_Acodigo: Integer): iModelItem;
        function Vender: iModelItem;
        function &End: iModelVenda;
    end;

implementation

uses
  Controller.Observer.Interfaces;

{ TModelItem }

function TModelItem.Codigo(_Acodigo: Integer): iModelItem;
begin
   Result := Self;
   FCodigo := _Acodigo;
end;

function TModelItem.&End: iModelVenda;
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
var
  ARi: TRecordItem;
begin
   Result := self;
   case FCodigo of
    1: ARi.Descricao := 'Arroz Branco';
    2: ARi.Descricao := 'Feijão Preto';
    3: Ari.Descricao := 'Macarrão';
   end;
   FParent.ObserverItem.Notify(ARi);
end;

end.
