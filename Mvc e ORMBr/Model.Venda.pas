unit Model.Venda;

interface

uses
  Model.Interfaces, Controller.Observer.Interfaces;

  type
    TModelVenda = class(TInterfacedObject, iModelVenda)
      private
        FItem: iModelItem;
        FObserverItem: iSubjectItem;
      public
        constructor Create;
        destructor Destroy;override;
        class function New: iModelVenda;
        function Item: iModelItem;
        function ObserverItem(_Aobserver: iSubjectItem): iModelVenda; overload;
        function ObserverItem: iSubjectItem; overload;
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

function TModelVenda.ObserverItem: iSubjectItem;
begin
  Result := FObserverItem;
end;

function TModelVenda.ObserverItem(_Aobserver: iSubjectItem): iModelVenda;
begin
  Result := Self;
  FObserverItem := _Aobserver;
end;

end.
