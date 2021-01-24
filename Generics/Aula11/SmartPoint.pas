unit SmartPoint;

interface

type
  TSmartPointer<T : class, constructor> = record
    strict private
      FValue : T;
      FFreeTheValue : IInterface;
      function GetValue : T;
    public
      class operator Implicit(smart: TSmartPointer<T>): T;
      class operator Implicit(AValue: T): TSmartPointer<T>;
      constructor Create(aValue : T);
      property Value : T read GetValue;
  end;



  TFreeTheValue = class (TInterfacedObject)
  private
    fObjectToFree: TObject;
  public
    constructor Create(anObjectToFree: TObject);
    destructor Destroy; override;
  end;

implementation

{ TSmartPointer<T> }

constructor TSmartPointer<T>.Create(aValue: T);
begin
  FValue := aValue;
  FFreeTheValue := TFreeTheValue.Create(FValue);
end;

function TSmartPointer<T>.GetValue: T;
begin
  if not Assigned(FFreeTheValue) then
    Self := TSmartPointer<T>.Create(T.Create);

  Result := FValue;
end;

class operator TSmartPointer<T>.Implicit(AValue: T): TSmartPointer<T>;
begin
  Result := TSmartPointer<T>.Create(AValue);
end;

class operator TSmartPointer<T>.Implicit(smart: TSmartPointer<T>): T;
begin
  Result := smart.Value;
end;

{ TFreeTheValue }

constructor TFreeTheValue.Create(anObjectToFree: TObject);
begin
  fObjectToFree := anObjectToFree;
end;

destructor TFreeTheValue.Destroy;
begin
  fObjectToFree.Free;
  inherited;
end;

end.
