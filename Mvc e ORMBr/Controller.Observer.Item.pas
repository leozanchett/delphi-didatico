unit Controller.Observer.Item;

interface

uses
  Controller.Observer.Interfaces, System.Classes, System.Generics.Collections;

  type
    TControllerObserverItem = class(TInterfacedObject, iSubjectItem)
      private
        FList: TList<iObserverItem>;
      public
        constructor Create;
        destructor Destroy;override;
        class function New: iSubjectItem;
        function Add(_AObserverItem: iObserverItem): iSubjectItem;
        function Notify(_ARecordItem: TRecordItem): iSubjectItem;
    end;

implementation

uses
  System.SysUtils;

{ TControllerObserverItem }

function TControllerObserverItem.Add(_AObserverItem: iObserverItem): iSubjectItem;
begin
  Result := Self;
  FList.Add(_AObserverItem);
end;

constructor TControllerObserverItem.Create;
begin
  FList := TList<iObserverItem>.Create;
end;

destructor TControllerObserverItem.Destroy;
begin
  Freeandnil(FList);
  inherited;
end;

class function TControllerObserverItem.New: iSubjectItem;
begin
   Result := Self.Create;
end;

function TControllerObserverItem.Notify(_ARecordItem: TRecordItem): iSubjectItem;
var
  i: Integer;
begin
  Result := self;
  for I := 0 to Pred(FList.Count) do
    FList[i].UpdateItem(_ARecordItem);
end;

end.
